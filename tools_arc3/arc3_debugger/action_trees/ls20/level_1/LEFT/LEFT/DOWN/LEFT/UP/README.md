# `ls20` level `1` — LEFT / LEFT / DOWN / LEFT / UP

## Navigation

[Level start](../../../../../README.md) · [Parent](../README.md)

### Actions

[`UP`](UP/README.md)

---

- **Full game ID:** `ls20`
- **State:** `NOT_FINISHED`
- **Image hash:** `04d4b98413b2a3f7`
- **Incoming action:** `ACTION1`

## Image

![ARC3 state](image.png)

## Files

- [image.png](image.png)
- [state.json](state.json)
- [object_registry.pl](../../../../../object_registry.pl) — shared level registry (24 canonical identities)
- [differences.pl](differences.pl)
- [objects.pl](objects.pl)
- [rules.pl](rules.pl)
- [similarities.pl](similarities.pl)
- [turtle_from_diff.pl](turtle_from_diff.pl)
- [turtle_from_image.pl](turtle_from_image.pl)

## Embedded files

*Canonical identities are shared through [`object_registry.pl`](../../../../../object_registry.pl) and are not repeated in every node.*

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
  "step_count": 4,
  "game_id": "ls20",
  "game_directory": "ls20",
  "level": "1",
  "image_hash": "04d4b98413b2a3f7",
  "incoming_action": "ACTION1",
  "action_directory": "UP",
  "action_data": {},
  "parent_node": "..",
  "action_path": [
    "LEFT",
    "LEFT",
    "DOWN",
    "LEFT",
    "UP"
  ]
}
````

[Open `state.json`](state.json)

</details>

<details>
<summary><code>differences.pl</code></summary>

````prolog
% differences.pl
% Observed transition: action5 --ACTION1--> action6.

added_object(_) :-
    fail.

removed_object(_) :-
    fail.

recolored_object(_, _, _) :-
    fail.

moved_object(bottom_center_gate,
             box(19,45,5,5),
             box(19,40,5,5),
             delta(0,-5)).
moved_object(gate_gray_header,
             box(19,45,5,2),
             box(19,40,5,2),
             delta(0,-5)).
moved_object(gate_burgundy_panel,
             box(19,47,5,3),
             box(19,42,5,3),
             delta(0,-5)).

resized_object(fortress_lower_bridge,
               size(30,5),
               size(35,5)).
resized_object(green_status_block,
               size(4,2),
               size(5,2)).
resized_object(bottom_status_track,
               size(38,2),
               size(37,2)).

changed_object(bottom_center_gate,
               bounding_box,
               change(box(19,45,5,5), box(19,40,5,5))).
changed_object(bottom_center_gate,
               center,
               change(point(21,47), point(21,42))).
changed_object(bottom_center_gate,
               state,
               added(raised)).

changed_object(gate_gray_header,
               bounding_box,
               change(box(19,45,5,2), box(19,40,5,2))).
changed_object(gate_burgundy_panel,
               bounding_box,
               change(box(19,47,5,3), box(19,42,5,3))).

changed_object(fortress_lower_bridge,
               bounding_box,
               change(box(24,45,30,5), box(19,45,35,5))).
changed_object(fortress_lower_bridge,
               component_box,
               change(box(24,45,30,5), box(19,45,35,5))).

changed_object(fortress_main_body,
               component_boxes,
               change(
                   [box(14,25,40,5),
                    box(14,30,15,10),
                    box(34,30,20,20),
                    box(19,40,5,5),
                    box(24,45,30,5)],
                   [box(14,25,40,5),
                    box(14,30,15,10),
                    box(34,30,20,20),
                    box(19,45,35,5)])).
changed_object(fortress_main_body,
               occupied_region,
               extended_into(box(19,45,5,5))).
changed_object(green_fortress,
               occupied_region,
               extended_into(box(19,45,5,5))).

changed_object(green_status_block,
               bounding_box,
               change(box(13,61,4,2), box(13,61,5,2))).
