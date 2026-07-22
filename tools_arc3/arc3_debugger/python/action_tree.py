from __future__ import annotations

import hashlib
import json
import os
import re
from dataclasses import dataclass
from pathlib import Path
from typing import Any, Mapping


def _slug(value: str) -> str:
    cleaned = re.sub(r"[^A-Za-z0-9_.-]+", "_", value.strip())
    return cleaned.strip("._") or "unknown"


def _game_slug(game_id: str) -> str:
    """Use the short ARC game name for directories, preserving full ID in metadata."""
    value = str(game_id).strip()
    match = re.fullmatch(r"([A-Za-z0-9]+)-[0-9A-Fa-f]{8}", value)
    return _slug(match.group(1) if match else value)


def _rel_link(source_dir: Path, target: Path) -> str:
    return Path(os.path.relpath(target, source_dir)).as_posix()


@dataclass(frozen=True)
class StateNode:
    path: Path
    image_hash: str

    @property
    def image_path(self) -> Path:
        return self.path / "image.png"

    @property
    def state_path(self) -> Path:
        return self.path / "state.json"

    @property
    def readme_path(self) -> Path:
        return self.path / "README.md"

    @property
    def objects_path(self) -> Path:
        return self.path / "objects.pl"

    @property
    def differences_path(self) -> Path:
        return self.path / "differences.pl"


