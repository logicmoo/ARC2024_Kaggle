from __future__ import annotations

import contextlib
import io
import json
import os
from dataclasses import asdict, dataclass, is_dataclass
from enum import Enum
from pathlib import Path
from typing import Any, Mapping, Sequence

import arc_agi

from action_tree import ActionTreeStore, StateNode
from image_codec import extract_latest_frame, frame_to_png_bytes

try:
    from arcengine import GameAction, GameState
except ImportError as exc:
    raise RuntimeError(
        "ARC-AGI toolkit is not installed. Install the toolkit used by your "
        "ARC-AGI checkout before importing Arc3Runner."
    ) from exc


def _jsonable(value: Any, depth: int = 0) -> Any:
    """Best-effort conversion of toolkit values into compact JSON-safe data."""
    if depth > 5:
        return repr(value)
    if value is None or isinstance(value, (str, int, float, bool)):
        return value
    if isinstance(value, Enum):
        return value.name
    if is_dataclass(value):
        return _jsonable(asdict(value), depth + 1)
    if isinstance(value, Mapping):
        return {str(k): _jsonable(v, depth + 1) for k, v in value.items()}
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
        public = {k: v for k, v in vars(value).items() if not k.startswith("_")}
        if public:
            return _jsonable(public, depth + 1)
    return repr(value)


def action_name(action: Any) -> str:
    return getattr(action, "name", str(action))


def is_complex_action(action: Any) -> bool:
    method = getattr(action, "is_complex", None)
    return bool(method()) if callable(method) else False


@dataclass
class StepRecord:
    step: int
    action: str
    data: dict[str, Any]
    state: str | None
    observation: Any
    terminal_output: str = ""
    frame_path: str | None = None
    tree_node: str | None = None

    def as_dict(self) -> dict[str, Any]:
        return asdict(self)


