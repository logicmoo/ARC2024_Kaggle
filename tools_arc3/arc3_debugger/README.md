# ARC3 Debugger

## Shared prompt and action-tree directories

All frontends use the same project-relative roots:

```text
arc3_debugger/
├── prompts/
│   └── gpt_prompts.json
└── action_trees/
    └── <game>/
        └── level_<n>/
            ├── histories/
            ├── exports/
            └── ... state and action branches ...
```

```text
Jupyter or CLI
    -> Arc3Runner
    -> arc_agi.Arcade environment
    -> state/history/action-tree storage
    -> GPT analysis pipeline
    -> optional SWI-Prolog controller
```

This project is intended to make ARC3 states easy to browse, replay, analyze,
and compare across deterministic action branches.

Prompts remain in `prompts/`. Generated state artifacts, histories, and exports
remain attached to their corresponding level under `action_trees/`. Override
these roots with `ARC3_PROMPTS_ROOT` and `ARC3_TREE_ROOT` when needed.

---

## Core design

The toolkit environment is the real world. The debugger does **not** invent its
own game implementation. Instead it:

1. opens a real ARC3 game and level,
2. captures a rendered frame after each step,
3. stores deterministic branches in an action tree,
4. generates symbolic artifacts (`.pl` files),
5. updates GitHub-friendly `README.md` files for every state node,
6. reuses cached analysis when a state was already analyzed.

Because ARC3 games are deterministic, the filesystem itself becomes a natural
action tree.

---

## Current control philosophy

### Game actions

Numbers are **not** the primary game controls anymore.

```text
(↑)        ACTION1
(↓)        ACTION2
(←)        ACTION3
(→)        ACTION4
(Space)    ACTION5
(c)        ACTION6 coordinate action
(Ctrl-Z)   ACTION7 / undo
```

### Game / level navigation

```text
(Shift+Left)   previous game
(Shift+Right)  next game
(Shift+Up)     previous level
(Shift+Down)   next level
```

### Debugger history navigation

```text
(Ctrl+Left)    previous recorded step
(Ctrl+Right)   next recorded step
(Ctrl+Up)      first recorded step
(Ctrl+Down)    latest recorded step
```

### Reset

```text
(r)  reset current level
(R)  restart current game from level 1
```

### Information

```text
(L)  list games and levels
(l)  show current game and level
(a)  list legal actions
(h)  show history
(s)  show scorecard
(?)  reprint controls
```

### Execution / replay / files

```text
(Enter)  redraw current stored frame
(v)      replay recorded actions
(w)      save history
(e)      export current state
(x)      pause/resume
(.)      single queued step
(q)      quit
```

---

## GPT and Prolog modes

The debugger has two symbolic-analysis modes:

```text
(g)  GPT mode
(p)  Prolog mode
```

The selected mode then uses plain number keys. In GPT mode, keys `(2)`, `(3)`,
and `(4)` run the same combined artifact pipeline at increasing depth:

```text
(1)  Edit / inspect prompt or description context
(2)  Demo combined analysis
(3)  Deep combined analysis
(4)  Extreme combined analysis
(5)  Recompute turtle-from-diff using the combined request
(6)  Recompute similarities using the combined request
```

Command `(2)` is the normal demonstration path. Commands `(3)` and `(4)` force
a deeper regeneration of the same mutually consistent artifact bundle. You do
not need to invoke every number for a newly encountered state.

---

## GPT mode command (2): full pipeline

When in GPT mode, pressing:

```text
(g) then (2)
```

should perform the full analysis pipeline for the current state.

### Expected pipeline

1. Capture or reuse the current `image.png`
2. Ensure the parent state node exists
3. Ensure the current state has `objects.pl`
4. Ensure the parent state has `objects.pl` when a parent exists
5. Generate or reuse `differences.pl`
6. Generate or reuse `similarities.pl`
7. Generate or reuse `turtle_from_image.pl`
8. Generate or reuse `turtle_from_diff.pl` when a parent exists
9. Generate or reuse `rules.pl`
10. Update the level-wide `object_registry.pl`
11. Regenerate the current node `README.md`
12. Regenerate the parent node `README.md` so new child links appear

### Cache policy

