# `ls20` level `1` — LEFT

## Navigation

[Level start](../README.md) · [Parent](../README.md)

### Actions

[`LEFT`](LEFT/README.md)

---

- **Full game ID:** `ls20-9607627b`
- **State:** `NOT_FINISHED`
- **Image hash:** `c8aac72598f024fd`
- **Incoming action:** `ACTION3`

## Image

![ARC3 state](image.png)

## Files

- [image.png](image.png)
- [state.json](state.json)
- [object_registry.pl](../object_registry.pl) — shared level registry (10 canonical identities)
- [differences.pl](differences.pl)
- [objects.pl](objects.pl)
- [rules.pl](rules.pl)
- [similarities.pl](similarities.pl)
- [turtle_from_diff.pl](turtle_from_diff.pl)
- [turtle_from_image.pl](turtle_from_image.pl)

## Embedded files

*Canonical identities are shared through [`object_registry.pl`](../object_registry.pl) and are not repeated in every node.*

<details>
<summary><code>state.json</code></summary>

````json
{
  "state": "NOT_FINISHED",
  "observation": {
    "game_id": "ls20-9607627b",
    "state": "NOT_FINISHED",
    "levels_completed": 0,
    "win_levels": 7,
    "action_input": {
      "id": "ACTION3",
      "data": {},
      "reasoning": null
    },
    "guid": "3758e2ba-d1de-4e0a-b087-a75755f5f5c6",
    "full_reset": false,
    "available_actions": [
      1,
      2,
      3,
      4
    ]
  },
  "step_count": 0,
  "game_id": "ls20-9607627b",
  "game_directory": "ls20",
  "level": "1",
  "image_hash": "c8aac72598f024fd",
  "incoming_action": "ACTION3",
  "action_directory": "LEFT",
  "action_data": {},
  "parent_node": "..",
  "action_path": [
    "LEFT"
  ]
}
````

[Open `state.json`](state.json)

</details>

<details>
<summary><code>differences.pl</code></summary>

````prolog
moved(base_glyph,rect(272,360,40,40),rect(232,360,40,40),delta(-40,0)).
removed_color(status_track,dark_gray,rect(104,488,8,16)).
added(status_marker,rect(104,488,8,16),green).
geometry_changed(status_track,rect(104,488,336,16),rect(112,488,328,16)).
unchanged(green_structure).
unchanged(central_hole).
unchanged(top_glyph).
unchanged(player_cursor).
unchanged(hud_panel).
unchanged(status_pips).
````

[Open `differences.pl`](differences.pl)

</details>

<details>
<summary><code>objects.pl</code></summary>

````prolog
% Canonical identities are loaded from the level registry.
:- ensure_loaded('../object_registry.pl').

% State-specific facts for this action-tree node.
canvas_size(512,512).
background_color('#FFD700').
object(green_structure,compound_object,green).
geometry(green_structure,union([rect(264,72,64,64),rect(272,136,40,64),rect(112,200,320,40),rect(112,240,120,80),rect(272,240,160,120),rect(152,320,80,80),rect(152,360,280,40)])).
sub_object(green_structure,central_hole).
object(central_hole,hole,yellow).
geometry(central_hole,union([rect(232,240,40,120),rect(112,320,40,80)])).
object(top_glyph,glyph,dark_red).
geometry(top_glyph,union([rect(280,88,24,16),rect(296,104,8,8)])).
inside(top_glyph,green_structure).
object(player_cursor,compound_object,multicolor).
geometry(player_cursor,union([rect(168,248,8,16),rect(160,264,16,8)])).
color_part(player_cursor,black,rect(168,248,8,16)).
color_part(player_cursor,blue,rect(160,264,16,8)).
inside(player_cursor,green_structure).
object(base_glyph,compound_object,multicolor).
geometry(base_glyph,rect(232,360,40,40)).
color_part(base_glyph,light_gray,rect(232,360,40,16)).
color_part(base_glyph,dark_red,rect(232,376,40,24)).
inside(base_glyph,green_structure).
object(hud_panel,interface_object,multicolor).
geometry(hud_panel,rect(8,424,80,80)).
color_part(hud_panel,light_gray,rect(8,424,80,80)).
color_part(hud_panel,dark_red,union([rect(24,440,48,16),rect(24,456,16,32),rect(40,456,24,16),rect(56,472,16,16)])).
object(status_track,interface_object,dark_gray).
geometry(status_track,rect(112,488,328,16)).
object(status_marker,interface_object,green).
geometry(status_marker,rect(104,488,8,16)).
object(status_pips,interface_object,cyan).
geometry(status_pips,union([rect(448,488,16,16),rect(472,488,16,16),rect(496,488,16,16)])).
turtle_program(green_structure,[fill('#2ECC40'),rect(264,72,64,64),rect(272,136,40,64),rect(112,200,320,40),rect(112,240,120,80),rect(272,240,160,120),rect(152,320,80,80),rect(152,360,280,40)]).
turtle_program(top_glyph,[fill('#800020'),rect(280,88,24,16),rect(296,104,8,8)]).
turtle_program(player_cursor,[fill('#000000'),rect(168,248,8,16),fill('#0074D9'),rect(160,264,16,8)]).
turtle_program(base_glyph,[fill('#C0C0C0'),rect(232,360,40,16),fill('#800020'),rect(232,376,40,24)]).
turtle_program(status_marker,[fill('#2ECC40'),rect(104,488,8,16)]).
````