class Arc3Runner:
    """Debuggable ARC3 environment with a persistent deterministic action tree."""

    def __init__(
        self,
        game_id: str = "ls20",
        render_mode: str | None = "terminal",
        arc_api_key: str | None = None,
        capture_terminal: bool = False,
        tree_root: str | Path | None = None,
    ) -> None:
        self.game_id = game_id
        self.render_mode = render_mode
        self.capture_terminal = capture_terminal
        self.tree_root = Path(
            tree_root
            or os.environ.get("ARC3_TREE_ROOT")
            or Path(__file__).resolve().parents[1] / "action_trees"
        ).resolve()
        self.arc = (
            arc_agi.Arcade(arc_api_key=arc_api_key)
            if arc_api_key
            else arc_agi.Arcade()
        )
        self.env: Any = None
        self.current_observation: Any = None
        self.records: list[StepRecord] = []
        self.tree_store: ActionTreeStore | None = None
        self.current_node: StateNode | None = None
        self._gpt_analyzer: Any = None
        self.open()

    def _make_environment(self) -> Any:
        kwargs = {"render_mode": self.render_mode}
        try:
            return self.arc.make(self.game_id, include_frame_data=True, **kwargs)
        except TypeError:
            return self.arc.make(self.game_id, **kwargs)

    def open(self) -> Any:
        self.env = self._make_environment()
        if self.env is None:
            raise RuntimeError(f"Failed to create ARC3 environment: {self.game_id}")
        self.current_observation = getattr(self.env, "observation_space", None)
        self.records.clear()
        self._start_action_tree()
        return self.env

    def available_games(self) -> list[Any]:
        games = list(self.arc.get_environments() or [])
        return sorted(games, key=lambda game: str(getattr(game, "game_id", "")))

    @staticmethod
    def game_info(game: Any) -> dict[str, Any]:
        game_id = str(getattr(game, "game_id", "?"))
        title = str(getattr(game, "title", game_id))
        tags = list(getattr(game, "tags", []) or [])
        level_count = None
        for attr in ("level_count", "num_levels", "total_levels", "levels_count"):
            value = getattr(game, attr, None)
            if isinstance(value, int):
                level_count = value
                break
        if level_count is None:
            levels = getattr(game, "levels", None)
            if isinstance(levels, (list, tuple)):
                level_count = len(levels)
        return {
            "game_id": game_id,
            "title": title,
            "tags": tags,
            "level_count": level_count,
        }

    def switch_game(self, game_id: str) -> Any:
        old_game_id = self.game_id
        self.game_id = game_id
        try:
            return self.open()
        except Exception:
            self.game_id = old_game_id
            raise

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
        if is_complex_action(resolved) and ("x" not in payload or "y" not in payload):
            raise ValueError(f"{action_name(resolved)} is complex and requires x and y.")

        parent_node = self.current_node
        stream = io.StringIO()
        manager = (
            contextlib.redirect_stdout(stream)
            if self.capture_terminal
            else contextlib.nullcontext()
        )
        with manager:
            if reasoning is None:
                observation = self.env.step(resolved, data=payload)
            else:
                observation = self.env.step(
                    resolved,
                    data=payload,
                    reasoning=dict(reasoning),
                )

        self.current_observation = observation
        terminal_output = stream.getvalue()
        state_value = getattr(observation, "state", None) if observation is not None else None
        state_name = (
            getattr(state_value, "name", str(state_value))
            if state_value is not None
            else None
        )
        node = self._capture_transition(parent_node, action_name(resolved), payload)
        self.records.append(
            StepRecord(
                step=len(self.records),
                action=action_name(resolved),
                data=_jsonable(payload),
                state=state_name,
                observation=_jsonable(observation),
                terminal_output=terminal_output,
                frame_path=str(node.image_path) if node else None,
                tree_node=str(node.path) if node else None,
            )
        )
        return observation

    def reset(self, *, clear_history: bool = True) -> Any:
        result = self.env.reset()
        self.current_observation = result
        if clear_history:
            self.records.clear()
        self._start_action_tree()
        return result

    def restart_game(self) -> Any:
        return self.open()

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
            observation = self.step(item["action"], data=item.get("data") or {})
        return observation

    def scorecard(self) -> Any:
        return self.arc.get_scorecard()

    def current_level_label(self) -> str:
        for obj in (self.current_observation, self.env):
            for attr in ("level", "level_index", "current_level", "level_number"):
                value = getattr(obj, attr, None) if obj is not None else None
                if value is not None:
                    return str(value)
        return "1"

    def current_selection_summary(self) -> str:
        node = str(self.current_node.path) if self.current_node else "none"
        return f"game={self.game_id} level={self.current_level_label()} node={node}"

    def change_level(self, delta: int) -> Any:
        current = self.current_level_label()
        try:
            target = int(current) + delta
        except (TypeError, ValueError):
            target = delta
        for name in ("set_level", "select_level", "goto_level", "load_level"):
            method = getattr(self.env, name, None)
            if callable(method):
                result = method(target)
                self.current_observation = result
                self.records.clear()
                self._start_action_tree()
                return result
        raise RuntimeError("This environment does not expose direct level selection")

    def show_record(self, index: int) -> None:
        record = self.records[index]
        print(f"\nStep {record.step}: {record.action} {record.data} state={record.state}")
        if record.frame_path:
            print(f"image: {record.frame_path}")
        if record.tree_node:
            print(f"tree: {record.tree_node}")
        if record.terminal_output:
            print(record.terminal_output)
        else:
            print(json.dumps(record.observation, indent=2, ensure_ascii=False))

    def redraw(self) -> Any:
        render = getattr(self.env, "render", None)
        if callable(render):
            return render()
        if self.current_node is not None:
            print(f"Current image: {self.current_node.image_path}")
            return self.current_node.image_path
        if self.current_observation is not None:
            print(json.dumps(_jsonable(self.current_observation), indent=2, ensure_ascii=False))
            return self.current_observation
        print("No current observation to redraw.")
        return None

    def execute_queued_step(self) -> Any:
        for name in ("debug_step", "step_queued", "run_next", "next_step"):
            method = getattr(self.env, name, None)
            if callable(method):
                result = method()
                self.current_observation = result
                return result
        raise RuntimeError("No queued debugger-step API is available yet")

    def export_state(self, path: str | Path) -> Path:
        output = Path(path)
        payload = {
            "game_id": self.game_id,
            "level": self.current_level_label(),
            "state": self.state_name(),
            "tree_node": str(self.current_node.path) if self.current_node else None,
            "image": str(self.current_node.image_path) if self.current_node else None,
            "observation": _jsonable(self.current_observation),
        }
        output.write_text(json.dumps(payload, indent=2, ensure_ascii=False), encoding="utf-8")
        return output

    def _state_payload(self) -> dict[str, Any]:
        return {
            "state": self.state_name(),
            "observation": _jsonable(self.current_observation),
            "step_count": len(self.records),
        }

    def _current_png(self) -> bytes:
        frame = extract_latest_frame(
            self.current_observation,
            getattr(self.env, "observation_space", None),
            self.env,
        )
        return frame_to_png_bytes(frame)

    def _start_action_tree(self) -> None:
        self.tree_store = ActionTreeStore(
            self.tree_root,
            self.game_id,
            self.current_level_label(),
        )
        try:
            self.current_node = self.tree_store.create_initial(
                self._current_png(),
                self._state_payload(),
            )
        except Exception as exc:
            self.current_node = None
            print(f"warning: frame capture unavailable: {exc}")

    def _capture_transition(
        self,
        parent: StateNode | None,
        action: str,
        data: Mapping[str, Any],
    ) -> StateNode | None:
        if self.tree_store is None:
            self._start_action_tree()
        try:
            png = self._current_png()
            if self.tree_store is None:
                return None
            if parent is None:
                node = self.tree_store.create_initial(png, self._state_payload())
            else:
                node = self.tree_store.create_transition(
                    parent,
                    action,
                    data,
                    png,
                    self._state_payload(),
                )
            self.current_node = node
            return node
        except Exception as exc:
            print(f"warning: unable to store action-tree frame: {exc}")
            return None

    def _require_node(self) -> tuple[ActionTreeStore, StateNode]:
        if self.tree_store is None or self.current_node is None:
            raise RuntimeError("No captured state node is available")
        return self.tree_store, self.current_node

    def _analyzer(self):
        if self._gpt_analyzer is None:
            from gpt_bridge import GptArcAnalyzer

            prompts_path = Path(__file__).resolve().parents[1] / "prompts" / "gpt_prompts.json"
            self._gpt_analyzer = GptArcAnalyzer(prompts_path)
        return self._gpt_analyzer

    def gpt_command_1(self) -> None:
        self._analyzer().edit_prompts()

    def gpt_command_2(self) -> None:
        store, node = self._require_node()
        print(f"Full GPT analysis: {node.path}")
        try:
            result = self._analyzer().ensure_full_analysis(store, node)
        except Exception as exc:
            expected = (
                "object_registry.pl",
                "objects.pl",
                "differences.pl",
                "turtle_from_image.pl",
                "similarities.pl",
                "turtle_from_diff.pl",
                "rules.pl",
            )
            completed = [
                name
                for name in expected
                if (store.level_root / name).exists() or (node.path / name).exists()
            ]
            detail = ", ".join(completed) if completed else "none"
            raise RuntimeError(
                f"Full analysis stopped. Files already created or cached: {detail}. "
                f"Cause: {exc}"
            ) from exc

        ordered = (
            ("object_registry.pl", result["registry_path"], result["registry_called"]),
            ("objects.pl", result["objects_path"], result["objects_called"]),
            ("differences.pl", result["differences_path"], result["differences_called"]),
            ("turtle_from_image.pl", result["turtle_from_image_path"], result["turtle_from_image_called"]),
            ("similarities.pl", result["similarities_path"], result["similarities_called"]),
            ("turtle_from_diff.pl", result["turtle_from_diff_path"], result["turtle_from_diff_called"]),
            ("rules.pl", result["rules_path"], result["rules_called"]),
        )
        for label, path, called in ordered:
            if path is None:
                print(f"{label}: not applicable at the level root")
            else:
                print(f"{label}: {path} ({'generated/repaired' if called else 'cached'})")
        print(f"README.md: {node.readme_path}")
        print("Full GPT analysis complete.")

    def gpt_command_3(self) -> None:
        store, node = self._require_node()
        output, called = self._analyzer().ensure_differences(store, node)
        print(f"differences.pl: {output or 'no parent'} ({'GPT' if called else 'cached/no-op'})")

    def gpt_command_4(self) -> None:
        store, node = self._require_node()
        output, called = self._analyzer().generate_single_artifact(
            store, node, "redraw", "turtle_from_image.pl"
        )
        print(f"turtle_from_image.pl: {output} ({'GPT' if called else 'cached'})")

    def gpt_command_5(self) -> None:
        store, node = self._require_node()
        output, called = self._analyzer().generate_pair_artifact(
            store, node, "redraw_diff", "turtle_from_diff.pl"
        )
        print(f"turtle_from_diff.pl: {output or 'no parent'} ({'GPT' if called else 'cached/no-op'})")

    def gpt_command_6(self) -> None:
        store, node = self._require_node()
        output, called = self._analyzer().generate_pair_artifact(
            store, node, "similarity", "similarities.pl"
        )
        print(f"similarities.pl: {output or 'no parent'} ({'GPT' if called else 'cached/no-op'})")

    def _mode_command_placeholder(self, label: str) -> None:
        print(f"[mode hook] {label}")

    def prolog_command_1(self) -> None:
        self._mode_command_placeholder("Print/Edit Prolog description")

    def prolog_command_2(self) -> None:
        self._mode_command_placeholder("Current image to Prolog objects and Turtle form")

    def prolog_command_3(self) -> None:
        self._mode_command_placeholder("Diff from previous image")

    def prolog_command_4(self) -> None:
        self._mode_command_placeholder("Redraw game from generated Turtle")

    def prolog_command_5(self) -> None:
        self._mode_command_placeholder("Redraw game from diff")

    def prolog_command_6(self) -> None:
        self._mode_command_placeholder("Attempt object-similarity matching")

    def summary_for_prolog(self) -> dict[str, Any]:
        return {
            "game_id": self.game_id,
            "level": self.current_level_label(),
            "state": self.state_name(),
            "legal_actions": self.action_table(),
            "step_count": len(self.records),
            "tree_node": str(self.current_node.path) if self.current_node else None,
            "observation": _jsonable(self.current_observation),
            "history": [
                {
                    "step": r.step,
                    "action": r.action,
                    "data": r.data,
                    "state": r.state,
                    "frame_path": r.frame_path,
                    "tree_node": r.tree_node,
                }
                for r in self.records
            ],
        }