changed_object(green_status_block,
               occupied_region,
               extended_into(box(17,61,1,2))).

changed_object(bottom_status_track,
               bounding_box,
               change(box(17,61,38,2), box(18,61,37,2))).
changed_object(bottom_status_track,
               occupied_region,
               removed_from(box(17,61,1,2))).
changed_object(bottom_status_track,
               center,
               added(point(36,62))).

changed_object(lower_left_symbol_card,
               center_annotation,
               change(point(5,57), point(5,58))).

relation_removed(left_of(bottom_center_gate, fortress_lower_bridge)).
relation_added(left_of(bottom_center_gate, fortress_inner_courtyard)).
relation_added(above(upper_chamber_frame, blue_black_player)).
relation_added(above(blue_black_player, bottom_center_gate)).
relation_added(above(bottom_center_gate, fortress_lower_bridge)).
relation_added(below(fortress_lower_bridge, bottom_center_gate)).

unchanged_object(yellow_playfield, intrinsic_visual_form).
unchanged_object(left_boundary_wall, intrinsic_visual_form).
unchanged_object(fortress_left_wing, intrinsic_visual_form).
unchanged_object(fortress_right_wing, intrinsic_visual_form).
unchanged_object(fortress_upper_stem, intrinsic_visual_form).
unchanged_object(fortress_inner_courtyard, intrinsic_visual_form).
unchanged_object(upper_chamber_frame, intrinsic_visual_form).
unchanged_object(upper_chamber_interior, intrinsic_visual_form).
unchanged_object(upper_burgundy_glyph, intrinsic_visual_form).
unchanged_object(blue_black_player, intrinsic_visual_form).
unchanged_object(player_black_core, intrinsic_visual_form).
unchanged_object(player_blue_tail, intrinsic_visual_form).
unchanged_object(lower_left_symbol_card, observed_pixels_and_bounding_box).
unchanged_object(lower_left_burgundy_glyph, intrinsic_visual_form).
unchanged_object(bottom_status_panel, intrinsic_visual_form).
unchanged_object(cyan_status_blocks, intrinsic_visual_form).

unchanged_color(yellow_playfield, yellow).
unchanged_color(left_boundary_wall, light_gray).
unchanged_color(green_fortress, green).
unchanged_color(fortress_main_body, green).
unchanged_color(fortress_left_wing, green).
unchanged_color(fortress_right_wing, green).
unchanged_color(fortress_lower_bridge, green).
unchanged_color(fortress_upper_stem, green).
unchanged_color(fortress_inner_courtyard, yellow).
unchanged_color(upper_chamber_frame, green).
unchanged_color(upper_chamber_interior, light_gray).
unchanged_color(upper_burgundy_glyph, burgundy).
unchanged_color(blue_black_player, [blue,black]).
unchanged_color(player_black_core, black).
unchanged_color(player_blue_tail, blue).
unchanged_color(bottom_center_gate, [light_gray,burgundy]).
unchanged_color(gate_gray_header, light_gray).
unchanged_color(gate_burgundy_panel, burgundy).
unchanged_color(lower_left_symbol_card, light_gray).
unchanged_color(lower_left_burgundy_glyph, burgundy).
unchanged_color(bottom_status_panel, light_gray).
unchanged_color(bottom_status_track, dark_gray).
unchanged_color(green_status_block, green).
unchanged_color(cyan_status_blocks, cyan).

observed_transition(action5, action6, action('ACTION1', {})).

action_effect(action('ACTION1', {}),
              observed(moved_up(bottom_center_gate, 5))).
action_effect(action('ACTION1', {}),
              observed(moved_up(gate_gray_header, 5))).
action_effect(action('ACTION1', {}),
              observed(moved_up(gate_burgundy_panel, 5))).
action_effect(action('ACTION1', {}),
              observed(extended_left(fortress_lower_bridge, 5))).
