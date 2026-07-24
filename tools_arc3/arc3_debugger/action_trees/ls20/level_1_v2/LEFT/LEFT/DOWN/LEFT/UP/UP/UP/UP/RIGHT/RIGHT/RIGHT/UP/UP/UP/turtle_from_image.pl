:- ensure_loaded('../../../../../../../../../../../../../../object_registry.pl').

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
    [penup, setcolor(green),
     set_pos(44,40), pendown, fill_rect(15,15),
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

turtle_program(upper_left_green_target,
    [penup, set_pos(15,16), setcolor(dark_gray), pendown, fill_rect(3,3),
     penup, set_pos(16,17), setcolor(green), pendown, set_cell]).

turtle_program(lower_right_green_target,
    [penup, set_pos(40,51), setcolor(dark_gray), pendown, fill_rect(3,3),
     penup, set_pos(41,52), setcolor(green), pendown, set_cell]).

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
