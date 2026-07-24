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

canvas(arc3_state, 640, 640).
render_scale(1).
coordinate_origin(top_left).
bbox_convention(inclusive).

palette(yellow, rgb(255,220,0)).
palette(green, rgb(46,204,64)).
palette(gray, rgb(170,170,170)).
palette(dark_gray, rgb(102,102,102)).
palette(maroon, rgb(133,20,75)).
palette(black, rgb(0,0,0)).
palette(blue, rgb(0,116,217)).
palette(cyan, rgb(127,219,255)).

object(yellow_playfield).
type(yellow_playfield, background).
color(yellow_playfield, yellow).
geometry(yellow_playfield, filled_rectangle).
bbox(yellow_playfield, bbox(0,0,639,639)).
layer(yellow_playfield, 0).
turtle_program(yellow_playfield,
    [penup,
     set_pos(0,0),
     setcolor(yellow),
     pendown,
     fill_rect(640,640),
     penup]).

object(left_gray_border).
type(left_gray_border, border).
color(left_gray_border, gray).
geometry(left_gray_border, filled_rectangle).
bbox(left_gray_border, bbox(0,0,39,519)).
orientation(left_gray_border, vertical).
touches_canvas_edge(left_gray_border, left).
touches_canvas_edge(left_gray_border, top).
layer(left_gray_border, 1).
turtle_program(left_gray_border,
    [penup,
     set_pos(0,0),
     setcolor(gray),
     pendown,
     fill_rect(40,520),
     penup]).

object(green_maze_structure).
type(green_maze_structure, compound_structure).
color(green_maze_structure, green).
geometry(green_maze_structure,
    union_of_rectangles([
        rectangle(320,80,90,90),
        rectangle(340,160,50,90),
        rectangle(140,250,400,50),
        rectangle(140,300,150,100),
        rectangle(340,300,200,100),
        rectangle(190,400,50,100),
        rectangle(340,400,200,100),
        rectangle(240,450,100,50)
    ])).
bbox(green_maze_structure, bbox(140,80,539,499)).
component(green_maze_structure, green_upper_chamber_frame).
component(green_maze_structure, green_chamber_stem).
component(green_maze_structure, green_main_platform).
component(green_maze_structure, yellow_inner_cavity).
component(green_maze_structure, bottom_center_gate).
connected(green_maze_structure).
layer(green_maze_structure, 2).
turtle_program(green_maze_structure,
    [penup,
     setcolor(green),
     set_pos(320,80), pendown, fill_rect(90,90), penup,
     set_pos(340,160), pendown, fill_rect(50,90), penup,
     set_pos(140,250), pendown, fill_rect(400,50), penup,
     set_pos(140,300), pendown, fill_rect(150,100), penup,
     set_pos(340,300), pendown, fill_rect(200,100), penup,
     set_pos(190,400), pendown, fill_rect(50,100), penup,
     set_pos(340,400), pendown, fill_rect(200,100), penup,
     set_pos(240,450), pendown, fill_rect(100,50), penup]).

object(green_upper_chamber_frame).
type(green_upper_chamber_frame, enclosure).
color(green_upper_chamber_frame, green).
geometry(green_upper_chamber_frame,
    rectangular_frame(rectangle(320,80,90,90), rectangle(330,90,70,70))).
bbox(green_upper_chamber_frame, bbox(320,80,409,169)).
part_of(green_upper_chamber_frame, green_maze_structure).
surrounds(green_upper_chamber_frame, gray_upper_chamber_interior).
layer(green_upper_chamber_frame, 2).

object(gray_upper_chamber_interior).
type(gray_upper_chamber_interior, chamber).
color(gray_upper_chamber_interior, gray).
geometry(gray_upper_chamber_interior, filled_rectangle).
bbox(gray_upper_chamber_interior, bbox(330,90,399,159)).
contained_in(gray_upper_chamber_interior, green_upper_chamber_frame).
layer(gray_upper_chamber_interior, 3).
turtle_program(gray_upper_chamber_interior,
    [penup,
     set_pos(330,90),
     setcolor(gray),
     pendown,
     fill_rect(70,70),
     penup]).

