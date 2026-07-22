# `ls20` level `1` — Initial state

## Navigation

**Level start**

### Actions

[`LEFT`](LEFT/README.md)

---

- **Full game ID:** `ls20`
- **State:** `NOT_FINISHED`
- **Image hash:** `9c879087889c0ade`
- **Incoming action:** `initial`

## Image

![ARC3 state](image.png)

## Files

- [image.png](image.png)
- [state.json](state.json)
- [object_registry.pl](object_registry.pl) — shared level registry (26 canonical identities)
- [objects.pl](objects.pl)
- [rules.pl](rules.pl)
- [turtle_from_image.pl](turtle_from_image.pl)

## Embedded files

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
      "id": "RESET",
      "data": {},
      "reasoning": null
    },
    "guid": "a992cb74-c0cd-4d3e-915e-9312cff80356",
    "full_reset": true,
    "available_actions": [
      1,
      2,
      3,
      4
    ]
  },
  "step_count": 0,
  "game_id": "ls20",
  "game_directory": "ls20",
  "level": "1",
  "image_hash": "9c879087889c0ade",
  "incoming_action": null,
  "action_directory": null,
  "action_data": {},
  "parent_node": null,
  "action_path": []
}
````

[Open `state.json`](state.json)

</details>

<details>
<summary><code>object_registry.pl</code></summary>

````prolog
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.

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
object_identity(lower_right_green_target, target_marker, 'Gray target marker with a green center in the lower-right wing').
object_identity(player_black_core, pixel_cluster, 'Black core of the player marker').
object_identity(player_blue_tail, pixel_cluster, 'Blue lower-left portion of the player marker').
object_identity(upper_burgundy_glyph, compound_glyph, 'Burgundy hooked glyph inside the upper chamber').
object_identity(upper_chamber_frame, rectangular_frame, 'Green frame around the upper chamber').
object_identity(upper_chamber_interior, enclosed_rectangle, 'Gray interior of the upper chamber').
object_identity(upper_left_green_target, target_marker, 'Gray target marker with a green center in the upper-left wing').
object_identity(yellow_playfield, background_region, 'Yellow playfield').
````

[Open `object_registry.pl`](object_registry.pl)

</details>

<details>
<summary><code>objects.pl</code></summary>

````prolog
% Canonical object identities live in the level-wide registry.
:- ensure_loaded('object_registry.pl').

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
state_id(initial).
incoming_action(initial, {}).
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
bounding_box(bottom_center_gate, 34, 45, 5, 5).
bounding_box(gate_gray_header, 34, 45, 5, 2).
bounding_box(gate_burgundy_panel, 34, 47, 5, 3).
bounding_box(lower_left_symbol_card, 1, 53, 10, 10).
bounding_box(lower_left_burgundy_glyph, 3, 55, 6, 6).
bounding_box(bottom_status_panel, 12, 60, 52, 4).
bounding_box(bottom_status_track, 13, 61, 42, 2).
bounding_box(cyan_status_blocks, 56, 61, 8, 2).

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
color(cyan_status_blocks, cyan).

geometry(yellow_playfield, background_with_occlusions).
geometry(left_boundary_wall, filled_vertical_rectangle).
geometry(green_fortress, connected_compound_structure).
geometry(fortress_main_body, stepped_block_region).
geometry(fortress_left_wing, filled_rectangle).
geometry(fortress_right_wing, filled_rectangle_with_gate_notch).
geometry(fortress_lower_bridge, interrupted_horizontal_bar).
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
component_of(bottom_status_track, bottom_status_panel).
component_of(cyan_status_blocks, bottom_status_panel).

contains(upper_chamber_frame, upper_chamber_interior).
contains(upper_chamber_interior, upper_burgundy_glyph).
contains(fortress_main_body, blue_black_player).
contains(fortress_main_body, fortress_inner_courtyard).
contains(green_fortress, bottom_center_gate).
contains(lower_left_symbol_card, lower_left_burgundy_glyph).
contains(bottom_status_panel, bottom_status_track).
contains(bottom_status_panel, cyan_status_blocks).

