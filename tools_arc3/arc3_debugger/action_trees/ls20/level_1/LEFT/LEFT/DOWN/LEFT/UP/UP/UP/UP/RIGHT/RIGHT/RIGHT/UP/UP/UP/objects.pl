% Canonical object identities live in the level-wide registry.
:- ensure_loaded('../../../../../../../../../../../../../../object_registry.pl').

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
% Canonical object identities live in the level-wide registry.

% State-specific facts for this action-tree node.
state_id(action15).
incoming_action(action15, action('ACTION1', {})).
previous_state(action15, action14).

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
visible(bottom_center_gate).
visible(gate_gray_header).
visible(gate_burgundy_panel).
visible(blue_black_player).
visible(player_black_core).
visible(player_blue_tail).
visible(lower_left_symbol_card).
visible(lower_left_burgundy_glyph).
visible(bottom_status_panel).
visible(bottom_status_track).
visible(cyan_status_blocks).
visible(upper_left_green_target).
visible(lower_right_green_target).

bounding_box(yellow_playfield, 0, 0, 64, 64).
bounding_box(left_boundary_wall, 0, 0, 4, 52).
bounding_box(green_fortress, 9, 5, 50, 50).
bounding_box(fortress_main_body, 9, 5, 50, 50).
bounding_box(fortress_left_wing, 9, 10, 15, 37).
bounding_box(fortress_right_wing, 39, 15, 20, 40).
bounding_box(fortress_lower_bridge, 44, 40, 15, 15).
bounding_box(fortress_upper_stem, 29, 15, 15, 30).
bounding_box(fortress_inner_courtyard, 19, 15, 30, 35).
bounding_box(upper_chamber_frame, 12, 38, 9, 9).
bounding_box(upper_chamber_interior, 13, 39, 7, 7).
bounding_box(upper_burgundy_glyph, 15, 41, 3, 3).
bounding_box(bottom_center_gate, 29, 40, 5, 5).
bounding_box(gate_gray_header, 29, 40, 5, 2).
bounding_box(gate_burgundy_panel, 29, 42, 5, 3).
bounding_box(blue_black_player, 50, 46, 3, 3).
bounding_box(player_black_core, 51, 46, 2, 2).
bounding_box(player_blue_tail, 50, 47, 2, 2).
bounding_box(lower_left_symbol_card, 1, 53, 10, 10).
bounding_box(lower_left_burgundy_glyph, 3, 55, 6, 6).
bounding_box(bottom_status_panel, 12, 60, 52, 4).
bounding_box(bottom_status_track, 13, 61, 42, 2).
bounding_box(cyan_status_blocks, 56, 61, 8, 2).
bounding_box(upper_left_green_target, 15, 16, 3, 3).
bounding_box(lower_right_green_target, 40, 51, 3, 3).

center(green_fortress, 34, 30).
center(fortress_main_body, 34, 30).
center(fortress_left_wing, 16, 28).
center(fortress_right_wing, 49, 35).
center(fortress_lower_bridge, 51, 47).
center(fortress_upper_stem, 36, 30).
center(fortress_inner_courtyard, 34, 32).
center(upper_chamber_frame, 16, 42).
center(upper_chamber_interior, 16, 42).
center(upper_burgundy_glyph, 16, 42).
center(bottom_center_gate, 31, 42).
center(gate_gray_header, 31, 41).
center(gate_burgundy_panel, 31, 43).
center(blue_black_player, 51, 47).
center(player_black_core, 52, 47).
center(player_blue_tail, 51, 48).
center(lower_left_symbol_card, 5, 58).
center(lower_left_burgundy_glyph, 6, 58).
center(bottom_status_panel, 38, 62).
center(bottom_status_track, 34, 62).
center(cyan_status_blocks, 60, 62).
center(upper_left_green_target, 16, 17).
center(lower_right_green_target, 41, 52).

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
colors(bottom_center_gate, [light_gray, burgundy]).
color(gate_gray_header, light_gray).
color(gate_burgundy_panel, burgundy).
colors(blue_black_player, [blue, black]).
color(player_black_core, black).
color(player_blue_tail, blue).
color(lower_left_symbol_card, light_gray).
color(lower_left_burgundy_glyph, burgundy).
color(bottom_status_panel, light_gray).
color(bottom_status_track, dark_gray).
color(cyan_status_blocks, cyan).
colors(upper_left_green_target, [light_gray, green]).
colors(lower_right_green_target, [light_gray, green]).

