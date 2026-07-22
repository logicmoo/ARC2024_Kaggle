from __future__ import annotations

import base64
import json
import os
import re
import subprocess
import sys
from pathlib import Path
from typing import Any, Iterable

from action_tree import ActionTreeStore, StateNode


def _data_url(path: Path) -> str:
    encoded = base64.b64encode(path.read_bytes()).decode("ascii")
    return f"data:image/png;base64,{encoded}"


def _strip_fences(text: str) -> str:
    value = text.strip()
    match = re.fullmatch(r"```(?:prolog|pl)?\s*(.*?)\s*```", value, re.DOTALL | re.IGNORECASE)
    return match.group(1).strip() + "\n" if match else value + "\n"


class GptArcAnalyzer:
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
        content: list[dict[str, Any]] = [
            {"type": "input_text", "text": prompt + ("\n\n" + supplemental_text if supplemental_text else "")}
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

    def ensure_objects(
        self,
        store: ActionTreeStore,
        node: StateNode,
        *,
        force: bool = False,
    ) -> tuple[Path, bool]:
        output = node.objects_path
        if output.exists() and output.stat().st_size and not force:
            return output, False
        text = self._respond(
            self.prompts()["objects"],
            [("Current ARC3 state:", node.image_path)],
        )
        output.write_text(text, encoding="utf-8")
        store.refresh_readme(node)
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

        parent_objects, _ = self.ensure_objects(store, parent, force=False)
        current_objects, _ = self.ensure_objects(store, node, force=False)
        supplemental = (
            "PREVIOUS objects.pl:\n"
            + parent_objects.read_text(encoding="utf-8")
            + "\nCURRENT objects.pl:\n"
            + current_objects.read_text(encoding="utf-8")
        )
        text = self._respond(
            self.prompts()["differences"],
            [
                ("Previous ARC3 state:", parent.image_path),
                ("Current ARC3 state:", node.image_path),
            ],
            supplemental_text=supplemental,
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
        text = self._respond(
            self.prompts()[prompt_name],
            [("Current ARC3 state:", node.image_path)],
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
        text = self._respond(
            self.prompts()[prompt_name],
            [
                ("Previous ARC3 state:", parent.image_path),
                ("Current ARC3 state:", node.image_path),
            ],
        )
        output.write_text(text, encoding="utf-8")
        store.refresh_readme(node)
        return output, True