encloses(green_fortress, fortress_inner_courtyard).
encloses(upper_chamber_frame, upper_chamber_interior).
embedded_in(bottom_center_gate, fortress_main_body).
overlays(blue_black_player, fortress_left_wing).
overlays(upper_burgundy_glyph, upper_chamber_interior).
overlays(lower_left_burgundy_glyph, lower_left_symbol_card).
overlays(bottom_status_track, bottom_status_panel).
overlays(cyan_status_blocks, bottom_status_panel).

adjacent(left_boundary_wall, yellow_playfield).
adjacent(upper_chamber_frame, fortress_upper_stem).
adjacent(fortress_upper_stem, fortress_main_body).
adjacent(fortress_left_wing, fortress_right_wing).
adjacent(fortress_left_wing, fortress_inner_courtyard).
adjacent(fortress_right_wing, fortress_inner_courtyard).
adjacent(fortress_lower_bridge, fortress_inner_courtyard).
adjacent(fortress_lower_bridge, bottom_center_gate).
adjacent(fortress_right_wing, bottom_center_gate).
adjacent(gate_gray_header, gate_burgundy_panel).
adjacent(bottom_status_track, cyan_status_blocks).

center(blue_black_player, 21, 32).
center(bottom_center_gate, 36, 47).
center(upper_chamber_interior, 36, 12).
center(lower_left_symbol_card, 5, 57).

state(blue_black_player, stationary).
state(bottom_center_gate, closed).
state(green_fortress, solid).
state(fortress_inner_courtyard, empty).
state(bottom_status_panel, active).
state(cyan_status_blocks, three_lit_blocks).

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
     penup, set_pos(19,40), pendown, fill_rect(5,5),
     penup, set_pos(19,45), pendown, fill_rect(15,5),
     penup, set_pos(39,45), pendown, fill_rect(15,5)]).

turtle_program(fortress_main_body,
    [penup, setcolor(green),
     set_pos(14,25), pendown, fill_rect(40,5),
     penup, set_pos(14,30), pendown, fill_rect(15,10),
     penup, set_pos(34,30), pendown, fill_rect(20,15),
     penup, set_pos(19,40), pendown, fill_rect(5,5),
     penup, set_pos(19,45), pendown, fill_rect(15,5),
     penup, set_pos(39,45), pendown, fill_rect(15,5)]).

turtle_program(fortress_left_wing,
    [penup, set_pos(14,25), setcolor(green), pendown, fill_rect(15,15)]).

turtle_program(fortress_right_wing,
    [penup, setcolor(green),
     set_pos(34,25), pendown, fill_rect(20,20),
     penup, set_pos(39,45), pendown, fill_rect(15,5)]).

turtle_program(fortress_lower_bridge,
    [penup, setcolor(green),
     set_pos(19,45), pendown, fill_rect(15,5),
     penup, set_pos(39,45), pendown, fill_rect(15,5)]).

turtle_program(fortress_upper_stem,
    [penup, set_pos(34,17), setcolor(green), pendown, fill_rect(5,8)]).

turtle_program(fortress_inner_courtyard,
    [penup, setcolor(yellow),
     set_pos(29,30), pendown, fill_rect(5,10),
     penup, set_pos(24,40), pendown, fill_rect(10,5)]).

turtle_program(upper_chamber_frame,
    [penup, setcolor(green),
     set_pos(32,8), pendown, fwd(8),
     penup, set_pos(32,9), pendown, rot(90), fwd(6),
     penup, set_pos(40,9), pendown, fwd(6),
     penup, set_pos(32,16), pendown, rot(-90), fwd(8)]).

turtle_program(upper_chamber_interior,
    [penup, set_pos(33,9), setcolor(light_gray), pendown, fill_rect(7,7)]).

turtle_program(upper_burgundy_glyph,
    [penup, set_pos(35,11), setcolor(burgundy), pendown, fwd(2),
     rot(90), fwd(2),
     penup, set_pos(35,13), pendown, set_cell]).