geometry(yellow_playfield, background_with_occlusions).
geometry(left_boundary_wall, filled_vertical_rectangle).
geometry(green_fortress, connected_branching_maze_structure).
geometry(fortress_main_body, stepped_orthogonal_block_region).
geometry(fortress_left_wing, branching_block_and_vertical_bar).
geometry(fortress_right_wing, stepped_vertical_block_region).
geometry(fortress_lower_bridge, thick_lower_right_block).
geometry(fortress_upper_stem, zigzag_vertical_connector).
geometry(fortress_inner_courtyard, winding_open_corridor).
geometry(upper_chamber_frame, one_cell_thick_rectangular_frame).
geometry(upper_chamber_interior, filled_rectangle).
geometry(upper_burgundy_glyph, hooked_angular_glyph).
geometry(bottom_center_gate, vertically_partitioned_rectangle).
geometry(gate_gray_header, filled_horizontal_rectangle).
geometry(gate_burgundy_panel, filled_rectangle).
geometry(blue_black_player, asymmetric_two_color_marker).
geometry(player_black_core, filled_rectangular_cluster).
geometry(player_blue_tail, diagonal_two_cell_tail).
geometry(lower_left_symbol_card, filled_square_panel).
geometry(lower_left_burgundy_glyph, angular_thick_glyph).
geometry(bottom_status_panel, filled_horizontal_panel).
geometry(bottom_status_track, filled_horizontal_rectangle).
geometry(cyan_status_blocks, three_separated_rectangular_blocks).
geometry(upper_left_green_target, gray_square_with_green_center).
geometry(lower_right_green_target, gray_square_with_green_center).

component_of(fortress_main_body, green_fortress).
component_of(fortress_left_wing, green_fortress).
component_of(fortress_right_wing, green_fortress).
component_of(fortress_lower_bridge, green_fortress).
component_of(fortress_upper_stem, green_fortress).
component_of(upper_chamber_frame, green_fortress).
component_of(gate_gray_header, bottom_center_gate).
component_of(gate_burgundy_panel, bottom_center_gate).
component_of(player_black_core, blue_black_player).
component_of(player_blue_tail, blue_black_player).
component_of(lower_left_burgundy_glyph, lower_left_symbol_card).
component_of(bottom_status_track, bottom_status_panel).
component_of(cyan_status_blocks, bottom_status_panel).

contains(green_fortress, fortress_inner_courtyard).
contains(upper_chamber_frame, upper_chamber_interior).
contains(upper_chamber_interior, upper_burgundy_glyph).
contains(bottom_center_gate, gate_gray_header).
contains(bottom_center_gate, gate_burgundy_panel).
contains(blue_black_player, player_black_core).
contains(blue_black_player, player_blue_tail).
contains(lower_left_symbol_card, lower_left_burgundy_glyph).
contains(bottom_status_panel, bottom_status_track).
contains(bottom_status_panel, cyan_status_blocks).

adjacent(left_boundary_wall, yellow_playfield).
adjacent(fortress_left_wing, fortress_inner_courtyard).
adjacent(fortress_right_wing, fortress_inner_courtyard).
adjacent(fortress_upper_stem, fortress_inner_courtyard).
adjacent(fortress_upper_stem, bottom_center_gate).
adjacent(gate_gray_header, gate_burgundy_panel).
adjacent(player_black_core, player_blue_tail).
adjacent(bottom_status_track, cyan_status_blocks).

embedded_in(upper_chamber_frame, green_fortress).
embedded_in(bottom_center_gate, fortress_upper_stem).
embedded_in(blue_black_player, fortress_right_wing).
embedded_in(blue_black_player, green_fortress).
embedded_in(upper_left_green_target, fortress_left_wing).
embedded_in(lower_right_green_target, fortress_right_wing).

