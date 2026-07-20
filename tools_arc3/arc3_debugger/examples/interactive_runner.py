from __future__ import annotations

import argparse
import os
import sys
from pathlib import Path
from typing import Any

PROJECT_ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(PROJECT_ROOT / "python"))

from arc3_runner import Arc3Runner, action_name, is_complex_action


ARROW_SEQUENCES = {
    "\x1b[A": "UP",
    "\x1b[B": "DOWN",
    "\x1b[C": "RIGHT",
    "\x1b[D": "LEFT",
}

FALLBACK_ACTION_KEYS = "1234567890abcdefghijklmnopqrstuvwxyz"


def read_key() -> str:
    """Read one keypress or one complete arrow-key sequence."""
    if os.name == "nt":
        import msvcrt

        key = msvcrt.getwch()

        if key in ("\x00", "\xe0"):
            second = msvcrt.getwch()
            return {
                "H": "UP",
                "P": "DOWN",
                "M": "RIGHT",
                "K": "LEFT",
            }.get(second, key + second)

        return key

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

        # Arrow keys arrive as a short escape sequence. Read any immediately
        # available bytes without blocking indefinitely.
        while len(sequence) < 3:
            ready, _, _ = select.select([sys.stdin], [], [], 0.03)
            if not ready:
                break
            sequence += sys.stdin.read(1)

        return ARROW_SEQUENCES.get(sequence, sequence)
    finally:
        termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)


def normalized_action_tokens(action: Any) -> set[str]:
    """
    Produce several normalized names so mappings remain useful across
    toolkit versions and game-specific action enums.
    """
    values = {
        action_name(action),
        str(action),
        repr(action),
    }

    tokens: set[str] = set()

    for value in values:
        normalized = value.upper()

        for separator in ".:-/ ":
            normalized = normalized.replace(separator, "_")

        parts = [part for part in normalized.split("_") if part]
        tokens.update(parts)
        tokens.add("_".join(parts))

    return tokens


def infer_direction(action: Any) -> str | None:
    """
    Infer a directional meaning only when the action name makes it explicit.

    We intentionally do not assume ACTION1 means UP, ACTION2 means DOWN, etc.
    Games with opaque ACTION<n> names retain numbered fallback keys.
    """
    tokens = normalized_action_tokens(action)

    aliases = {
        "UP": {"UP", "NORTH", "MOVEUP", "MOVE_UP", "GOUP", "GO_UP"},
        "DOWN": {"DOWN", "SOUTH", "MOVEDOWN", "MOVE_DOWN", "GODOWN", "GO_DOWN"},
        "LEFT": {"LEFT", "WEST", "MOVELEFT", "MOVE_LEFT", "GOLEFT", "GO_LEFT"},
        "RIGHT": {"RIGHT", "EAST", "MOVERIGHT", "MOVE_RIGHT", "GORIGHT", "GO_RIGHT"},
    }

    matches = [
        direction
        for direction, names in aliases.items()
        if tokens.intersection(names)
    ]

    return matches[0] if len(matches) == 1 else None



def build_keymap(runner: Arc3Runner) -> tuple[dict[str, Any], list[dict[str, Any]]]:
    """Build standardized ARC controls plus safe fallbacks."""
    mapping: dict[str, Any] = {}
    rows: list[dict[str, Any]] = []
    assigned_ids: set[int] = set()

    standard = {
        "ACTION1": ("UP", "1", "↑ / 1"),
        "ACTION2": ("DOWN", "2", "↓ / 2"),
        "ACTION3": ("LEFT", "3", "← / 3"),
        "ACTION4": ("RIGHT", "4", "→ / 4"),
        "ACTION5": (" ", "5", "Space / 5"),
        "ACTION6": ("6", None, "6"),
        "ACTION7": ("\x1a", "7", "Ctrl-Z / 7"),
    }

    for action in runner.action_space:
        name = action_name(action).upper()
        if name not in standard:
            continue
        primary, alias, display = standard[name]
        mapping[primary] = action
        if alias is not None:
            mapping[alias] = action
        assigned_ids.add(id(action))
        rows.append({"key": display, "action": action, "semantic": True})

    for action in runner.action_space:
        if id(action) in assigned_ids:
            continue
        direction = infer_direction(action)
        if direction and direction not in mapping:
            mapping[direction] = action
            assigned_ids.add(id(action))
            rows.append({
                "key": {"UP": "↑", "DOWN": "↓", "LEFT": "←", "RIGHT": "→"}[direction],
                "action": action,
                "semantic": True,
            })

    reserved = {"r", "R", "h", "s", "a", "?", "q", " ", "1", "2", "3", "4", "5", "6", "7"}
    fallback_keys = (
        key for key in FALLBACK_ACTION_KEYS
        if key not in reserved and key not in mapping
    )

    for action in runner.action_space:
        if id(action) in assigned_ids:
            continue
        key = next(fallback_keys, None)
        if key is None:
            raise RuntimeError("Too many legal actions for available fallback keys.")
        mapping[key] = action
        assigned_ids.add(id(action))
        rows.append({"key": key, "action": action, "semantic": False})

    return mapping, rows