turtle_program(blue_black_player,
    [penup, setcolor(black),
     set_pos(21,31), pendown, set_cell,
     penup, set_pos(21,32), pendown, fwd(1),
     penup, setcolor(blue),
     set_pos(20,32), pendown, set_cell,
     penup, set_pos(21,33), pendown, set_cell]).

turtle_program(player_black_core,
    [penup, setcolor(black),
     set_pos(21,31), pendown, set_cell,
     penup, set_pos(21,32), pendown, fwd(1)]).

turtle_program(player_blue_tail,
    [penup, setcolor(blue),
     set_pos(20,32), pendown, set_cell,
     penup, set_pos(21,33), pendown, set_cell]).

turtle_program(bottom_center_gate,
    [penup, set_pos(34,45), setcolor(light_gray), pendown, fill_rect(5,2),
     penup, set_pos(34,47), setcolor(burgundy), pendown, fill_rect(5,3)]).

turtle_program(gate_gray_header,
    [penup, set_pos(34,45), setcolor(light_gray), pendown, fill_rect(5,2)]).

turtle_program(gate_burgundy_panel,
    [penup, set_pos(34,47), setcolor(burgundy), pendown, fill_rect(5,3)]).

turtle_program(lower_left_symbol_card,
    [penup, set_pos(1,53), setcolor(light_gray), pendown, fill_rect(10,10)]).

turtle_program(lower_left_burgundy_glyph,
    [penup, setcolor(burgundy),
     set_pos(3,55), pendown, fill_rect(6,2),
     penup, set_pos(3,57), pendown, fill_rect(2,4),
     penup, set_pos(7,59), pendown, fill_rect(2,2)]).

turtle_program(bottom_status_panel,
    [penup, set_pos(12,60), setcolor(light_gray), pendown, fill_rect(52,4)]).

turtle_program(bottom_status_track,
    [penup, set_pos(13,61), setcolor(dark_gray), pendown, fill_rect(42,2)]).

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
:- ensure_loaded('objects.pl').
:- ensure_loaded('differences.pl').

evidence_reference(action_history_initial_only,
                   'The action history contains only action(initial,{}).').
evidence_reference(state_id_initial,
                   'The current snapshot has state_id(initial).').
evidence_reference(no_observed_transition_difference,
                   'No before-and-after difference from a non-initial action is available.').
evidence_reference(player_location,
                   'blue_black_player has bounding_box(20,31,3,3) and center(21,32).').
evidence_reference(player_composition,
                   'player_black_core and player_blue_tail are components of blue_black_player.').
evidence_reference(player_on_fortress,
                   'blue_black_player overlays fortress_left_wing and is contained by fortress_main_body.').
evidence_reference(courtyard_obstacle_geometry,
                   'fortress_inner_courtyard is an empty enclosed yellow hole in green_fortress.').
evidence_reference(gate_initial_state,
                   'bottom_center_gate is closed and embedded in fortress_main_body.').
evidence_reference(gate_objective_color_relation,
                   'gate_burgundy_panel and upper_burgundy_glyph share the color burgundy.').
evidence_reference(upper_chamber_structure,
                   'upper_burgundy_glyph is contained in upper_chamber_interior inside upper_chamber_frame.').
evidence_reference(symbol_card_structure,
                   'lower_left_burgundy_glyph is displayed on lower_left_symbol_card outside the playfield structure.').
evidence_reference(status_initial_state,
                   'cyan_status_blocks consists of three separated lit blocks in bottom_status_panel.').
evidence_reference(grid_scale,
                   'grid_cell_size_pixels(10) indicates discrete spatial actions, but no movement displacement is observed.').

observed_rule(initial_action_establishes_baseline,
              supported(
                  rule(
                      action(initial),
                      establishes_snapshot(initial)
                  ),
                  [action_history_initial_only,
                   state_id_initial,
                   no_observed_transition_difference]
              )).

observed_rule(player_components_move_as_one_identity,
              supported(
                  invariant(
                      blue_black_player,
                      components([player_black_core, player_blue_tail])
                  ),
                  [player_composition]
              )).

