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

canvas_size(640, 640).
coordinate_system(origin_top_left, x_right, y_down).
cell_scale(10).

palette(yellow, rgb(255,220,0)).
palette(green, rgb(46,204,64)).
palette(gray, rgb(170,170,170)).
palette(dark_gray, rgb(102,102,102)).
palette(maroon, rgb(133,20,75)).
palette(blue, rgb(0,116,217)).
palette(cyan, rgb(127,219,255)).
palette(black, rgb(0,0,0)).

object(yellow_playfield, background).
bbox(yellow_playfield, bbox(0,0,639,639)).
color(yellow_playfield, yellow).
geometry(yellow_playfield, rectangle(0,0,640,640)).
z_order(yellow_playfield, 0).
turtle_program(yellow_playfield,
    [penup,
     set_pos(0,0),
     setcolor(yellow),
     pendown,
     fill_rect(640,640),
     penup]).

object(left_gray_border, border).
bbox(left_gray_border, bbox(0,0,39,519)).
color(left_gray_border, gray).
geometry(left_gray_border, rectangle(0,0,40,520)).
orientation(left_gray_border, vertical).
touches_canvas_edge(left_gray_border, left).
touches_canvas_edge(left_gray_border, top).
z_order(left_gray_border, 1).
turtle_program(left_gray_border,
    [penup,
     set_pos(0,0),
     setcolor(gray),
     pendown,
     fill_rect(40,520),
     penup]).

object(green_maze_structure, compound_structure).
bbox(green_maze_structure, bbox(140,80,539,499)).
color(green_maze_structure, green).
components(green_maze_structure,
    [green_upper_chamber_frame,
     green_chamber_stem,
     green_main_platform]).
connected(green_maze_structure).
z_order(green_maze_structure, 2).

object(green_upper_chamber_frame, enclosure).
bbox(green_upper_chamber_frame, bbox(320,80,409,169)).
color(green_upper_chamber_frame, green).
geometry(green_upper_chamber_frame, rectangle(320,80,90,90)).
part_of(green_upper_chamber_frame, green_maze_structure).
z_order(green_upper_chamber_frame, 2).
turtle_program(green_upper_chamber_frame,
    [penup,
     set_pos(320,80),
     setcolor(green),
     pendown,
     fill_rect(90,90),
     penup]).

object(green_chamber_stem, vertical_bar).
bbox(green_chamber_stem, bbox(340,160,389,249)).
color(green_chamber_stem, green).
geometry(green_chamber_stem, rectangle(340,160,50,90)).
orientation(green_chamber_stem, vertical).
part_of(green_chamber_stem, green_maze_structure).
z_order(green_chamber_stem, 2).
turtle_program(green_chamber_stem,
    [penup,
     set_pos(340,160),
     setcolor(green),
     pendown,
     fill_rect(50,90),
     penup]).

object(green_main_platform, platform).
bbox(green_main_platform, bbox(140,250,539,499)).
color(green_main_platform, green).
geometry(green_main_platform,
    union_of_rectangles([
        rectangle(140,250,400,150),
        rectangle(190,400,50,100),
        rectangle(340,400,200,100),
        rectangle(290,450,50,50)
    ])).
part_of(green_main_platform, green_maze_structure).
z_order(green_main_platform, 2).
turtle_program(green_main_platform,
    [penup,
     setcolor(green),
     set_pos(140,250),
     pendown,
     fill_rect(400,150),
     penup,
     set_pos(190,400),
     pendown,
     fill_rect(50,100),
     penup,
     set_pos(340,400),
     pendown,
     fill_rect(200,100),
     penup,
     set_pos(290,450),
     pendown,
     fill_rect(50,50),
     penup]).

object(yellow_inner_cavity, hole).
bbox(yellow_inner_cavity, bbox(240,300,339,449)).
color(yellow_inner_cavity, yellow).
geometry(yellow_inner_cavity,
    union_of_rectangles([
        rectangle(290,300,50,150),
        rectangle(240,400,50,50)
    ])).
contained_in(yellow_inner_cavity, green_maze_structure).
open_to_background(yellow_inner_cavity, left).
z_order(yellow_inner_cavity, 3).
turtle_program(yellow_inner_cavity,
    [penup,
     setcolor(yellow),
     set_pos(290,300),
     pendown,
     fill_rect(50,150),
     penup,
     set_pos(240,400),
     pendown,
     fill_rect(50,50),
     penup]).

object(gray_upper_chamber_interior, chamber).
bbox(gray_upper_chamber_interior, bbox(330,90,399,159)).
color(gray_upper_chamber_interior, gray).
geometry(gray_upper_chamber_interior, rectangle(330,90,70,70)).
contained_in(gray_upper_chamber_interior, green_upper_chamber_frame).
z_order(gray_upper_chamber_interior, 4).
turtle_program(gray_upper_chamber_interior,
    [penup,
     set_pos(330,90),
     setcolor(gray),
     pendown,
     fill_rect(70,70),
     penup]).