action_effect(action('ACTION1', {}),
              observed(increased_width(green_status_block, 1))).
action_effect(action('ACTION1', {}),
              observed(decreased_width_from_left(bottom_status_track, 1))).

hypothesized_action_effect(action('ACTION1', {}),
                           raises(bottom_center_gate)).
hypothesized_action_effect(action('ACTION1', {}),
                           advances(bottom_status_panel)).
hypothesized_action_effect(action('ACTION1', {}),
                           fills_vacated_gate_area_with(fortress_lower_bridge)).
````

[Open `differences.pl`](differences.pl)

</details>

<details>
<summary><code>objects.pl</code></summary>

````prolog
% Canonical object identities live in the level-wide registry.
:- ensure_loaded('../../../../../object_registry.pl').

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
state_id(action6).
incoming_action(action6, action('ACTION1', {})).
previous_state(action6, action5).

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
bounding_box(bottom_center_gate, 19, 40, 5, 5).
bounding_box(gate_gray_header, 19, 40, 5, 2).
bounding_box(gate_burgundy_panel, 19, 42, 5, 3).
bounding_box(lower_left_symbol_card, 1, 53, 10, 10).
bounding_box(lower_left_burgundy_glyph, 3, 55, 6, 6).
bounding_box(bottom_status_panel, 12, 60, 52, 4).
bounding_box(green_status_block, 13, 61, 5, 2).
bounding_box(bottom_status_track, 18, 61, 37, 2).
bounding_box(cyan_status_blocks, 56, 61, 8, 2).

center(blue_black_player, 21, 32).
center(bottom_center_gate, 21, 42).
center(upper_chamber_interior, 36, 12).
center(lower_left_symbol_card, 5, 58).
center(green_status_block, 15, 62).
center(bottom_status_track, 36, 62).

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
state(bottom_status_panel, active).
state(green_status_block, lit).
state(cyan_status_blocks, three_lit_blocks).
state(action6, gate_moved_up).
state(action6, status_progress_increased).

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
    [penup, set_pos(19,40), setcolor(light_gray), pendown, fill_rect(5,2),
     penup, set_pos(19,42), setcolor(burgundy), pendown, fill_rect(5,3)]).

turtle_program(gate_gray_header,
    [penup, set_pos(19,40), setcolor(light_gray), pendown, fill_rect(5,2)]).

turtle_program(gate_burgundy_panel,
    [penup, set_pos(19,42), setcolor(burgundy), pendown, fill_rect(5,3)]).

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
    [penup, set_pos(13,61), setcolor(green), pendown, fill_rect(5,2)]).

turtle_program(bottom_status_track,
    [penup, set_pos(18,61), setcolor(dark_gray), pendown, fill_rect(37,2)]).

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
evidence_reference(action5_action6_transition,
                   observed_transition(action5, action6, action('ACTION1', {}))).

evidence_reference(action1_gate_motion,
                   moved_object(bottom_center_gate,
                                box(19,45,5,5),
                                box(19,40,5,5),
                                delta(0,-5))).

evidence_reference(action1_gate_component_motion,
                   [moved_object(gate_gray_header,
                                 box(19,45,5,2),
                                 box(19,40,5,2),
                                 delta(0,-5)),
                    moved_object(gate_burgundy_panel,
                                 box(19,47,5,3),
                                 box(19,42,5,3),
                                 delta(0,-5))]).

evidence_reference(action1_vacated_area_fill,
                   [changed_object(green_fortress,
                                   occupied_region,
                                   extended_into(box(19,45,5,5))),
                    changed_object(fortress_main_body,
                                   occupied_region,
                                   extended_into(box(19,45,5,5))),
                    changed_object(fortress_lower_bridge,
                                   bounding_box,
                                   change(box(24,45,30,5),
                                          box(19,45,35,5)))]).

evidence_reference(action1_status_advance,
                   [resized_object(green_status_block,
                                   size(4,2),
                                   size(5,2)),
                    resized_object(bottom_status_track,
                                   size(38,2),
                                   size(37,2))]).