observed_rule(gate_is_initially_closed,
              supported(
                  holds_after(
                      action(initial),
                      state(bottom_center_gate, closed)
                  ),
                  [gate_initial_state,
                   action_history_initial_only]
              )).

observed_rule(status_initially_shows_three_lit_blocks,
              supported(
                  holds_after(
                      action(initial),
                      state(cyan_status_blocks, three_lit_blocks)
                  ),
                  [status_initial_state,
                   action_history_initial_only]
              )).

observed_rule(no_causal_transition_yet_observed,
              supported(
                  transition_sample_count(noninitial, 0),
                  [action_history_initial_only,
                   no_observed_transition_difference]
              )).

cardinal_delta(up, 0, -1).
cardinal_delta(down, 0, 1).
cardinal_delta(left, -1, 0).
cardinal_delta(right, 1, 0).

hypothetical_rule(
    cardinal_player_translation,
    rule(
        transition(move(Direction), State0, State1),
        preconditions([
            cardinal_delta(Direction, DX, DY),
            bounding_box_in(State0, blue_black_player, X, Y, W, H),
            translated_footprint_is_walkable(State0, blue_black_player, DX, DY)
        ]),
        effects([
            bounding_box_in(State1, blue_black_player, X1, Y1, W, H),
            coordinate_relation(X1, X, plus(DX)),
            coordinate_relation(Y1, Y, plus(DY)),
            translated_together([blue_black_player,
                                 player_black_core,
                                 player_blue_tail],
                                DX, DY),
            preserves_geometry(blue_black_player),
            preserves_colors(blue_black_player)
        ])
    ),
    evidence(
        [player_location,
         player_composition,
         player_on_fortress,
         grid_scale],
        confidence(medium)
    )
).

hypothetical_rule(
    blocked_motion_has_no_spatial_effect,
    rule(
        transition(move(Direction), State0, State1),
        preconditions([
            cardinal_delta(Direction, DX, DY),
            translated_footprint_is_not_walkable(State0,
                                                 blue_black_player,
                                                 DX, DY)
        ]),
        effects([
            unchanged(State0, State1, blue_black_player),
            unchanged(State0, State1, player_black_core),
            unchanged(State0, State1, player_blue_tail)
        ])
    ),
    evidence(
        [player_on_fortress,
         courtyard_obstacle_geometry,
         no_observed_transition_difference],
        confidence(medium_low)
    )
).

hypothetical_rule(
    courtyard_is_nonwalkable,
    rule(
        attempted_entry(blue_black_player, fortress_inner_courtyard),
        implies(blocked_motion(blue_black_player))
    ),
    evidence(
        [courtyard_obstacle_geometry,
         player_on_fortress],
        confidence(medium)
    )
).

hypothetical_rule(
    fortress_surface_is_candidate_walkable_region,
    rule(
        destination_footprint_within(blue_black_player, green_fortress),
        and_not([
            overlaps_destination(blue_black_player,
                                 fortress_inner_courtyard),
            crosses_closed_gate(blue_black_player,
                                bottom_center_gate)
        ]),
        implies(candidate_walkable_destination(blue_black_player))
    ),
    evidence(
        [player_on_fortress,
         courtyard_obstacle_geometry,
         gate_initial_state],
        confidence(medium_low)
    )
).

hypothetical_rule(
    closed_gate_blocks_crossing,
    rule(
        transition(move(Direction), State0, State1),
        preconditions([
            state_in(State0, bottom_center_gate, closed),
            attempted_crossing(Direction,
                               blue_black_player,
                               bottom_center_gate)
        ]),
        effects([
            unchanged(State0, State1, blue_black_player),
            unchanged(State0, State1, bottom_center_gate)
        ])
    ),
    evidence(
        [gate_initial_state,
         no_observed_transition_difference],
        confidence(medium)
    )
).