object(upper_red_hook_glyph, glyph).
bbox(upper_red_hook_glyph, bbox(350,110,379,139)).
color(upper_red_hook_glyph, maroon).
geometry(upper_red_hook_glyph,
    union_of_rectangles([
        rectangle(350,110,30,10),
        rectangle(370,120,10,20)
    ])).
shape(upper_red_hook_glyph, angular_hook).
contained_in(upper_red_hook_glyph, gray_upper_chamber_interior).
z_order(upper_red_hook_glyph, 5).
turtle_program(upper_red_hook_glyph,
    [penup,
     setcolor(maroon),
     set_pos(350,110),
     pendown,
     fill_rect(30,10),
     penup,
     set_pos(370,120),
     pendown,
     fill_rect(10,20),
     penup]).

object(upper_red_square, glyph_component).
bbox(upper_red_square, bbox(350,130,359,139)).
color(upper_red_square, maroon).
geometry(upper_red_square, rectangle(350,130,10,10)).
contained_in(upper_red_square, gray_upper_chamber_interior).
z_order(upper_red_square, 5).
turtle_program(upper_red_square,
    [penup,
     set_pos(350,130),
     setcolor(maroon),
     pendown,
     fill_rect(10,10),
     penup]).

object(blue_black_player, player).
bbox(blue_black_player, bbox(200,310,229,339)).
colors(blue_black_player, [black,blue]).
components(blue_black_player, [black_player_head,blue_player_tail]).
contained_in(blue_black_player, green_main_platform).
orientation(blue_black_player, right).
z_order(blue_black_player, 6).

object(black_player_head, player_component).
bbox(black_player_head, bbox(210,310,229,329)).
color(black_player_head, black).
geometry(black_player_head,
    union_of_rectangles([
        rectangle(210,310,10,20),
        rectangle(220,320,10,10)
    ])).
part_of(black_player_head, blue_black_player).
z_order(black_player_head, 6).
turtle_program(black_player_head,
    [penup,
     setcolor(black),
     set_pos(210,310),
     pendown,
     fill_rect(10,20),
     penup,
     set_pos(220,320),
     pendown,
     fill_rect(10,10),
     penup]).

object(blue_player_tail, player_component).
bbox(blue_player_tail, bbox(200,320,219,339)).
color(blue_player_tail, blue).
geometry(blue_player_tail,
    union_of_rectangles([
        rectangle(200,320,10,10),
        rectangle(210,330,10,10)
    ])).
part_of(blue_player_tail, blue_black_player).
z_order(blue_player_tail, 7).
turtle_program(blue_player_tail,
    [penup,
     setcolor(blue),
     set_pos(200,320),
     pendown,
     fill_rect(10,10),
     penup,
     set_pos(210,330),
     pendown,
     fill_rect(10,10),
     penup]).

object(bottom_center_gate, compound_block).
bbox(bottom_center_gate, bbox(240,450,289,499)).
colors(bottom_center_gate, [gray,maroon]).
components(bottom_center_gate, [gray_gate_cap,red_gate_base]).
embedded_in(bottom_center_gate, green_maze_structure).
z_order(bottom_center_gate, 8).

object(gray_gate_cap, rectangle).
bbox(gray_gate_cap, bbox(240,450,289,469)).
color(gray_gate_cap, gray).
geometry(gray_gate_cap, rectangle(240,450,50,20)).
part_of(gray_gate_cap, bottom_center_gate).
z_order(gray_gate_cap, 8).
turtle_program(gray_gate_cap,
    [penup,
     set_pos(240,450),
     setcolor(gray),
     pendown,
     fill_rect(50,20),
     penup]).

object(red_gate_base, rectangle).
bbox(red_gate_base, bbox(240,470,289,499)).
color(red_gate_base, maroon).
geometry(red_gate_base, rectangle(240,470,50,30)).
part_of(red_gate_base, bottom_center_gate).
adjacent_above(gray_gate_cap, red_gate_base).
z_order(red_gate_base, 9).
turtle_program(red_gate_base,
    [penup,
     set_pos(240,470),
     setcolor(maroon),
     pendown,
     fill_rect(50,30),
     penup]).

object(lower_left_control_panel, panel).
bbox(lower_left_control_panel, bbox(10,530,109,629)).
color(lower_left_control_panel, gray).
geometry(lower_left_control_panel, rectangle(10,530,100,100)).
z_order(lower_left_control_panel, 10).
turtle_program(lower_left_control_panel,
    [penup,
     set_pos(10,530),
     setcolor(gray),
     pendown,
     fill_rect(100,100),
     penup]).

