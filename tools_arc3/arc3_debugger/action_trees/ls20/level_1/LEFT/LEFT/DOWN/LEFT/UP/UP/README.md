# `ls20` level `1` — LEFT / LEFT / DOWN / LEFT / UP / UP

## Navigation

[Level start](../../../../../../README.md) · [Parent](../README.md)

### Actions

[`UP`](UP/README.md)

---

- **Full game ID:** `ls20`
- **State:** `NOT_FINISHED`
- **Image hash:** `83c115d58c5a03cb`
- **Incoming action:** `ACTION1`

## Image

![ARC3 state](image.png)

## Files

- [image.png](image.png)
- [state.json](state.json)
- [object_registry.pl](../../../../../../object_registry.pl) — shared level registry (26 canonical identities)
- [differences.pl](differences.pl)
- [objects.pl](objects.pl)
- [rules.pl](rules.pl)
- [similarities.pl](similarities.pl)
- [turtle_from_diff.pl](turtle_from_diff.pl)
- [turtle_from_image.pl](turtle_from_image.pl)

## Embedded files

*Canonical identities are shared through [`object_registry.pl`](../../../../../../object_registry.pl) and are not repeated in every node.*

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
      "id": "ACTION1",
      "data": {},
      "reasoning": null
    },
    "guid": "a992cb74-c0cd-4d3e-915e-9312cff80356",
    "full_reset": false,
    "available_actions": [
      1,
      2,
      3,
      4
    ]
  },
  "step_count": 5,
  "game_id": "ls20",
  "game_directory": "ls20",
  "level": "1",
  "image_hash": "83c115d58c5a03cb",
  "incoming_action": "ACTION1",
  "action_directory": "UP",
  "action_data": {},
  "parent_node": "..",
  "action_path": [
    "LEFT",
    "LEFT",
    "DOWN",
    "LEFT",
    "UP",
    "UP"
  ]
}
````

[Open `state.json`](state.json)

</details>

<details>
<summary><code>differences.pl</code></summary>

````prolog
transition(action6, action7, action('ACTION1', {})).

added_object(_Object) :-
    fail.

removed_object(_Object) :-
    fail.

recolored_object(_Object, _OldColor, _NewColor) :-
    fail.

moved_object(
    bottom_center_gate,
    point(19, 40),
    point(19, 35),
    delta(0, -5)
).
moved_object(
    gate_gray_header,
    point(19, 40),
    point(19, 35),
    delta(0, -5)
).
moved_object(
    gate_burgundy_panel,
    point(19, 42),
    point(19, 37),
    delta(0, -5)
).

resized_object(
    green_status_block,
    size(5, 2),
    size(6, 2)
).
resized_object(
    bottom_status_track,
    size(37, 2),
    size(36, 2)
).

changed_object(
    bottom_center_gate,
    bounding_box(19, 40, 5, 5),
    bounding_box(19, 35, 5, 5)
).
changed_object(
    bottom_center_gate,
    center(21, 42),
    center(21, 37)
).
changed_object(
    bottom_center_gate,
    state_set([closed, shifted_far_left, raised]),
    state_set([closed, shifted_far_left, raised, raised_again])
).
changed_object(
    gate_gray_header,
    bounding_box(19, 40, 5, 2),
    bounding_box(19, 35, 5, 2)
).
changed_object(
    gate_burgundy_panel,
    bounding_box(19, 42, 5, 3),
    bounding_box(19, 37, 5, 3)
).
changed_object(
    green_status_block,
    bounding_box(13, 61, 5, 2),
    bounding_box(13, 61, 6, 2)
).
changed_object(
    green_status_block,
    center(15, 62),
    center(16, 62)
).
changed_object(
    bottom_status_track,
    bounding_box(18, 61, 37, 2),
    bounding_box(19, 61, 36, 2)
).
changed_object(
    bottom_status_track,
    center(36, 62),
    center(37, 62)
).

boundary_shifted(
    green_status_block,
    right_edge,
    from(18),
    to(19)
).
boundary_shifted(
    bottom_status_track,
    left_edge,
    from(18),
    to(19)
).

added_relation(embedded_in(bottom_center_gate, fortress_left_wing)).
added_relation(overlays(bottom_center_gate, fortress_left_wing)).
removed_relation(adjacent(fortress_lower_bridge, bottom_center_gate)).

unchanged_object(yellow_playfield, appearance_and_extent).
unchanged_object(left_boundary_wall, appearance_and_extent).
unchanged_object(green_fortress, appearance_and_extent).
unchanged_object(fortress_main_body, appearance_and_extent).
unchanged_object(fortress_left_wing, appearance_and_extent).
unchanged_object(fortress_right_wing, appearance_and_extent).
unchanged_object(fortress_lower_bridge, appearance_and_extent).
unchanged_object(fortress_upper_stem, appearance_and_extent).
unchanged_object(fortress_inner_courtyard, appearance_and_extent).
unchanged_object(upper_chamber_frame, appearance_and_extent).
unchanged_object(upper_chamber_interior, appearance_and_extent).
unchanged_object(upper_burgundy_glyph, appearance_and_extent).
unchanged_object(blue_black_player, appearance_and_extent).
unchanged_object(player_black_core, appearance_and_extent).
unchanged_object(player_blue_tail, appearance_and_extent).
unchanged_object(lower_left_symbol_card, appearance_and_extent).
unchanged_object(lower_left_burgundy_glyph, appearance_and_extent).
unchanged_object(bottom_status_panel, appearance_and_extent).
unchanged_object(cyan_status_blocks, appearance_and_extent).