hypothetical_rule(
    upper_glyph_may_unlock_gate,
    rule(
        transition(activate_upper_glyph, State0, State1),
        preconditions([
            player_reaches_or_activates(State0,
                                        blue_black_player,
                                        upper_burgundy_glyph),
            state_in(State0, bottom_center_gate, closed)
        ]),
        effects([
            state_in(State1, bottom_center_gate, open),
            changed(bottom_center_gate)
        ])
    ),
    evidence(
        [gate_initial_state,
         gate_objective_color_relation,
         upper_chamber_structure,
         symbol_card_structure],
        confidence(low)
    )
).

hypothetical_rule(
    opened_gate_allows_crossing,
    rule(
        transition(move(Direction), State0, State1),
        preconditions([
            state_in(State0, bottom_center_gate, open),
            attempted_crossing(Direction,
                               blue_black_player,
                               bottom_center_gate)
        ]),
        effects([
            crossing_permitted(blue_black_player,
                               bottom_center_gate)
        ])
    ),
    evidence(
        [gate_initial_state,
         gate_objective_color_relation],
        confidence(low)
    )
).

hypothetical_rule(
    status_blocks_may_encode_remaining_attempts,
    rule(
        transition(failed_attempt, State0, State1),
        preconditions([
            lit_block_count(State0, cyan_status_blocks, N),
            greater_than(N, 0)
        ]),
        effects([
            lit_block_count(State1, cyan_status_blocks, N1),
            arithmetic_relation(N1, N, minus(1))
        ])
    ),
    evidence(
        [status_initial_state,
         no_observed_transition_difference],
        confidence(low)
    )
).

hypothetical_rule(
    interface_objects_remain_spatially_fixed,
    rule(
        transition(Action, State0, State1),
        preconditions([
            noninitial_action(Action)
        ]),
        effects([
            unchanged_position(State0, State1,
                               lower_left_symbol_card),
            unchanged_position(State0, State1,
                               lower_left_burgundy_glyph),
            unchanged_position(State0, State1,
                               bottom_status_panel),
            unchanged_position(State0, State1,
                               bottom_status_track)
        ])
    ),
    evidence(
        [symbol_card_structure,
         status_initial_state],
        confidence(medium)
    )
).
````

[Open `rules.pl`](rules.pl)

</details>

<details>
<summary><code>turtle_from_image.pl</code></summary>

````prolog
turtle_program(yellow_playfield,
    [penup, set_pos(0, 0), setcolor(yellow), pendown, fill_rect(64, 64)]).

turtle_program(left_boundary_wall,
    [penup, set_pos(0, 0), setcolor(light_gray), pendown, fill_rect(4, 52)]).

turtle_program(green_fortress,
    [penup, setcolor(green),
     set_pos(32, 8), pendown, fill_rect(9, 1),
     penup, set_pos(32, 9), pendown, fill_rect(1, 7),
     penup, set_pos(40, 9), pendown, fill_rect(1, 7),
     penup, set_pos(32, 16), pendown, fill_rect(9, 1),
     penup, set_pos(34, 17), pendown, fill_rect(5, 8),
     penup, set_pos(14, 25), pendown, fill_rect(40, 5),
     penup, set_pos(14, 30), pendown, fill_rect(15, 10),
     penup, set_pos(34, 30), pendown, fill_rect(20, 15),
     penup, set_pos(19, 40), pendown, fill_rect(5, 5),
     penup, set_pos(19, 45), pendown, fill_rect(15, 5),
     penup, set_pos(39, 45), pendown, fill_rect(15, 5)]).

turtle_program(fortress_main_body,
    [penup, setcolor(green),
     set_pos(14, 25), pendown, fill_rect(40, 5),
     penup, set_pos(14, 30), pendown, fill_rect(15, 10),
     penup, set_pos(34, 30), pendown, fill_rect(20, 15),
     penup, set_pos(19, 40), pendown, fill_rect(5, 5),
     penup, set_pos(19, 45), pendown, fill_rect(15, 5),
     penup, set_pos(39, 45), pendown, fill_rect(15, 5)]).

turtle_program(fortress_left_wing,
    [penup, set_pos(14, 25), setcolor(green), pendown, fill_rect(15, 15)]).

turtle_program(fortress_right_wing,
    [penup, setcolor(green),
     set_pos(34, 25), pendown, fill_rect(20, 20),
     penup, set_pos(39, 45), pendown, fill_rect(15, 5)]).

