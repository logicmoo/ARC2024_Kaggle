# ARC3 Debugger

A small debugger/runner for ARC-AGI-3:

```text
Jupyter or CLI
    -> Arc3Runner
    -> arc_agi.Arcade environment
    -> observation/history snapshot
    -> optional SWI-Prolog controller
```

## What works

- Opens an ARC3 game by ID.
- Uses `env.action_space` as the legal-action source.
- Resolves actions by index, enum, or name.
- Supports simple and coordinate actions.
- Tracks compact step history.
- Resets and replays actions.
- Saves history as JSON.
- Exposes a stable snapshot for SWI-Prolog.
- Includes a minimal Prolog controller skeleton.
- Includes notebook and CLI runners.

## Existing environment

From the directory containing this project:

```bash
source .venv/bin/activate
cd arc3_debugger
pip install -r requirements.txt
```

Your existing ARC toolkit installation must already provide:

```python
import arc_agi
from arcengine import GameAction, GameState
```

## CLI runner

```bash
python examples/interactive_runner.py ls20
```

The debugger uses single keypresses without requiring Enter.

```text
↑ or 1       ACTION1
↓ or 2       ACTION2
← or 3       ACTION3
→ or 4       ACTION4
Space or 5   ACTION5
6            ACTION6, then x/y
Ctrl-Z or 7  ACTION7
```


Action keys are assigned dynamically from the environment's legal action list.
Actions whose names clearly identify `up`, `down`, `left`, or `right` are mapped
to the arrow keys. Opaque or game-specific actions receive numbered/letter keys:

```text
↑ ↓ ← →       explicit directional actions
1 2 3 ...     remaining legal actions
```

The debugger does not assume that `ACTION1`, `ACTION2`, and similar opaque names
have fixed directional meanings.

Debugger controls:

```text
r  reset current level
R  restart from level 1
h  history
s  scorecard
a  list actions
?  controls
q  quit
```

Complex actions prompt for `x` and `y` coordinates after the action key is pressed.

## Notebook

```bash
jupyter lab notebooks/arc3_runner.ipynb
```

## SWI-Prolog controller demo

```bash
python examples/prolog_controlled_runner.py
```

The supplied Prolog policy deliberately selects the first legal action. Replace:

```prolog
choose_action/2
```

in `prolog/arc3_agent.pl` with the Turtle DSL and world-model policy.

## Python usage

```python
runner = Arc3Runner("ls20", render_mode="terminal")

runner.action_table()
runner.step("ACTION1")
runner.step("ACTION6", x=20, y=30)

runner.history()
runner.save_history("run.json")
runner.reset()
runner.replay()
runner.scorecard()
```

## Design rule

The toolkit environment remains the real world. Prolog receives a simplified
snapshot and returns an action decision. The notebook and CLI are front ends,
not alternate game implementations.
