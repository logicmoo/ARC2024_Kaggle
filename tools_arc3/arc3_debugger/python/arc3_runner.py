from __future__ import annotations

import contextlib
import io
import json
from dataclasses import asdict, dataclass, is_dataclass
from enum import Enum
from pathlib import Path
from typing import Any, Iterable, Mapping, Sequence

import arc_agi

try:
    from arcengine import GameAction, GameState
except ImportError as exc:
    raise RuntimeError(
        "ARC-AGI toolkit is not installed. Install the toolkit used by your "
        "ARC-AGI checkout before importing Arc3Runner."
    ) from exc


def _jsonable(value: Any, depth: int = 0) -> Any:
    """Best-effort conversion of toolkit values into compact JSON-safe data."""
    if depth > 4:
        return repr(value)

    if value is None or isinstance(value, (str, int, float, bool)):
        return value

    if isinstance(value, Enum):
        return value.name

    if is_dataclass(value):
        return _jsonable(asdict(value), depth + 1)

    if isinstance(value, Mapping):
        return {
            str(k): _jsonable(v, depth + 1)
            for k, v in value.items()
        }

    if isinstance(value, (list, tuple)):
        return [_jsonable(v, depth + 1) for v in value]

    if hasattr(value, "model_dump"):
        try:
            return _jsonable(value.model_dump(), depth + 1)
        except Exception:
            pass

    if hasattr(value, "dict"):
        try:
            return _jsonable(value.dict(), depth + 1)
        except Exception:
            pass

    if hasattr(value, "__dict__"):
        public = {
            k: v for k, v in vars(value).items()
            if not k.startswith("_")
        }
        if public:
            return _jsonable(public, depth + 1)

    return repr(value)


def action_name(action: Any) -> str:
    return getattr(action, "name", str(action))


def is_complex_action(action: Any) -> bool:
    method = getattr(action, "is_complex", None)
    if callable(method):
        return bool(method())
    return False


@dataclass
class StepRecord:
    step: int
    action: str
    data: dict[str, Any]
    state: str | None
    observation: Any
    terminal_output: str = ""

    def as_dict(self) -> dict[str, Any]:
        return asdict(self)