object(green_chamber_stem).
type(green_chamber_stem, vertical_bar).
color(green_chamber_stem, green).
geometry(green_chamber_stem, filled_rectangle).
bbox(green_chamber_stem, bbox(340,160,389,249)).
part_of(green_chamber_stem, green_maze_structure).
connects(green_chamber_stem, green_upper_chamber_frame, green_main_platform).
layer(green_chamber_stem, 2).

object(green_main_platform).
type(green_main_platform, platform).
color(green_main_platform, green).
geometry(green_main_platform,
    union_of_rectangles([
        rectangle(140,250,400,50),
        rectangle(140,300,150,100),
        rectangle(340,300,200,200),
        rectangle(190,400,50,100),
        rectangle(240,450,100,50)
    ])).
bbox(green_main_platform, bbox(140,250,539,499)).
part_of(green_main_platform, green_maze_structure).
contains(green_main_platform, blue_black_player).
contains(green_main_platform, yellow_inner_cavity).
contains(green_main_platform, bottom_center_gate).
layer(green_main_platform, 2).

object(yellow_inner_cavity).
type(yellow_inner_cavity, hole).
color(yellow_inner_cavity, yellow).
geometry(yellow_inner_cavity,
    union_of_rectangles([
        rectangle(290,300,50,100),
        rectangle(240,400,100,50)
    ])).
bbox(yellow_inner_cavity, bbox(240,300,339,449)).
contained_in(yellow_inner_cavity, green_maze_structure).
layer(yellow_inner_cavity, 1).

object(upper_red_hook_glyph).
type(upper_red_hook_glyph, glyph).
color(upper_red_hook_glyph, maroon).
geometry(upper_red_hook_glyph,
    union_of_rectangles([
        rectangle(350,110,30,10),
        rectangle(370,120,10,20)
    ])).
bbox(upper_red_hook_glyph, bbox(350,110,379,139)).
contained_in(upper_red_hook_glyph, gray_upper_chamber_interior).
layer(upper_red_hook_glyph, 4).
turtle_program(upper_red_hook_glyph,
    [penup,
     setcolor(maroon),
     set_pos(350,110), pendown, fill_rect(30,10), penup,
     set_pos(370,120), pendown, fill_rect(10,20), penup]).

object(upper_red_square).
type(upper_red_square, glyph_component).
color(upper_red_square, maroon).
geometry(upper_red_square, filled_rectangle).
bbox(upper_red_square, bbox(350,130,359,139)).
contained_in(upper_red_square, gray_upper_chamber_interior).
part_of(upper_red_square, upper_red_hook_glyph).
layer(upper_red_square, 4).
turtle_program(upper_red_square,
    [penup,
     set_pos(350,130),
     setcolor(maroon),
     pendown,
     fill_rect(10,10),
     penup]).

object(blue_black_player).
type(blue_black_player, player).
colors(blue_black_player, [black,blue]).
geometry(blue_black_player,
    colored_union([
        black-rectangle(210,310,10,20),
        black-rectangle(220,320,10,10),
        blue-rectangle(200,320,10,10),
        blue-rectangle(210,330,10,10)
    ])).
bbox(blue_black_player, bbox(200,310,229,339)).
component(blue_black_player, black_player_head).
component(blue_black_player, blue_player_tail).
contained_in(blue_black_player, green_main_platform).
orientation(blue_black_player, right).
layer(blue_black_player, 5).

object(black_player_head).
type(black_player_head, player_component).
color(black_player_head, black).
geometry(black_player_head,
    union_of_rectangles([
        rectangle(210,310,10,20),
        rectangle(220,320,10,10)
    ])).
