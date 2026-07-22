from __future__ import annotations

import argparse
import os
import sys
import re
from pathlib import Path
from typing import Any

PROJECT_ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(PROJECT_ROOT / "python"))

from arc3_runner import Arc3Runner, action_name, is_complex_action

KEY_SEQUENCES = {
    "\x1b[A": "UP",
    "\x1b[B": "DOWN",
    "\x1b[C": "RIGHT",
    "\x1b[D": "LEFT",
    "\x1b[1;2A": "SHIFT_UP",
    "\x1b[1;2B": "SHIFT_DOWN",
    "\x1b[1;2C": "SHIFT_RIGHT",
    "\x1b[1;2D": "SHIFT_LEFT",
    "\x1b[1;5A": "CTRL_UP",
    "\x1b[1;5B": "CTRL_DOWN",
    "\x1b[1;5C": "CTRL_RIGHT",
    "\x1b[1;5D": "CTRL_LEFT",
    "\x1b[2A": "SHIFT_UP",
    "\x1b[2B": "SHIFT_DOWN",
    "\x1b[2C": "SHIFT_RIGHT",
    "\x1b[2D": "SHIFT_LEFT",
    "\x1b[5A": "CTRL_UP",
    "\x1b[5B": "CTRL_DOWN",
    "\x1b[5C": "CTRL_RIGHT",
    "\x1b[5D": "CTRL_LEFT",
    # Common rxvt/tmux modifier forms.
    "\x1b[a": "SHIFT_UP",
    "\x1b[b": "SHIFT_DOWN",
    "\x1b[c": "SHIFT_RIGHT",
    "\x1b[d": "SHIFT_LEFT",
    "\x1bO2A": "SHIFT_UP",
    "\x1bO2B": "SHIFT_DOWN",
    "\x1bO2C": "SHIFT_RIGHT",
    "\x1bO2D": "SHIFT_LEFT",
    # Modern terminal Ctrl+digit encodings (kitty CSI-u / xterm modifyOtherKeys).
    "\x1b[49;5u": "CTRL_1",
    "\x1b[50;5u": "CTRL_2",
    "\x1b[51;5u": "CTRL_3",
    "\x1b[52;5u": "CTRL_4",
    "\x1b[53;5u": "CTRL_5",
    "\x1b[27;5;49~": "CTRL_1",
    "\x1b[27;5;50~": "CTRL_2",
    "\x1b[27;5;51~": "CTRL_3",
    "\x1b[27;5;52~": "CTRL_4",
    "\x1b[27;5;53~": "CTRL_5",
    # Alt+digit fallback, usable on ordinary terminals.
    "\x1b1": "CTRL_1",
    "\x1b2": "CTRL_2",
    "\x1b3": "CTRL_3",
    "\x1b4": "CTRL_4",
    "\x1b5": "CTRL_5",
}

FALLBACK_ACTION_KEYS = "bdfijkmnoqtuxyz"


