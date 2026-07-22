# `ls20` level `1` — LEFT / LEFT / DOWN / LEFT

## Navigation

[Level start](../../../../README.md) · [Parent](../README.md)

### Actions

[`UP`](UP/README.md)

---

- **Full game ID:** `ls20`
- **State:** `NOT_FINISHED`
- **Image hash:** `779ebe400b4830b9`
- **Incoming action:** `ACTION3`

## Image

![ARC3 state](image.png)

## Files

- [image.png](image.png)
- [state.json](state.json)
- [object_registry.pl](../../../../object_registry.pl) — shared level registry (24 canonical identities)
- [differences.pl](differences.pl)
- [objects.pl](objects.pl)
- [rules.pl](rules.pl)
- [similarities.pl](similarities.pl)
- [turtle_from_diff.pl](turtle_from_diff.pl)
- [turtle_from_image.pl](turtle_from_image.pl)

## Embedded files

*Canonical identities are shared through [`object_registry.pl`](../../../../object_registry.pl) and are not repeated in every node.*

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
    "guid": "a992cb74-c0cd-4d3e-915e-9312cff80356",
    "full_reset": false,
    "available_actions": [
      1,
      2,
      3,
      4
    ]
  },
  "step_count": 3,
  "game_id": "ls20",
  "game_directory": "ls20",
  "level": "1",
  "image_hash": "779ebe400b4830b9",
  "incoming_action": "ACTION3",
  "action_directory": "LEFT",
  "action_data": {},
  "parent_node": "..",
  "action_path": [
    "LEFT",
    "LEFT",
    "DOWN",
    "LEFT"
  ]
}
````

[Open `state.json`](state.json)

</details>

<details>
<summary><code>differences.pl</code></summary>

````prolog
% Observed differences from action4 to action5.

added_object(green_status_block).

% No previously visible canonical object disappeared.
removed_object(_Object) :-
    fail.

% No surviving object changed its canonical color.
recolored_object(_Object, _OldColor, _NewColor) :-
    fail.

moved_object(bottom_center_gate,
             position(24, 45),
             position(19, 45),
             delta(-5, 0)).
moved_object(gate_gray_header,
             position(24, 45),
             position(19, 45),
             delta(-5, 0)).
moved_object(gate_burgundy_panel,
             position(24, 47),
             position(19, 47),
             delta(-5, 0)).

resized_object(fortress_lower_bridge,
               size(35, 5),
               size(30, 5)).
resized_object(bottom_status_track,
               size(42, 2),
               size(38, 2)).

changed_object(bottom_center_gate,
               bounding_box,
               change(box(24, 45, 5, 5),
                      box(19, 45, 5, 5))).
changed_object(bottom_center_gate,
               center,
               change(point(26, 47),
                      point(21, 47))).
changed_object(bottom_center_gate,
               shift_state,
               change(shifted_left,
                      shifted_far_left)).

changed_object(gate_gray_header,
               bounding_box,
               change(box(24, 45, 5, 2),
                      box(19, 45, 5, 2))).
changed_object(gate_burgundy_panel,
               bounding_box,
               change(box(24, 47, 5, 3),
                      box(19, 47, 5, 3))).

changed_object(fortress_lower_bridge,
               bounding_box,
               change(box(19, 45, 35, 5),
                      box(24, 45, 30, 5))).
changed_object(fortress_lower_bridge,
               geometry,
               change(gate_interrupted_horizontal_bar,
                      filled_horizontal_bar)).
changed_object(fortress_lower_bridge,
               component_boxes,
               change([box(19, 45, 5, 5),
                       box(29, 45, 25, 5)],
                      [box(24, 45, 30, 5)])).

changed_object(fortress_main_body,
               component_boxes,
               change([box(14, 25, 40, 5),
                       box(14, 30, 15, 10),
                       box(34, 30, 20, 20),
                       box(19, 40, 5, 10),
                       box(29, 45, 5, 5)],
                      [box(14, 25, 40, 5),
                       box(14, 30, 15, 10),
                       box(34, 30, 20, 20),
                       box(19, 40, 5, 5),
                       box(24, 45, 30, 5)])).
changed_object(green_fortress,
               occupied_shape,
               change(gate_gap_at_x_24_to_28,
                      gate_gap_at_x_19_to_23)).

