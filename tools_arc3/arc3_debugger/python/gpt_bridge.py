from __future__ import annotations

import base64
import json
import os
import re
import subprocess
from pathlib import Path
from typing import Any, Iterable

from action_tree import ActionTreeStore, StateNode


def _data_url(path: Path) -> str:
    encoded = base64.b64encode(path.read_bytes()).decode("ascii")
    return f"data:image/png;base64,{encoded}"


def _strip_fences(text: str) -> str:
    value = text.strip()
    match = re.fullmatch(
        r"```(?:prolog|pl)?\s*(.*?)\s*```",
        value,
        re.DOTALL | re.IGNORECASE,
    )
    return match.group(1).strip() + "\n" if match else value + "\n"


def _read_if_present(path: Path) -> str:
    if path.exists() and path.stat().st_size:
        return path.read_text(encoding="utf-8")
    return ""


class GptArcAnalyzer:
    """GPT-backed ARC analysis with persistent friendly object identities.

    The level's ``object_registry.pl`` is the canonical identity memory. The
    first analyzed frame chooses friendly names. Every later request receives
    that registry and the parent state's objects, and must reuse those names.
    """

    def __init__(
        self,
        prompts_path: str | Path,
        *,
        model: str | None = None,
        client: Any | None = None,
    ) -> None:
        self.prompts_path = Path(prompts_path).resolve()
        self.model = model or os.environ.get("ARC3_GPT_MODEL") or "gpt-5.6"
        if client is not None:
            self.client = client
        else:
            try:
                from openai import OpenAI
            except (ImportError, AttributeError) as exc:
                raise RuntimeError(
                    "The current OpenAI Python package does not provide the Responses API. "
                    "Run: pip install --upgrade openai"
                ) from exc
            self.client = OpenAI()

    def prompts(self) -> dict[str, str]:
        return json.loads(self.prompts_path.read_text(encoding="utf-8"))

    def edit_prompts(self) -> None:
        if os.name == "nt":
            os.startfile(self.prompts_path)  # type: ignore[attr-defined]
            return
        editor = os.environ.get("EDITOR")
        if editor:
            subprocess.run([editor, str(self.prompts_path)], check=False)
            return
        print(self.prompts_path.read_text(encoding="utf-8"))
        print(f"Edit prompts at: {self.prompts_path}")

    def _respond(
        self,
        prompt: str,
        images: Iterable[tuple[str, Path]],
        *,
        supplemental_text: str = "",
    ) -> str:
        full_prompt = prompt
        if supplemental_text:
            full_prompt += "\n\nPERSISTENT SYMBOLIC CONTEXT:\n" + supplemental_text
        content: list[dict[str, Any]] = [
            {"type": "input_text", "text": full_prompt}
        ]
        for label, image_path in images:
            content.append({"type": "input_text", "text": label})
            content.append(
                {
                    "type": "input_image",
                    "image_url": _data_url(image_path),
                    "detail": "high",
                }
            )
        response = self.client.responses.create(
            model=self.model,
            input=[{"role": "user", "content": content}],
        )
        output_text = getattr(response, "output_text", None)
        if not output_text:
            raise RuntimeError("OpenAI response contained no output_text")
        return _strip_fences(output_text)

    def _identity_context(
        self,
        store: ActionTreeStore,
        node: StateNode,
        *,
        include_current: bool = False,
        include_differences: bool = False,
    ) -> str:
        metadata = store.metadata(node)
        parent = store.parent_node(node)
        sections: list[str] = [
            "IDENTITY RULES:\n"
            "- Friendly Prolog atoms are canonical object IDs for this entire level.\n"
            "- Reuse an existing friendly ID whenever it denotes the same object.\n"
            "- Never replace a friendly ID with obj_1, object_2, or another opaque ID.\n"
            "- Never recycle an old ID for a different object.\n"
            "- Create a new friendly ID only for a truly new object.\n"
            "- Prefer semantic snake_case names such as blue_player, red_goal, "
            "left_wall, yellow_key, moving_platform, or blue_square_2.\n"
            "- Every visible object must have exactly one object_identity/3 fact."
        ]

        registry = store.registry_text()
        sections.append(
            "LEVEL object_registry.pl (canonical names from the beginning of the level):\n"
            + (registry if registry else "% Empty: this is the first identity assignment.\n")
        )

        if parent is not None:
            parent_objects = _read_if_present(parent.objects_path)
            sections.append(
                "PARENT objects.pl (reuse these names for surviving objects):\n"
                + (parent_objects or "% Parent objects have not been analyzed yet.\n")
            )

        sections.append(
            "INCOMING ACTION:\n"
            f"action({metadata.get('incoming_action') or 'initial'}, "
            f"{json.dumps(metadata.get('action_data') or {}, ensure_ascii=False)})."
        )

        if include_current:
            current_objects = _read_if_present(node.objects_path)
            if current_objects:
                sections.append("CURRENT objects.pl:\n" + current_objects)

        if include_differences:
            differences = _read_if_present(node.differences_path)
            if differences:
                sections.append("CURRENT differences.pl:\n" + differences)

        return "\n\n".join(sections)

    def ensure_objects(
        self,
        store: ActionTreeStore,
        node: StateNode,
        *,
        force: bool = False,
    ) -> tuple[Path, bool]:
        output = node.objects_path
        if output.exists() and output.stat().st_size and not force:
            store.update_registry_from_objects(node)
            return output, False

        parent = store.parent_node(node)
        if parent is not None:
            self.ensure_objects(store, parent, force=False)

        text = self._respond(
            self.prompts()["objects"],
            [("Current ARC3 state:", node.image_path)],
            supplemental_text=self._identity_context(store, node),
        )
        store.validate_friendly_objects(text, node)
        output.write_text(text, encoding="utf-8")
        store.update_registry_from_objects(node)
        store.refresh_readme(node)
        if parent is not None:
            store.refresh_readme(parent)
        return output, True

    def ensure_differences(
        self,
        store: ActionTreeStore,
        node: StateNode,
        *,
        force: bool = False,
    ) -> tuple[Path | None, bool]:
        parent = store.parent_node(node)
        if parent is None:
            store.refresh_readme(node)
            return None, False

        output = node.differences_path
        if output.exists() and output.stat().st_size and not force:
            return output, False

        self.ensure_objects(store, parent, force=False)
        self.ensure_objects(store, node, force=False)
        text = self._respond(
            self.prompts()["differences"],
            [
                ("Previous ARC3 state:", parent.image_path),
                ("Current ARC3 state:", node.image_path),
            ],
            supplemental_text=self._identity_context(
                store,
                node,
                include_current=True,
            ),
        )
        output.write_text(text, encoding="utf-8")
        store.refresh_readme(node)
        store.refresh_readme(parent)
        return output, True

    def ensure_objects_and_differences(
        self,
        store: ActionTreeStore,
        node: StateNode,
        *,
        force: bool = False,
    ) -> dict[str, Any]:
        objects_path, objects_called = self.ensure_objects(store, node, force=force)
        differences_path, differences_called = self.ensure_differences(
            store,
            node,
            force=force,
        )
        store.refresh_readme(node)
        return {
            "objects_path": objects_path,
            "objects_called": objects_called,
            "differences_path": differences_path,
            "differences_called": differences_called,
            "registry_path": store.object_registry_path,
        }

    def generate_single_artifact(
        self,
        store: ActionTreeStore,
        node: StateNode,
        prompt_name: str,
        filename: str,
        *,
        force: bool = False,
    ) -> tuple[Path, bool]:
        output = node.path / filename
        if output.exists() and output.stat().st_size and not force:
            return output, False
        self.ensure_objects(store, node, force=False)
        text = self._respond(
            self.prompts()[prompt_name],
            [("Current ARC3 state:", node.image_path)],
            supplemental_text=self._identity_context(
                store,
                node,
                include_current=True,
                include_differences=True,
            ),
        )
        output.write_text(text, encoding="utf-8")
        store.refresh_readme(node)
        return output, True

    def generate_pair_artifact(
        self,
        store: ActionTreeStore,
        node: StateNode,
        prompt_name: str,
        filename: str,
        *,
        force: bool = False,
    ) -> tuple[Path | None, bool]:
        parent = store.parent_node(node)
        if parent is None:
            return None, False
        output = node.path / filename
        if output.exists() and output.stat().st_size and not force:
            return output, False
        self.ensure_objects(store, parent, force=False)
        self.ensure_objects(store, node, force=False)
        self.ensure_differences(store, node, force=False)
        text = self._respond(
            self.prompts()[prompt_name],
            [
                ("Previous ARC3 state:", parent.image_path),
                ("Current ARC3 state:", node.image_path),
            ],
            supplemental_text=self._identity_context(
                store,
                node,
                include_current=True,
                include_differences=True,
            ),
        )
        output.write_text(text, encoding="utf-8")
        store.refresh_readme(node)
        return output, True