class Arc3Runner:
    """Small debuggable wrapper around arc_agi.Arcade environments."""

    def __init__(
        self,
        game_id: str = "ls20",
        render_mode: str | None = "terminal",
        arc_api_key: str | None = None,
        capture_terminal: bool = False,
    ) -> None:
        self.game_id = game_id
        self.render_mode = render_mode
        self.capture_terminal = capture_terminal
        self.arc = (
            arc_agi.Arcade(arc_api_key=arc_api_key)
            if arc_api_key
            else arc_agi.Arcade()
        )
        self.env: Any = None
        self.current_observation: Any = None
        self.records: list[StepRecord] = []
        self.open()

    def open(self) -> Any:
        self.env = self.arc.make(self.game_id, render_mode=self.render_mode)
        if self.env is None:
            raise RuntimeError(f"Failed to create ARC3 environment: {self.game_id}")
        self.current_observation = None
        self.records.clear()
        return self.env

    @property
    def action_space(self) -> list[Any]:
        return list(self.env.action_space)

    def action_table(self) -> list[dict[str, Any]]:
        return [
            {
                "index": i,
                "name": action_name(action),
                "complex": is_complex_action(action),
                "repr": repr(action),
            }
            for i, action in enumerate(self.action_space)
        ]

    def resolve_action(self, action: Any) -> Any:
        if action in self.action_space:
            return action

        if isinstance(action, int):
            try:
                return self.action_space[action]
            except IndexError as exc:
                raise ValueError(f"Action index out of range: {action}") from exc

        wanted = str(action).upper()
        for candidate in self.action_space:
            names = {
                action_name(candidate).upper(),
                str(candidate).upper(),
                repr(candidate).upper(),
            }
            if wanted in names or any(name.endswith("." + wanted) for name in names):
                return candidate

        enum_member = getattr(GameAction, wanted, None)
        if enum_member is not None and enum_member in self.action_space:
            return enum_member

        legal = ", ".join(action_name(a) for a in self.action_space)
        raise ValueError(f"Unknown or illegal action {action!r}. Legal actions: {legal}")

    def step(
        self,
        action: Any,
        *,
        x: int | None = None,
        y: int | None = None,
        data: Mapping[str, Any] | None = None,
        reasoning: Mapping[str, Any] | None = None,
    ) -> Any:
        resolved = self.resolve_action(action)
        payload = dict(data or {})

        if x is not None:
            payload["x"] = int(x)
        if y is not None:
            payload["y"] = int(y)

        if is_complex_action(resolved):
            if "x" not in payload or "y" not in payload:
                raise ValueError(
                    f"{action_name(resolved)} is complex and requires x and y."
                )

        stream = io.StringIO()
        manager = contextlib.redirect_stdout(stream) if self.capture_terminal else contextlib.nullcontext()

        with manager:
            if reasoning is None:
                observation = self.env.step(resolved, data=payload)
            else:
                observation = self.env.step(
                    resolved,
                    data=payload,
                    reasoning=dict(reasoning),
                )

        terminal_output = stream.getvalue()
        self.current_observation = observation

        state_value = getattr(observation, "state", None) if observation is not None else None
        state_name = getattr(state_value, "name", str(state_value)) if state_value is not None else None

        self.records.append(
            StepRecord(
                step=len(self.records),
                action=action_name(resolved),
                data=_jsonable(payload),
                state=state_name,
                observation=_jsonable(observation),
                terminal_output=terminal_output,
            )
        )
        return observation

    def reset(self, *, clear_history: bool = True) -> Any:
        """Reset the current level."""
        result = self.env.reset()
        self.current_observation = result
        if clear_history:
            self.records.clear()
        return result

    def restart_game(self) -> Any:
        """Recreate the environment and return to level 1."""
        self.env = self.arc.make(self.game_id, render_mode=self.render_mode)
        if self.env is None:
            raise RuntimeError(f"Failed to restart ARC3 game: {self.game_id}")
        self.current_observation = None
        self.records.clear()
        return self.env

    def state_name(self) -> str | None:
        state = getattr(self.current_observation, "state", None)
        return getattr(state, "name", str(state)) if state is not None else None

    def is_win(self) -> bool:
        return getattr(self.current_observation, "state", None) == GameState.WIN

    def is_game_over(self) -> bool:
        return getattr(self.current_observation, "state", None) == GameState.GAME_OVER

    def history(self) -> list[dict[str, Any]]:
        return [record.as_dict() for record in self.records]

    def save_history(self, path: str | Path) -> Path:
        output = Path(path)
        output.write_text(
            json.dumps(self.history(), indent=2, ensure_ascii=False),
            encoding="utf-8",
        )
        return output

    def replay(
        self,
        records: Sequence[StepRecord | Mapping[str, Any]] | None = None,
    ) -> Any:
        source = list(records) if records is not None else self.history()
        self.reset(clear_history=True)

        observation = self.current_observation
        for record in source:
            item = record.as_dict() if isinstance(record, StepRecord) else dict(record)
            observation = self.step(
                item["action"],
                data=item.get("data") or {},
            )
        return observation

    def scorecard(self) -> Any:
        return self.arc.get_scorecard()

    def summary_for_prolog(self) -> dict[str, Any]:
        """Stable, intentionally small interface for a symbolic controller."""
        return {
            "game_id": self.game_id,
            "state": self.state_name(),
            "legal_actions": self.action_table(),
            "step_count": len(self.records),
            "observation": _jsonable(self.current_observation),
            "history": [
                {
                    "step": r.step,
                    "action": r.action,
                    "data": r.data,
                    "state": r.state,
                }
                for r in self.records
            ],
        }