changed_object(bottom_status_track,
               bounding_box,
               change(box(13, 61, 42, 2),
                      box(17, 61, 38, 2))).
changed_object(bottom_status_track,
               left_edge,
               change(13, 17)).
changed_object(bottom_status_panel,
               status_progress,
               change(no_green_block,
                      green_block_lit)).

relation_added(component_of(green_status_block, bottom_status_panel)).
relation_added(contains(bottom_status_panel, green_status_block)).
relation_added(overlays(green_status_block, bottom_status_panel)).
relation_added(adjacent(green_status_block, bottom_status_track)).
relation_added(left_of(green_status_block, bottom_status_track)).
relation_added(left_of(bottom_status_track, cyan_status_blocks)).
relation_added(left_of(bottom_center_gate, fortress_lower_bridge)).
relation_added(embedded_in(bottom_center_gate, green_fortress)).

relation_removed(embedded_in(bottom_center_gate, fortress_lower_bridge)).

observed_region_transition(
    rect(19, 45, 5, 5),
    green_fortress_cells,
    bottom_center_gate_cells).
observed_region_transition(
    rect(24, 45, 5, 5),
    bottom_center_gate_cells,
    green_fortress_cells).
observed_region_transition(
    rect(13, 61, 4, 2),
    bottom_status_track_cells,
    green_status_block_cells).

unchanged_object(yellow_playfield, intrinsic_visual_properties).
unchanged_object(left_boundary_wall, intrinsic_visual_properties).
unchanged_object(fortress_left_wing, intrinsic_visual_properties).
unchanged_object(fortress_right_wing, intrinsic_visual_properties).
unchanged_object(fortress_upper_stem, intrinsic_visual_properties).
unchanged_object(fortress_inner_courtyard, intrinsic_visual_properties).
unchanged_object(upper_chamber_frame, intrinsic_visual_properties).
unchanged_object(upper_chamber_interior, intrinsic_visual_properties).
unchanged_object(upper_burgundy_glyph, intrinsic_visual_properties).
unchanged_object(blue_black_player, intrinsic_visual_properties).
unchanged_object(player_black_core, intrinsic_visual_properties).
unchanged_object(player_blue_tail, intrinsic_visual_properties).
unchanged_object(lower_left_symbol_card, intrinsic_visual_properties).
unchanged_object(lower_left_burgundy_glyph, intrinsic_visual_properties).
unchanged_object(bottom_status_panel, bounding_box_and_color).
unchanged_object(cyan_status_blocks, intrinsic_visual_properties).

action_effect(
    action('ACTION3', {}),
    observed_transition(moved(bottom_center_gate, delta(-5, 0)))).
action_effect(
    action('ACTION3', {}),
    observed_transition(added(green_status_block))).
action_effect(
    action('ACTION3', {}),
    observed_transition(resized(bottom_status_track,
                                size(42, 2),
                                size(38, 2)))).
action_effect(
    action('ACTION3', {}),
    observed_transition(advanced(bottom_status_panel,
                                 status_progress))).

observation(gate_translation(bottom_center_gate, delta(-5, 0))).
observation(status_block_appearance(green_status_block)).
observation(player_remained_stationary(blue_black_player)).
observation(cyan_status_remained_three_lit_blocks(cyan_status_blocks)).

hypothesis(action3_advances_gate_leftward_by_one_five_cell_step).
hypothesis(action3_increments_status_progress).
hypothesis(green_status_block_records_successful_action_progress).
````

[Open `differences.pl`](differences.pl)

</details>

<details>
<summary><code>objects.pl</code></summary>

