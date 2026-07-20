from __future__ import annotations

import os
import subprocess
from pathlib import Path
from typing import Sequence


class SWIPrologBridge:
    def __init__(
        self,
        debugger_file: str | Path,
        swipl_executable: str = "swipl",
    ) -> None:
        self.debugger_file = Path(debugger_file).resolve()
        self.swipl_executable = swipl_executable

        if not self.debugger_file.exists():
            raise FileNotFoundError(
                f"Prolog debugger file not found: {self.debugger_file}"
            )

    def run_goal(self, goal: str) -> str:
        command = [
            self.swipl_executable,
            "-q",
            "-s",
            str(self.debugger_file),
            "-g",
            goal,
            "-t",
            "halt",
        ]

        environment = os.environ.copy()
        environment.setdefault("TERM", "xterm-256color")

        result = subprocess.run(
            command,
            cwd=self.debugger_file.parent,
            env=environment,
            capture_output=True,
            text=True,
            check=False,
        )

        if result.returncode != 0:
            raise RuntimeError(
                "SWI-Prolog execution failed.\n"
                f"Command: {' '.join(command)}\n"
                f"stderr:\n{result.stderr}"
            )

        return result.stdout

    def run_demo(self) -> str:
        return self.run_goal("arc3_debugger:demo")

    def debug_program(self, instructions: Sequence[str]) -> str:
        if not instructions:
            raise ValueError("The instruction sequence cannot be empty.")

        prolog_list = "[" + ",".join(instructions) + "]"
        goal = f"arc3_debugger:debug_program({prolog_list})"
        return self.run_goal(goal)