observed_difference(
    moved_object(
        bottom_center_gate,
        point(19, 40),
        point(19, 35),
        delta(0, -5)
    )
).
observed_difference(
    moved_object(
        gate_gray_header,
        point(19, 40),
        point(19, 35),
        delta(0, -5)
    )
).
observed_difference(
    moved_object(
        gate_burgundy_panel,
        point(19, 42),
        point(19, 37),
        delta(0, -5)
    )
).
observed_difference(
    resized_object(green_status_block, size(5, 2), size(6, 2))
).
observed_difference(
    resized_object(bottom_status_track, size(37, 2), size(36, 2))
).
observed_difference(
    added_relation(embedded_in(bottom_center_gate, fortress_left_wing))
).
observed_difference(
    added_relation(overlays(bottom_center_gate, fortress_left_wing))
).
observed_difference(
    removed_relation(adjacent(fortress_lower_bridge, bottom_center_gate))
).

observed_transition_effect(
    action('ACTION1', {}),
    gate_translated(bottom_center_gate, delta(0, -5))
).
observed_transition_effect(
    action('ACTION1', {}),
    status_progress_advanced(
        green_status_block,
        bottom_status_track,
        cells(1)
    )
).

hypothesized_action_effect(
    action('ACTION1', {}),
    raises(bottom_center_gate, cells(5))
).
hypothesized_action_effect(
    action('ACTION1', {}),
    advances_status_progress(cells(1))
).

action_effect(Action, Effect) :-
    hypothesized_action_effect(Action, Effect).

hypothesis(
    action_effect(
        action('ACTION1', {}),
        raises(bottom_center_gate, cells(5))
    ),
    strongly_supported
).
hypothesis(
    action_effect(
        action('ACTION1', {}),
        advances_status_progress(cells(1))
    ),
    strongly_supported
).
````

[Open `differences.pl`](differences.pl)

</details>

<details>
<summary><code>objects.pl</code></summary>

````prolog
% Canonical object identities live in the level-wide registry.
:- ensure_loaded('../../../../../../object_registry.pl').

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
state_id(action7).
incoming_action(action7, action('ACTION1', {})).
previous_state(action7, action6).

canvas_size(64, 64).
coordinate_system(origin_top_left, x_right, y_down).
grid_cell_size_pixels(10).

visible(yellow_playfield).
visible(left_boundary_wall).
visible(green_fortress).
visible(fortress_main_body).
visible(fortress_left_wing).
visible(fortress_right_wing).
visible(fortress_lower_bridge).
visible(fortress_upper_stem).
visible(fortress_inner_courtyard).
visible(upper_chamber_frame).
visible(upper_chamber_interior).
visible(upper_burgundy_glyph).
visible(blue_black_player).
visible(player_black_core).
visible(player_blue_tail).
visible(bottom_center_gate).
visible(gate_gray_header).
visible(gate_burgundy_panel).
visible(lower_left_symbol_card).
visible(lower_left_burgundy_glyph).
visible(bottom_status_panel).
visible(bottom_status_track).
visible(green_status_block).
visible(cyan_status_blocks).

bounding_box(yellow_playfield, 0, 0, 64, 64).
bounding_box(left_boundary_wall, 0, 0, 4, 52).
bounding_box(green_fortress, 14, 8, 40, 42).
bounding_box(fortress_main_body, 14, 25, 40, 25).
bounding_box(fortress_left_wing, 14, 25, 15, 15).
bounding_box(fortress_right_wing, 34, 25, 20, 25).
bounding_box(fortress_lower_bridge, 19, 45, 35, 5).
bounding_box(fortress_upper_stem, 34, 17, 5, 8).
bounding_box(fortress_inner_courtyard, 24, 30, 10, 15).
bounding_box(upper_chamber_frame, 32, 8, 9, 9).
bounding_box(upper_chamber_interior, 33, 9, 7, 7).
bounding_box(upper_burgundy_glyph, 35, 11, 3, 3).
bounding_box(blue_black_player, 20, 31, 3, 3).
bounding_box(player_black_core, 21, 31, 2, 2).
bounding_box(player_blue_tail, 20, 32, 2, 2).
bounding_box(bottom_center_gate, 19, 35, 5, 5).
bounding_box(gate_gray_header, 19, 35, 5, 2).
bounding_box(gate_burgundy_panel, 19, 37, 5, 3).
bounding_box(lower_left_symbol_card, 1, 53, 10, 10).
bounding_box(lower_left_burgundy_glyph, 3, 55, 6, 6).
bounding_box(bottom_status_panel, 12, 60, 52, 4).
bounding_box(green_status_block, 13, 61, 6, 2).
bounding_box(bottom_status_track, 19, 61, 36, 2).
bounding_box(cyan_status_blocks, 56, 61, 8, 2).

center(blue_black_player, 21, 32).
center(bottom_center_gate, 21, 37).
center(upper_chamber_frame, 36, 12).
center(upper_chamber_interior, 36, 12).
center(lower_left_symbol_card, 5, 58).
center(green_status_block, 16, 62).
center(bottom_status_track, 37, 62).
center(cyan_status_blocks, 60, 62).