turtle_program(fortress_lower_bridge,
    [penup, setcolor(green),
     set_pos(19, 45), pendown, fill_rect(15, 5),
     penup, set_pos(39, 45), pendown, fill_rect(15, 5)]).

turtle_program(fortress_upper_stem,
    [penup, set_pos(34, 17), setcolor(green), pendown, fill_rect(5, 8)]).

turtle_program(fortress_inner_courtyard,
    [penup, setcolor(yellow),
     set_pos(29, 30), pendown, fill_rect(5, 10),
     penup, set_pos(24, 40), pendown, fill_rect(10, 5)]).

turtle_program(upper_chamber_frame,
    [penup, setcolor(green),
     set_pos(32, 8), pendown, fill_rect(9, 1),
     penup, set_pos(32, 9), pendown, fill_rect(1, 7),
     penup, set_pos(40, 9), pendown, fill_rect(1, 7),
     penup, set_pos(32, 16), pendown, fill_rect(9, 1)]).

turtle_program(upper_chamber_interior,
    [penup, set_pos(33, 9), setcolor(light_gray), pendown, fill_rect(7, 7)]).

turtle_program(upper_burgundy_glyph,
    [penup, setcolor(burgundy),
     set_pos(35, 11), pendown, fill_rect(3, 1),
     penup, set_pos(37, 12), pendown, fill_rect(1, 2),
     penup, set_pos(35, 13), pendown, fill_rect(1, 1)]).

turtle_program(blue_black_player,
    [penup, setcolor(black),
     set_pos(21, 31), pendown, fill_rect(1, 2),
     penup, set_pos(22, 32), pendown, fill_rect(1, 1),
     penup, setcolor(blue),
     set_pos(20, 32), pendown, fill_rect(1, 1),
     penup, set_pos(21, 33), pendown, fill_rect(1, 1)]).

turtle_program(player_black_core,
    [penup, setcolor(black),
     set_pos(21, 31), pendown, fill_rect(1, 2),
     penup, set_pos(22, 32), pendown, fill_rect(1, 1)]).

turtle_program(player_blue_tail,
    [penup, setcolor(blue),
     set_pos(20, 32), pendown, fill_rect(1, 1),
     penup, set_pos(21, 33), pendown, fill_rect(1, 1)]).

turtle_program(bottom_center_gate,
    [penup, set_pos(34, 45), setcolor(light_gray), pendown, fill_rect(5, 2),
     penup, set_pos(34, 47), setcolor(burgundy), pendown, fill_rect(5, 3)]).

turtle_program(gate_gray_header,
    [penup, set_pos(34, 45), setcolor(light_gray), pendown, fill_rect(5, 2)]).

turtle_program(gate_burgundy_panel,
    [penup, set_pos(34, 47), setcolor(burgundy), pendown, fill_rect(5, 3)]).

turtle_program(lower_left_symbol_card,
    [penup, set_pos(1, 53), setcolor(light_gray), pendown, fill_rect(10, 10)]).

turtle_program(lower_left_burgundy_glyph,
    [penup, setcolor(burgundy),
     set_pos(3, 55), pendown, fill_rect(6, 2),
     penup, set_pos(3, 57), pendown, fill_rect(2, 4),
     penup, set_pos(7, 59), pendown, fill_rect(2, 2)]).

turtle_program(bottom_status_panel,
    [penup, set_pos(12, 60), setcolor(light_gray), pendown, fill_rect(52, 4)]).

turtle_program(bottom_status_track,
    [penup, set_pos(13, 61), setcolor(dark_gray), pendown, fill_rect(42, 2)]).

turtle_program(cyan_status_blocks,
    [penup, setcolor(cyan),
     set_pos(56, 61), pendown, fill_rect(2, 2),
     penup, set_pos(59, 61), pendown, fill_rect(2, 2),
     penup, set_pos(62, 61), pendown, fill_rect(2, 2)]).
````

[Open `turtle_from_image.pl`](turtle_from_image.pl)

</details>