[Open `objects.pl`](objects.pl)

</details>

<details>
<summary><code>rules.pl</code></summary>

````prolog
observed_rule(action3_effect,moves(base_glyph,delta(-40,0))).
observed_rule(action3_status_effect,creates(status_marker,rect(104,488,8,16))).
hypothetical_rule(base_glyph_traversal,action3,moves_along(green_structure,bottom_bar,left,40)).
hypothetical_rule(status_progress,action3,advances_status_track(green,8)).
evidence(base_glyph_traversal,base_glyph,delta(-40,0)).
evidence(base_glyph_traversal,current_position,rect(232,360,40,40)).
evidence(status_progress,status_marker,rect(104,488,8,16)).
supported_by(base_glyph_traversal,base_glyph_translation).
supported_by(status_progress,status_marker_appearance).
contradicted_by(base_glyph_traversal,none).
contradicted_by(status_progress,none).
````

[Open `rules.pl`](rules.pl)

</details>

<details>
<summary><code>similarities.pl</code></summary>

````prolog
corresponds(parent(green_structure),current(green_structure),exact).
corresponds(parent(central_hole),current(central_hole),exact).
corresponds(parent(top_glyph),current(top_glyph),exact).
corresponds(parent(player_cursor),current(player_cursor),exact).
corresponds(parent(base_glyph),current(base_glyph),translated(-40,0)).
corresponds(parent(hud_panel),current(hud_panel),exact).
corresponds(parent(status_track),current(status_track),shortened_left(8)).
corresponds(parent(status_pips),current(status_pips),exact).
````

[Open `similarities.pl`](similarities.pl)

</details>

<details>
<summary><code>turtle_from_diff.pl</code></summary>

````prolog
turtle_from_diff([fill('#2ECC40'),rect(272,360,40,40),fill('#C0C0C0'),rect(232,360,40,16),fill('#800020'),rect(232,376,40,24),fill('#2ECC40'),rect(104,488,8,16)]).
````

[Open `turtle_from_diff.pl`](turtle_from_diff.pl)

</details>

<details>
<summary><code>turtle_from_image.pl</code></summary>

````prolog
turtle_from_image([clear('#FFD700'),fill('#2ECC40'),rect(264,72,64,64),rect(272,136,40,64),rect(112,200,320,40),rect(112,240,120,80),rect(272,240,160,120),rect(152,320,80,80),rect(152,360,280,40),fill('#800020'),rect(280,88,24,16),rect(296,104,8,8),fill('#000000'),rect(168,248,8,16),fill('#0074D9'),rect(160,264,16,8),fill('#C0C0C0'),rect(232,360,40,16),fill('#800020'),rect(232,376,40,24),fill('#C0C0C0'),rect(8,424,80,80),fill('#800020'),rect(24,440,48,16),rect(24,456,16,32),rect(40,456,24,16),rect(56,472,16,16),fill('#2ECC40'),rect(104,488,8,16),fill('#666666'),rect(112,488,328,16),fill('#7FDBFF'),rect(448,488,16,16),rect(472,488,16,16),rect(496,488,16,16)]).
````

[Open `turtle_from_image.pl`](turtle_from_image.pl)

</details>