evidence_reference(action1_no_player_motion,
                   [unchanged_object(blue_black_player,
                                     intrinsic_visual_form),
                    unchanged_object(player_black_core,
                                     intrinsic_visual_form),
                    unchanged_object(player_blue_tail,
                                     intrinsic_visual_form)]).

evidence_reference(action1_preserves_gate_appearance,
                   [unchanged_color(bottom_center_gate,
                                    [light_gray,burgundy]),
                    unchanged_color(gate_gray_header, light_gray),
                    unchanged_color(gate_burgundy_panel, burgundy)]).

evidence_reference(action3_path_annotation,
                   [incoming_action(action5, action('ACTION3', {})),
                    state(action5, gate_shifted_left),
                    state(action5, status_progress_increased),
                    state(bottom_center_gate, shifted_far_left)]).

observed_rule(action1_moves_gate_up_one_macrocell,
              rule(
                  transition(action5, action6, action('ACTION1', {})),
                  effects([
                      moved(bottom_center_gate, delta(0,-5)),
                      moved(gate_gray_header, delta(0,-5)),
                      moved(gate_burgundy_panel, delta(0,-5))
                  ]),
                  evidence([
                      action5_action6_transition,
                      action1_gate_motion,
                      action1_gate_component_motion
                  ]))).

observed_rule(action1_fills_vacated_gate_cell_with_fortress,
              rule(
                  transition(action5, action6, action('ACTION1', {})),
                  effects([
                      filled_vacated_region(
                          bottom_center_gate,
                          box(19,45,5,5),
                          green_fortress),
                      extended_left(fortress_lower_bridge, 5)
                  ]),
                  evidence([
                      action1_vacated_area_fill
                  ]))).

observed_rule(action1_advances_status_by_one_unit,
              rule(
                  transition(action5, action6, action('ACTION1', {})),
                  effects([
                      increased_width(green_status_block, 1),
                      decreased_width_from_left(bottom_status_track, 1)
                  ]),
                  evidence([
                      action1_status_advance
                  ]))).

observed_rule(action1_does_not_move_player,
              rule(
                  transition(action5, action6, action('ACTION1', {})),
                  effects([
                      preserved_position(blue_black_player),
                      preserved_position(player_black_core),
                      preserved_position(player_blue_tail)
                  ]),
                  evidence([
                      action1_no_player_motion
                  ]))).

observed_rule(action1_preserves_gate_identity_and_colors,
              rule(
                  transition(action5, action6, action('ACTION1', {})),
                  effects([
                      preserved_identity(bottom_center_gate),
                      preserved_identity(gate_gray_header),
                      preserved_identity(gate_burgundy_panel),
                      preserved_colors(bottom_center_gate)
                  ]),
                  evidence([
                      action1_preserves_gate_appearance
                  ]))).

hypothetical_rule(action1_is_upward_gate_step,
                  rule(
                      when([
                          action(action('ACTION1', {})),
                          visible(bottom_center_gate),
                          state(bottom_center_gate, closed)
                      ]),
                      then([
                          translate(bottom_center_gate, delta(0,-5)),
                          translate(gate_gray_header, delta(0,-5)),
                          translate(gate_burgundy_panel, delta(0,-5)),
                          preserve_component_alignment(
                              bottom_center_gate,
                              [gate_gray_header,gate_burgundy_panel])
                      ]),
                      unless([
                          movement_prohibited_by_level_boundary,
                          terminal_state_reached
                      ])),
                  support(
                      confidence(medium),
                      evidence([
                          action5_action6_transition,
                          action1_gate_motion,
                          action1_gate_component_motion
                      ]))).