````prolog
% Canonical object identities live in the level-wide registry.
:- ensure_loaded('../../../../object_registry.pl').

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
state_id(action5).
incoming_action(action5, action('ACTION3', {})).
previous_state(action5, action4).

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
bounding_box(fortress_lower_bridge, 24, 45, 30, 5).
bounding_box(fortress_upper_stem, 34, 17, 5, 8).
bounding_box(fortress_inner_courtyard, 24, 30, 10, 15).
bounding_box(upper_chamber_frame, 32, 8, 9, 9).
bounding_box(upper_chamber_interior, 33, 9, 7, 7).
bounding_box(upper_burgundy_glyph, 35, 11, 3, 3).
bounding_box(blue_black_player, 20, 31, 3, 3).
bounding_box(player_black_core, 21, 31, 2, 2).
bounding_box(player_blue_tail, 20, 32, 2, 2).
bounding_box(bottom_center_gate, 19, 45, 5, 5).
bounding_box(gate_gray_header, 19, 45, 5, 2).
bounding_box(gate_burgundy_panel, 19, 47, 5, 3).
bounding_box(lower_left_symbol_card, 1, 53, 10, 10).
bounding_box(lower_left_burgundy_glyph, 3, 55, 6, 6).
bounding_box(bottom_status_panel, 12, 60, 52, 4).
bounding_box(green_status_block, 13, 61, 4, 2).
bounding_box(bottom_status_track, 17, 61, 38, 2).
bounding_box(cyan_status_blocks, 56, 61, 8, 2).

center(blue_black_player, 21, 32).
center(bottom_center_gate, 21, 47).
center(upper_chamber_interior, 36, 12).
center(lower_left_symbol_card, 5, 57).
center(green_status_block, 15, 62).

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
adjacent(fortress_lower_bridge, bottom_center_gate).
adjacent(gate_gray_header, gate_burgundy_panel).
adjacent(green_status_block, bottom_status_track).
adjacent(bottom_status_track, cyan_status_blocks).

embedded_in(bottom_center_gate, green_fortress).

overlays(blue_black_player, fortress_left_wing).
overlays(upper_burgundy_glyph, upper_chamber_interior).
overlays(lower_left_burgundy_glyph, lower_left_symbol_card).
overlays(green_status_block, bottom_status_panel).
overlays(bottom_status_track, bottom_status_panel).
overlays(cyan_status_blocks, bottom_status_panel).

left_of(bottom_center_gate, fortress_lower_bridge).
left_of(green_status_block, bottom_status_track).
left_of(bottom_status_track, cyan_status_blocks).
below(blue_black_player, upper_chamber_frame).
below(bottom_center_gate, blue_black_player).

state(blue_black_player, stationary).
state(green_fortress, solid).
state(fortress_inner_courtyard, empty).
state(bottom_center_gate, closed).
state(bottom_center_gate, shifted_far_left).
state(bottom_status_panel, active).
state(green_status_block, lit).
state(cyan_status_blocks, three_lit_blocks).
state(action5, gate_shifted_left).
state(action5, status_progress_increased).

component_box(fortress_main_body, 14, 25, 40, 5).
component_box(fortress_main_body, 14, 30, 15, 10).
component_box(fortress_main_body, 34, 30, 20, 20).
component_box(fortress_main_body, 19, 40, 5, 5).
component_box(fortress_main_body, 24, 45, 30, 5).

component_box(fortress_lower_bridge, 24, 45, 30, 5).

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
     penup, set_pos(34,30), pendown, fill_rect(20,20),
     penup, set_pos(19,40), pendown, fill_rect(5,5),
     penup, set_pos(24,45), pendown, fill_rect(30,5)]).

turtle_program(fortress_main_body,
    [penup, setcolor(green),
     set_pos(14,25), pendown, fill_rect(40,5),
     penup, set_pos(14,30), pendown, fill_rect(15,10),
     penup, set_pos(34,30), pendown, fill_rect(20,20),
     penup, set_pos(19,40), pendown, fill_rect(5,5),
     penup, set_pos(24,45), pendown, fill_rect(30,5)]).

turtle_program(fortress_left_wing,
    [penup, set_pos(14,25), setcolor(green), pendown, fill_rect(15,15)]).

turtle_program(fortress_right_wing,
    [penup, set_pos(34,25), setcolor(green), pendown, fill_rect(20,25)]).

turtle_program(fortress_lower_bridge,
    [penup, set_pos(24,45), setcolor(green), pendown, fill_rect(30,5)]).

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
    [penup, set_pos(19,45), setcolor(light_gray), pendown, fill_rect(5,2),
     penup, set_pos(19,47), setcolor(burgundy), pendown, fill_rect(5,3)]).

turtle_program(gate_gray_header,
    [penup, set_pos(19,45), setcolor(light_gray), pendown, fill_rect(5,2)]).

