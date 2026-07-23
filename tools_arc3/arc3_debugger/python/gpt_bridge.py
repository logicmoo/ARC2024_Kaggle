from __future__ import annotations

import base64
import json
import os
import re
import subprocess
import time
from pathlib import Path
from typing import Any

from action_tree import ActionTreeStore, StateNode

ARTIFACT_KEYS = {
    "objects_pl": "objects.pl",
    "differences_pl": "differences.pl",
    "similarities_pl": "similarities.pl",
    "turtle_from_image_pl": "turtle_from_image.pl",
    "turtle_from_diff_pl": "turtle_from_diff.pl",
    "rules_pl": "rules.pl",
}
PAIR_ONLY = {"differences.pl", "similarities.pl", "turtle_from_diff.pl"}


def _data_url(path: Path) -> str:
    return "data:image/png;base64," + base64.b64encode(path.read_bytes()).decode("ascii")


def _read(path: Path) -> str:
    return path.read_text(encoding="utf-8") if path.exists() and path.stat().st_size else ""


def _json_payload(text: str) -> dict[str, Any]:
    value = text.strip()
    value = re.sub(r"^```(?:json)?\s*", "", value, flags=re.I)
    value = re.sub(r"\s*```$", "", value)
    try:
        result = json.loads(value)
    except json.JSONDecodeError:
        start, end = value.find("{"), value.rfind("}")
        if start < 0 or end <= start:
            raise RuntimeError("Combined GPT response was not parseable JSON")
        result = json.loads(value[start : end + 1])
    if not isinstance(result, dict):
        raise RuntimeError("Combined GPT response must be one JSON object")
    return result


def _plain_prolog(value: Any) -> str:
    text = str(value or "").strip()
    text = re.sub(r"^```(?:prolog|pl)?\s*", "", text, flags=re.I)
    text = re.sub(r"\s*```$", "", text)
    return text.strip()


