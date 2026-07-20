from __future__ import annotations

from ansi2html import Ansi2HTMLConverter
from IPython.display import HTML, display


_converter = Ansi2HTMLConverter(inline=True)


def display_ansi(text: str) -> None:
    html = _converter.convert(text, full=False)

    display(
        HTML(
            f"""
            <div style="
                background: #111;
                color: #eee;
                padding: 16px;
                font-family: monospace;
                white-space: pre;
                overflow-x: auto;
                border-radius: 6px;
            ">{html}</div>
            """
        )
    )