color(yellow_playfield, yellow).
color(left_boundary_wall, light_gray).
color(green_fortress, green).
color(fortress_main_body, green).
color(fortress_left_wing, green).
color(fortress_right_wing, green).
color(fortress_lower_bridge, green).
color(fortress_upper_stem, green).
color(fortress_inner_courtyard, yellow).
color(upper_chamber_frame, green).
color(upper_chamber_interior, light_gray).
color(upper_burgundy_glyph, burgundy).
colors(blue_black_player, [blue, black]).
color(player_black_core, black).
color(player_blue_tail, blue).
colors(bottom_center_gate, [light_gray, burgundy]).
color(gate_gray_header, light_gray).
color(gate_burgundy_panel, burgundy).
color(lower_left_symbol_card, light_gray).
color(lower_left_burgundy_glyph, burgundy).
color(bottom_status_panel, light_gray).
color(bottom_status_track, dark_gray).
color(green_status_block, green).
color(cyan_status_blocks, cyan).

geometry(yellow_playfield, background_with_occlusions).
geometry(left_boundary_wall, filled_vertical_rectangle).
geometry(green_fortress, connected_compound_structure).
geometry(fortress_main_body, stepped_block_region).
geometry(fortress_left_wing, filled_rectangle).
geometry(fortress_right_wing, filled_rectangle).
geometry(fortress_lower_bridge, filled_horizontal_bar).
geometry(fortress_upper_stem, filled_vertical_rectangle).
geometry(fortress_inner_courtyard, l_shaped_hole).
geometry(upper_chamber_frame, one_cell_thick_rectangular_frame).
geometry(upper_chamber_interior, filled_rectangle).
geometry(upper_burgundy_glyph, hooked_angular_glyph).
geometry(blue_black_player, asymmetric_five_cell_marker).
geometry(player_black_core, three_cell_corner_cluster).
geometry(player_blue_tail, two_cell_diagonal_tail).
geometry(bottom_center_gate, vertically_partitioned_rectangle).
geometry(gate_gray_header, filled_horizontal_rectangle).
geometry(gate_burgundy_panel, filled_rectangle).
geometry(lower_left_symbol_card, filled_square_panel).
geometry(lower_left_burgundy_glyph, angular_thick_glyph).
geometry(bottom_status_panel, filled_horizontal_panel).
geometry(bottom_status_track, filled_horizontal_rectangle).
geometry(green_status_block, filled_horizontal_rectangle).
geometry(cyan_status_blocks, three_separated_rectangular_blocks).

component_of(fortress_main_body, green_fortress).
component_of(fortress_left_wing, green_fortress).
component_of(fortress_right_wing, green_fortress).
component_of(fortress_lower_bridge, green_fortress).
component_of(fortress_upper_stem, green_fortress).
component_of(upper_chamber_frame, green_fortress).
component_of(player_black_core, blue_black_player).
component_of(player_blue_tail, blue_black_player).
component_of(gate_gray_header, bottom_center_gate).
component_of(gate_burgundy_panel, bottom_center_gate).
component_of(lower_left_burgundy_glyph, lower_left_symbol_card).
component_of(green_status_block, bottom_status_panel).
component_of(bottom_status_track, bottom_status_panel).
component_of(cyan_status_blocks, bottom_status_panel).

contains(green_fortress, fortress_inner_courtyard).
contains(fortress_main_body, fortress_inner_courtyard).
contains(upper_chamber_frame, upper_chamber_interior).
contains(upper_chamber_interior, upper_burgundy_glyph).
contains(lower_left_symbol_card, lower_left_burgundy_glyph).
contains(bottom_status_panel, green_status_block).
contains(bottom_status_panel, bottom_status_track).
contains(bottom_status_panel, cyan_status_blocks).

encloses(green_fortress, fortress_inner_courtyard).
encloses(upper_chamber_frame, upper_chamber_interior).

adjacent(left_boundary_wall, yellow_playfield).
adjacent(upper_chamber_frame, fortress_upper_stem).
adjacent(fortress_upper_stem, fortress_main_body).
adjacent(fortress_left_wing, fortress_right_wing).
adjacent(fortress_left_wing, fortress_inner_courtyard).
adjacent(fortress_right_wing, fortress_inner_courtyard).
adjacent(fortress_lower_bridge, fortress_inner_courtyard).
adjacent(gate_gray_header, gate_burgundy_panel).
adjacent(green_status_block, bottom_status_track).
adjacent(bottom_status_track, cyan_status_blocks).

embedded_in(bottom_center_gate, fortress_left_wing).
embedded_in(bottom_center_gate, green_fortress).

overlays(blue_black_player, fortress_left_wing).
overlays(bottom_center_gate, fortress_left_wing).
overlays(upper_burgundy_glyph, upper_chamber_interior).
overlays(lower_left_burgundy_glyph, lower_left_symbol_card).
overlays(green_status_block, bottom_status_panel).
overlays(bottom_status_track, bottom_status_panel).
overlays(cyan_status_blocks, bottom_status_panel).

left_of(bottom_center_gate, fortress_inner_courtyard).
left_of(green_status_block, bottom_status_track).
left_of(bottom_status_track, cyan_status_blocks).
above(upper_chamber_frame, blue_black_player).
above(blue_black_player, bottom_center_gate).
above(bottom_center_gate, fortress_lower_bridge).
below(blue_black_player, upper_chamber_frame).
below(bottom_center_gate, blue_black_player).
below(fortress_lower_bridge, bottom_center_gate).

state(blue_black_player, stationary).
state(green_fortress, solid).
state(fortress_inner_courtyard, empty).
state(bottom_center_gate, closed).
state(bottom_center_gate, shifted_far_left).
state(bottom_center_gate, raised).
state(bottom_center_gate, raised_again).
state(bottom_status_panel, active).
state(green_status_block, lit).
state(cyan_status_blocks, three_lit_blocks).
state(action7, gate_moved_up).
state(action7, status_progress_increased).

