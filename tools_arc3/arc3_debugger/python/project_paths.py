from __future__ import annotations

import os
from pathlib import Path

PROJECT_ROOT = Path(__file__).resolve().parents[1]


def prompts_root() -> Path:
    """Return the shared editable prompt directory at arc3_debugger/prompts/."""
    # ARC3_ENVIRONMENT_FILES remains a compatibility fallback for older launchers.
    root = Path(
        os.environ.get("ARC3_PROMPTS_ROOT")
        or os.environ.get("ARC3_ENVIRONMENT_FILES")
        or PROJECT_ROOT / "prompts"
    ).expanduser().resolve()
    root.mkdir(parents=True, exist_ok=True)
    return root


def environment_files_root() -> Path:
    """Backward-compatible alias for older code; prompts now live in prompts/."""
    return prompts_root()


def action_trees_root() -> Path:
    """Return the canonical action-tree root at arc3_debugger/action_trees/."""
    root = Path(
        os.environ.get("ARC3_TREE_ROOT")
        or PROJECT_ROOT / "action_trees"
    ).expanduser().resolve()
    root.mkdir(parents=True, exist_ok=True)
    return root


def prompts_path() -> Path:
    """Return the editable combined-GPT prompt definition file."""
    return prompts_root() / "gpt_prompts.json"


def histories_root(level_root: str | Path) -> Path:
    """Return histories/ inside the active game-level action-tree directory."""
    root = Path(level_root) / "histories"
    root.mkdir(parents=True, exist_ok=True)
    return root


def exports_root(level_root: str | Path) -> Path:
    """Return exports/ inside the active game-level action-tree directory."""
    root = Path(level_root) / "exports"
    root.mkdir(parents=True, exist_ok=True)
    return root