turtle_program(gate_burgundy_panel,
    [penup, set_pos(19,47), setcolor(burgundy), pendown, fill_rect(5,3)]).

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
    [penup, set_pos(13,61), setcolor(green), pendown, fill_rect(4,2)]).

turtle_program(bottom_status_track,
    [penup, set_pos(17,61), setcolor(dark_gray), pendown, fill_rect(38,2)]).

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
:- ensure_loaded('../../../../object_registry.pl').

observed_rule(
    action2_no_visible_transition,
    transition_rule(
        action('ACTION2', {}),
        state(action4),
        effects([
            visually_unchanged(action4)
        ]),
        evidence([
            objects_pl(state(action4)),
            objects_pl(incoming_action(action4, action('ACTION2', {}))),
            objects_pl(state(action4, visually_unchanged))
        ])
    )
).

observed_rule(
    action3_translated_gate_left,
    transition_rule(
        action('ACTION3', {}),
        transition(action4, action5),
        effects([
            moved(bottom_center_gate, delta(-5, 0)),
            moved(gate_gray_header, delta(-5, 0)),
            moved(gate_burgundy_panel, delta(-5, 0)),
            shift_state(bottom_center_gate, shifted_left, shifted_far_left)
        ]),
        evidence([
            differences_pl(moved_object(bottom_center_gate,
                                        position(24, 45),
                                        position(19, 45),
                                        delta(-5, 0))),
            differences_pl(moved_object(gate_gray_header,
                                        position(24, 45),
                                        position(19, 45),
                                        delta(-5, 0))),
            differences_pl(moved_object(gate_burgundy_panel,
                                        position(24, 47),
                                        position(19, 47),
                                        delta(-5, 0))),
            differences_pl(changed_object(bottom_center_gate,
                                          shift_state,
                                          change(shifted_left,
                                                 shifted_far_left))),
            differences_pl(action_effect(
                action('ACTION3', {}),
                observed_transition(
                    moved(bottom_center_gate, delta(-5, 0)))))
        ])
    )
).

observed_rule(
    action3_preserved_gate_shape_and_closed_state,
    transition_rule(
        action('ACTION3', {}),
        transition(action4, action5),
        effects([
            preserved_size(bottom_center_gate, size(5, 5)),
            preserved_components(bottom_center_gate,
                                 [gate_gray_header,
                                  gate_burgundy_panel]),
            preserved_state(bottom_center_gate, closed)
        ]),
        evidence([
            objects_pl(action4,
                       bounding_box(bottom_center_gate, 24, 45, 5, 5)),
            objects_pl(action5,
                       bounding_box(bottom_center_gate, 19, 45, 5, 5)),
            objects_pl(action4, state(bottom_center_gate, closed)),
            objects_pl(action5, state(bottom_center_gate, closed)),
            object_registry_pl(
                object_identity(bottom_center_gate,
                                compound_rectangle,
                                'Two-color gate embedded at the bottom center of the fortress'))
        ])
    )
).

observed_rule(
    action3_shifted_gate_gap_with_gate,
    transition_rule(
        action('ACTION3', {}),
        transition(action4, action5),
        effects([
            replaced_region(rect(19, 45, 5, 5),
                            green_fortress_cells,
                            bottom_center_gate_cells),
            replaced_region(rect(24, 45, 5, 5),
                            bottom_center_gate_cells,
                            green_fortress_cells),
            changed_occupied_shape(green_fortress,
                                   gate_gap_at_x_24_to_28,
                                   gate_gap_at_x_19_to_23),
            resized(fortress_lower_bridge,
                    size(35, 5),
                    size(30, 5))
        ]),
        evidence([
            differences_pl(observed_region_transition(
                rect(19, 45, 5, 5),
                green_fortress_cells,
                bottom_center_gate_cells)),
            differences_pl(observed_region_transition(
                rect(24, 45, 5, 5),
                bottom_center_gate_cells,
                green_fortress_cells)),
            differences_pl(changed_object(
                green_fortress,
                occupied_shape,
                change(gate_gap_at_x_24_to_28,
                       gate_gap_at_x_19_to_23))),
            differences_pl(resized_object(
                fortress_lower_bridge,
                size(35, 5),
                size(30, 5)))
        ])
    )
).