def choose_coordinate() -> tuple[int, int] | None:
    print("\nComplex action selected.")
    x_text = input("x [0-63, blank cancels]: ").strip()
    if not x_text:
        return None

    y_text = input("y [0-63, blank cancels]: ").strip()
    if not y_text:
        return None

    x = int(x_text)
    y = int(y_text)

    if not (0 <= x <= 63 and 0 <= y <= 63):
        raise ValueError("Coordinates must be between 0 and 63.")

    return x, y


def print_controls(
    runner: Arc3Runner,
    mapping: dict[str, Any],
    rows: list[dict[str, Any]],
) -> None:
    print("\nARC3 Interactive Debugger")
    print("=========================")
    print("Action keys:")

    for row in rows:
        action = row["action"]
        suffix = " (asks for x,y)" if is_complex_action(action) else ""
        print(f"  {row['key']:<2} {action_name(action)}{suffix}")

    print("\nStandard aliases:")
    print("  ↑/1 ACTION1   ↓/2 ACTION2")
    print("  ←/3 ACTION3   →/4 ACTION4")
    print("  Space/5 ACTION5   6 ACTION6   Ctrl-Z/7 ACTION7")
    print("\nDebugger keys:")
    print("  r  reset current level")
    print("  R  restart from level 1")
    print("  h  show history")
    print("  s  show scorecard")
    print("  a  show legal actions")
    print("  ?  reprint controls")
    print("  q  quit")
    print()


def show_history(runner: Arc3Runner) -> None:
    history = runner.history()

    if not history:
        print("\nNo actions recorded.")
        return

    print("\nHistory:")
    for item in history:
        print(
            f"  {item['step']:>3}: "
            f"{item['action']} "
            f"{item['data']} "
            f"state={item['state']}"
        )


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Single-key ARC3 debugger runner"
    )
    parser.add_argument("game_id", nargs="?", default="ls20")
    parser.add_argument("--render-mode", default="terminal")
    args = parser.parse_args()

    runner = Arc3Runner(
        args.game_id,
        render_mode=args.render_mode,
    )

    action_mapping, action_rows = build_keymap(runner)
    print_controls(runner, action_mapping, action_rows)

    while True:
        print(
            f"\n[{runner.game_id}] "
            f"step={len(runner.records)} "
            f"state={runner.state_name() or '-'} "
            f"> ",
            end="",
            flush=True,
        )

        key = read_key()
        lookup_key = key if key in {"UP", "DOWN", "LEFT", "RIGHT", "\x1a", " "} else key.lower()

        if key in {"UP", "DOWN", "LEFT", "RIGHT"}:
            print({"UP": "↑", "DOWN": "↓", "LEFT": "←", "RIGHT": "→"}[key])
        elif key == " ":
            print("Space")
        elif key == "\x1a":
            print("Ctrl-Z")
        elif key.isprintable():
            print(key)
        else:
            print(repr(key))

        try:
            if lookup_key in {"q", "\x03", "\x04"}:
                break

            if lookup_key == "?":
                action_mapping, action_rows = build_keymap(runner)
                print_controls(runner, action_mapping, action_rows)
                continue

            if key == "R":
                runner.restart_game()
                action_mapping, action_rows = build_keymap(runner)
                print("Game restarted from level 1.")
                continue

            if lookup_key == "r":
                runner.reset()
                action_mapping, action_rows = build_keymap(runner)
                print("Current level reset.")
                continue

            if lookup_key == "h":
                show_history(runner)
                continue

            if lookup_key == "s":
                print("\nScorecard:")
                print(runner.scorecard())
                continue

            if lookup_key == "a":
                print("\nLegal actions:")
                for row in runner.action_table():
                    suffix = " complex" if row["complex"] else ""
                    print(
                        f"  {row['index']:>2}: "
                        f"{row['name']}{suffix}"
                    )
                continue

            action = action_mapping.get(lookup_key)
            if action is None:
                print("No action is mapped to that key. Press ? for controls.")
                continue

            if is_complex_action(action):
                coordinates = choose_coordinate()
                if coordinates is None:
                    print("Action cancelled.")
                    continue

                x, y = coordinates
                runner.step(action, x=x, y=y)
            else:
                runner.step(action)

            print("state:", runner.state_name())

            if runner.is_win():
                print("WIN")
            elif runner.is_game_over():
                print("GAME OVER — press r to reset.")

        except Exception as exc:
            print(f"error: {exc}")


if __name__ == "__main__":
    main()