If a deterministic node was already analyzed:

- reuse existing nonempty files,
- generate only the missing ones,
- skip GPT calls whenever possible.

---

## Object policy

### Friendly names are canonical

We do **not** want `obj_1`, `shape_2`, `object_3`, etc.

The very first analyzed state in a level may introduce friendly names such as:

```prolog
object_identity(blue_player, player, 'blue player').
object_identity(red_goal, goal, 'red goal').
object_identity(left_wall, wall, 'left boundary wall').
object_identity(top_bar_segment, bar_segment, 'top bar segment').
object_identity(yellow_block_cluster, block_cluster, 'yellow block cluster').
```

After that:

- those names must be reused exactly,
- they remain valid across the whole level,
- they remain valid across all branches,
- new names are allowed only for genuinely new objects.

### Block objects matter

Prompts should explicitly ask GPT to track not only high-level semantic objects
but also useful block-level structures such as:

- contiguous color blobs,
- rectangular blocks,
- line segments,
- bars,
- holes / enclosures,
- sub-objects,
- compound block structures.

The point is to support both semantic descriptions and faithful low-level ARC
reconstruction.

---

## Action tree layout

The action tree is organized directly by game, level, and action path.

Example:

```text
action_trees/
└── ls20/
    └── level_1/
        ├── README.md
        ├── image.png
        ├── state.json
        ├── objects.pl
        ├── object_registry.pl
        ├── LEFT/
        │   ├── README.md
        │   ├── image.png
        │   ├── state.json
        │   ├── objects.pl
        │   ├── differences.pl
        │   ├── similarities.pl
        │   ├── turtle_from_image.pl
        │   ├── turtle_from_diff.pl
        │   ├── rules.pl
        │   └── UP/
        │       └── ...
        └── UP/
            └── ...
```

Important details:

- the `level_N/` directory itself is the root state,
- every action directory is also the resulting state node,
- no extra `actions/` layer is used,
- no image-hash directory is required in the human-facing tree,
- coordinate actions should include their coordinates in the directory name,
  for example `SELECT_x_12_y_31`.

---

## README generation rules

Each state node gets a generated `README.md`.

### Navigation goes at the top

The navigation block should appear immediately under the title so GitHub browsing
is easy.

Example:

```markdown
## Navigation

[Level start](...) · [Parent](...)

### Actions

[`LEFT`](LEFT/README.md) · [`UP`](UP/README.md)
```

### Parent README updates

Whenever a **new child action branch** is created, the parent README must also be
regenerated so the new child link appears immediately.

That means creating `LEFT/` under a node should update the parent node README to
include the `LEFT` link at once.

### README contents

A typical state README should include:

- title / node identity,
- navigation block at the top,
- embedded `image.png`,
- summary of game / level / step / action path,
- links to generated `.pl` files,
- optionally embedded snippets from the `.pl` files,
- notes about cache reuse or generation status.

---

## Meaning of the generated `.pl` files

### `objects.pl`

Canonical symbolic description of the current state.

Expected contents include:

- `object_identity/3` declarations,
- object properties,
- coordinates,
- colors,
- shapes,
- relations,
- useful sub-object structure.

### `differences.pl`

Parent-vs-current symbolic delta.

Expected contents include:

- appeared / disappeared objects,
- moved objects,
- recolored objects,
- resized or transformed objects,
- object state changes,
- action-conditioned differences.

### `similarities.pl`

Cross-state correspondences.

Expected contents include:

- which parent object matches which current object,
- confidence or rationale,
- partial or ambiguous matches when needed.

### `turtle_from_image.pl`

A Turtle/DSL reconstruction of the current image directly from the current
state’s structure.

### `turtle_from_diff.pl`

A Turtle/DSL reconstruction or patch that explains how to transform the parent
state into the current state.

### `rules.pl`

Hypothetical symbolic rules inferred from the current branch context.

---

## Frame capture

The debugger should not try to rediscover image data later from arbitrary
serialized observations. Instead it should capture and store a frame after each
state change and use that saved image as the authoritative visual input.

This allows:

- replay,
- historical browsing,
- reliable GPT diffs,
- deterministic caching,
- reproducible GitHub-visible artifacts.

