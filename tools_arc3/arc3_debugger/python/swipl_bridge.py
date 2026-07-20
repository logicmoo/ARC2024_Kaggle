from __future__ import annotations

import json
import subprocess
import tempfile
from pathlib import Path
from typing import Any, Mapping


class SWIPrologBridge:
    """Invoke a Prolog controller using a JSON snapshot from Arc3Runner."""

    def __init__(
        self,
        agent_file: str | Path,
        swipl_executable: str = "swipl",
    ) -> None:
        self.agent_file = Path(agent_file).resolve()
        self.swipl_executable = swipl_executable
        if not self.agent_file.exists():
            raise FileNotFoundError(self.agent_file)

    def choose_action(self, snapshot: Mapping[str, Any]) -> dict[str, Any]:
        with tempfile.TemporaryDirectory(prefix="arc3_debugger_") as tmp:
            tmp_path = Path(tmp)
            input_path = tmp_path / "state.json"
            output_path = tmp_path / "action.json"
            input_path.write_text(json.dumps(snapshot), encoding="utf-8")

            goal = (
                "arc3_agent:choose_action_file("
                + repr(str(input_path))
                + ","
                + repr(str(output_path))
                + ")"
            )

            result = subprocess.run(
                [
                    self.swipl_executable,
                    "-q",
                    "-s",
                    str(self.agent_file),
                    "-g",
                    goal,
                    "-t",
                    "halt",
                ],
                cwd=self.agent_file.parent,
                capture_output=True,
                text=True,
                check=False,
            )

            if result.returncode != 0:
                raise RuntimeError(
                    "SWI-Prolog controller failed:\n" + result.stderr
                )

            return json.loads(output_path.read_text(encoding="utf-8"))