class GptArcAnalyzer:
    """One-call GPT analysis that splits a structured bundle into Prolog files."""

    def __init__(
        self,
        prompts_path: str | Path,
        *,
        model: str | None = None,
        client: Any | None = None,
    ) -> None:
        self.prompts_path = Path(prompts_path).resolve()
        self.model = model or os.environ.get("ARC3_GPT_MODEL", "gpt-5.6")
        # Command-level profiles are selected by Arc3Runner. Environment
        # variables can override each independent dimension.
        self.analysis_profiles = {
            2: {
                "name": "demo",
                "current_detail": "low",
                "parent_detail": "low",
                "tokens": 12000,
                "reasoning": "low",
            },
            3: {
                "name": "deep",
                "current_detail": "high",
                "parent_detail": "low",
                "tokens": 22000,
                "reasoning": "medium",
            },
            4: {
                "name": "extreme",
                "current_detail": "high",
                "parent_detail": "high",
                "tokens": 32000,
                "reasoning": "high",
            },
        }
        self.active_profile = dict(self.analysis_profiles[2])
        if client is not None:
            self.client = client
        else:
            from openai import OpenAI
            self.client = OpenAI()

    def configure_profile(self, level: int) -> dict[str, Any]:
        if level not in self.analysis_profiles:
            raise ValueError(f"Unknown GPT analysis level: {level}")
        base = dict(self.analysis_profiles[level])
        prefix = f"ARC3_GPT_{level}_"
        base["current_detail"] = os.environ.get(
            prefix + "IMAGE_DETAIL",
            os.environ.get("ARC3_GPT_IMAGE_DETAIL", base["current_detail"]),
        )
        base["parent_detail"] = os.environ.get(
            prefix + "PARENT_IMAGE_DETAIL",
            os.environ.get("ARC3_GPT_PARENT_IMAGE_DETAIL", base["parent_detail"]),
        )
        base["reasoning"] = os.environ.get(
            prefix + "REASONING_EFFORT",
            os.environ.get("ARC3_GPT_REASONING_EFFORT", base["reasoning"]),
        )
        base["tokens"] = int(os.environ.get(
            prefix + "MAX_OUTPUT_TOKENS",
            os.environ.get("ARC3_GPT_MAX_OUTPUT_TOKENS", str(base["tokens"])),
        ))
        self.active_profile = base
        return base

    def prompts(self) -> dict[str, Any]:
        return json.loads(self.prompts_path.read_text(encoding="utf-8"))

    def edit_prompts(self) -> None:
        if os.name == "nt":
            os.startfile(self.prompts_path)  # type: ignore[attr-defined]
            return
        editor = os.environ.get("EDITOR") or os.environ.get("VISUAL")
        if editor:
            subprocess.run([editor, str(self.prompts_path)], check=False)
        else:
            print(self.prompts_path.read_text(encoding="utf-8"))
            print(f"Edit prompts at: {self.prompts_path}")

    def _context(self, store: ActionTreeStore, node: StateNode) -> str:
        parent = store.parent_node(node)
        metadata = store.metadata(node)
        parts = [
            "LEVEL object_registry.pl:\n"
            + (store.registry_text() or "% Empty; assign friendly identities now."),
            "INCOMING ACTION:\n"
            + json.dumps(
                {
                    "action": metadata.get("incoming_action") or "initial",
                    "data": metadata.get("action_data") or {},
                },
                ensure_ascii=False,
                separators=(",", ":"),
            ),
        ]
        if parent is not None:
            parts.append(
                "PARENT objects.pl:\n"
                + (_read(parent.objects_path) or "% unavailable")
            )
        return "\n\n".join(parts)

    def _missing_artifact_keys(
        self, store: ActionTreeStore, node: StateNode
    ) -> list[str]:
        parent = store.parent_node(node)
        missing: list[str] = []
        for key, filename in ARTIFACT_KEYS.items():
            if parent is None and filename in PAIR_ONLY:
                continue
            path = node.path / filename
            if not path.exists() or not path.stat().st_size:
                missing.append(key)
        return missing

    def _request_bundle(
        self,
        store: ActionTreeStore,
        node: StateNode,
        requested_keys: list[str],
    ) -> dict[str, Any]:
        prompt = self.prompts()["combined"]
        request_note = (
            "\n\nRETURN ONLY THESE ARTIFACT KEYS: "
            + ", ".join(["new_identities", *requested_keys])
            + ". Omit unrequested artifact keys. Preserve exact logical-grid geometry and evidence; avoid display-pixel coordinates."
        )
        content: list[dict[str, Any]] = [
            {
                "type": "input_text",
                "text": prompt
                + request_note
                + "\n\nPERSISTENT CONTEXT:\n"
                + self._context(store, node),
            }
        ]
        parent = store.parent_node(node)
        if parent is not None:
            content.extend(
                [
                    {"type": "input_text", "text": "Previous ARC3 state image:"},
                    {
                        "type": "input_image",
                        "image_url": _data_url(parent.image_path),
                        "detail": self.active_profile["parent_detail"],
                    },
                ]
            )
        content.extend(
            [
                {"type": "input_text", "text": "Current ARC3 state image:"},
                {
                    "type": "input_image",
                    "image_url": _data_url(node.image_path),
                    "detail": self.active_profile["current_detail"],
                },
            ]
        )
        started = time.perf_counter()
        response = self.client.responses.create(
            model=self.model,
            input=[{"role": "user", "content": content}],
            reasoning={"effort": self.active_profile["reasoning"]},
            max_output_tokens=self.active_profile["tokens"],
        )
        elapsed = time.perf_counter() - started
        print(
            f"GPT combined request: {elapsed:.1f}s "
            f"({len(requested_keys)} artifacts, profile={self.active_profile['name']}, "
            f"current={self.active_profile['current_detail']}, "
            f"parent={self.active_profile['parent_detail']}, "
            f"reasoning={self.active_profile['reasoning']}, "
            f"max_tokens={self.active_profile['tokens']})"
        )
        output = getattr(response, "output_text", None)
        if not output:
            raise RuntimeError("Combined GPT response contained no output_text")
        return _json_payload(output)

    def _merge_new_identities(
        self,
        store: ActionTreeStore,
        bundle: dict[str, Any],
    ) -> None:
        registry = store.registry_identities()
        for item in bundle.get("new_identities") or []:
            if not isinstance(item, dict):
                continue
            name = re.sub(r"[^a-zA-Z0-9_]", "_", str(item.get("id", "")).lower()).strip("_")
            if not name or store.OPAQUE_ID_RE.match(name):
                raise RuntimeError(f"Invalid friendly identity returned by GPT: {name or item!r}")
            object_type = re.sub(r"[^a-zA-Z0-9_]", "_", str(item.get("type", "object")).lower()).strip("_") or "object"
            label = str(item.get("label") or name.replace("_", " ")).replace("\\", "\\\\").replace("'", "\\'")
            registry.setdefault(name, f"object_identity({name}, {object_type}, '{label}').")
        if not registry:
            raise RuntimeError("Combined GPT analysis returned no friendly object identities")
        lines = [
            "% Canonical friendly object identities for this entire ARC3 level.",
            "% Names are stable across every action-tree branch.",
            "",
            *[registry[name] for name in sorted(registry)],
        ]
        store.object_registry_path.write_text("\n".join(lines) + "\n", encoding="utf-8")

    def _normalize_objects(self, store: ActionTreeStore, node: StateNode, source: str) -> str:
        text = _plain_prolog(source)
        if store.OPAQUE_TOKEN_RE.search(text):
            raise RuntimeError("Combined GPT objects output contains opaque numbered IDs")
        registry = store.registry_identities()
        for name, fact in store.identity_facts(text).items():
            registry.setdefault(name, fact)
        for name, fact in store.new_identity_facts(text).items():
            registry.setdefault(name, fact)
        if registry:
            lines = [
                "% Canonical friendly object identities for this entire ARC3 level.",
                "% Names are stable across every action-tree branch.",
                "",
                *[registry[name] for name in sorted(registry)],
            ]
            store.object_registry_path.write_text("\n".join(lines) + "\n", encoding="utf-8")
        body = []
        for line in text.splitlines():
            if store.FRIENDLY_ID_RE.match(line) or store.NEW_FRIENDLY_ID_RE.match(line) or store.REGISTRY_LOAD_RE.match(line):
                continue
            body.append(line)
        ref = store.registry_reference(node)
        return (
            "% Canonical identities are loaded from the level registry.\n"
            f":- ensure_loaded('{ref}').\n\n"
            "% State-specific facts for this action-tree node.\n"
            + ("\n".join(body).strip() or "% No additional state-specific facts.")
            + "\n"
        )

    def _cache_complete(self, store: ActionTreeStore, node: StateNode) -> bool:
        parent = store.parent_node(node)
        for filename in ARTIFACT_KEYS.values():
            if parent is None and filename in PAIR_ONLY:
                continue
            path = node.path / filename
            if not path.exists() or not path.stat().st_size:
                return False
        return store.object_registry_path.exists() and bool(store.registry_identities())

    def ensure_full_analysis(
        self,
        store: ActionTreeStore,
        node: StateNode,
        *,
        force: bool = False,
        analysis_level: int = 2,
    ) -> dict[str, Any]:
        self.configure_profile(analysis_level)
        parent = store.parent_node(node)
        if not force and self._cache_complete(store, node):
            store.refresh_readme(node)
            if parent is not None:
                store.refresh_readme(parent)
            return self._result(store, node, called=False)

        requested_keys = self._missing_artifact_keys(store, node)
        if force:
            requested_keys = [
                key for key, filename in ARTIFACT_KEYS.items()
                if not (parent is None and filename in PAIR_ONLY)
            ]
        bundle = self._request_bundle(store, node, requested_keys)
        self._merge_new_identities(store, bundle)

        for key, filename in ARTIFACT_KEYS.items():
            if key not in requested_keys:
                continue
            text = _plain_prolog(bundle.get(key, ""))
            if filename == "objects.pl":
                text = self._normalize_objects(store, node, text)
            if parent is None and filename in PAIR_ONLY and not text:
                continue
            (node.path / filename).write_text(text + ("" if text.endswith("\n") else "\n"), encoding="utf-8")

        store.refresh_readme(node)
        if parent is not None:
            store.refresh_readme(parent)
        return self._result(store, node, called=True)

    def _result(self, store: ActionTreeStore, node: StateNode, *, called: bool) -> dict[str, Any]:
        parent = store.parent_node(node)
        result: dict[str, Any] = {
            "registry_path": store.object_registry_path,
            "registry_called": called,
        }
        mapping = {
            "objects": "objects.pl",
            "differences": "differences.pl",
            "similarities": "similarities.pl",
            "turtle_from_image": "turtle_from_image.pl",
            "turtle_from_diff": "turtle_from_diff.pl",
            "rules": "rules.pl",
        }
        for prefix, filename in mapping.items():
            path = node.path / filename
            applicable = not (parent is None and filename in PAIR_ONLY)
            result[f"{prefix}_path"] = path if applicable and path.exists() else None
            result[f"{prefix}_called"] = called and applicable
        return result

    # Targeted commands remain available, but each regeneration still uses the
    # same combined request so all artifacts remain mutually consistent.
    def ensure_differences(self, store: ActionTreeStore, node: StateNode, *, force: bool = True):
        result = self.ensure_full_analysis(store, node, force=force)
        return result["differences_path"], result["differences_called"]

    def generate_single_artifact(self, store: ActionTreeStore, node: StateNode, prompt_name: str, filename: str, *, force: bool = True):
        result = self.ensure_full_analysis(store, node, force=force)
        path = node.path / filename
        return (path if path.exists() else None), result.get(filename.replace(".pl", "") + "_called", result["registry_called"])

    def generate_pair_artifact(self, store: ActionTreeStore, node: StateNode, prompt_name: str, filename: str, *, force: bool = True):
        return self.generate_single_artifact(store, node, prompt_name, filename, force=force)