def read_key() -> str:
    """Read one keypress, including modified arrow escape sequences."""
    if os.name == "nt":
        # msvcrt.getwch() loses modifier state for arrow keys.  Use the
        # Windows Console API so Shift+Arrow and Ctrl+Arrow remain distinct.
        import ctypes
        from ctypes import wintypes

        STD_INPUT_HANDLE = -10
        KEY_EVENT = 0x0001

        SHIFT_PRESSED = 0x0010
        LEFT_CTRL_PRESSED = 0x0008
        RIGHT_CTRL_PRESSED = 0x0004
        LEFT_ALT_PRESSED = 0x0002
        RIGHT_ALT_PRESSED = 0x0001

        VK_LEFT = 0x25
        VK_UP = 0x26
        VK_RIGHT = 0x27
        VK_DOWN = 0x28
        VK_RETURN = 0x0D
        VK_ESCAPE = 0x1B

        class CHAR_UNION(ctypes.Union):
            _fields_ = [("UnicodeChar", wintypes.WCHAR),
                        ("AsciiChar", wintypes.CHAR)]

        class KEY_EVENT_RECORD(ctypes.Structure):
            _fields_ = [
                ("bKeyDown", wintypes.BOOL),
                ("wRepeatCount", wintypes.WORD),
                ("wVirtualKeyCode", wintypes.WORD),
                ("wVirtualScanCode", wintypes.WORD),
                ("uChar", CHAR_UNION),
                ("dwControlKeyState", wintypes.DWORD),
            ]

        class EVENT_UNION(ctypes.Union):
            _fields_ = [("KeyEvent", KEY_EVENT_RECORD),
                        ("_padding", ctypes.c_byte * 16)]

        class INPUT_RECORD(ctypes.Structure):
            _fields_ = [("EventType", wintypes.WORD),
                        ("Event", EVENT_UNION)]

        kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
        handle = kernel32.GetStdHandle(STD_INPUT_HANDLE)
        record = INPUT_RECORD()
        count = wintypes.DWORD()

        arrows = {
            VK_UP: "UP",
            VK_DOWN: "DOWN",
            VK_LEFT: "LEFT",
            VK_RIGHT: "RIGHT",
        }

        while True:
            ok = kernel32.ReadConsoleInputW(
                handle, ctypes.byref(record), 1, ctypes.byref(count)
            )
            if not ok:
                raise OSError(ctypes.get_last_error(), "ReadConsoleInputW failed")
            if record.EventType != KEY_EVENT:
                continue

            event = record.Event.KeyEvent
            if not event.bKeyDown:
                continue

            vk = event.wVirtualKeyCode
            state = event.dwControlKeyState
            shift = bool(state & SHIFT_PRESSED)
            ctrl = bool(state & (LEFT_CTRL_PRESSED | RIGHT_CTRL_PRESSED))
            alt = bool(state & (LEFT_ALT_PRESSED | RIGHT_ALT_PRESSED))

            if vk in arrows:
                prefix = ""
                if ctrl and shift:
                    prefix = "CTRL_SHIFT_"
                elif ctrl:
                    prefix = "CTRL_"
                elif shift:
                    prefix = "SHIFT_"
                return prefix + arrows[vk]

            if vk == VK_RETURN:
                return "\r"
            if vk == VK_ESCAPE:
                return "\x1b"

            char = event.uChar.UnicodeChar
            if not char or char == "\x00":
                continue

            # Preserve Alt+1..5 as the portable control-menu fallback.
            if alt and char in "12345":
                return f"CTRL_{char}"
            return char

    import select
    import termios
    import tty

    fd = sys.stdin.fileno()
    old_settings = termios.tcgetattr(fd)
    try:
        tty.setraw(fd)
        first = sys.stdin.read(1)
        if first != "\x1b":
            return first

        sequence = first
        while len(sequence) < 16:
            ready, _, _ = select.select([sys.stdin], [], [], 0.12)
            if not ready:
                break
            sequence += sys.stdin.read(1)
            # CSI/SS3 sequences end with a byte in the 0x40-0x7e range.
            # Do not treat the initial '[' or 'O' introducer as the final byte.
            if len(sequence) >= 3 and 0x40 <= ord(sequence[-1]) <= 0x7E:
                break
        mapped = KEY_SEQUENCES.get(sequence)
        if mapped is not None:
            return mapped

        # Generic CSI/SS3 arrow decoder.  This handles terminals that emit
        # slightly different parameter forms for modified arrows.
        match = re.fullmatch(r"\x1b(?:\[|O)(?:(\d+)(?:;(\d+))?)?([ABCD])", sequence)
        if match:
            first_param, modifier, final = match.groups()
            direction = {"A": "UP", "B": "DOWN", "C": "RIGHT", "D": "LEFT"}[final]
            # xterm modifier convention: 2=Shift, 5=Ctrl, 6=Ctrl+Shift.
            effective_modifier = modifier or (first_param if first_param in {"2", "5", "6"} else None)
            if effective_modifier == "2":
                return f"SHIFT_{direction}"
            if effective_modifier == "5":
                return f"CTRL_{direction}"
            if effective_modifier == "6":
                return f"CTRL_SHIFT_{direction}"
            return direction

        return sequence
    finally:
        termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)


def build_keymap(runner: Arc3Runner) -> tuple[dict[str, Any], list[dict[str, Any]]]:
    mapping: dict[str, Any] = {}
    rows: list[dict[str, Any]] = []
    assigned: set[int] = set()

    # Number keys are reserved for GPT/Prolog mode commands.
    standard = {
        "ACTION1": (("UP",), "↑"),
        "ACTION2": (("DOWN",), "↓"),
        "ACTION3": (("LEFT",), "←"),
        "ACTION4": (("RIGHT",), "→"),
        "ACTION5": ((" ",), "Space"),
        "ACTION6": (("c",), "c"),
        "ACTION7": (("\x1a",), "Ctrl-Z"),
    }

    for action in runner.action_space:
        name = action_name(action).upper()
        if name not in standard:
            continue
        keys, display = standard[name]
        for key in keys:
            mapping[key] = action
        rows.append({"key": display, "action": action})
        assigned.add(id(action))

    fallback = iter(FALLBACK_ACTION_KEYS)
    reserved = {"g", "p", "r", "R", "l", "L", "a", "h", "s", "q", "w", "e", "v", "x", "c", "?", "."}
    for action in runner.action_space:
        if id(action) in assigned:
            continue
        key = next((k for k in fallback if k not in reserved), None)
        if key is None:
            raise RuntimeError("Too many legal actions for available fallback keys")
        mapping[key] = action
        rows.append({"key": key, "action": action})

    return mapping, rows


