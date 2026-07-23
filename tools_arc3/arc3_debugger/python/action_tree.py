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


def _alternate_directory(path: Path) -> Path:
    """Return the first unused sibling directory name without touching a conflict."""
    candidates = [path.with_name(path.name + ".dir")]
    candidates.extend(path.with_name(path.name + f".dir{index}") for index in range(2, 1000))
    for candidate in candidates:
        if not os.path.lexists(candidate):
            return candidate
        if os.path.isdir(candidate):
            return candidate
    raise RuntimeError(f"Could not allocate fallback directory beside: {path}")


def _ensure_directory(path: Path) -> Path:
    """Create a directory and return the actual usable path.

    Windows UNC/WSL shares can expose an entry that raises WinError 183 while
    remaining invisible to ``exists()``, ``lexists()``, and rename attempts.
    In that case the blocked name is left untouched and a sibling ``.dir`` path
    is used.  The returned path must always be used by callers.
    """
    requested = Path(path)

    # Resolve/create the parent first. If a parent itself required a fallback,
    # continue beneath that actual parent rather than the unusable requested one.
    if requested != requested.parent:
        actual_parent = _ensure_directory(requested.parent)
        requested = actual_parent / requested.name

    if os.path.isdir(requested):
        return requested

    try:
        os.mkdir(requested)
        return requested
    except FileExistsError:
        if os.path.isdir(requested):
            return requested

    fallback = _alternate_directory(requested)
    if not os.path.isdir(fallback):
        os.mkdir(fallback)
    print(
        "warning: action-tree path is blocked by a non-directory or UNC "
        f"filesystem entry; using {fallback} instead of {requested}"
    )
    return fallback


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
        self.root = _ensure_directory(Path(root).resolve())
        self.game_id = str(game_id)
        self.game_dir_name = _game_slug(self.game_id)
        self.level = str(level)
        self.game_root = _ensure_directory(self.root / self.game_dir_name)
        self.level_root = _ensure_directory(
            self.game_root / f"level_{_slug(self.level)}"
        )

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
        path = _ensure_directory(path)
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
    NEW_FRIENDLY_ID_RE = re.compile(
        r"^\s*new_object_identity\(\s*([a-z][a-zA-Z0-9_]*)\s*,"
        r"\s*([^,]+)\s*,\s*(.+)\)\.\s*$"
    )
    REGISTRY_LOAD_RE = re.compile(
        r"^\s*:-\s*(?:ensure_loaded|consult|include)\s*\(.*object_registry\.pl.*\)\.\s*$"
    )
    OPAQUE_ID_RE = re.compile(r"^(?:obj(?:ect)?|item|thing|shape)_?\d+$", re.IGNORECASE)
    OPAQUE_TOKEN_RE = re.compile(r"\b(?:obj(?:ect)?|item|thing|shape)_?\d+\b", re.IGNORECASE)

    def identity_facts(self, source: str) -> dict[str, str]:
        """Extract canonical object_identity/3 declarations."""
        facts: dict[str, str] = {}
        for line in source.splitlines():
            match = self.FRIENDLY_ID_RE.match(line)
            if match:
                facts[match.group(1)] = line.strip()
        return facts

    def new_identity_facts(self, source: str) -> dict[str, str]:
        """Convert new_object_identity/3 candidates into canonical declarations."""
        facts: dict[str, str] = {}
        for line in source.splitlines():
            match = self.NEW_FRIENDLY_ID_RE.match(line)
            if not match:
                continue
            name, object_type, label = match.groups()
            facts[name] = (
                f"object_identity({name}, {object_type.strip()}, {label.strip()})."
            )
        return facts

    def opaque_tokens(self, source: str) -> list[str]:
        """Return opaque numbered object tokens appearing anywhere in Prolog."""
        return sorted(set(self.OPAQUE_TOKEN_RE.findall(source)))

    def registry_reference(self, node: StateNode) -> str:
        """Relative Prolog path from a node to the level-wide registry."""
        return _rel_link(node.path, self.object_registry_path)

    def validate_friendly_objects(self, source: str, node: StateNode) -> None:
        """Validate either the registry itself or a registry-backed node file."""
        opaque = self.opaque_tokens(source)
        if opaque:
            raise RuntimeError(
                "Prolog source contains opaque numbered object IDs: "
                + ", ".join(opaque)
            )

        # Registry source validates itself by containing friendly declarations.
        if self.identity_facts(source):
            return

        # Node objects.pl files validate through the authoritative registry.
        if not self.registry_identities():
            raise RuntimeError(
                "object_registry.pl is empty; canonical friendly object names "
                "must be bootstrapped before objects.pl is cached."
            )

        if not any(self.REGISTRY_LOAD_RE.match(line) for line in source.splitlines()):
            raise RuntimeError(
                "objects.pl does not load the level-wide object_registry.pl."
            )

    def registry_identities(self) -> dict[str, str]:
        return self.identity_facts(self.registry_text())

    def update_registry_from_objects(self, node: StateNode) -> Path:
        """Merge only newly declared identities; state files remain identity-light."""
        if not node.objects_path.exists() or not node.objects_path.stat().st_size:
            return self.object_registry_path

        source = node.objects_path.read_text(encoding="utf-8")
        registry = self.registry_identities()

        candidates = self.identity_facts(source)
        candidates.update(self.new_identity_facts(source))

        for name, fact in candidates.items():
            if self.OPAQUE_ID_RE.match(name):
                raise RuntimeError(f"Opaque object identity is not allowed: {name}")
            registry.setdefault(name, fact)

        if not registry:
            raise RuntimeError(
                "No canonical identities are available for this level."
            )

        lines = [
            "% Canonical friendly object identities for this entire ARC3 level.",
            "% Names are created once and reused from the beginning to the end.",
            "",
        ]
        lines.extend(registry[name] for name in sorted(registry))
        self.object_registry_path.write_text(
            "\n".join(lines) + "\n",
            encoding="utf-8",
        )
        self.refresh_readme(node)
        return self.object_registry_path

    def refresh_readme(self, node: StateNode) -> Path:
        metadata = self.metadata(node)
        parent = self.parent_node(node)
        action_path = metadata.get("action_path") or []
        title = "Initial state" if not action_path else " / ".join(action_path)
        children = self.child_nodes(node)

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
        lines.append(" · ".join(nav_links) if nav_links else "**Level start**")

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

        registry_count = len(self.registry_identities())
        registry_link = _rel_link(node.path, self.object_registry_path)

        lines.extend(
            [
                "",
                "## Image",
                "",
                "![ARC3 state](image.png)",
                "",
                "## Files",
                "",
                "- [image.png](image.png)",
                "- [state.json](state.json)",
                (
                    f"- [object_registry.pl]({registry_link}) — shared level registry "
                    f"({registry_count} canonical identities)"
                ),
            ]
        )

        # Embed all local text artifacts. The shared level registry is embedded
        # only in the level-start README; descendants link to it instead.
        artifact_paths: list[Path] = []
        seen: set[Path] = set()

        def add_artifact(path: Path) -> None:
            resolved = path.resolve()
            if path.exists() and path.is_file() and resolved not in seen:
                seen.add(resolved)
                artifact_paths.append(path)

        add_artifact(node.state_path)
        if node.path == self.level_root:
            add_artifact(self.object_registry_path)

        for path in sorted(node.path.iterdir(), key=lambda p: p.name.lower()):
            if not path.is_file():
                continue
            if path.name in {
                "README.md",
                "image.png",
                "state.json",
                "object_registry.pl",
            }:
                continue
            add_artifact(path)

        for artifact in artifact_paths:
            if artifact.resolve() == node.state_path.resolve():
                continue
            if artifact.resolve() == self.object_registry_path.resolve():
                continue
            lines.append(f"- [{artifact.name}]({_rel_link(node.path, artifact)})")

        lines.extend(["", "## Embedded files", ""])

        if node.path != self.level_root:
            lines.extend(
                [
                    (
                        f"*Canonical identities are shared through "
                        f"[`object_registry.pl`]({registry_link}) and are not "
                        "repeated in every node.*"
                    ),
                    "",
                ]
            )

        language_by_suffix = {
            ".pl": "prolog",
            ".json": "json",
            ".py": "python",
            ".md": "markdown",
            ".txt": "text",
            ".log": "text",
            ".yaml": "yaml",
            ".yml": "yaml",
            ".toml": "toml",
        }

        for artifact in artifact_paths:
            relative_link = _rel_link(node.path, artifact)
            try:
                content = artifact.read_text(encoding="utf-8").rstrip()
            except UnicodeDecodeError:
                continue

            lines.extend(
                [
                    "<details>",
                    f"<summary><code>{artifact.name}</code></summary>",
                    "",
                ]
            )

            if content:
                language = language_by_suffix.get(
                    artifact.suffix.lower(), "text"
                )
                lines.extend(
                    [
                        f"````{language}",
                        content,
                        "````",
                    ]
                )
            else:
                lines.append("*Empty file.*")

            lines.extend(
                [
                    "",
                    f"[Open `{artifact.name}`]({relative_link})",
                    "",
                    "</details>",
                    "",
                ]
            )

        node.readme_path.write_text(
            "\n".join(lines).rstrip() + "\n",
            encoding="utf-8",
        )
        return node.readme_path
