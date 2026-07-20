from __future__ import annotations

from ansi2html import Ansi2HTMLConverter
from IPython.display import HTML, display

_converter = Ansi2HTMLConverter(inline=True)

def display_ansi(text: str) -> None:
    """Render ANSI terminal output inside Jupyter."""
    html = _converter.convert(text, full=False)
    display(HTML(
        '<div style="background:#111;color:#eee;padding:16px;'
        'font-family:monospace;white-space:pre;overflow-x:auto;'
        f'border-radius:6px">{html}</div>'
    ))