---

## Prolog mode

Prolog mode is intended to use the same tree and same cached artifacts, but
derive analysis through local symbolic procedures rather than GPT whenever
possible.

It should operate on the same files and naming conventions so both modes can be
compared directly.

---

## Requirements

Typical setup:

```bash
pip install -r requirements.txt
```

And for GPT mode, an API key is needed:

```bash
# Windows PowerShell
$env:OPENAI_API_KEY="your-api-key"
```

Optional model override:

```bash
$env:ARC3_GPT_MODEL="gpt-5.6"
```

Then run:

```bash
python examples/interactive_runner.py ls20
```

---

## Summary

The intended workflow is:

1. navigate to a game and level,
2. take actions,
3. let the debugger grow a deterministic action tree,
4. press `(g)` then `(2)` to analyze the current state,
5. browse the resulting tree in GitHub using the generated READMEs,
6. reuse cached symbolic artifacts instead of paying for repeated analysis,
7. keep friendly object names stable from the beginning to the end.

This README is meant to document the current agreed architecture as the project
continues to evolve.


## Initial friendly-ID bootstrap

The initial level node no longer assumes that object IDs already exist. The first
GPT analysis performs a dedicated identity-bootstrap pass against the level-start
`image.png`. It writes the level-wide `object_registry.pl` before generating
`objects.pl`.

The bootstrap asks for both semantic objects and useful block-level structures,
then normalizes the result into friendly `object_identity/3` facts. If a later
objects response omits those declarations, the debugger automatically runs a
repair pass instead of aborting with “no object_identity/3 facts.”

After the registry exists, every state and every action-tree branch receives the
same canonical names.


### Identity normalization and old caches

`object_registry.pl` is authoritative. GPT child-state responses do not have to
repeat every `object_identity/3` declaration perfectly. The debugger prepends
the canonical registry automatically and merges any genuinely new friendly
declarations.

If an older cached `objects.pl` lacks identity declarations, it is normalized
in place instead of breaking analysis for every descendant action node. GPT is
only asked for a repair when opaque identifiers such as `obj_1` remain.

Command `(g)` then `(2)` prints completed/cached artifacts and only reports an
error when the normalized result is still unusable.


### Every state file is embedded in the generated README

Every state-node `README.md` embeds the contents of all text artifacts associated
with that node. This includes `state.json`, the shared `object_registry.pl`,
every generated `.pl` file, and future text artifacts added to the node.

`image.png` remains embedded visually near the top. `README.md` itself is
excluded to prevent recursive self-embedding. Four-backtick fences are used so
artifact content containing ordinary triple-backtick Markdown remains valid.


## Reduced identity and README redundancy

`object_registry.pl` is the only canonical identity database for a level.
Individual `objects.pl` files now load it with a relative directive:

```prolog
:- ensure_loaded('../../object_registry.pl').
```

A node `objects.pl` contains only facts specific to that state. GPT should emit
`new_object_identity/3` only when a genuinely new object first appears; the
debugger moves that declaration into the shared registry and removes it from
the node file.

Generated READMEs still contain every local text artifact, but each artifact is
inside a collapsible GitHub `<details>` section. The shared registry is embedded
once in the level-start README and linked, rather than repeated, in descendants.

## Restored interactive functionality

The combined GPT workflow does not replace the debugger. The full keyboard UI remains available:

- Arrow/Space/coordinate/undo game actions
- Windows Console API support for Shift+Arrow and Ctrl+Arrow
- Shift+Left/Right game cycling and Shift+Up/Down level cycling
- Ctrl+Arrow recorded-step browsing
- Reset level, restart game, redraw, pause, queued step, replay, history save, state export, scorecard, action listing, and help
- GPT and Prolog modes
- SWI-Prolog action-selection bridge

`(g)` then `(2)` makes one combined GPT Responses API call. The response is split into `objects.pl`, `differences.pl`, `similarities.pl`, `turtle_from_image.pl`, `turtle_from_diff.pl`, and `rules.pl`; friendly identities are merged into the level-wide `object_registry.pl`, and current/parent READMEs are refreshed. Commands `(3)` through `(6)` remain available as targeted regeneration controls, but each uses the same combined request so the artifacts remain mutually consistent.