component_box(fortress_main_body, 14, 25, 40, 5).
component_box(fortress_main_body, 14, 30, 15, 10).
component_box(fortress_main_body, 34, 30, 20, 20).
component_box(fortress_main_body, 19, 45, 35, 5).

component_box(fortress_lower_bridge, 19, 45, 35, 5).

component_box(fortress_inner_courtyard, 29, 30, 5, 15).
component_box(fortress_inner_courtyard, 24, 40, 5, 5).

component_box(upper_burgundy_glyph, 35, 11, 3, 1).
component_box(upper_burgundy_glyph, 37, 12, 1, 2).
component_box(upper_burgundy_glyph, 35, 13, 1, 1).

component_box(lower_left_burgundy_glyph, 3, 55, 6, 2).
component_box(lower_left_burgundy_glyph, 3, 57, 2, 4).
component_box(lower_left_burgundy_glyph, 7, 59, 2, 2).

component_box(cyan_status_blocks, 56, 61, 2, 2).
component_box(cyan_status_blocks, 59, 61, 2, 2).
component_box(cyan_status_blocks, 62, 61, 2, 2).

turtle_program(yellow_playfield,
    [penup, set_pos(0,0), setcolor(yellow), pendown, fill_rect(64,64)]).

turtle_program(left_boundary_wall,
    [penup, set_pos(0,0), setcolor(light_gray), pendown, fill_rect(4,52)]).

turtle_program(green_fortress,
    [penup, setcolor(green),
     set_pos(32,8), pendown, fill_rect(9,1),
     penup, set_pos(32,9), pendown, fill_rect(1,7),
     penup, set_pos(40,9), pendown, fill_rect(1,7),
     penup, set_pos(32,16), pendown, fill_rect(9,1),
     penup, set_pos(34,17), pendown, fill_rect(5,8),
     penup, set_pos(14,25), pendown, fill_rect(40,5),
     penup, set_pos(14,30), pendown, fill_rect(15,10),
     penup, set_pos(34,30), pendown, fill_rect(20,15),
     penup, set_pos(19,45), pendown, fill_rect(35,5)]).

turtle_program(fortress_main_body,
    [penup, setcolor(green),
     set_pos(14,25), pendown, fill_rect(40,5),
     penup, set_pos(14,30), pendown, fill_rect(15,10),
     penup, set_pos(34,30), pendown, fill_rect(20,20),
     penup, set_pos(19,45), pendown, fill_rect(35,5)]).

turtle_program(fortress_left_wing,
    [penup, set_pos(14,25), setcolor(green), pendown, fill_rect(15,15)]).

turtle_program(fortress_right_wing,
    [penup, set_pos(34,25), setcolor(green), pendown, fill_rect(20,25)]).

turtle_program(fortress_lower_bridge,
    [penup, set_pos(19,45), setcolor(green), pendown, fill_rect(35,5)]).

turtle_program(fortress_upper_stem,
    [penup, set_pos(34,17), setcolor(green), pendown, fill_rect(5,8)]).

turtle_program(fortress_inner_courtyard,
    [penup, setcolor(yellow),
     set_pos(29,30), pendown, fill_rect(5,15),
     penup, set_pos(24,40), pendown, fill_rect(5,5)]).

turtle_program(upper_chamber_frame,
    [penup, setcolor(green),
     set_pos(32,8), pendown, fill_rect(9,1),
     penup, set_pos(32,9), pendown, fill_rect(1,7),
     penup, set_pos(40,9), pendown, fill_rect(1,7),
     penup, set_pos(32,16), pendown, fill_rect(9,1)]).

turtle_program(upper_chamber_interior,
    [penup, set_pos(33,9), setcolor(light_gray), pendown, fill_rect(7,7)]).

turtle_program(upper_burgundy_glyph,
    [penup, setcolor(burgundy),
     set_pos(35,11), pendown, fill_rect(3,1),
     penup, set_pos(37,12), pendown, fill_rect(1,2),
     penup, set_pos(35,13), pendown, set_cell]).

turtle_program(blue_black_player,
    [penup, setcolor(black),
     set_pos(21,31), pendown, set_cell,
     penup, set_pos(21,32), pendown, set_cell,
     penup, set_pos(22,32), pendown, set_cell,
     penup, setcolor(blue),
     set_pos(20,32), pendown, set_cell,
     penup, set_pos(21,33), pendown, set_cell]).

turtle_program(player_black_core,
    [penup, setcolor(black),
     set_pos(21,31), pendown, set_cell,
     penup, set_pos(21,32), pendown, set_cell,
     penup, set_pos(22,32), pendown, set_cell]).

turtle_program(player_blue_tail,
    [penup, setcolor(blue),
     set_pos(20,32), pendown, set_cell,
     penup, set_pos(21,33), pendown, set_cell]).

turtle_program(bottom_center_gate,
    [penup, set_pos(19,35), setcolor(light_gray), pendown, fill_rect(5,2),
     penup, set_pos(19,37), setcolor(burgundy), pendown, fill_rect(5,3)]).

turtle_program(gate_gray_header,
    [penup, set_pos(19,35), setcolor(light_gray), pendown, fill_rect(5,2)]).

turtle_program(gate_burgundy_panel,
    [penup, set_pos(19,37), setcolor(burgundy), pendown, fill_rect(5,3)]).

turtle_program(lower_left_symbol_card,
    [penup, set_pos(1,53), setcolor(light_gray), pendown, fill_rect(10,10)]).