def choose_coordinate() -> tuple[int, int] | None:
    print("\nComplex action selected.")
    x_text = input("x [0-63, blank cancels]: ").strip()
    if not x_text:
        return None
    y_text = input("y [0-63, blank cancels]: ").strip()
    if not y_text:
        return None
    x, y = int(x_text), int(y_text)
    if not (0 <= x <= 63 and 0 <= y <= 63):
        raise ValueError("Coordinates must be between 0 and 63")
    return x, y


def print_controls(runner: Arc3Runner, rows: list[dict[str, Any]]) -> None:
    print("\nARC3 DEBUGGER")
    print("Game: " + "  ".join(f"({row['key']}) {action_name(row['action'])}" for row in rows))
    print("Select: (Shift+←/→) Game  (Shift+↑/↓) Level")
    print("Steps: (Ctrl+←/→) Prev/Next  (Ctrl+↑/↓) First/Latest")
    print("Mode: (g) GPT  (p) Prolog  (1-6) Mode Command")
    print("Reset: (r) Reset Level  (R) Restart Game")
    print("Info: (L) Games/Levels  (l) Current  (a) Actions  (h) History  (s) Score  (?) Help")
    print("Run: (Enter) Redraw  (x) Pause  (.) Step  (v) Replay")
    print("Files: (w) Save History  (e) Export State  (q) Quit")


def list_games(runner: Arc3Runner, games: list[Any], selected_index: int) -> None:
    print("\nAvailable games:")
    for index, game in enumerate(games):
        info = runner.game_info(game)
        marker = ">" if index == selected_index else " "
        levels = info["level_count"] if info["level_count"] is not None else "?"
        print(f" {marker} {index + 1:>2}. {info['game_id']:<12} levels={levels:<3} {info['title']}")


def show_history(runner: Arc3Runner, cursor: int | None = None) -> None:
    history = runner.history()
    if not history:
        print("\nNo actions recorded.")
        return
    print("\nHistory:")
    for index, item in enumerate(history):
        marker = ">" if cursor == index else " "
        print(f" {marker} {item['step']:>3}: {item['action']} {item['data']} state={item['state']}")



CONTROL_MODES = {
    "gpt": {
        "title": "GPT",
        1: "Print/Edit GPT prompts",
        2: "Full state analysis → all .pl artifacts",
        3: "Recompute differences.pl",
        4: "Recompute turtle_from_image.pl",
        5: "Recompute turtle_from_diff.pl",
        6: "Recompute similarities.pl",
    },
    "prolog": {
        "title": "Prolog",
        1: "Print/Edit Prolog description",
        2: "Full state analysis → all .pl artifacts",
        3: "Recompute differences.pl",
        4: "Recompute turtle_from_image.pl",
        5: "Recompute turtle_from_diff.pl",
        6: "Recompute similarities.pl",
    },
}


def print_mode_menu(mode: str) -> None:
    menu = CONTROL_MODES[mode]
    print(f"\n{menu['title']} MODE: " + "  ".join(f"({n}) {menu[n]}" for n in range(1, 7)))


def dispatch_control_mode(runner: Arc3Runner, mode: str, command_number: int) -> None:
    method_name = f"{mode}_command_{command_number}"
    method = getattr(runner, method_name, None)
    if callable(method):
        method()
        return
    print(f"Not implemented yet: [{mode.upper()}] {CONTROL_MODES[mode][command_number]}")


