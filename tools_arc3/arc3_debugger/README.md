# ARC3 Turtle Debugger

Minimal end-to-end skeleton:

**Jupyter notebook → Python subprocess bridge → SWI-Prolog → ANSI debugger output**

## Structure

```text
arc3_debugger/
├── notebooks/
│   └── arc3_debugger.ipynb
├── python/
│   ├── __init__.py
│   ├── ansi_console.py
│   └── swipl_bridge.py
├── prolog/
│   ├── arc3_debugger.pl
│   ├── demo_task.pl
│   ├── turtle_dsl.pl
│   └── world_state.pl
├── requirements.txt
└── README.md
```

## Requirements

- Python 3.10+
- SWI-Prolog available as `swipl`
- JupyterLab

## Setup

```bash
cd arc3_debugger

python3 -m venv .venv
source .venv/bin/activate

pip install -r requirements.txt
jupyter lab
```

Open:

```text
notebooks/arc3_debugger.ipynb
```

## Test SWI-Prolog directly

```bash
swipl -q \
  -s prolog/arc3_debugger.pl \
  -g arc3_debugger:demo \
  -t halt
```

## Current DSL instructions

```prolog
penup
pendown
set_cell
fwd(N)
rot(Degrees)
```

Rotations are relative and currently normalized to 90-degree steps.

## First milestone

A notebook cell calls SWI-Prolog, executes a Turtle DSL program, and displays the colored ANSI execution trace.

The Python layer is intentionally thin. Turtle execution, world-state handling, and debugging remain in Prolog so another UI can later reuse the same API.