turtle_program(lower_left_burgundy_glyph,
    [penup, setcolor(burgundy),
     set_pos(3,55), pendown, fill_rect(6,2),
     penup, set_pos(3,57), pendown, fill_rect(2,4),
     penup, set_pos(7,59), pendown, fill_rect(2,2)]).

turtle_program(bottom_status_panel,
    [penup, set_pos(12,60), setcolor(light_gray), pendown, fill_rect(52,4)]).

turtle_program(green_status_block,
    [penup, set_pos(13,61), setcolor(green), pendown, fill_rect(6,2)]).

turtle_program(bottom_status_track,
    [penup, set_pos(19,61), setcolor(dark_gray), pendown, fill_rect(36,2)]).

turtle_program(cyan_status_blocks,
    [penup, setcolor(cyan),
     set_pos(56,61), pendown, fill_rect(2,2),
     penup, set_pos(59,61), pendown, fill_rect(2,2),
     penup, set_pos(62,61), pendown, fill_rect(2,2)]).
````

[Open `objects.pl`](objects.pl)

</details>

<details>
<summary><code>rules.pl</code></summary>

````prolog
evidence_reference(ev_action6_action7, transition(action6, action7, action('ACTION1', {}))).
evidence_reference(ev_gate_move_action7,
    moved_object(bottom_center_gate,
                 point(19, 40),
                 point(19, 35),
                 delta(0, -5))).
evidence_reference(ev_gate_header_move_action7,
    moved_object(gate_gray_header,
                 point(19, 40),
                 point(19, 35),
                 delta(0, -5))).
evidence_reference(ev_gate_panel_move_action7,
    moved_object(gate_burgundy_panel,
                 point(19, 42),
                 point(19, 37),
                 delta(0, -5))).
evidence_reference(ev_status_growth_action7,
    resized_object(green_status_block, size(5, 2), size(6, 2))).
evidence_reference(ev_status_track_shrink_action7,
    resized_object(bottom_status_track, size(37, 2), size(36, 2))).
evidence_reference(ev_status_boundary_action7,
    synchronized_boundary_shift(
        boundary_shifted(green_status_block, right_edge, from(18), to(19)),
        boundary_shifted(bottom_status_track, left_edge, from(18), to(19)))).
evidence_reference(ev_gate_relation_changes_action7,
    relation_changes(
        [added_relation(embedded_in(bottom_center_gate, fortress_left_wing)),
         added_relation(overlays(bottom_center_gate, fortress_left_wing))],
        [removed_relation(adjacent(fortress_lower_bridge,
                                   bottom_center_gate))])).
evidence_reference(ev_no_creation_action7,
    no_added_or_removed_objects(action6, action7)).
evidence_reference(ev_unchanged_player_action7,
    unchanged_object(blue_black_player, appearance_and_extent)).
evidence_reference(ev_action6_prior_pattern,
    prior_state_indicators(
        action6,
        action('ACTION1', {}),
        [gate_moved_up, status_progress_increased])).
evidence_reference(ev_current_gate_geometry,
    current_geometry(
        bottom_center_gate,
        bounding_box(19, 35, 5, 5))).
evidence_reference(ev_current_player_geometry,
    current_geometry(
        blue_black_player,
        bounding_box(20, 31, 3, 3))).
evidence_reference(ev_next_nominal_overlap,
    nominal_destination_overlap(
        bottom_center_gate,
        blue_black_player,
        gate_destination_box(19, 30, 5, 5),
        player_box(20, 31, 3, 3))).

observed_rule(action1_raises_gate_five_pixels,
    rule(
        scope(transition(action6, action7)),
        trigger(action('ACTION1', {})),
        preconditions([
            bounding_box(bottom_center_gate, 19, 40, 5, 5)
        ]),
        effects([
            translate(bottom_center_gate, delta(0, -5)),
            set_bounding_box(bottom_center_gate, 19, 35, 5, 5),
            add_state(bottom_center_gate, raised_again)
        ]),
        evidence([
            ev_action6_action7,
            ev_gate_move_action7
        ])
    )).

observed_rule(action1_translates_gate_components_rigidly,
    rule(
        scope(transition(action6, action7)),
        trigger(action('ACTION1', {})),
        effects([
            translate(gate_gray_header, delta(0, -5)),
            translate(gate_burgundy_panel, delta(0, -5)),
            preserve_component_of(gate_gray_header, bottom_center_gate),
            preserve_component_of(gate_burgundy_panel, bottom_center_gate)
        ]),
        evidence([
            ev_gate_move_action7,
            ev_gate_header_move_action7,
            ev_gate_panel_move_action7
        ])
    )).

observed_rule(action1_advances_status_by_one_cell,
    rule(
        scope(transition(action6, action7)),
        trigger(action('ACTION1', {})),
        effects([
            extend_right(green_status_block, cells(1)),
            contract_left(bottom_status_track, cells(1)),
            preserve_right_edge(bottom_status_track, 55),
            preserve_adjacency(green_status_block, bottom_status_track)
        ]),
        evidence([
            ev_status_growth_action7,
            ev_status_track_shrink_action7,
            ev_status_boundary_action7
        ])
    )).

observed_rule(gate_motion_updates_spatial_relations,
    rule(
        scope(transition(action6, action7)),
        trigger(translate(bottom_center_gate, delta(0, -5))),
        effects([
            add_relation(embedded_in(bottom_center_gate,
                                     fortress_left_wing)),
            add_relation(overlays(bottom_center_gate,
                                  fortress_left_wing)),
            remove_relation(adjacent(fortress_lower_bridge,
                                     bottom_center_gate))
        ]),
        evidence([
            ev_gate_move_action7,
            ev_gate_relation_changes_action7
        ])
    )).

