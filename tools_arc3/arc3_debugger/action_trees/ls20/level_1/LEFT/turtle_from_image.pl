image_size(640, 640).
grid_size(64, 64).
render_scale(10).
coordinate_system(grid, origin_top_left, x_right, y_down).

color(yellow, '#ffdc00').
color(light_gray, '#aaaaaa').
color(green, '#2ecc40').
color(maroon, '#870c25').
color(blue, '#0074d9').
color(black, '#000000').
color(dark_gray, '#666666').
color(light_blue, '#7fdbff').

object_identity(black_player_head, player_component, 'black upper portion of the player marker').
object_identity(blue_black_player, player, 'small blue and black player marker').
object_identity(blue_player_tail, player_component, 'blue lower-left portion of the player marker').
object_identity(bottom_center_gate, compound_block, 'two-color gate embedded in the bottom of the green structure').
object_identity(bottom_dark_status_bar, bar, 'dark horizontal bar inside the bottom status panel').
object_identity(bottom_status_panel, interface_bar, 'long gray status panel along the bottom edge').
object_identity(gray_gate_cap, rectangle, 'gray upper cap of the bottom-center gate').
object_identity(gray_upper_chamber_interior, chamber, 'gray interior of the upper chamber').
object_identity(green_chamber_stem, vertical_bar, 'green vertical stem connecting the upper chamber to the main platform').
object_identity(green_main_platform, platform, 'broad central green platform').
object_identity(green_maze_structure, compound_structure, 'large green maze-like structure').
object_identity(green_upper_chamber_frame, enclosure, 'green frame around the upper chamber').
object_identity(left_cyan_status_cell, indicator, 'left cyan status cell').
object_identity(left_gray_border, border, 'left vertical gray boundary').
object_identity(lower_left_control_panel, panel, 'gray control panel at the lower left').
object_identity(lower_left_red_hook_glyph, glyph, 'large dark red hooked symbol on the lower-left panel').
object_identity(lower_left_red_square, glyph_component, 'small detached dark red square on the lower-left panel').
object_identity(middle_cyan_status_cell, indicator, 'middle cyan status cell').
object_identity(red_gate_base, rectangle, 'dark red lower block of the bottom-center gate').
object_identity(right_cyan_status_cell, indicator, 'right cyan status cell at the image edge').
object_identity(upper_red_hook_glyph, glyph, 'dark red hooked symbol in the upper chamber').
object_identity(upper_red_square, glyph_component, 'small detached dark red square in the upper chamber').
object_identity(yellow_inner_cavity, hole, 'yellow stepped cavity enclosed within the green structure').
object_identity(yellow_playfield, background, 'yellow playfield background').
object_identity(green_status_marker, indicator, 'green progress marker at the left end of the bottom status bar').

object_parts(green_maze_structure,
    [green_upper_chamber_frame, green_chamber_stem, green_main_platform,
     yellow_inner_cavity]).
object_parts(blue_black_player,
    [black_player_head, blue_player_tail]).
object_parts(bottom_center_gate,
    [gray_gate_cap, red_gate_base]).

turtle_program(yellow_playfield,
    [penup, set_pos(0,0), setcolor(yellow), pendown,
     fill_rect(64,64), penup]).

turtle_program(left_gray_border,
    [penup, set_pos(0,0), setcolor(light_gray), pendown,
     fill_rect(4,52), penup]).

turtle_program(green_upper_chamber_frame,
    [penup, set_pos(32,8), setcolor(green), pendown,
     fill_rect(9,9), penup]).

turtle_program(green_chamber_stem,
    [penup, set_pos(34,17), setcolor(green), pendown,
     fill_rect(5,8), penup]).

turtle_program(green_main_platform,
    [penup, setcolor(green),
     set_pos(14,25), pendown, fill_rect(40,5), penup,
     set_pos(14,30), pendown, fill_rect(15,10), penup,
     set_pos(34,30), pendown, fill_rect(20,20), penup,
     set_pos(19,40), pendown, fill_rect(5,10), penup,
     set_pos(24,45), pendown, fill_rect(5,5), penup]).

turtle_program(yellow_inner_cavity,
    [penup, setcolor(yellow),
     set_pos(29,30), pendown, fill_rect(5,10), penup,
     set_pos(24,40), pendown, fill_rect(10,5), penup]).

turtle_program(gray_upper_chamber_interior,
    [penup, set_pos(33,9), setcolor(light_gray), pendown,
     fill_rect(7,7), penup]).

turtle_program(upper_red_hook_glyph,
    [penup, setcolor(maroon),
     set_pos(35,11), pendown, fill_rect(3,1), penup,
     set_pos(37,12), pendown, fill_rect(1,2), penup]).

turtle_program(upper_red_square,
    [penup, set_pos(35,13), setcolor(maroon), pendown,
     set_cell, penup]).

turtle_program(blue_player_tail,
    [penup, setcolor(blue),
     set_pos(20,32), pendown, set_cell, penup,
     set_pos(21,33), pendown, set_cell, penup]).

turtle_program(black_player_head,
    [penup, setcolor(black),
     set_pos(21,31), pendown, set_cell, penup,
     set_pos(21,32), pendown, fill_rect(2,1), penup]).

turtle_program(gray_gate_cap,
    [penup, set_pos(29,45), setcolor(light_gray), pendown,
     fill_rect(5,2), penup]).

turtle_program(red_gate_base,
    [penup, set_pos(29,47), setcolor(maroon), pendown,
     fill_rect(5,3), penup]).

turtle_program(lower_left_control_panel,
    [penup, set_pos(1,53), setcolor(light_gray), pendown,
     fill_rect(10,10), penup]).

turtle_program(lower_left_red_hook_glyph,
    [penup, setcolor(maroon),
     set_pos(3,55), pendown, fill_rect(6,2), penup,
     set_pos(3,57), pendown, fill_rect(2,4), penup]).

turtle_program(lower_left_red_square,
    [penup, set_pos(7,59), setcolor(maroon), pendown,
     fill_rect(2,2), penup]).

turtle_program(bottom_status_panel,
    [penup, set_pos(12,60), setcolor(light_gray), pendown,
     fill_rect(52,4), penup]).

turtle_program(green_status_marker,
    [penup, set_pos(13,61), setcolor(green), pendown,
     fill_rect(1,2), penup]).

turtle_program(bottom_dark_status_bar,
    [penup, set_pos(14,61), setcolor(dark_gray), pendown,
     fill_rect(41,2), penup]).

turtle_program(left_cyan_status_cell,
    [penup, set_pos(56,61), setcolor(light_blue), pendown,
     fill_rect(2,2), penup]).

turtle_program(middle_cyan_status_cell,
    [penup, set_pos(59,61), setcolor(light_blue), pendown,
     fill_rect(2,2), penup]).

turtle_program(right_cyan_status_cell,
    [penup, set_pos(62,61), setcolor(light_blue), pendown,
     fill_rect(2,2), penup]).