## Jupyter notebooks

Two notebooks are included and use the same restored runner, action tree, cache,
persistent identities, and combined GPT workflow.

### `notebooks/arc3_debugger.ipynb`

Guided debugger workflow:

- open a game and inspect legal actions,
- execute standardized ARC3 actions,
- inspect the current action-tree node,
- run `(g)` then `(2)` as one combined GPT analysis,
- inspect history,
- save and export state,
- replay actions,
- reset or restart the environment.

### `notebooks/arc3_runner.ipynb`

Lower-level API workflow:

- inspect the game catalog and legal action space,
- script deterministic branches,
- browse recorded steps,
- invoke the combined GPT analysis programmatically,
- inspect the Prolog snapshot,
- replay actions and read the scorecard.

Launch both with:

```powershell
jupyter lab
```

The notebooks do not replace the interactive keyboard debugger. They expose the
same `Arc3Runner` API for scripted and notebook-based development.


## Combined GPT performance

The combined request is optimized for ARC frames:

- images default to `detail=low` (override with `ARC3_GPT_IMAGE_DETAIL`);
- only missing artifacts are requested unless regeneration is forced;
- parent context includes the registry, incoming action, and parent objects without repeating parent differences;
- output length defaults to 9,000 tokens;
- reasoning effort defaults to `low`;
- elapsed API time and requested artifact count are printed after each call.

Windows overrides:

```powershell
$env:ARC3_GPT_IMAGE_DETAIL="low"
$env:ARC3_GPT_REASONING_EFFORT="low"
$env:ARC3_GPT_MAX_OUTPUT_TOKENS="9000"
```

## Windows action-tree path recovery

If an older checkout leaves a regular file where `action_trees/<game>/level_<n>/`
or an action directory should exist, startup no longer fails with WinError 183.
The conflicting file is preserved as `*.conflict.bak` and the required directory
is created automatically. A warning prints the backup path.

## Windows UNC path fallback

Some Windows UNC/WSL shares can report WinError 183 for a path even when Python
cannot see, rename, or remove the colliding filesystem entry. The debugger no
longer retries or modifies that blocked path. It transparently selects a sibling
folder such as `level_1.dir`, prints the actual location, and stores the action
tree there. Child action directories use the same fallback mechanism.


## GPT quality configuration

The primary interface is the `(2)`, `(3)`, and `(4)` analysis-depth menu described
below. The older named quality profiles remain available only as compatibility
settings for scripts and advanced configuration:

```powershell
$env:ARC3_GPT_QUALITY="fast"
$env:ARC3_GPT_QUALITY="balanced"
$env:ARC3_GPT_QUALITY="deep"
```

The menu level normally selects image detail, reasoning effort, and output-token
budget together. Advanced users can override those dimensions independently with
`ARC3_GPT_IMAGE_DETAIL`, `ARC3_GPT_PARENT_IMAGE_DETAIL`,
`ARC3_GPT_REASONING_EFFORT`, and `ARC3_GPT_MAX_OUTPUT_TOKENS`.


## GPT analysis levels 2, 3, and 4

The GPT menu now exposes three combined-analysis depths rather than using keys
3 and 4 only for individual artifacts:

```text
(2) Demo     low current image, low parent image, low reasoning, 12,000 output tokens
(3) Deep     high current image, low parent image, medium reasoning, 22,000 output tokens
(4) Extreme  high current image, high parent image, high reasoning, 32,000 output tokens
```

All three still make one combined GPT call and produce the same artifact bundle.
Levels 3 and 4 force regeneration so deeper output replaces the demo version.
Image detail, reasoning effort, and output-token length are independent settings.

Per-level Windows overrides are supported:

```powershell
$env:ARC3_GPT_2_IMAGE_DETAIL="low"
$env:ARC3_GPT_2_MAX_OUTPUT_TOKENS="12000"
$env:ARC3_GPT_3_IMAGE_DETAIL="high"
$env:ARC3_GPT_3_MAX_OUTPUT_TOKENS="22000"
$env:ARC3_GPT_4_PARENT_IMAGE_DETAIL="high"
$env:ARC3_GPT_4_REASONING_EFFORT="high"
$env:ARC3_GPT_4_MAX_OUTPUT_TOKENS="32000"
```