observed_rule(
    action3_incremented_status_progress,
    transition_rule(
        action('ACTION3', {}),
        transition(action4, action5),
        effects([
            added(green_status_block),
            lit(green_status_block),
            occupied_status_region(rect(13, 61, 4, 2)),
            resized(bottom_status_track,
                    size(42, 2),
                    size(38, 2)),
            advanced(bottom_status_panel, status_progress)
        ]),
        evidence([
            differences_pl(added_object(green_status_block)),
            differences_pl(observed_region_transition(
                rect(13, 61, 4, 2),
                bottom_status_track_cells,
                green_status_block_cells)),
            differences_pl(resized_object(
                bottom_status_track,
                size(42, 2),
                size(38, 2))),
            differences_pl(action_effect(
                action('ACTION3', {}),
                observed_transition(added(green_status_block)))),
            differences_pl(action_effect(
                action('ACTION3', {}),
                observed_transition(
                    advanced(bottom_status_panel,
                             status_progress)))),
            objects_pl(action5, state(green_status_block, lit))
        ])
    )
).

observed_rule(
    action3_did_not_move_player,
    transition_rule(
        action('ACTION3', {}),
        transition(action4, action5),
        effects([
            preserved_position(blue_black_player, point(20, 31)),
            preserved_center(blue_black_player, point(21, 32)),
            preserved_state(blue_black_player, stationary)
        ]),
        evidence([
            objects_pl(action4,
                       bounding_box(blue_black_player, 20, 31, 3, 3)),
            objects_pl(action5,
                       bounding_box(blue_black_player, 20, 31, 3, 3)),
            objects_pl(action4, center(blue_black_player, 21, 32)),
            objects_pl(action5, center(blue_black_player, 21, 32)),
            differences_pl(
                observation(
                    player_remained_stationary(blue_black_player)))
        ])
    )
).

hypothetical_rule(
    action3_advances_closed_gate_one_step_left,
    transition_rule(
        action('ACTION3', {}),
        preconditions([
            state(bottom_center_gate, closed),
            leftward_destination_available(bottom_center_gate,
                                           step(5))
        ]),
        predicted_effects([
            translate(bottom_center_gate, delta(-5, 0)),
            translate(gate_gray_header, delta(-5, 0)),
            translate(gate_burgundy_panel, delta(-5, 0)),
            preserve_state(bottom_center_gate, closed),
            transfer_gate_gap_left(step(5))
        ])
    ),
    evidence(
        cautious,
        [
            differences_pl(hypothesis(
                action3_advances_gate_leftward_by_one_five_cell_step)),
            differences_pl(observation(
                gate_translation(bottom_center_gate,
                                 delta(-5, 0)))),
            observed_rule(action3_translated_gate_left),
            observed_rule(action3_preserved_gate_shape_and_closed_state),
            limitation(single_observed_action3_transition)
        ])
    )
).

hypothetical_rule(
    action3_increments_status_by_one_four_cell_segment,
    transition_rule(
        action('ACTION3', {}),
        preconditions([
            state(bottom_status_panel, active),
            status_track_has_unfilled_width(bottom_status_track,
                                            at_least(4))
        ]),
        predicted_effects([
            extend_lit_progress_rightward(bottom_status_panel,
                                         color(green),
                                         size(4, 2)),
            reduce_unfilled_track_from_left(bottom_status_track,
                                            width(4))
        ])
    ),
    evidence(
        cautious,
        [
            differences_pl(hypothesis(
                action3_increments_status_progress)),
            differences_pl(hypothesis(
                green_status_block_records_successful_action_progress)),
            differences_pl(changed_object(
                bottom_status_track,
                left_edge,
                change(13, 17))),
            observed_rule(action3_incremented_status_progress),
            limitation(single_progress_increment_observed)
        ])
    )
).