observed_rule(action1_preserves_object_registry_and_player,
    rule(
        scope(transition(action6, action7)),
        trigger(action('ACTION1', {})),
        effects([
            preserve_object_identities,
            preserve_visibility_set,
            preserve_appearance(blue_black_player),
            preserve_position(blue_black_player),
            create_no_objects,
            remove_no_objects,
            recolor_no_objects
        ]),
        evidence([
            ev_no_creation_action7,
            ev_unchanged_player_action7
        ])
    )).

hypothetical_rule(action1_repeats_gate_raise_when_destination_is_clear,
    rule(
        confidence(moderate),
        trigger(action('ACTION1', {})),
        preconditions([
            current_state(action7),
            destination_clear(
                bottom_center_gate,
                delta(0, -5),
                [blue_black_player])
        ]),
        predicted_effects([
            translate(bottom_center_gate, delta(0, -5)),
            translate(gate_gray_header, delta(0, -5)),
            translate(gate_burgundy_panel, delta(0, -5))
        ])
    ),
    [ev_action6_prior_pattern,
     ev_action6_action7,
     ev_gate_move_action7,
     ev_gate_header_move_action7,
     ev_gate_panel_move_action7]).

hypothetical_rule(action1_continues_status_progress,
    rule(
        confidence(moderate),
        trigger(action('ACTION1', {})),
        preconditions([
            current_state(action7),
            status_capacity_remaining(
                green_status_block,
                bottom_status_track,
                cells_at_least(1))
        ]),
        predicted_effects([
            extend_right(green_status_block, cells(1)),
            contract_left(bottom_status_track, cells(1)),
            preserve_total_status_span
        ])
    ),
    [ev_action6_prior_pattern,
     ev_status_growth_action7,
     ev_status_track_shrink_action7,
     ev_status_boundary_action7]).

hypothetical_rule(action1_gate_motion_preserves_rigid_gate_structure,
    rule(
        confidence(high),
        trigger(translate(bottom_center_gate, delta(DX, DY))),
        preconditions([
            component_of(gate_gray_header, bottom_center_gate),
            component_of(gate_burgundy_panel, bottom_center_gate)
        ]),
        predicted_effects([
            translate(gate_gray_header, delta(DX, DY)),
            translate(gate_burgundy_panel, delta(DX, DY)),
            preserve_geometry(bottom_center_gate),
            preserve_colors(bottom_center_gate, [light_gray, burgundy])
        ])
    ),
    [ev_gate_move_action7,
     ev_gate_header_move_action7,
     ev_gate_panel_move_action7]).

hypothetical_rule(next_action1_may_lift_player_on_gate_contact,
    rule(
        confidence(low),
        trigger(action('ACTION1', {})),
        preconditions([
            current_state(action7),
            nominal_translation(bottom_center_gate, delta(0, -5)),
            destination_overlaps(bottom_center_gate, blue_black_player)
        ]),
        predicted_effects([
            translate(bottom_center_gate, delta(0, -5)),
            translate(gate_gray_header, delta(0, -5)),
            translate(gate_burgundy_panel, delta(0, -5)),
            translate(blue_black_player, delta(0, -5)),
            translate(player_black_core, delta(0, -5)),
            translate(player_blue_tail, delta(0, -5))
        ]),
        qualification(contact_response_not_yet_observed)
    ),
    [ev_current_gate_geometry,
     ev_current_player_geometry,
     ev_next_nominal_overlap,
     ev_gate_move_action7]).

hypothetical_rule(next_action1_may_block_gate_at_player,
    rule(
        confidence(low),
        trigger(action('ACTION1', {})),
        preconditions([
            current_state(action7),
            nominal_translation(bottom_center_gate, delta(0, -5)),
            destination_overlaps(bottom_center_gate, blue_black_player),
            player_is_non_displaceable
        ]),
        predicted_effects([
            preserve_position(bottom_center_gate),
            preserve_position(gate_gray_header),
            preserve_position(gate_burgundy_panel)
        ]),
        qualification(mutually_exclusive_with(
            next_action1_may_lift_player_on_gate_contact))
    ),
    [ev_current_gate_geometry,
     ev_current_player_geometry,
     ev_next_nominal_overlap,
     ev_unchanged_player_action7]).
````

[Open `rules.pl`](rules.pl)

</details>

<details>
<summary><code>similarities.pl</code></summary>

