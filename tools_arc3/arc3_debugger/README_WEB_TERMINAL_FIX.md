# ARC3 Web Terminal Fixed-Scale Patch

This ZIP contains a replacement for:

```text
webui/static/index.html
```

It fixes the browser debugger regression where requesting more terminal rows and
columns caused xterm.js to shrink the font and ARC display to fit the browser
viewport.

## What changed

- Removed `FitAddon` and all `fitAddon.fit()` calls.
- Fixed the terminal at **180 columns × 70 rows**.
- Fixed the font at **16 CSS pixels**.
- Added a large physical terminal surface.
- Added horizontal and vertical scrolling around that surface.
- Prevented CSS `transform` and `zoom` scaling.
- Kept browser resize events from changing terminal rows, columns, or font size.
- Preserved xterm.js scrollback and keyboard handling.

## Install

Extract this ZIP from the root of the `arc3_debugger` directory so that it
overwrites:

```text
webui/static/index.html
```

PowerShell example:

```powershell
cd C:\path\to\arc3_debugger
Expand-Archive -Path .\arc3_web_terminal_fixed.zip -DestinationPath . -Force
python run_webui.py --game ls20
```

Then reload:

```text
http://127.0.0.1:8765/
```

Use **Ctrl+F5** in Chrome to bypass the cached HTML.

## Acceptance behavior

At browser zoom 100%:

- The terminal font remains 16 px.
- The PTY receives 180 columns and 70 rows.
- A smaller browser window shows scrollbars.
- The terminal and ARC image are not compressed to fit.
- Increasing the configured terminal dimensions enlarges the scrollable surface
  instead of reducing the font.