overlays(upper_chamber_interior, green_fortress).
overlays(upper_burgundy_glyph, upper_chamber_interior).
overlays(bottom_center_gate, fortress_upper_stem).
overlays(blue_black_player, fortress_right_wing).
overlays(lower_left_burgundy_glyph, lower_left_symbol_card).
overlays(bottom_status_track, bottom_status_panel).
overlays(cyan_status_blocks, bottom_status_panel).
overlays(upper_left_green_target, fortress_left_wing).
overlays(lower_right_green_target, fortress_right_wing).

left_of(upper_left_green_target, bottom_center_gate).
left_of(upper_chamber_frame, bottom_center_gate).
left_of(bottom_center_gate, blue_black_player).
left_of(lower_right_green_target, blue_black_player).
left_of(bottom_status_track, cyan_status_blocks).

above(upper_left_green_target, upper_chamber_frame).
above(upper_chamber_frame, lower_left_symbol_card).
above(bottom_center_gate, blue_black_player).
above(blue_black_player, lower_right_green_target).
above(lower_right_green_target, bottom_status_panel).
above(lower_left_symbol_card, bottom_status_panel).

aligned_with(upper_chamber_frame, upper_left_green_target, vertical).
aligned_with(bottom_center_gate, fortress_upper_stem, vertical).
aligned_with(blue_black_player, lower_right_green_target, vertical).
aligned_with(bottom_status_track, cyan_status_blocks, horizontal).

separated_by_gap(upper_chamber_frame, bottom_center_gate, 8).
separated_by_gap(bottom_center_gate, blue_black_player, 16).
separated_by_gap(bottom_status_track, cyan_status_blocks, 1).

state(green_fortress, solid).
state(green_fortress, reconfigured_as_maze).
state(fortress_inner_courtyard, open_winding_passage).
state(upper_chamber_frame, relocated_to_lower_left_branch).
state(bottom_center_gate, closed).
state(bottom_center_gate, relocated_to_central_lower_corridor).
state(blue_black_player, visible).
state(blue_black_player, relocated_to_lower_right_wing).
state(player_blue_tail, two_cell_diagonal).
state(bottom_status_panel, active).
state(bottom_status_track, fully_dark).
state(green_status_block, not_visible).
state(cyan_status_blocks, three_lit_blocks).
state(upper_left_green_target, active).
state(lower_right_green_target, active).
state(action15, fortress_reconfigured).
state(action15, player_moved_to_lower_right).
state(action15, gate_moved_to_central_corridor).
state(action15, green_status_block_depleted).

component_box(green_fortress, 19, 5, 35, 10).
component_box(green_fortress, 9, 10, 15, 15).
component_box(green_fortress, 29, 15, 10, 10).
component_box(green_fortress, 44, 15, 10, 5).
component_box(green_fortress, 49, 20, 10, 10).
component_box(green_fortress, 14, 25, 5, 13).
component_box(green_fortress, 34, 25, 10, 10).
component_box(green_fortress, 49, 30, 5, 10).
component_box(green_fortress, 29, 35, 10, 10).
component_box(green_fortress, 12, 38, 9, 9).
component_box(green_fortress, 44, 40, 15, 15).
component_box(green_fortress, 39, 50, 5, 5).

component_box(fortress_inner_courtyard, 24, 15, 5, 10).
component_box(fortress_inner_courtyard, 39, 15, 5, 5).
component_box(fortress_inner_courtyard, 39, 20, 10, 5).
component_box(fortress_inner_courtyard, 19, 25, 15, 10).
component_box(fortress_inner_courtyard, 19, 35, 10, 3).
component_box(fortress_inner_courtyard, 21, 38, 8, 7).
component_box(fortress_inner_courtyard, 21, 45, 18, 5).
component_box(fortress_inner_courtyard, 39, 25, 10, 15).
component_box(fortress_inner_courtyard, 39, 40, 5, 10).