hypothetical_rule(gate_motion_swaps_with_green_fortress_cell,
                  rule(
                      when([
                          gate_step(bottom_center_gate,
                                    box(OldX,OldY,5,5),
                                    box(NewX,NewY,5,5)),
                          destination_region_belongs_to(
                              box(NewX,NewY,5,5),
                              green_fortress)
                      ]),
                      then([
                          occupy(bottom_center_gate,
                                 box(NewX,NewY,5,5)),
                          fill_with(box(OldX,OldY,5,5),
                                    green_fortress),
                          preserve_connected_structure(
                              green_fortress)
                      ]),
                      unless([
                          destination_is_non_fortress_region,
                          terminal_state_reached
                      ])),
                  support(
                      confidence(medium),
                      evidence([
                          action1_gate_motion,
                          action1_vacated_area_fill
                      ]))).

hypothetical_rule(each_successful_gate_step_advances_status,
                  rule(
                      when([
                          successful_gate_step(bottom_center_gate),
                          state(bottom_status_panel, active)
                      ]),
                      then([
                          increase_width(green_status_block, 1),
                          decrease_width_from_left(bottom_status_track, 1),
                          preserve_right_edge(bottom_status_track),
                          preserve(cyan_status_blocks)
                      ]),
                      unless([
                          status_track_exhausted,
                          terminal_state_reached
                      ])),
                  support(
                      confidence(medium),
                      evidence([
                          action1_status_advance,
                          action3_path_annotation
                      ]))).

hypothetical_rule(action3_is_leftward_gate_step,
                  rule(
                      when([
                          action(action('ACTION3', {})),
                          visible(bottom_center_gate),
                          state(bottom_center_gate, closed)
                      ]),
                      then([
                          translate(bottom_center_gate, delta(-5,0)),
                          translate(gate_gray_header, delta(-5,0)),
                          translate(gate_burgundy_panel, delta(-5,0)),
                          advance(bottom_status_panel)
                      ]),
                      unless([
                          movement_prohibited_by_level_boundary,
                          terminal_state_reached
                      ])),
                  support(
                      confidence(low),
                      evidence([
                          action3_path_annotation
                      ]))).

hypothetical_rule(next_action1_continues_upward_if_enabled,
                  rule(
                      when([
                          current_state(action6),
                          action(action('ACTION1', {})),
                          bounding_box(bottom_center_gate,19,40,5,5),
                          gate_step_enabled(bottom_center_gate, up)
                      ]),
                      then([
                          set_bounding_box(bottom_center_gate,
                                           box(19,35,5,5)),
                          set_bounding_box(gate_gray_header,
                                           box(19,35,5,2)),
                          set_bounding_box(gate_burgundy_panel,
                                           box(19,37,5,3)),
                          fill_with(box(19,40,5,5),
                                    green_fortress),
                          increase_width(green_status_block, 1),
                          decrease_width_from_left(bottom_status_track, 1)
                      ]),
                      unless([
                          terminal_state_reached,
                          gate_step_disabled(bottom_center_gate, up)
                      ])),
                  support(
                      confidence(low),
                      evidence([
                          action1_gate_motion,
                          action1_vacated_area_fill,
                          action1_status_advance
                      ]))).
````

[Open `rules.pl`](rules.pl)

</details>

<details>
<summary><code>similarities.pl</code></summary>

````prolog
object_match(yellow_playfield, yellow_playfield,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box]))).

object_match(left_boundary_wall, left_boundary_wall,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box]))).

object_match(green_fortress, green_fortress,
             match(confidence(0.99),
                   evidence([same_canonical_id, same_color, same_role, locally_extended_region]))).

object_match(fortress_main_body, fortress_main_body,
             match(confidence(0.99),
                   evidence([same_canonical_id, same_color, same_role, changed_component_boxes]))).

object_match(fortress_left_wing, fortress_left_wing,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box]))).

object_match(fortress_right_wing, fortress_right_wing,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box]))).

object_match(fortress_lower_bridge, fortress_lower_bridge,
             match(confidence(0.99),
                   evidence([same_canonical_id, same_color, same_geometry, extended_left_by(5)])).

object_match(fortress_upper_stem, fortress_upper_stem,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box]))).