bbox(black_player_head, bbox(210,310,229,329)).
part_of(black_player_head, blue_black_player).
layer(black_player_head, 5).
turtle_program(black_player_head,
    [penup,
     setcolor(black),
     set_pos(210,310), pendown, fill_rect(10,20), penup,
     set_pos(220,320), pendown, fill_rect(10,10), penup]).

object(blue_player_tail).
type(blue_player_tail, player_component).
color(blue_player_tail, blue).
geometry(blue_player_tail,
    union_of_rectangles([
        rectangle(200,320,10,10),
        rectangle(210,330,10,10)
    ])).
bbox(blue_player_tail, bbox(200,320,219,339)).
part_of(blue_player_tail, blue_black_player).
layer(blue_player_tail, 5).
turtle_program(blue_player_tail,
    [penup,
     setcolor(blue),
     set_pos(200,320), pendown, fill_rect(10,10), penup,
     set_pos(210,330), pendown, fill_rect(10,10), penup]).

object(bottom_center_gate).
type(bottom_center_gate, compound_block).
colors(bottom_center_gate, [gray,maroon]).
geometry(bottom_center_gate,
    colored_union([
        gray-rectangle(240,450,50,20),
        maroon-rectangle(240,470,50,30)
    ])).
bbox(bottom_center_gate, bbox(240,450,289,499)).
component(bottom_center_gate, gray_gate_cap).
component(bottom_center_gate, red_gate_base).
contained_in(bottom_center_gate, green_main_platform).
layer(bottom_center_gate, 6).

object(gray_gate_cap).
type(gray_gate_cap, rectangle).
color(gray_gate_cap, gray).
geometry(gray_gate_cap, filled_rectangle).
bbox(gray_gate_cap, bbox(240,450,289,469)).
part_of(gray_gate_cap, bottom_center_gate).
above(gray_gate_cap, red_gate_base).
layer(gray_gate_cap, 6).
turtle_program(gray_gate_cap,
    [penup,
     set_pos(240,450),
     setcolor(gray),
     pendown,
     fill_rect(50,20),
     penup]).

object(red_gate_base).
type(red_gate_base, rectangle).
color(red_gate_base, maroon).
geometry(red_gate_base, filled_rectangle).
bbox(red_gate_base, bbox(240,470,289,499)).
part_of(red_gate_base, bottom_center_gate).
below(red_gate_base, gray_gate_cap).
layer(red_gate_base, 7).
turtle_program(red_gate_base,
    [penup,
     set_pos(240,470),
     setcolor(maroon),
     pendown,
     fill_rect(50,30),
     penup]).

object(lower_left_control_panel).
type(lower_left_control_panel, panel).
color(lower_left_control_panel, gray).
geometry(lower_left_control_panel, filled_rectangle).
bbox(lower_left_control_panel, bbox(10,530,109,629)).
layer(lower_left_control_panel, 8).
turtle_program(lower_left_control_panel,
    [penup,
     set_pos(10,530),
     setcolor(gray),
     pendown,
     fill_rect(100,100),
     penup]).

object(lower_left_red_hook_glyph).
type(lower_left_red_hook_glyph, glyph).
color(lower_left_red_hook_glyph, maroon).
geometry(lower_left_red_hook_glyph,
    union_of_rectangles([
        rectangle(30,550,60,20),
        rectangle(30,570,20,40)
    ])).
bbox(lower_left_red_hook_glyph, bbox(30,550,89,609)).
contained_in(lower_left_red_hook_glyph, lower_left_control_panel).
layer(lower_left_red_hook_glyph, 9).
turtle_program(lower_left_red_hook_glyph,
    [penup,
     setcolor(maroon),
     set_pos(30,550), pendown, fill_rect(60,20), penup,
     set_pos(30,570), pendown, fill_rect(20,40), penup]).