component_box(upper_burgundy_glyph, 15, 41, 3, 1).
component_box(upper_burgundy_glyph, 17, 42, 1, 2).
component_box(upper_burgundy_glyph, 15, 43, 1, 1).
component_box(player_black_core, 51, 46, 2, 2).
component_box(player_blue_tail, 50, 47, 1, 1).
component_box(player_blue_tail, 51, 48, 1, 1).
component_box(lower_left_burgundy_glyph, 3, 55, 6, 2).
component_box(lower_left_burgundy_glyph, 7, 57, 2, 4).
component_box(lower_left_burgundy_glyph, 3, 59, 2, 2).
component_box(cyan_status_blocks, 56, 61, 2, 2).
component_box(cyan_status_blocks, 59, 61, 2, 2).
component_box(cyan_status_blocks, 62, 61, 2, 2).

turtle_program(yellow_playfield,
    [penup, set_pos(0,0), setcolor(yellow), pendown, fill_rect(64,64)]).

turtle_program(left_boundary_wall,
    [penup, set_pos(0,0), setcolor(light_gray), pendown, fill_rect(4,52)]).

turtle_program(green_fortress,
    [penup, setcolor(green),
     set_pos(19,5), pendown, fill_rect(35,10),
     penup, set_pos(9,10), pendown, fill_rect(15,15),
     penup, set_pos(29,15), pendown, fill_rect(10,10),
     penup, set_pos(44,15), pendown, fill_rect(10,5),
     penup, set_pos(49,20), pendown, fill_rect(10,10),
     penup, set_pos(14,25), pendown, fill_rect(5,13),
     penup, set_pos(34,25), pendown, fill_rect(10,10),
     penup, set_pos(49,30), pendown, fill_rect(5,10),
     penup, set_pos(29,35), pendown, fill_rect(10,10),
     penup, set_pos(12,38), pendown, fill_rect(9,9),
     penup, set_pos(44,40), pendown, fill_rect(15,15),
     penup, set_pos(39,50), pendown, fill_rect(5,5)]).

turtle_program(fortress_main_body,
    [penup, setcolor(green),
     set_pos(19,5), pendown, fill_rect(35,10),
     penup, set_pos(9,10), pendown, fill_rect(15,15),
     penup, set_pos(29,15), pendown, fill_rect(10,10),
     penup, set_pos(44,15), pendown, fill_rect(10,5),
     penup, set_pos(49,20), pendown, fill_rect(10,10),
     penup, set_pos(14,25), pendown, fill_rect(5,13),
     penup, set_pos(34,25), pendown, fill_rect(10,10),
     penup, set_pos(49,30), pendown, fill_rect(5,10),
     penup, set_pos(29,35), pendown, fill_rect(10,10),
     penup, set_pos(12,38), pendown, fill_rect(9,9),
     penup, set_pos(44,40), pendown, fill_rect(15,15),
     penup, set_pos(39,50), pendown, fill_rect(5,5)]).

turtle_program(fortress_left_wing,
    [penup, setcolor(green),
     set_pos(9,10), pendown, fill_rect(15,15),
     penup, set_pos(14,25), pendown, fill_rect(5,13),
     penup, set_pos(12,38), pendown, fill_rect(9,9)]).

turtle_program(fortress_right_wing,
    [penup, setcolor(green),
     set_pos(44,15), pendown, fill_rect(10,5),
     penup, set_pos(49,20), pendown, fill_rect(10,20),
     penup, set_pos(44,40), pendown, fill_rect(15,15),
     penup, set_pos(39,50), pendown, fill_rect(5,5)]).

turtle_program(fortress_lower_bridge,
    [penup, set_pos(44,40), setcolor(green), pendown, fill_rect(15,15),
     penup, set_pos(39,50), pendown, fill_rect(5,5)]).

turtle_program(fortress_upper_stem,
    [penup, setcolor(green),
     set_pos(29,15), pendown, fill_rect(10,10),
     penup, set_pos(34,25), pendown, fill_rect(10,10),
     penup, set_pos(29,35), pendown, fill_rect(10,10)]).

