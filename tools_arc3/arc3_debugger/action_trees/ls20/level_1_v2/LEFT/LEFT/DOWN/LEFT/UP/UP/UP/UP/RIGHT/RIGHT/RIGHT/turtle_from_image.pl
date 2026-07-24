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
     penup, set_pos(19,40), pendown, fill_rect(5,10),
     penup, set_pos(24,45), pendown, fill_rect(30,5)]).

turtle_program(fortress_main_body,
    [penup, setcolor(green),
     set_pos(14,25), pendown, fill_rect(40,5),
     penup, set_pos(14,30), pendown, fill_rect(15,10),
     penup, set_pos(34,30), pendown, fill_rect(20,20),
     penup, set_pos(19,40), pendown, fill_rect(5,10),
     penup, set_pos(24,45), pendown, fill_rect(30,5)]).

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

turtle_program(bottom_center_gate,
    [penup, set_pos(34,25), setcolor(light_gray), pendown, fill_rect(5,2),
     penup, set_pos(34,27), setcolor(burgundy), pendown, fill_rect(5,3)]).

turtle_program(gate_gray_header,
    [penup, set_pos(34,25), setcolor(light_gray), pendown, fill_rect(5,2)]).

turtle_program(gate_burgundy_panel,
    [penup, set_pos(34,27), setcolor(burgundy), pendown, fill_rect(5,3)]).

turtle_program(blue_black_player,
    [penup, setcolor(blue),
     set_pos(20,32), pendown, set_cell,
     penup, set_pos(21,33), pendown, set_cell,
     penup, set_pos(21,31), setcolor(black), pendown, fill_rect(2,2)]).

turtle_program(player_black_core,
    [penup, set_pos(21,31), setcolor(black), pendown, fill_rect(2,2)]).

turtle_program(player_blue_tail,
    [penup, setcolor(blue),
     set_pos(20,32), pendown, set_cell,
     penup, set_pos(21,33), pendown, set_cell]).

turtle_program(lower_left_symbol_card,
    [penup, set_pos(1,53), setcolor(light_gray), pendown, fill_rect(10,10)]).

turtle_program(lower_left_burgundy_glyph,
    [penup, setcolor(burgundy),
     set_pos(3,55), pendown, fill_rect(6,2),
     penup, set_pos(7,57), pendown, fill_rect(2,4),
     penup, set_pos(3,59), pendown, fill_rect(2,2)]).

turtle_program(bottom_status_panel,
    [penup, set_pos(12,60), setcolor(light_gray), pendown, fill_rect(52,4)]).

turtle_program(green_status_block,
    [penup, set_pos(13,61), setcolor(green), pendown, fill_rect(10,2)]).

turtle_program(bottom_status_track,
    [penup, set_pos(23,61), setcolor(dark_gray), pendown, fill_rect(32,2)]).

turtle_program(cyan_status_blocks,
    [penup, setcolor(cyan),
     set_pos(56,61), pendown, fill_rect(2,2),
     penup, set_pos(59,61), pendown, fill_rect(2,2),
     penup, set_pos(62,61), pendown, fill_rect(2,2)]).