def main() -> None:
    parser = argparse.ArgumentParser(description="Single-key ARC3 debugger runner")
    parser.add_argument("game_id", nargs="?", default="ls20")
    parser.add_argument("--render-mode", default="terminal")
    args = parser.parse_args()

    runner = Arc3Runner(args.game_id, render_mode=args.render_mode)
    games = runner.available_games()
    selected_game = next(
        (
            i
            for i, game in enumerate(games)
            if runner.game_info(game)["game_id"] == runner.game_id
            or runner.game_info(game)["game_id"].startswith(runner.game_id + "-")
        ),
        0,
    )
    history_cursor: int | None = None
    paused = False
    active_control_mode: str | None = None
    action_mapping, action_rows = build_keymap(runner)
    print_controls(runner, action_rows)

    while True:
        print(
            f"\n[{runner.game_id} level={runner.current_level_label()}] "
            f"step={len(runner.records)} state={runner.state_name() or '-'} "
            f"{'PAUSED ' if paused else ''}> ",
            end="",
            flush=True,
        )
        key = read_key()
        lookup = key if key in KEY_SEQUENCES.values() or key in {" ", "\x1a"} else key.lower()

        labels = {
            "UP": "↑", "DOWN": "↓", "LEFT": "←", "RIGHT": "→",
            "SHIFT_UP": "Shift+↑", "SHIFT_DOWN": "Shift+↓",
            "SHIFT_LEFT": "Shift+←", "SHIFT_RIGHT": "Shift+→",
            "CTRL_UP": "Ctrl+↑", "CTRL_DOWN": "Ctrl+↓",
            "CTRL_LEFT": "Ctrl+←", "CTRL_RIGHT": "Ctrl+→",
            " ": "Space", "\x1a": "Ctrl-Z", "\r": "Enter", "\n": "Enter",
        }
        print(labels.get(key, key if key.isprintable() else repr(key)))

        try:
            if key in {"\x03", "\x04"} or lookup == "q":
                break
            if lookup == "?":
                action_mapping, action_rows = build_keymap(runner)
                print_controls(runner, action_rows)
                continue

            if key == "g":
                active_control_mode = "gpt"
                print_mode_menu(active_control_mode)
                continue
            if key == "p":
                active_control_mode = "prolog"
                print_mode_menu(active_control_mode)
                continue
            if key in {"1", "2", "3", "4", "5", "6"}:
                if active_control_mode is None:
                    print("Select mode first: (g) GPT or (p) Prolog")
                    continue
                dispatch_control_mode(runner, active_control_mode, int(key))
                continue
            if key == "\x1b":
                active_control_mode = None
                print("Mode cleared.")
                continue

            if key == "L":
                games = runner.available_games()
                list_games(runner, games, selected_game)
                continue
            if key == "l":
                print(runner.current_selection_summary())
                continue

            if key in {"SHIFT_LEFT", "SHIFT_RIGHT"}:
                games = runner.available_games()
                if not games:
                    print("No games available.")
                    continue
                selected_game = (selected_game + (-1 if key == "SHIFT_LEFT" else 1)) % len(games)
                game_id = runner.game_info(games[selected_game])["game_id"]
                runner.switch_game(game_id)
                action_mapping, action_rows = build_keymap(runner)
                history_cursor = None
                print(f"Selected game {selected_game + 1}/{len(games)}: {game_id}")
                continue

            if key in {"SHIFT_UP", "SHIFT_DOWN"}:
                delta = -1 if key == "SHIFT_UP" else 1
                runner.change_level(delta)
                history_cursor = None
                print(runner.current_selection_summary())
                continue

            if key in {"CTRL_LEFT", "CTRL_RIGHT", "CTRL_UP", "CTRL_DOWN"}:
                count = len(runner.records)
                if count == 0:
                    print("No recorded steps.")
                    continue
                if key == "CTRL_UP":
                    history_cursor = 0
                elif key == "CTRL_DOWN":
                    history_cursor = count - 1
                elif key == "CTRL_LEFT":
                    history_cursor = max(0, (count - 1 if history_cursor is None else history_cursor - 1))
                else:
                    history_cursor = min(count - 1, (0 if history_cursor is None else history_cursor + 1))
                runner.show_record(history_cursor)
                continue

            if key == "R":
                runner.restart_game()
                history_cursor = None
                action_mapping, action_rows = build_keymap(runner)
                print("Game restarted from level 1.")
                continue
            if key == "r":
                runner.reset()
                history_cursor = None
                print("Current level reset.")
                continue

            if key == "h":
                show_history(runner, history_cursor)
                continue
            if key == "s":
                print("\nScorecard:")
                print(runner.scorecard())
                continue
            if key == "a":
                for row in runner.action_table():
                    print(f"  {row['index']:>2}: {row['name']}{' complex' if row['complex'] else ''}")
                continue

            if key in {"\r", "\n"}:
                runner.redraw()
                continue
            if key == "x":
                paused = not paused
                print("Paused." if paused else "Resumed.")
                continue
            if key == ".":
                runner.execute_queued_step()
                continue
            if key == "v":
                runner.replay()
                history_cursor = None
                print("Replay complete.")
                continue
            if key == "w":
                output = runner.save_history(Path.cwd() / f"{runner.game_id}_history.json")
                print(f"Saved history: {output}")
                continue
            if key == "e":
                output = runner.export_state(Path.cwd() / f"{runner.game_id}_state.json")
                print(f"Exported state: {output}")
                continue

            action = action_mapping.get(lookup)
            if action is None:
                if isinstance(key, str) and key.startswith("\x1b"):
                    print(f"Unrecognized key sequence: {key.encode('unicode_escape').decode()}")
                else:
                    print("No action mapped. Press ? for controls.")
                continue
            if is_complex_action(action):
                coordinates = choose_coordinate()
                if coordinates is None:
                    print("Action cancelled.")
                    continue
                runner.step(action, x=coordinates[0], y=coordinates[1])
            else:
                runner.step(action)
            history_cursor = None
            print("state:", runner.state_name())
            if runner.is_win():
                print("WIN")
            elif runner.is_game_over():
                print("GAME OVER — press r to reset.")
        except Exception as exc:
            print(f"error: {exc}")


if __name__ == "__main__":
    main()