hypothetical_rule(
    action3_is_environment_control_not_player_motion,
    transition_rule(
        action('ACTION3', {}),
        preconditions([
            state(blue_black_player, stationary)
        ]),
        predicted_effects([
            preserve_position(blue_black_player),
            modify(bottom_center_gate),
            modify(bottom_status_panel)
        ])
    ),
    evidence(
        cautious,
        [
            differences_pl(observation(
                player_remained_stationary(blue_black_player))),
            observed_rule(action3_did_not_move_player),
            observed_rule(action3_translated_gate_left),
            observed_rule(action3_incremented_status_progress),
            limitation(not_yet_tested_from_other_player_positions)
        ])
    )
).

hypothetical_rule(
    action2_is_inert_in_the_observed_configuration,
    transition_rule(
        action('ACTION2', {}),
        preconditions([
            configuration_matching_state(action4)
        ]),
        predicted_effects([
            preserve_visible_scene
        ])
    ),
    evidence(
        very_cautious,
        [
            observed_rule(action2_no_visible_transition),
            objects_pl(incoming_action(action4,
                                       action('ACTION2', {}))),
            objects_pl(state(action4, visually_unchanged)),
            limitation(single_action2_observation)
        ])
    )
).
````

[Open `rules.pl`](rules.pl)

</details>

<details>
<summary><code>similarities.pl</code></summary>

