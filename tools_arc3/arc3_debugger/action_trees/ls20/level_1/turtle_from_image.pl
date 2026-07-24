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

image_size(640, 640).
coordinate_system(pixel, origin_top_left, x_right, y_down).
grid_size(64, 64).
cell_size(10, 10).

color(yellow, '#ffdc00').
color(light_gray, '#b3b3b3').
color(green, '#2ecc40').
color(maroon, '#870c25').
color(blue, '#0074d9').
color(black, '#000000').
color(dark_gray, '#606060').
color(light_blue, '#7fdbff').

composite_object(green_maze_structure,
    [green_upper_chamber_frame, green_chamber_stem, green_main_platform]).
composite_object(blue_black_player,
    [black_player_head, blue_player_tail]).
composite_object(bottom_center_gate,
    [gray_gate_cap, red_gate_base]).

turtle_program(yellow_playfield,
    [penup,
     set_pos(0, 0),
     setcolor(yellow),
     pendown,
     fill_rect(640, 640),
     penup]).

turtle_program(left_gray_border,
    [penup,
     set_pos(0, 0),
     setcolor(light_gray),
     pendown,
     fill_rect(40, 520),
     penup]).

turtle_program(green_upper_chamber_frame,
    [penup,
     set_pos(320, 80),
     setcolor(green),
     pendown,
     fill_rect(90, 90),
     penup]).

turtle_program(green_chamber_stem,
    [penup,
     set_pos(340, 160),
     setcolor(green),
     pendown,
     fill_rect(50, 90),
     penup]).

turtle_program(green_main_platform,
    [penup,
     setcolor(green),
     set_pos(140, 250),
     pendown,
     fill_rect(400, 50),
     penup,
     set_pos(140, 300),
     pendown,
     fill_rect(150, 100),
     penup,
     set_pos(340, 300),
     pendown,
     fill_rect(200, 150),
     penup,
     set_pos(190, 400),
     pendown,
     fill_rect(50, 100),
     penup,
     set_pos(190, 450),
     pendown,
     fill_rect(350, 50),
     penup]).

turtle_program(yellow_inner_cavity,
    [penup,
     setcolor(yellow),
     set_pos(290, 300),
     pendown,
     fill_rect(50, 150),
     penup,
     set_pos(240, 400),
     pendown,
     fill_rect(50, 50),
     penup]).

turtle_program(gray_upper_chamber_interior,
    [penup,
     set_pos(330, 90),
     setcolor(light_gray),
     pendown,
     fill_rect(70, 70),
     penup]).

turtle_program(upper_red_hook_glyph,
    [penup,
     setcolor(maroon),
     set_pos(350, 110),
     pendown,
     fill_rect(30, 10),
     penup,
     set_pos(370, 120),
     pendown,
     fill_rect(10, 20),
     penup]).

turtle_program(upper_red_square,
    [penup,
     set_pos(350, 130),
     setcolor(maroon),
     pendown,
     fill_rect(10, 10),
     penup]).

turtle_program(black_player_head,
    [penup,
     setcolor(black),
     set_pos(210, 310),
     pendown,
     fill_rect(10, 20),
     penup,
     set_pos(220, 320),
     pendown,
     fill_rect(10, 10),
     penup]).

turtle_program(blue_player_tail,
    [penup,
     setcolor(blue),
     set_pos(200, 320),
     pendown,
     fill_rect(10, 10),
     penup,
     set_pos(210, 330),
     pendown,
     fill_rect(10, 10),
     penup]).

turtle_program(gray_gate_cap,
    [penup,
     set_pos(340, 450),
     setcolor(light_gray),
     pendown,
     fill_rect(50, 20),
     penup]).

turtle_program(red_gate_base,
    [penup,
     set_pos(340, 470),
     setcolor(maroon),
     pendown,
     fill_rect(50, 30),
     penup]).

turtle_program(lower_left_control_panel,
    [penup,
     set_pos(10, 530),
     setcolor(light_gray),
     pendown,
     fill_rect(100, 100),
     penup]).

turtle_program(lower_left_red_hook_glyph,
    [penup,
     setcolor(maroon),
     set_pos(30, 550),
     pendown,
     fill_rect(60, 20),
     penup,
     set_pos(30, 570),
     pendown,
     fill_rect(20, 40),
     penup]).

turtle_program(lower_left_red_square,
    [penup,
     set_pos(70, 590),
     setcolor(maroon),
     pendown,
     fill_rect(20, 20),
     penup]).

turtle_program(bottom_status_panel,
    [penup,
     set_pos(120, 600),
     setcolor(light_gray),
     pendown,
     fill_rect(520, 40),
     penup]).

turtle_program(bottom_dark_status_bar,
    [penup,
     set_pos(130, 610),
     setcolor(dark_gray),
     pendown,
     fill_rect(420, 20),
     penup]).

turtle_program(left_cyan_status_cell,
    [penup,
     set_pos(560, 610),
     setcolor(light_blue),
     pendown,
     fill_rect(20, 20),
     penup]).

turtle_program(middle_cyan_status_cell,
    [penup,
     set_pos(590, 610),
     setcolor(light_blue),
     pendown,
     fill_rect(20, 20),
     penup]).

turtle_program(right_cyan_status_cell,
    [penup,
     set_pos(620, 610),
     setcolor(light_blue),
     pendown,
     fill_rect(20, 20),
     penup]).