class ActionTreeStore:
    """Filesystem-backed deterministic action tree.

    The level directory is the initial state. Every action is a child directory
    containing the resulting state:

      <root>/<game>/level_<n>/
          README.md
          image.png
          state.json
          objects.pl
          UP/
              README.md
              image.png
              state.json
              objects.pl
              differences.pl
              LEFT/
                  ...

    Thus the directory path itself is the complete action sequence.
    """

    STANDARD_ACTION_NAMES = {
        "ACTION1": "UP",
        "ACTION2": "DOWN",
        "ACTION3": "LEFT",
        "ACTION4": "RIGHT",
        "ACTION5": "SPACE",
        "ACTION6": "SELECT",
        "ACTION7": "UNDO",
        "RESET": "RESET",
    }

    def __init__(
        self,
        root: str | Path,
        game_id: str,
        level: str | int,
    ) -> None:
        self.root = Path(root).resolve()
        self.game_id = str(game_id)
        self.game_dir_name = _game_slug(self.game_id)
        self.level = str(level)
        self.level_root = (
            self.root
            / self.game_dir_name
            / f"level_{_slug(self.level)}"
        )
        self.level_root.mkdir(parents=True, exist_ok=True)

    @property
    def object_registry_path(self) -> Path:
        return self.level_root / "object_registry.pl"

    def registry_text(self) -> str:
        path = self.object_registry_path
        if path.exists() and path.stat().st_size:
            return path.read_text(encoding="utf-8")
        return ""

    @staticmethod
    def image_hash(png_bytes: bytes) -> str:
        return hashlib.sha256(png_bytes).hexdigest()[:16]

    def create_initial(
        self,
        png_bytes: bytes,
        state_payload: Mapping[str, Any],
    ) -> StateNode:
        """Create or reuse the level-root initial state."""
        return self._create_state_node(
            self.level_root,
            png_bytes,
            state_payload,
            parent=None,
            incoming_action=None,
            action_data=None,
        )

    def create_transition(
        self,
        parent: StateNode,
        action: str,
        action_data: Mapping[str, Any],
        png_bytes: bytes,
        state_payload: Mapping[str, Any],
    ) -> StateNode:
        """Create or reuse the child directory named by the action."""
        action_dir = parent.path / self.action_slug(action, action_data)
        node = self._create_state_node(
            action_dir,
            png_bytes,
            state_payload,
            parent=parent,
            incoming_action=action,
            action_data=action_data,
        )
        self.refresh_readme(parent)
        self.refresh_readme(node)
        return node

    @classmethod
    def action_slug(cls, action: str, data: Mapping[str, Any]) -> str:
        raw_name = str(action).upper().split(".")[-1]
        base = cls.STANDARD_ACTION_NAMES.get(raw_name, _slug(raw_name).upper())

        # Coordinate actions need their data in the branch name; otherwise
        # SELECT at two locations would incorrectly reuse the same deterministic
        # branch directory.
        if data:
            parts = [base]
            for key in sorted(data):
                parts.append(f"{_slug(str(key)).lower()}_{_slug(str(data[key]))}")
            return "_".join(parts)
        return base

    def _create_state_node(
        self,
        path: Path,
        png_bytes: bytes,
        state_payload: Mapping[str, Any],
        *,
        parent: StateNode | None,
        incoming_action: str | None,
        action_data: Mapping[str, Any] | None,
    ) -> StateNode:
        path.mkdir(parents=True, exist_ok=True)
        image_hash = self.image_hash(png_bytes)
        image_path = path / "image.png"

        if image_path.exists():
            old_bytes = image_path.read_bytes()
            old_hash = self.image_hash(old_bytes)
            if old_hash != image_hash:
                raise RuntimeError(
                    "Deterministic action-tree conflict at "
                    f"{path}: existing image {old_hash}, new image {image_hash}"
                )
        else:
            image_path.write_bytes(png_bytes)

        metadata = dict(state_payload)
        metadata.update(
            {
                "game_id": self.game_id,
                "game_directory": self.game_dir_name,
                "level": self.level,
                "image_hash": image_hash,
                "incoming_action": incoming_action,
                "action_directory": path.name if parent is not None else None,
                "action_data": dict(action_data or {}),
                "parent_node": (
                    _rel_link(path, parent.path) if parent is not None else None
                ),
                "action_path": self.action_path(path),
            }
        )
        (path / "state.json").write_text(
            json.dumps(metadata, indent=2, ensure_ascii=False),
            encoding="utf-8",
        )

        node = StateNode(path=path, image_hash=image_hash)
        self.refresh_readme(node)
        return node

    def action_path(self, path: Path) -> list[str]:
        try:
            rel = path.resolve().relative_to(self.level_root.resolve())
        except ValueError:
            return []
        return list(rel.parts)

    def metadata(self, node: StateNode) -> dict[str, Any]:
        try:
            return json.loads(node.state_path.read_text(encoding="utf-8"))
        except (OSError, json.JSONDecodeError):
            return {}

    def parent_node(self, node: StateNode) -> StateNode | None:
        metadata = self.metadata(node)
        rel = metadata.get("parent_node")
        if not rel:
            return None
        path = (node.path / rel).resolve()
        if not path.exists():
            return None
        return StateNode(path=path, image_hash=self._node_hash(path))

    def child_nodes(self, node: StateNode) -> list[tuple[str, StateNode]]:
        """Return direct child action directories that contain captured states."""
        result: list[tuple[str, StateNode]] = []
        if not node.path.exists():
            return result

        for child_dir in sorted(p for p in node.path.iterdir() if p.is_dir()):
            if not (child_dir / "state.json").exists():
                continue
            if not (child_dir / "image.png").exists():
                continue
            result.append(
                (
                    child_dir.name,
                    StateNode(child_dir, self._node_hash(child_dir)),
                )
            )
        return result

    def _node_hash(self, path: Path) -> str:
        state_path = path / "state.json"
        try:
            metadata = json.loads(state_path.read_text(encoding="utf-8"))
            value = metadata.get("image_hash")
            if value:
                return str(value)
        except (OSError, json.JSONDecodeError):
            pass
        image_path = path / "image.png"
        if image_path.exists():
            return self.image_hash(image_path.read_bytes())
        return "unknown"

    FRIENDLY_ID_RE = re.compile(
        r"^\s*object_identity\(\s*([a-z][a-zA-Z0-9_]*)\s*,.*\)\.\s*$"
    )
    OPAQUE_ID_RE = re.compile(r"^(?:obj(?:ect)?|item|thing|shape)_?\d+$", re.IGNORECASE)

    def identity_facts(self, source: str) -> dict[str, str]:
        """Extract one required object_identity/3 fact per friendly object."""
        facts: dict[str, str] = {}
        for line in source.splitlines():
            match = self.FRIENDLY_ID_RE.match(line)
            if match:
                facts[match.group(1)] = line.strip()
        return facts

    def validate_friendly_objects(self, source: str, node: StateNode) -> None:
        facts = self.identity_facts(source)
        if not facts:
            raise RuntimeError(
                "GPT objects output has no object_identity/3 facts. Friendly canonical "
                "IDs are required before objects.pl can be cached."
            )
        opaque = sorted(name for name in facts if self.OPAQUE_ID_RE.match(name))
        if opaque:
            raise RuntimeError(
                "GPT returned opaque object IDs instead of friendly names: "
                + ", ".join(opaque)
            )

        # Existing names may be absent from a frame. The friendly atom itself is
        # canonical; descriptive type/label wording may become more precise later.
        # The registry therefore preserves the first declaration for each name.

    def registry_identities(self) -> dict[str, str]:
        return self.identity_facts(self.registry_text())

    def update_registry_from_objects(self, node: StateNode) -> Path:
        if not node.objects_path.exists() or not node.objects_path.stat().st_size:
            return self.object_registry_path
        source = node.objects_path.read_text(encoding="utf-8")
        self.validate_friendly_objects(source, node)
        registry = self.registry_identities()
        for name, fact in self.identity_facts(source).items():
            registry.setdefault(name, fact)
        lines = [
            "% Canonical friendly object identities for this entire ARC3 level.",
            "% Names are created once and reused from the beginning to the end.",
            "",
        ]
        lines.extend(registry[name] for name in sorted(registry))
        self.object_registry_path.write_text("\n".join(lines) + "\n", encoding="utf-8")
        self.refresh_readme(node)
        return self.object_registry_path

    def refresh_readme(self, node: StateNode) -> Path:
        metadata = self.metadata(node)
        parent = self.parent_node(node)
        action_path = metadata.get("action_path") or []
        title = "Initial state" if not action_path else " / ".join(action_path)
        children = self.child_nodes(node)

        # Navigation belongs at the top so a GitHub-rendered README can be used
        # directly as the action-tree browser.
        lines: list[str] = [
            f"# `{self.game_dir_name}` level `{self.level}` — {title}",
            "",
            "## Navigation",
            "",
        ]

        nav_links: list[str] = []
        if node.path != self.level_root:
            nav_links.append(
                f"[Level start]({_rel_link(node.path, self.level_root / 'README.md')})"
            )
        if parent is not None:
            nav_links.append(
                f"[Parent]({_rel_link(node.path, parent.readme_path)})"
            )
        if nav_links:
            lines.append(" · ".join(nav_links))
        else:
            lines.append("**Level start**")

        lines.extend(["", "### Actions", ""])
        if not children:
            lines.append("*No child actions recorded yet.*")
        else:
            lines.append(
                " · ".join(
                    f"[`{action_dir}`]({_rel_link(node.path, child.readme_path)})"
                    for action_dir, child in children
                )
            )

        lines.extend(
            [
                "",
                "---",
                "",
                f"- **Full game ID:** `{self.game_id}`",
                f"- **State:** `{metadata.get('state', '?')}`",
                f"- **Image hash:** `{node.image_hash}`",
                f"- **Incoming action:** `{metadata.get('incoming_action') or 'initial'}`",
            ]
        )

        action_data = metadata.get("action_data") or {}
        if action_data:
            lines.append(
                f"- **Action data:** `{json.dumps(action_data, ensure_ascii=False)}`"
            )

        lines.extend(
            [
                "",
                "## Image",
                "",
                "![ARC3 state](image.png)",
                "",
                "## Files",
                "",
                "- [state.json](state.json)",
                f"- [object_registry.pl]({_rel_link(node.path, self.object_registry_path)})",
            ]
        )

        prolog_files = sorted(
            path for path in node.path.glob("*.pl")
            if path.resolve() != self.object_registry_path.resolve()
        )
        if prolog_files:
            for pl_file in prolog_files:
                lines.append(f"- [{pl_file.name}]({pl_file.name})")
        else:
            lines.append("- Prolog analysis: *not generated yet*")

        for filename in ("objects.pl", "differences.pl"):
            file_path = node.path / filename
            if file_path.exists() and file_path.stat().st_size:
                lines.extend(
                    [
                        "",
                        f"## `{filename}`",
                        "",
                        "```prolog",
                        file_path.read_text(encoding="utf-8").rstrip(),
                        "```",
                    ]
                )

        node.readme_path.write_text("\n".join(lines) + "\n", encoding="utf-8")
        return node.readme_path
