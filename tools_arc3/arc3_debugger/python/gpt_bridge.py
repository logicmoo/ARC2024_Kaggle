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


def _friendly_atom(value: str) -> str:
    """Normalize a model-suggested friendly name into a Prolog atom."""
    atom = re.sub(r"[^a-zA-Z0-9]+", "_", str(value).strip().lower()).strip("_")
    if not atom:
        atom = "unnamed_object"
    if atom[0].isdigit():
        atom = "object_" + atom
    return atom


def _extract_json_value(text: str) -> Any:
    """Best-effort extraction of one JSON value from model output."""
    value = text.strip()
    value = re.sub(r"^```(?:json)?\s*", "", value, flags=re.IGNORECASE)
    value = re.sub(r"\s*```$", "", value)
    try:
        return json.loads(value)
    except json.JSONDecodeError:
        pass

    for opener, closer in (("[", "]"), ("{", "}")):
        start = value.find(opener)
        end = value.rfind(closer)
        if start >= 0 and end > start:
            try:
                return json.loads(value[start : end + 1])
            except json.JSONDecodeError:
                continue
    raise RuntimeError("GPT identity bootstrap did not return parseable JSON")


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

    def _initial_node(self, store: ActionTreeStore) -> StateNode:
        image_path = store.level_root / "image.png"
        if not image_path.exists():
            raise RuntimeError(
                "The level-start image.png is missing; cannot bootstrap friendly object names"
            )
        return StateNode(
            path=store.level_root,
            image_hash=store.image_hash(image_path.read_bytes()),
        )

    def ensure_identity_registry(
        self,
        store: ActionTreeStore,
        *,
        force: bool = False,
    ) -> tuple[Path, bool]:
        """Create canonical friendly IDs once, from the level's initial frame."""
        existing = store.registry_identities()
        if existing and not force:
            return store.object_registry_path, False

        initial = self._initial_node(store)
        raw = self._respond(
            self.prompts()["bootstrap_identities"],
            [("Initial ARC3 level state:", initial.image_path)],
            supplemental_text=(
                "This is the one-time identity bootstrap for the entire level. "
                "Include semantic whole objects and useful block-level objects."
            ),
        )

        try:
            payload = _extract_json_value(raw)
        except RuntimeError:
            repaired = self._respond(
                self.prompts()["repair_identities"],
                [("Initial ARC3 level state:", initial.image_path)],
                supplemental_text="CANDIDATE OUTPUT TO NORMALIZE:\n" + raw,
            )
            payload = _extract_json_value(repaired)

        if isinstance(payload, dict):
            objects = payload.get("objects") or payload.get("identities") or []
        else:
            objects = payload
        if not isinstance(objects, list) or not objects:
            raise RuntimeError("GPT identity bootstrap returned no visible objects")

        used: set[str] = set()
        facts: list[str] = []
        for index, item in enumerate(objects, start=1):
            if isinstance(item, str):
                item = {"id": item, "type": "object", "label": item.replace("_", " ")}
            if not isinstance(item, dict):
                continue
            label = str(item.get("label") or item.get("name") or item.get("id") or f"object {index}")
            obj_type = _friendly_atom(str(item.get("type") or item.get("kind") or "object"))
            base = _friendly_atom(str(item.get("id") or item.get("friendly_id") or label))
            if store.OPAQUE_ID_RE.match(base):
                base = _friendly_atom(f"{item.get('color', '')}_{obj_type}_{label}")
            candidate = base
            suffix = 2
            while candidate in used:
                candidate = f"{base}_{suffix}"
                suffix += 1
            used.add(candidate)
            safe_label = label.replace("\\", "\\\\").replace("'", "\\'")
            facts.append(f"object_identity({candidate}, {obj_type}, '{safe_label}').")

        if not facts:
            raise RuntimeError("GPT identity bootstrap produced no usable friendly names")

        source = (
            "% Canonical friendly object identities for this entire ARC3 level.\n"
            "% Created once from the initial state; reuse these atoms in every branch.\n\n"
            + "\n".join(facts)
            + "\n"
        )
        # Validate before replacing a registry that might already exist.
        store.validate_friendly_objects(source, initial)
        store.object_registry_path.write_text(source, encoding="utf-8")
        store.refresh_readme(initial)
        return store.object_registry_path, True

    def _repair_objects_output(
        self,
        store: ActionTreeStore,
        node: StateNode,
        candidate: str,
    ) -> str:
        repaired = self._respond(
            self.prompts()["repair_objects"],
            [("Current ARC3 state:", node.image_path)],
            supplemental_text=(
                self._identity_context(store, node)
                + "\n\nCANDIDATE objects.pl TO NORMALIZE:\n"
                + candidate
            ),
        )
        if store.identity_facts(repaired):
            return repaired

        # Last-resort nonfatal normalization: prepend the canonical declarations.
        # The model's remaining facts are retained for inspection, but the cache is
        # never left without the level's friendly IDs.
        registry = store.registry_text().rstrip()
        if not registry:
            raise RuntimeError("Unable to repair objects.pl because object_registry.pl is empty")
        return registry + "\n\n% Model-produced state facts follow.\n" + candidate.lstrip()

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

        self.ensure_identity_registry(store, force=False)

        parent = store.parent_node(node)
        if parent is not None:
            self.ensure_objects(store, parent, force=False)

        text = self._respond(
            self.prompts()["objects"],
            [("Current ARC3 state:", node.image_path)],
            supplemental_text=self._identity_context(store, node),
        )
        if not store.identity_facts(text):
            text = self._repair_objects_output(store, node, text)
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

    def ensure_full_analysis(
        self,
        store: ActionTreeStore,
        node: StateNode,
        *,
        force: bool = False,
    ) -> dict[str, Any]:
        """Generate every standard symbolic artifact, reusing nonempty caches."""
        registry_path, registry_called = self.ensure_identity_registry(store, force=False)
        objects_path, objects_called = self.ensure_objects(store, node, force=force)
        differences_path, differences_called = self.ensure_differences(
            store, node, force=force
        )
        turtle_image_path, turtle_image_called = self.generate_single_artifact(
            store, node, "redraw", "turtle_from_image.pl", force=force
        )
        similarities_path, similarities_called = self.generate_pair_artifact(
            store, node, "similarity", "similarities.pl", force=force
        )
        turtle_diff_path, turtle_diff_called = self.generate_pair_artifact(
            store, node, "redraw_diff", "turtle_from_diff.pl", force=force
        )
        rules_path, rules_called = self.generate_single_artifact(
            store, node, "rules", "rules.pl", force=force
        )
        parent = store.parent_node(node)
        store.refresh_readme(node)
        if parent is not None:
            store.refresh_readme(parent)
        return {
            "registry_path": registry_path,
            "registry_called": registry_called,
            "objects_path": objects_path,
            "objects_called": objects_called,
            "differences_path": differences_path,
            "differences_called": differences_called,
            "turtle_from_image_path": turtle_image_path,
            "turtle_from_image_called": turtle_image_called,
            "similarities_path": similarities_path,
            "similarities_called": similarities_called,
            "turtle_from_diff_path": turtle_diff_path,
            "turtle_from_diff_called": turtle_diff_called,
            "rules_path": rules_path,
            "rules_called": rules_called,
        }

    # Backward-compatible name retained for external callers.
    def ensure_objects_and_differences(
        self,
        store: ActionTreeStore,
        node: StateNode,
        *,
        force: bool = False,
    ) -> dict[str, Any]:
        return self.ensure_full_analysis(store, node, force=force)

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
