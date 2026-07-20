from __future__ import annotations

import argparse
import sys
from pathlib import Path

PROJECT_ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(PROJECT_ROOT / "python"))

from arc3_runner import Arc3Runner


def main() -> None:
    parser = argparse.ArgumentParser(description="Interactive ARC3 debugger runner")
    parser.add_argument("game_id", nargs="?", default="ls20")
    parser.add_argument("--render-mode", default="terminal")
    args = parser.parse_args()

    runner = Arc3Runner(args.game_id, render_mode=args.render_mode)

    print("Legal actions:")
    for row in runner.action_table():
        suffix = " x y" if row["complex"] else ""
        print(f'  {row["index"]}: {row["name"]}{suffix}')

    print("\nCommands: ACTION1 | ACTION6 20 30 | reset | history | score | quit")

    while True:
        try:
            parts = input("arc3> ").strip().split()
        except (EOFError, KeyboardInterrupt):
            print()
            break

        if not parts:
            continue

        command = parts[0]
        lowered = command.lower()

        try:
            if lowered in {"quit", "exit", "q"}:
                break
            if lowered == "reset":
                runner.reset()
                continue
            if lowered == "history":
                for item in runner.history():
                    print(item["step"], item["action"], item["data"], item["state"])
                continue
            if lowered == "score":
                print(runner.scorecard())
                continue

            if len(parts) == 3:
                obs = runner.step(command, x=int(parts[1]), y=int(parts[2]))
            else:
                obs = runner.step(command)

            print("state:", runner.state_name())
            if runner.is_win():
                print("WIN")
            elif runner.is_game_over():
                print("GAME OVER")
        except Exception as exc:
            print(f"error: {exc}")


if __name__ == "__main__":
    main()
