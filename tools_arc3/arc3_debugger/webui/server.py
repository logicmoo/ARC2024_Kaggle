from __future__ import annotations

import argparse
import asyncio
import json
import os
import secrets
import shlex
import signal
import sys
from pathlib import Path
from typing import Any

from fastapi import FastAPI, WebSocket, WebSocketDisconnect
from fastapi.responses import FileResponse, JSONResponse

PROJECT_ROOT = Path(__file__).resolve().parents[1]
STATIC_ROOT = Path(__file__).resolve().parent / "static"
RUNNER = PROJECT_ROOT / "examples" / "interactive_runner.py"


class TerminalProcess:
    """Cross-platform pseudo-terminal wrapper.

    Windows uses ConPTY through pywinpty. Unix uses ptyprocess. Both expose the
    same blocking read/write API, which the WebSocket handler calls via
    asyncio.to_thread().
    """

    def __init__(
        self,
        argv: list[str],
        *,
        cwd: Path,
        env: dict[str, str],
        rows: int,
        cols: int,
    ) -> None:
        self.argv = argv
        self.cwd = cwd
        self.env = env
        self.rows = max(2, int(rows))
        self.cols = max(2, int(cols))
        self.process: Any = None
        self.windows = os.name == "nt"

    def start(self) -> None:
        if self.windows:
            try:
                from winpty import PtyProcess
            except ImportError as exc:
                raise RuntimeError(
                    "Windows browser terminal requires pywinpty. "
                    "Install it with: pip install pywinpty"
                ) from exc

            # pywinpty expects one Windows command line, not a POSIX argv list.
            command = subprocess_list2cmdline(self.argv)
            self.process = PtyProcess.spawn(
                command,
                cwd=str(self.cwd),
                env=self.env,
                dimensions=(self.rows, self.cols),
            )
            return

        try:
            from ptyprocess import PtyProcess
        except ImportError as exc:
            raise RuntimeError(
                "Unix browser terminal requires ptyprocess. "
                "Install it with: pip install ptyprocess"
            ) from exc

        self.process = PtyProcess.spawn(
            self.argv,
            cwd=str(self.cwd),
            env=self.env,
            dimensions=(self.rows, self.cols),
            echo=False,
        )

    def read(self, size: int = 65536) -> str:
        if self.process is None:
            return ""
        data = self.process.read(size)
        if isinstance(data, bytes):
            return data.decode("utf-8", errors="replace")
        return str(data)

    def write(self, data: str) -> None:
        if self.process is None:
            return
        self.process.write(data)

    def resize(self, rows: int, cols: int) -> None:
        self.rows = max(2, int(rows))
        self.cols = max(2, int(cols))
        if self.process is None:
            return

        # Both pywinpty and ptyprocess commonly expose setwinsize(rows, cols).
        method = getattr(self.process, "setwinsize", None)
        if callable(method):
            method(self.rows, self.cols)
            return

        # Keep compatibility with alternative pywinpty releases.
        method = getattr(self.process, "set_size", None)
        if callable(method):
            try:
                method(self.cols, self.rows)
            except TypeError:
                method(self.rows, self.cols)

    def is_alive(self) -> bool:
        if self.process is None:
            return False
        for name in ("isalive", "is_alive"):
            method = getattr(self.process, name, None)
            if callable(method):
                try:
                    return bool(method())
                except Exception:
                    return False
        return True

    def close(self) -> None:
        if self.process is None:
            return
        try:
            close = getattr(self.process, "close", None)
            if callable(close):
                try:
                    close(force=True)
                except TypeError:
                    close()
                return
        except Exception:
            pass

        try:
            terminate = getattr(self.process, "terminate", None)
            if callable(terminate):
                try:
                    terminate(force=True)
                except TypeError:
                    terminate()
        except Exception:
            pass


def subprocess_list2cmdline(argv: list[str]) -> str:
    """Use Python's Windows quoting without importing subprocess globally."""
    import subprocess

    return subprocess.list2cmdline(argv)