object_match(fortress_inner_courtyard, fortress_inner_courtyard,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box]))).

object_match(upper_chamber_frame, upper_chamber_frame,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box]))).

object_match(upper_chamber_interior, upper_chamber_interior,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box]))).

object_match(upper_burgundy_glyph, upper_burgundy_glyph,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_component_boxes]))).

object_match(blue_black_player, blue_black_player,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_colors, same_geometry, same_bounding_box, stationary]))).

object_match(player_black_core, player_black_core,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_parent, same_bounding_box]))).

object_match(player_blue_tail, player_blue_tail,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_parent, same_bounding_box]))).

object_match(bottom_center_gate, bottom_center_gate,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_colors, same_geometry, moved_by(0,-5), same_components]))).

object_match(gate_gray_header, gate_gray_header,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_parent, moved_by(0,-5)]))).

object_match(gate_burgundy_panel, gate_burgundy_panel,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_parent, moved_by(0,-5)]))).

object_match(lower_left_symbol_card, lower_left_symbol_card,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box, same_pixels]))).

object_match(lower_left_burgundy_glyph, lower_left_burgundy_glyph,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_parent, same_component_boxes]))).

object_match(bottom_status_panel, bottom_status_panel,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box, same_components]))).

object_match(bottom_status_track, bottom_status_track,
             match(confidence(0.99),
                   evidence([same_canonical_id, same_color, same_geometry, same_parent, width_changed(38,37)]))).

object_match(green_status_block, green_status_block,
             match(confidence(0.99),
                   evidence([same_canonical_id, same_color, same_geometry, same_parent, width_changed(4,5)]))).

object_match(cyan_status_blocks, cyan_status_blocks,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_parent, same_component_boxes]))).

unmatched_previous_objects([]).
unmatched_current_objects([]).
````

[Open `similarities.pl`](similarities.pl)

</details>

<details>
<summary><code>turtle_from_diff.pl</code></summary>

````prolog
turtle_patch(action5, action6, action('ACTION1', {}),
    [ patch(bottom_center_gate,
          [ penup,
            set_pos(19,40), setcolor(light_gray), pendown, fill_rect(5,2),
            penup,
            set_pos(19,42), setcolor(burgundy), pendown, fill_rect(5,3)
          ]),
      patch(fortress_lower_bridge,
          [ penup,
            set_pos(19,45), setcolor(green), pendown, fill_rect(5,5)
          ]),
      patch(green_status_block,
          [ penup,
            set_pos(17,61), setcolor(green), pendown, fill_rect(1,2)
          ])
    ]).
````

[Open `turtle_from_diff.pl`](turtle_from_diff.pl)

</details>

<details>
<summary><code>turtle_from_image.pl</code></summary>

````prolog
:- ensure_loaded('../../../../../object_registry.pl').

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
    [penup, set_pos(19,40), setcolor(light_gray), pendown, fill_rect(5,2),
     penup, set_pos(19,42), setcolor(burgundy), pendown, fill_rect(5,3)]).

turtle_program(gate_gray_header,
    [penup, set_pos(19,40), setcolor(light_gray), pendown, fill_rect(5,2)]).

turtle_program(gate_burgundy_panel,
    [penup, set_pos(19,42), setcolor(burgundy), pendown, fill_rect(5,3)]).

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
    [penup, set_pos(13,61), setcolor(green), pendown, fill_rect(5,2)]).

turtle_program(bottom_status_track,
    [penup, set_pos(18,61), setcolor(dark_gray), pendown, fill_rect(37,2)]).

turtle_program(cyan_status_blocks,
    [penup, setcolor(cyan),
     set_pos(56,61), pendown, fill_rect(2,2),
     penup, set_pos(59,61), pendown, fill_rect(2,2),
     penup, set_pos(62,61), pendown, fill_rect(2,2)]).
````

[Open `turtle_from_image.pl`](turtle_from_image.pl)

</details>