turtle_program(fortress_inner_courtyard,
    [penup, setcolor(yellow),
     set_pos(24,15), pendown, fill_rect(5,10),
     penup, set_pos(39,15), pendown, fill_rect(5,5),
     penup, set_pos(39,20), pendown, fill_rect(10,5),
     penup, set_pos(19,25), pendown, fill_rect(15,10),
     penup, set_pos(19,35), pendown, fill_rect(10,3),
     penup, set_pos(21,38), pendown, fill_rect(8,7),
     penup, set_pos(21,45), pendown, fill_rect(18,5),
     penup, set_pos(39,25), pendown, fill_rect(10,15),
     penup, set_pos(39,40), pendown, fill_rect(5,10)]).

turtle_program(upper_chamber_frame,
    [penup, setcolor(green),
     set_pos(12,38), pendown, fill_rect(9,1),
     penup, set_pos(12,39), pendown, fill_rect(1,7),
     penup, set_pos(20,39), pendown, fill_rect(1,7),
     penup, set_pos(12,46), pendown, fill_rect(9,1)]).

turtle_program(upper_chamber_interior,
    [penup, set_pos(13,39), setcolor(light_gray), pendown, fill_rect(7,7)]).

turtle_program(upper_burgundy_glyph,
    [penup, setcolor(burgundy),
     set_pos(15,41), pendown, fill_rect(3,1),
     penup, set_pos(17,42), pendown, fill_rect(1,2),
     penup, set_pos(15,43), pendown, set_cell]).

turtle_program(bottom_center_gate,
    [penup, set_pos(29,40), setcolor(light_gray), pendown, fill_rect(5,2),
     penup, set_pos(29,42), setcolor(burgundy), pendown, fill_rect(5,3)]).

turtle_program(gate_gray_header,
    [penup, set_pos(29,40), setcolor(light_gray), pendown, fill_rect(5,2)]).

turtle_program(gate_burgundy_panel,
    [penup, set_pos(29,42), setcolor(burgundy), pendown, fill_rect(5,3)]).

turtle_program(blue_black_player,
    [penup, setcolor(blue),
     set_pos(50,47), pendown, set_cell,
     penup, set_pos(51,48), pendown, set_cell,
     penup, set_pos(51,46), setcolor(black), pendown, fill_rect(2,2)]).

turtle_program(player_black_core,
    [penup, set_pos(51,46), setcolor(black), pendown, fill_rect(2,2)]).

turtle_program(player_blue_tail,
    [penup, setcolor(blue),
     set_pos(50,47), pendown, set_cell,
     penup, set_pos(51,48), pendown, set_cell]).

turtle_program(lower_left_symbol_card,
    [penup, set_pos(1,53), setcolor(light_gray), pendown, fill_rect(10,10)]).

turtle_program(lower_left_burgundy_glyph,
    [penup, setcolor(burgundy),
     set_pos(3,55), pendown, fill_rect(6,2),
     penup, set_pos(7,57), pendown, fill_rect(2,4),
     penup, set_pos(3,59), pendown, fill_rect(2,2)]).

turtle_program(bottom_status_panel,
    [penup, set_pos(12,60), setcolor(light_gray), pendown, fill_rect(52,4)]).

turtle_program(bottom_status_track,
    [penup, set_pos(13,61), setcolor(dark_gray), pendown, fill_rect(42,2)]).

turtle_program(cyan_status_blocks,
    [penup, setcolor(cyan),
     set_pos(56,61), pendown, fill_rect(2,2),
     penup, set_pos(59,61), pendown, fill_rect(2,2),
     penup, set_pos(62,61), pendown, fill_rect(2,2)]).

turtle_program(upper_left_green_target,
    [penup, set_pos(15,16), setcolor(dark_gray), pendown, fill_rect(3,3),
     penup, set_pos(16,17), setcolor(green), pendown, set_cell]).

turtle_program(lower_right_green_target,
    [penup, set_pos(40,51), setcolor(dark_gray), pendown, fill_rect(3,3),
     penup, set_pos(41,52), setcolor(green), pendown, set_cell]).