def create_app(
    *,
    default_game: str = "ls20",
    render_mode: str = "terminal",
    access_token: str | None = None,
) -> FastAPI:
    app = FastAPI(title="ARC3 ANSI Debugger", docs_url=None, redoc_url=None)
    app.state.default_game = default_game
    app.state.render_mode = render_mode
    app.state.access_token = access_token

    @app.get("/")
    async def index() -> FileResponse:
        return FileResponse(STATIC_ROOT / "index.html")

    @app.get("/api/config")
    async def config() -> JSONResponse:
        return JSONResponse(
            {
                "default_game": app.state.default_game,
                "token_required": bool(app.state.access_token),
            }
        )

    @app.get("/healthz")
    async def health() -> dict[str, str]:
        return {"status": "ok"}

    @app.websocket("/ws/terminal")
    async def terminal_socket(websocket: WebSocket) -> None:
        token = websocket.query_params.get("token")
        expected = app.state.access_token
        if expected and not secrets.compare_digest(token or "", expected):
            await websocket.close(code=1008, reason="Invalid access token")
            return

        game = websocket.query_params.get("game") or app.state.default_game
        rows = int(websocket.query_params.get("rows") or os.environ.get("ARC3_WEB_ROWS", "100"))
        cols = int(websocket.query_params.get("cols") or os.environ.get("ARC3_WEB_COLS", "320"))

        await websocket.accept()

        env = os.environ.copy()
        env.setdefault("TERM", "xterm-256color")
        env.setdefault("COLORTERM", "truecolor")
        env["PYTHONUNBUFFERED"] = "1"
        env["ARC3_WEB_TERMINAL"] = "1"
        env.setdefault("ARC3_PROMPTS_ROOT", str(PROJECT_ROOT / "prompts"))
        env.setdefault("ARC3_TREE_ROOT", str(PROJECT_ROOT / "action_trees"))

        argv = [
            sys.executable,
            "-u",
            str(RUNNER),
            game,
            "--render-mode",
            app.state.render_mode,
        ]

        terminal = TerminalProcess(
            argv,
            cwd=PROJECT_ROOT,
            env=env,
            rows=rows,
            cols=cols,
        )

        try:
            await asyncio.to_thread(terminal.start)
        except Exception as exc:
            await websocket.send_text(
                "\r\n\x1b[31mUnable to start ARC3 terminal:\x1b[0m "
                + str(exc)
                + "\r\n"
            )
            await websocket.close(code=1011)
            return

        async def pump_output() -> None:
            while terminal.is_alive():
                try:
                    chunk = await asyncio.to_thread(terminal.read, 65536)
                except EOFError:
                    break
                except Exception as exc:
                    await websocket.send_text(
                        f"\r\n\x1b[31mTerminal read error:\x1b[0m {exc}\r\n"
                    )
                    break
                if not chunk:
                    await asyncio.sleep(0.01)
                    continue
                await websocket.send_text(chunk)

        async def pump_input() -> None:
            while True:
                message = await websocket.receive_text()
                try:
                    payload = json.loads(message)
                except json.JSONDecodeError:
                    payload = {"type": "input", "data": message}

                message_type = payload.get("type")
                if message_type == "input":
                    await asyncio.to_thread(terminal.write, str(payload.get("data", "")))
                elif message_type == "resize":
                    await asyncio.to_thread(
                        terminal.resize,
                        int(payload.get("rows", rows)),
                        int(payload.get("cols", cols)),
                    )
                elif message_type == "signal" and payload.get("name") == "INT":
                    await asyncio.to_thread(terminal.write, "\x03")

        output_task = asyncio.create_task(pump_output())
        input_task = asyncio.create_task(pump_input())

        try:
            done, pending = await asyncio.wait(
                {output_task, input_task},
                return_when=asyncio.FIRST_COMPLETED,
            )
            for task in pending:
                task.cancel()
            for task in done:
                try:
                    task.result()
                except WebSocketDisconnect:
                    pass
        except WebSocketDisconnect:
            pass
        finally:
            output_task.cancel()
            input_task.cancel()
            await asyncio.to_thread(terminal.close)

    return app


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Serve the ARC3 ANSI debugger in a browser terminal"
    )
    parser.add_argument("--host", default=os.environ.get("ARC3_WEB_HOST", "127.0.0.1"))
    parser.add_argument("--port", type=int, default=int(os.environ.get("ARC3_WEB_PORT", "8765")))
    parser.add_argument("--game", default=os.environ.get("ARC3_WEB_GAME", "ls20"))
    parser.add_argument("--render-mode", default=os.environ.get("ARC3_WEB_RENDER_MODE", "terminal"))
    parser.add_argument("--token", default=os.environ.get("ARC3_WEB_TOKEN"))
    return parser.parse_args()


def main() -> None:
    args = parse_args()

    if args.host not in {"127.0.0.1", "localhost", "::1"} and not args.token:
        raise SystemExit(
            "Refusing to expose an unauthenticated terminal on a non-loopback host. "
            "Set --token or ARC3_WEB_TOKEN."
        )

    import uvicorn

    app = create_app(
        default_game=args.game,
        render_mode=args.render_mode,
        access_token=args.token,
    )
    print(f"ARC3 browser terminal: http://{args.host}:{args.port}/")
    if args.token:
        print("Access token protection is enabled.")
    uvicorn.run(app, host=args.host, port=args.port, log_level="info")


if __name__ == "__main__":
    main()