The older global variables remain valid and override all levels when present.

## Browser ANSI terminal

The browser UI exposes the **same** `examples/interactive_runner.py` debugger
through an ANSI terminal. It does not duplicate or replace the debugger logic.

```text
Browser xterm.js terminal
        ⇅ WebSocket
FastAPI web server
        ⇅ PTY / Windows ConPTY
examples/interactive_runner.py
        ↓
Arc3Runner → arc_agi.Arcade
```

### Start locally on Windows

```powershell
cd arc3_debugger
pip install -r requirements.txt
python run_webui.py --game ls20
```

Open:

```text
http://127.0.0.1:8765/
```

The browser terminal supports the same controls as the local console, including
ANSI rendering, arrows, Space, GPT/Prolog mode commands, replay, history, and
file operations. Xterm.js sends terminal input to the Python process through a
WebSocket. On Windows, `pywinpty` uses ConPTY to preserve terminal behavior.

### Expose it to another computer

Binding to a non-loopback address requires an access token:

```powershell
$env:ARC3_WEB_TOKEN="choose-a-long-random-token"
python run_webui.py --host 0.0.0.0 --port 8765 --game ls20
```

The browser will display a token field. Do not expose the raw terminal directly
to the public internet. Use a trusted network or an HTTPS reverse proxy in front
of the FastAPI server.

### Web-server options

```text
--host          bind address; default 127.0.0.1
--port          TCP port; default 8765
--game          initial ARC3 game; default ls20
--render-mode   toolkit render mode; default terminal
--token         required WebSocket token
```

Equivalent environment variables are:

```text
ARC3_WEB_HOST
ARC3_WEB_PORT
ARC3_WEB_GAME
ARC3_WEB_RENDER_MODE
ARC3_WEB_TOKEN
```

Each browser connection receives its own isolated debugger process and action
history. Closing the tab terminates that terminal process; saved action-tree
files remain on disk.

### Browser terminal dimensions

The browser terminal defaults to a dense 10-pixel monospace font and requests
approximately 160 columns by 52 rows before fitting itself to the browser
window. Every browser resize is sent back to PTY/ConPTY, so the Python debugger
sees the real terminal dimensions and can render large ARC3 worlds without
unnecessary wrapping. Server-side fallback dimensions can be changed with:

```powershell
$env:ARC3_WEB_COLS="320"
$env:ARC3_WEB_ROWS="100"
```

Maximizing the browser window or using full-screen mode provides the most room.



## Safe level-transition detection

A `WIN` result completes the current level but does not, by itself, prove that
the ARC3 toolkit has already loaded the next level. The debugger therefore keeps
the winning frame and its final transition inside the level that was actually
won. It records the likely next level as `next_level_expected`, then advances the
action-tree root only after an explicit level identifier changes or a genuine
post-win/reset state appears.

This prevents a level 1 winning frame from being written as the initial image or
object registry for `level_2/`. The detected source is stored in `state.json` and
exports through `level_source`.

## Runtime file placement

Prompts remain static under `prompts/`, while all generated material is attached to the relevant action-tree level:

```text
arc3_debugger/
├── prompts/
│   └── gpt_prompts.json
└── action_trees/
    └── ls20/
        └── level_1/
            ├── histories/
            ├── exports/
            ├── README.md
            ├── image.png
            ├── state.json
            └── ... action branches ...
```

The `w` command saves history beneath the active level's `histories/` directory. The `e` command saves state beneath the active level's `exports/` directory. The code uses the actual `ActionTreeStore.level_root`, so Windows/UNC fallback names such as `level_1.dir` are respected automatically.

---

## Exposing the Local Web Interface to the Internet

The ARC3 debugger or another locally hosted web application can be made temporarily accessible through a public HTTPS URL using either **Cloudflare Tunnel** or **ngrok**.

These tools create an outbound connection from the Windows computer to a public proxy. This normally avoids the need to configure router port forwarding, obtain a static public IP address, or open inbound firewall ports.

> **Security warning:** Anyone who knows the generated public URL may be able to access the application. Do not expose an unrestricted shell, file browser, Prolog execution endpoint, administrative interface, API keys, or private data without authentication.