````prolog
object_match(yellow_playfield, yellow_playfield, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(left_boundary_wall, left_boundary_wall, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(green_fortress, green_fortress, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(fortress_main_body, fortress_main_body, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(fortress_left_wing, fortress_left_wing, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(fortress_right_wing, fortress_right_wing, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(fortress_lower_bridge, fortress_lower_bridge, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(fortress_upper_stem, fortress_upper_stem, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(fortress_inner_courtyard, fortress_inner_courtyard, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(upper_chamber_frame, upper_chamber_frame, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(upper_chamber_interior, upper_chamber_interior, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(upper_burgundy_glyph, upper_burgundy_glyph, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(blue_black_player, blue_black_player, match(1.0, [canonical_id, unchanged_appearance_and_extent, stationary])).
object_match(player_black_core, player_black_core, match(1.0, [canonical_id, unchanged_appearance_and_extent, same_parent(blue_black_player)])).
object_match(player_blue_tail, player_blue_tail, match(1.0, [canonical_id, unchanged_appearance_and_extent, same_parent(blue_black_player)])).
object_match(bottom_center_gate, bottom_center_gate, match(1.0, [canonical_id, same_color_and_geometry, translated(delta(0, -5)), state_continuity])).
object_match(gate_gray_header, gate_gray_header, match(1.0, [canonical_id, same_color_and_geometry, translated(delta(0, -5)), same_parent(bottom_center_gate)])).
object_match(gate_burgundy_panel, gate_burgundy_panel, match(1.0, [canonical_id, same_color_and_geometry, translated(delta(0, -5)), same_parent(bottom_center_gate)])).
object_match(lower_left_symbol_card, lower_left_symbol_card, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(lower_left_burgundy_glyph, lower_left_burgundy_glyph, match(1.0, [canonical_id, unchanged_appearance_and_extent, same_parent(lower_left_symbol_card)])).
object_match(bottom_status_panel, bottom_status_panel, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(bottom_status_track, bottom_status_track, match(1.0, [canonical_id, same_color_and_geometry, resized(size(37, 2), size(36, 2)), same_parent(bottom_status_panel)])).
object_match(green_status_block, green_status_block, match(1.0, [canonical_id, same_color_and_geometry, resized(size(5, 2), size(6, 2)), same_parent(bottom_status_panel)])).
object_match(cyan_status_blocks, cyan_status_blocks, match(1.0, [canonical_id, unchanged_appearance_and_extent, same_parent(bottom_status_panel)])).

unmatched_previous_object(_Object) :-
    fail.

unmatched_current_object(_Object) :-
    fail.
````

[Open `similarities.pl`](similarities.pl)

</details>

<details>
<summary><code>turtle_from_diff.pl</code></summary>

````prolog
transition(action6, action7, action('ACTION1', {})).

turtle_patch(action6, action7, green_fortress,
    [penup, set_pos(19,40), setcolor(green), pendown, fill_rect(5,5)]).

turtle_patch(action6, action7, bottom_center_gate,
    [penup, set_pos(19,35), setcolor(light_gray), pendown, fill_rect(5,2),
     penup, set_pos(19,37), setcolor(burgundy), pendown, fill_rect(5,3)]).

turtle_patch(action6, action7, green_status_block,
    [penup, set_pos(18,61), setcolor(green), pendown, fill_rect(1,2)]).
````

[Open `turtle_from_diff.pl`](turtle_from_diff.pl)

</details>

<details>
<summary><code>turtle_from_image.pl</code></summary>

````prolog
object_identity(blue_black_player, player_marker, 'Small blue-and-black player marker').
object_identity(bottom_center_gate, compound_rectangle, 'Two-color gate embedded at the bottom center of the fortress').
object_identity(bottom_status_panel, interface_panel, 'Gray status panel along the bottom edge').
object_identity(bottom_status_track, horizontal_bar, 'Long dark status track inside the bottom panel').
object_identity(cyan_status_blocks, block_cluster, 'Three cyan status blocks at the right end of the bottom panel').
object_identity(fortress_inner_courtyard, enclosed_hole, 'L-shaped yellow courtyard enclosed by the fortress').
object_identity(fortress_left_wing, rectangular_block, 'Left green wing').
object_identity(fortress_lower_bridge, horizontal_bar, 'Lower green connecting bridge').
object_identity(fortress_main_body, block_region, 'Main green body of the fortress').
object_identity(fortress_right_wing, rectangular_block, 'Right green wing').
object_identity(fortress_upper_stem, vertical_bar, 'Green stem connecting the main body to the upper chamber').
object_identity(gate_burgundy_panel, rectangular_block, 'Burgundy lower panel of the bottom-center gate').
object_identity(gate_gray_header, horizontal_bar, 'Gray header of the bottom-center gate').
object_identity(green_fortress, compound_block_structure, 'Large green fortress-like structure').
object_identity(green_status_block, rectangular_block, 'Green status block at the left end of the bottom status track').
object_identity(left_boundary_wall, vertical_bar, 'Left gray boundary wall').
object_identity(lower_left_burgundy_glyph, compound_glyph, 'Burgundy angular glyph on the lower-left card').
object_identity(lower_left_symbol_card, rectangular_panel, 'Gray symbol card near the lower-left corner').
object_identity(player_black_core, pixel_cluster, 'Black core of the player marker').
object_identity(player_blue_tail, pixel_cluster, 'Blue lower-left portion of the player marker').
object_identity(upper_burgundy_glyph, compound_glyph, 'Burgundy hooked glyph inside the upper chamber').
object_identity(upper_chamber_frame, rectangular_frame, 'Green frame around the upper chamber').
object_identity(upper_chamber_interior, enclosed_rectangle, 'Gray interior of the upper chamber').
object_identity(yellow_playfield, background_region, 'Yellow playfield').

turtle_program(yellow_playfield,
    [penup,
     set_pos(0,0),
     setcolor(yellow),
     pendown,
     fill_rect(64,64)]).

turtle_program(left_boundary_wall,
    [penup,
     set_pos(0,0),
     setcolor(light_gray),
     pendown,
     fill_rect(4,52)]).

turtle_program(green_fortress,
    [penup,
     setcolor(green),
     set_pos(32,8),
     pendown,
     fill_rect(9,1),
     penup,
     set_pos(32,9),
     pendown,
     fill_rect(1,7),
     penup,
     set_pos(40,9),
     pendown,
     fill_rect(1,7),
     penup,
     set_pos(32,16),
     pendown,
     fill_rect(9,1),
     penup,
     set_pos(34,17),
     pendown,
     fill_rect(5,8),
     penup,
     set_pos(14,25),
     pendown,
     fill_rect(40,5),
     penup,
     set_pos(14,30),
     pendown,
     fill_rect(15,10),
     penup,
     set_pos(34,30),
     pendown,
     fill_rect(20,15),
     penup,
     set_pos(19,45),
     pendown,
     fill_rect(35,5)]).

turtle_program(fortress_main_body,
    [penup,
     setcolor(green),
     set_pos(14,25),
     pendown,
     fill_rect(40,5),
     penup,
     set_pos(14,30),
     pendown,
     fill_rect(15,10),
     penup,
     set_pos(34,30),
     pendown,
     fill_rect(20,20),
     penup,
     set_pos(19,45),
     pendown,
     fill_rect(35,5)]).

turtle_program(fortress_left_wing,
    [penup,
     set_pos(14,25),
     setcolor(green),
     pendown,
     fill_rect(15,15)]).

turtle_program(fortress_right_wing,
    [penup,
     set_pos(34,25),
     setcolor(green),
     pendown,
     fill_rect(20,25)]).

turtle_program(fortress_lower_bridge,
    [penup,
     set_pos(19,45),
     setcolor(green),
     pendown,
     fill_rect(35,5)]).

turtle_program(fortress_upper_stem,
    [penup,
     set_pos(34,17),
     setcolor(green),
     pendown,
     fill_rect(5,8)]).

turtle_program(fortress_inner_courtyard,
    [penup,
     setcolor(yellow),
     set_pos(29,30),
     pendown,
     fill_rect(5,15),
     penup,
     set_pos(24,40),
     pendown,
     fill_rect(5,5)]).

turtle_program(upper_chamber_frame,
    [penup,
     setcolor(green),
     set_pos(32,8),
     pendown,
     fill_rect(9,1),
     penup,
     set_pos(32,9),
     pendown,
     fill_rect(1,7),
     penup,
     set_pos(40,9),
     pendown,
     fill_rect(1,7),
     penup,
     set_pos(32,16),
     pendown,
     fill_rect(9,1)]).

turtle_program(upper_chamber_interior,
    [penup,
     set_pos(33,9),
     setcolor(light_gray),
     pendown,
     fill_rect(7,7)]).

turtle_program(upper_burgundy_glyph,
    [penup,
     setcolor(burgundy),
     set_pos(35,11),
     pendown,
     fill_rect(3,1),
     penup,
     set_pos(37,12),
     pendown,
     fill_rect(1,2),
     penup,
     set_pos(35,13),
     pendown,
     set_cell]).

turtle_program(blue_black_player,
    [penup,
     setcolor(black),
     set_pos(21,31),
     pendown,
     set_cell,
     penup,
     set_pos(21,32),
     pendown,
     set_cell,
     penup,
     set_pos(22,32),
     pendown,
     set_cell,
     penup,
     setcolor(blue),
     set_pos(20,32),
     pendown,
     set_cell,
     penup,
     set_pos(21,33),
     pendown,
     set_cell]).

turtle_program(player_black_core,
    [penup,
     setcolor(black),
     set_pos(21,31),
     pendown,
     set_cell,
     penup,
     set_pos(21,32),
     pendown,
     set_cell,
     penup,
     set_pos(22,32),
     pendown,
     set_cell]).

turtle_program(player_blue_tail,
    [penup,
     setcolor(blue),
     set_pos(20,32),
     pendown,
     set_cell,
     penup,
     set_pos(21,33),
     pendown,
     set_cell]).

turtle_program(bottom_center_gate,
    [penup,
     set_pos(19,35),
     setcolor(light_gray),
     pendown,
     fill_rect(5,2),
     penup,
     set_pos(19,37),
     setcolor(burgundy),
     pendown,
     fill_rect(5,3)]).

turtle_program(gate_gray_header,
    [penup,
     set_pos(19,35),
     setcolor(light_gray),
     pendown,
     fill_rect(5,2)]).

turtle_program(gate_burgundy_panel,
    [penup,
     set_pos(19,37),
     setcolor(burgundy),
     pendown,
     fill_rect(5,3)]).

turtle_program(lower_left_symbol_card,
    [penup,
     set_pos(1,53),
     setcolor(light_gray),
     pendown,
     fill_rect(10,10)]).

turtle_program(lower_left_burgundy_glyph,
    [penup,
     setcolor(burgundy),
     set_pos(3,55),
     pendown,
     fill_rect(6,2),
     penup,
     set_pos(3,57),
     pendown,
     fill_rect(2,4),
     penup,
     set_pos(7,59),
     pendown,
     fill_rect(2,2)]).

turtle_program(bottom_status_panel,
    [penup,
     set_pos(12,60),
     setcolor(light_gray),
     pendown,
     fill_rect(52,4)]).

turtle_program(green_status_block,
    [penup,
     set_pos(13,61),
     setcolor(green),
     pendown,
     fill_rect(6,2)]).

turtle_program(bottom_status_track,
    [penup,
     set_pos(19,61),
     setcolor(dark_gray),
     pendown,
     fill_rect(36,2)]).

turtle_program(cyan_status_blocks,
    [penup,
     setcolor(cyan),
     set_pos(56,61),
     pendown,
     fill_rect(2,2),
     penup,
     set_pos(59,61),
     pendown,
     fill_rect(2,2),
     penup,
     set_pos(62,61),
     pendown,
     fill_rect(2,2)]).
````

[Open `turtle_from_image.pl`](turtle_from_image.pl)

</details>