````prolog
object_match(yellow_playfield, yellow_playfield,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(left_boundary_wall, left_boundary_wall,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(green_fortress, green_fortress,
    match(0.99, [same_canonical_id, same_role, same_bounding_box, local_shape_change_due_to_gate_translation])).

object_match(fortress_main_body, fortress_main_body,
    match(0.99, [same_canonical_id, same_role, same_bounding_box, component_boxes_updated_around_gate])).

object_match(fortress_left_wing, fortress_left_wing,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(fortress_right_wing, fortress_right_wing,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(fortress_lower_bridge, fortress_lower_bridge,
    match(0.98, [same_canonical_id, same_color, same_structural_role, resized_after_gate_translation])).

object_match(fortress_upper_stem, fortress_upper_stem,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(fortress_inner_courtyard, fortress_inner_courtyard,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(upper_chamber_frame, upper_chamber_frame,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(upper_chamber_interior, upper_chamber_interior,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(upper_burgundy_glyph, upper_burgundy_glyph,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(blue_black_player, blue_black_player,
    match(1.00, [same_canonical_id, same_position, same_colors, same_geometry, stationary])).

object_match(player_black_core, player_black_core,
    match(1.00, [same_canonical_id, same_position, same_color, same_geometry])).

object_match(player_blue_tail, player_blue_tail,
    match(1.00, [same_canonical_id, same_position, same_color, same_geometry])).

object_match(bottom_center_gate, bottom_center_gate,
    match(1.00, [same_canonical_id, same_size, same_colors, same_geometry, translated_by(-5, 0)])).

object_match(gate_gray_header, gate_gray_header,
    match(1.00, [same_canonical_id, same_size, same_color, same_component_role, translated_by(-5, 0)])).

object_match(gate_burgundy_panel, gate_burgundy_panel,
    match(1.00, [same_canonical_id, same_size, same_color, same_component_role, translated_by(-5, 0)])).

object_match(lower_left_symbol_card, lower_left_symbol_card,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(lower_left_burgundy_glyph, lower_left_burgundy_glyph,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(bottom_status_panel, bottom_status_panel,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, status_progress_increased])).

object_match(bottom_status_track, bottom_status_track,
    match(0.99, [same_canonical_id, same_color, same_role, shortened_from_left_for_status_block])).

object_match(cyan_status_blocks, cyan_status_blocks,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry, same_lit_state])).

unmatched_object(current, green_status_block,
    unmatched(1.00, [newly_visible, added_status_progress_indicator])).

unmatched_previous_objects([]).
````

[Open `similarities.pl`](similarities.pl)

</details>

<details>
<summary><code>turtle_from_diff.pl</code></summary>

````prolog
turtle_patch(action4, action5,
    [patch_object(fortress_lower_bridge,
        [penup, set_pos(24,45), setcolor(green),
         pendown, fill_rect(30,5)]),
     patch_object(bottom_center_gate,
        [penup, set_pos(19,45), setcolor(light_gray),
         pendown, fill_rect(5,2),
         penup, set_pos(19,47), setcolor(burgundy),
         pendown, fill_rect(5,3)]),
     patch_object(green_status_block,
        [penup, set_pos(13,61), setcolor(green),
         pendown, fill_rect(4,2)])]).
````

[Open `turtle_from_diff.pl`](turtle_from_diff.pl)

</details>

<details>
<summary><code>turtle_from_image.pl</code></summary>

````prolog
:- ensure_loaded('../../../../object_registry.pl').

turtle_program(yellow_playfield,
    [penup, set_pos(0,0), setcolor(yellow), pendown,
     fill_rect(64,64)]).

turtle_program(left_boundary_wall,
    [penup, set_pos(0,0), setcolor(light_gray), pendown,
     fill_rect(4,52)]).

turtle_program(green_fortress,
    [penup, setcolor(green),
     set_pos(32,8), pendown, fill_rect(9,1),
     penup, set_pos(32,9), pendown, fill_rect(1,7),
     penup, set_pos(40,9), pendown, fill_rect(1,7),
     penup, set_pos(32,16), pendown, fill_rect(9,1),
     penup, set_pos(34,17), pendown, fill_rect(5,8),
     penup, set_pos(14,25), pendown, fill_rect(40,5),
     penup, set_pos(14,30), pendown, fill_rect(15,10),
     penup, set_pos(34,30), pendown, fill_rect(20,20),
     penup, set_pos(19,40), pendown, fill_rect(5,5),
     penup, set_pos(24,45), pendown, fill_rect(30,5)]).

turtle_program(fortress_main_body,
    [penup, setcolor(green),
     set_pos(14,25), pendown, fill_rect(40,5),
     penup, set_pos(14,30), pendown, fill_rect(15,10),
     penup, set_pos(34,30), pendown, fill_rect(20,20),
     penup, set_pos(19,40), pendown, fill_rect(5,5),
     penup, set_pos(24,45), pendown, fill_rect(30,5)]).

turtle_program(fortress_left_wing,
    [penup, set_pos(14,25), setcolor(green), pendown,
     fill_rect(15,15)]).

turtle_program(fortress_right_wing,
    [penup, set_pos(34,25), setcolor(green), pendown,
     fill_rect(20,25)]).

turtle_program(fortress_lower_bridge,
    [penup, set_pos(24,45), setcolor(green), pendown,
     fill_rect(30,5)]).

turtle_program(fortress_upper_stem,
    [penup, set_pos(34,17), setcolor(green), pendown,
     fill_rect(5,8)]).

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
    [penup, set_pos(33,9), setcolor(light_gray), pendown,
     fill_rect(7,7)]).

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
    [penup, set_pos(19,45), setcolor(light_gray), pendown,
     fill_rect(5,2),
     penup, set_pos(19,47), setcolor(burgundy), pendown,
     fill_rect(5,3)]).

turtle_program(gate_gray_header,
    [penup, set_pos(19,45), setcolor(light_gray), pendown,
     fill_rect(5,2)]).

turtle_program(gate_burgundy_panel,
    [penup, set_pos(19,47), setcolor(burgundy), pendown,
     fill_rect(5,3)]).

turtle_program(lower_left_symbol_card,
    [penup, set_pos(1,53), setcolor(light_gray), pendown,
     fill_rect(10,10)]).

turtle_program(lower_left_burgundy_glyph,
    [penup, setcolor(burgundy),
     set_pos(3,55), pendown, fill_rect(6,2),
     penup, set_pos(3,57), pendown, fill_rect(2,4),
     penup, set_pos(7,59), pendown, fill_rect(2,2)]).

turtle_program(bottom_status_panel,
    [penup, set_pos(12,60), setcolor(light_gray), pendown,
     fill_rect(52,4)]).

turtle_program(green_status_block,
    [penup, set_pos(13,61), setcolor(green), pendown,
     fill_rect(4,2)]).

turtle_program(bottom_status_track,
    [penup, set_pos(17,61), setcolor(dark_gray), pendown,
     fill_rect(38,2)]).

turtle_program(cyan_status_blocks,
    [penup, setcolor(cyan),
     set_pos(56,61), pendown, fill_rect(2,2),
     penup, set_pos(59,61), pendown, fill_rect(2,2),
     penup, set_pos(62,61), pendown, fill_rect(2,2)]).
````

[Open `turtle_from_image.pl`](turtle_from_image.pl)

</details>