object(lower_left_red_hook_glyph, glyph).
bbox(lower_left_red_hook_glyph, bbox(30,550,89,609)).
color(lower_left_red_hook_glyph, maroon).
geometry(lower_left_red_hook_glyph,
    union_of_rectangles([
        rectangle(30,550,60,20),
        rectangle(30,570,20,40)
    ])).
shape(lower_left_red_hook_glyph, angular_hook).
contained_in(lower_left_red_hook_glyph, lower_left_control_panel).
z_order(lower_left_red_hook_glyph, 11).
turtle_program(lower_left_red_hook_glyph,
    [penup,
     setcolor(maroon),
     set_pos(30,550),
     pendown,
     fill_rect(60,20),
     penup,
     set_pos(30,570),
     pendown,
     fill_rect(20,40),
     penup]).

object(lower_left_red_square, glyph_component).
bbox(lower_left_red_square, bbox(70,590,89,609)).
color(lower_left_red_square, maroon).
geometry(lower_left_red_square, rectangle(70,590,20,20)).
contained_in(lower_left_red_square, lower_left_control_panel).
z_order(lower_left_red_square, 11).
turtle_program(lower_left_red_square,
    [penup,
     set_pos(70,590),
     setcolor(maroon),
     pendown,
     fill_rect(20,20),
     penup]).

object(bottom_status_panel, interface_bar).
bbox(bottom_status_panel, bbox(120,600,639,639)).
colors(bottom_status_panel, [gray,green]).
geometry(bottom_status_panel,
    colored_union([
        gray-rectangle(120,600,520,40),
        green-rectangle(130,610,30,20)
    ])).
touches_canvas_edge(bottom_status_panel, right).
touches_canvas_edge(bottom_status_panel, bottom).
z_order(bottom_status_panel, 12).
turtle_program(bottom_status_panel,
    [penup,
     set_pos(120,600),
     setcolor(gray),
     pendown,
     fill_rect(520,40),
     penup,
     set_pos(130,610),
     setcolor(green),
     pendown,
     fill_rect(30,20),
     penup]).

object(bottom_dark_status_bar, bar).
bbox(bottom_dark_status_bar, bbox(160,610,549,629)).
color(bottom_dark_status_bar, dark_gray).
geometry(bottom_dark_status_bar, rectangle(160,610,390,20)).
contained_in(bottom_dark_status_bar, bottom_status_panel).
z_order(bottom_dark_status_bar, 13).
turtle_program(bottom_dark_status_bar,
    [penup,
     set_pos(160,610),
     setcolor(dark_gray),
     pendown,
     fill_rect(390,20),
     penup]).

object(left_cyan_status_cell, indicator).
bbox(left_cyan_status_cell, bbox(560,610,579,629)).
color(left_cyan_status_cell, cyan).
geometry(left_cyan_status_cell, rectangle(560,610,20,20)).
contained_in(left_cyan_status_cell, bottom_status_panel).
z_order(left_cyan_status_cell, 14).
turtle_program(left_cyan_status_cell,
    [penup,
     set_pos(560,610),
     setcolor(cyan),
     pendown,
     fill_rect(20,20),
     penup]).

object(middle_cyan_status_cell, indicator).
bbox(middle_cyan_status_cell, bbox(590,610,609,629)).
color(middle_cyan_status_cell, cyan).
geometry(middle_cyan_status_cell, rectangle(590,610,20,20)).
contained_in(middle_cyan_status_cell, bottom_status_panel).
z_order(middle_cyan_status_cell, 14).
turtle_program(middle_cyan_status_cell,
    [penup,
     set_pos(590,610),
     setcolor(cyan),
     pendown,
     fill_rect(20,20),
     penup]).

object(right_cyan_status_cell, indicator).
bbox(right_cyan_status_cell, bbox(620,610,639,629)).
color(right_cyan_status_cell, cyan).
geometry(right_cyan_status_cell, rectangle(620,610,20,20)).
contained_in(right_cyan_status_cell, bottom_status_panel).
touches_canvas_edge(right_cyan_status_cell, right).
z_order(right_cyan_status_cell, 14).
turtle_program(right_cyan_status_cell,
    [penup,
     set_pos(620,610),
     setcolor(cyan),
     pendown,
     fill_rect(20,20),
     penup]).

render_order([
    yellow_playfield,
    left_gray_border,
    green_upper_chamber_frame,
    green_chamber_stem,
    green_main_platform,
    yellow_inner_cavity,
    gray_upper_chamber_interior,
    upper_red_hook_glyph,
    upper_red_square,
    black_player_head,
    blue_player_tail,
    gray_gate_cap,
    red_gate_base,
    lower_left_control_panel,
    lower_left_red_hook_glyph,
    lower_left_red_square,
    bottom_status_panel,
    bottom_dark_status_bar,
    left_cyan_status_cell,
    middle_cyan_status_cell,
    right_cyan_status_cell
]).