### Option 1: Cloudflare Tunnel

Download `cloudflared` for Windows:

https://developers.cloudflare.com/tunnel/downloads/

After installation, open a new PowerShell window and verify that it is available:

```powershell
cloudflared --version
```

To expose a web application running locally on port `8080`:

```powershell
cloudflared tunnel --url http://localhost:8080
```

For an application running on port `5000`:

```powershell
cloudflared tunnel --url http://localhost:5000
```

Cloudflare will display a temporary public HTTPS address similar to:

```text
https://random-words.trycloudflare.com
```

Keep the PowerShell window open while the tunnel is in use. Closing `cloudflared` will close the public tunnel.

If the web application is running on another computer on the same LAN, specify that computer's LAN IP address:

```powershell
cloudflared tunnel --url http://192.168.1.50:8080
```

Replace `192.168.1.50` and `8080` with the correct LAN address and port.

### Option 2: ngrok

Download ngrok for Windows:

https://ngrok.com/download/

After installation, open PowerShell and verify that it is available:

```powershell
ngrok version
```

ngrok requires a free account and authentication token. Copy the token from the ngrok dashboard and configure it:

```powershell
ngrok config add-authtoken YOUR_AUTH_TOKEN
```

Replace `YOUR_AUTH_TOKEN` with the actual token.

To expose a local application running on port `8080`:

```powershell
ngrok http 8080
```

For port `5000`:

```powershell
ngrok http 5000
```

ngrok will display a public HTTPS address similar to:

```text
https://example-name.ngrok-free.app
```

Keep ngrok running for as long as the public URL is needed.

### Windows Firewall

The tunnel program generally requires only an outbound Internet connection. If Windows Defender Firewall displays a permission prompt, allow access on the appropriate network type.

The local web server must also be running and listening on the selected port before starting the tunnel.

You can test the local application first:

```text
http://localhost:8080
```

Then start the tunnel:

```powershell
cloudflared tunnel --url http://localhost:8080
```

or:

```powershell
ngrok http 8080
```

### Running the Tunnel in the Background

For temporary development and debugging, leave the PowerShell window open.

For a permanent deployment, configure a named Cloudflare Tunnel or install the tunnel process as a Windows service. A permanent public deployment should use:

* A fixed hostname
* HTTPS
* User authentication
* Access restrictions
* Application-level authorization
* Logging and request limits

### Recommended Quick Start

For a temporary ARC3 debugger demonstration, Cloudflare Quick Tunnel requires the least configuration:

```powershell
cloudflared tunnel --url http://localhost:8080
```

Copy the generated `https://...trycloudflare.com` address and provide it to the person who needs to access the debugger.


## Ultra-dense browser terminal

The browser terminal defaults to approximately **320 columns by 100 rows** with
a 6-pixel monospace font. The xterm fit addon then uses the entire available
browser area and reports the resulting dimensions to PTY/ConPTY. Override the
starting dimensions when needed:

```powershell
$env:ARC3_WEB_COLS="360"
$env:ARC3_WEB_ROWS="120"
python run_webui.py --game ls20
```

## Motion-based Turtle output and pen thickness

GPT-generated Turtle programs use movement instructions rather than direct block
placement. The canonical drawing vocabulary is:

```prolog
penup.
pendown.
set_pos(X, Y).
setcolor(Color).
pen_width(Width).  % Width is 1..4 logical cells
fwd(Distance).
rot(Degrees).
set_cell.
```

`set_pos/2` establishes a starting point or begins a disconnected stroke. Shape
geometry should then be traced with `fwd/1` and `rot/1`. Generated programs must
not use `rect/4`, `fill/1`, direct four-coordinate block commands, or large lists
of unrelated cell placements. Filled areas are drawn as scan-line strokes, with
`pen_width/1` used whenever a width from 1 through 4 paints the exact target
cells.

A thick stroke is defined as equivalent to its parallel one-cell strokes. The
Prolog test suite checks horizontal and vertical width-4 strokes against four
width-1 lines:

```powershell
swipl -q -s prolog/test_turtle_dsl.pl -g run_tests,halt
```