object(lower_left_red_square).
type(lower_left_red_square, glyph_component).
color(lower_left_red_square, maroon).
geometry(lower_left_red_square, filled_rectangle).
bbox(lower_left_red_square, bbox(70,590,89,609)).
contained_in(lower_left_red_square, lower_left_control_panel).
part_of(lower_left_red_square, lower_left_red_hook_glyph).
layer(lower_left_red_square, 9).
turtle_program(lower_left_red_square,
    [penup,
     set_pos(70,590),
     setcolor(maroon),
     pendown,
     fill_rect(20,20),
     penup]).

object(bottom_status_panel).
type(bottom_status_panel, interface_bar).
colors(bottom_status_panel, [gray,green]).
geometry(bottom_status_panel,
    colored_union([
        gray-rectangle(120,600,520,40),
        green-rectangle(130,610,20,20)
    ])).
bbox(bottom_status_panel, bbox(120,600,639,639)).
touches_canvas_edge(bottom_status_panel, right).
touches_canvas_edge(bottom_status_panel, bottom).
layer(bottom_status_panel, 10).
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
     fill_rect(20,20),
     penup]).

object(bottom_dark_status_bar).
type(bottom_dark_status_bar, bar).
color(bottom_dark_status_bar, dark_gray).
geometry(bottom_dark_status_bar, filled_rectangle).
bbox(bottom_dark_status_bar, bbox(150,610,549,629)).
contained_in(bottom_dark_status_bar, bottom_status_panel).
layer(bottom_dark_status_bar, 11).
turtle_program(bottom_dark_status_bar,
    [penup,
     set_pos(150,610),
     setcolor(dark_gray),
     pendown,
     fill_rect(400,20),
     penup]).

object(left_cyan_status_cell).
type(left_cyan_status_cell, indicator).
color(left_cyan_status_cell, cyan).
geometry(left_cyan_status_cell, filled_rectangle).
bbox(left_cyan_status_cell, bbox(560,610,579,629)).
contained_in(left_cyan_status_cell, bottom_status_panel).
layer(left_cyan_status_cell, 12).
turtle_program(left_cyan_status_cell,
    [penup,
     set_pos(560,610),
     setcolor(cyan),
     pendown,
     fill_rect(20,20),
     penup]).

object(middle_cyan_status_cell).
type(middle_cyan_status_cell, indicator).
color(middle_cyan_status_cell, cyan).
geometry(middle_cyan_status_cell, filled_rectangle).
bbox(middle_cyan_status_cell, bbox(590,610,609,629)).
contained_in(middle_cyan_status_cell, bottom_status_panel).
layer(middle_cyan_status_cell, 12).
turtle_program(middle_cyan_status_cell,
    [penup,
     set_pos(590,610),
     setcolor(cyan),
     pendown,
     fill_rect(20,20),
     penup]).

object(right_cyan_status_cell).
type(right_cyan_status_cell, indicator).
color(right_cyan_status_cell, cyan).
geometry(right_cyan_status_cell, filled_rectangle).
bbox(right_cyan_status_cell, bbox(620,610,639,629)).
contained_in(right_cyan_status_cell, bottom_status_panel).
touches_canvas_edge(right_cyan_status_cell, right).
layer(right_cyan_status_cell, 12).
turtle_program(right_cyan_status_cell,
    [penup,
     set_pos(620,610),
     setcolor(cyan),
     pendown,
     fill_rect(20,20),
     penup]).

aligned_horizontally(left_cyan_status_cell, middle_cyan_status_cell).
aligned_horizontally(middle_cyan_status_cell, right_cyan_status_cell).
equal_size(left_cyan_status_cell, middle_cyan_status_cell).
equal_size(middle_cyan_status_cell, right_cyan_status_cell).
gap_between(bottom_dark_status_bar, left_cyan_status_cell, 10).
gap_between(left_cyan_status_cell, middle_cyan_status_cell, 10).
gap_between(middle_cyan_status_cell, right_cyan_status_cell, 10).
left_of(lower_left_control_panel, bottom_status_panel).
above(green_upper_chamber_frame, blue_black_player).
above(blue_black_player, bottom_center_gate).
above(bottom_center_gate, bottom_status_panel).
