canvas(arc3_state, 640, 640).
coordinate_system(origin_top_left, x_right, y_down).
cell_size(10, 10).

color(yellow, 255, 220, 0, '#ffdc00').
color(silver, 170, 170, 170, '#aaaaaa').
color(green, 46, 204, 64, '#2ecc40').
color(maroon, 133, 20, 75, '#85144b').
color(blue, 0, 116, 217, '#0074d9').
color(black, 0, 0, 0, '#000000').
color(dark_gray, 102, 102, 102, '#666666').
color(light_blue, 127, 219, 255, '#7fdbff').

object(background, background).
bbox(background, 0, 0, 639, 639).
geometry(background, rectangle).
dimensions(background, 640, 640).
uniform_color(background, yellow).
z_index(background, 0).
contains(arc3_state, background).
turtle_program(background,
    [penup, setcolor(yellow), set_pos(0,0), fill_rect(640,640)]).

object(left_wall, wall).
bbox(left_wall, 0, 0, 39, 519).
geometry(left_wall, rectangle).
dimensions(left_wall, 40, 520).
uniform_color(left_wall, silver).
z_index(left_wall, 1).
contains(arc3_state, left_wall).
touches_canvas_edge(left_wall, left).
touches_canvas_edge(left_wall, top).
turtle_program(left_wall,
    [penup, setcolor(silver), set_pos(0,0), fill_rect(40,520)]).

object(green_terrain, terrain).
bbox(green_terrain, 140, 80, 539, 499).
geometry(green_terrain, connected_orthogonal_region).
uniform_color(green_terrain, green).
connected(green_terrain).
z_index(green_terrain, 1).
contains(arc3_state, green_terrain).
region(green_terrain, 320, 80, 90, 90).
region(green_terrain, 340, 170, 50, 80).
region(green_terrain, 140, 250, 400, 50).
region(green_terrain, 140, 300, 150, 100).
region(green_terrain, 340, 300, 200, 150).
region(green_terrain, 190, 400, 50, 100).
region(green_terrain, 240, 450, 300, 50).
turtle_program(green_terrain,
    [penup, setcolor(green),
     set_pos(320,80), fill_rect(90,90),
     set_pos(340,170), fill_rect(50,80),
     set_pos(140,250), fill_rect(400,50),
     set_pos(140,300), fill_rect(150,100),
     set_pos(340,300), fill_rect(200,150),
     set_pos(190,400), fill_rect(50,100),
     set_pos(240,450), fill_rect(300,50)]).

object(top_portal_tile, portal_tile).
bbox(top_portal_tile, 330, 90, 399, 159).
geometry(top_portal_tile, rectangle).
dimensions(top_portal_tile, 70, 70).
uniform_color(top_portal_tile, silver).
z_index(top_portal_tile, 2).
contains(arc3_state, top_portal_tile).
contained_in(top_portal_tile, green_terrain).
bordered_by(top_portal_tile, green_terrain, 10).
turtle_program(top_portal_tile,
    [penup, setcolor(silver), set_pos(330,90), fill_rect(70,70)]).

object(top_portal_glyph, glyph).
bbox(top_portal_glyph, 350, 110, 379, 139).
geometry(top_portal_glyph, disconnected_orthogonal_glyph).
uniform_color(top_portal_glyph, maroon).
component_count(top_portal_glyph, 2).
z_index(top_portal_glyph, 3).
contains(top_portal_tile, top_portal_glyph).
region(top_portal_glyph, 350, 110, 30, 10).
region(top_portal_glyph, 370, 120, 10, 20).
region(top_portal_glyph, 350, 130, 10, 10).
turtle_program(top_portal_glyph,
    [penup, setcolor(maroon),
     set_pos(350,110), fill_rect(30,10),
     set_pos(370,120), fill_rect(10,20),
     set_pos(350,130), fill_rect(10,10)]).

object(center_console, console).
bbox(center_console, 190, 250, 239, 299).
geometry(center_console, stacked_rectangles).
dimensions(center_console, 50, 50).
z_index(center_console, 2).
contains(arc3_state, center_console).
overlaid_on(center_console, green_terrain).
region(center_console, 190, 250, 50, 20, silver).
region(center_console, 190, 270, 50, 30, maroon).
turtle_program(center_console,
    [penup,
     setcolor(silver), set_pos(190,250), fill_rect(50,20),
     setcolor(maroon), set_pos(190,270), fill_rect(50,30)]).

object(center_console_cap, console_part).
bbox(center_console_cap, 190, 250, 239, 269).
geometry(center_console_cap, rectangle).
dimensions(center_console_cap, 50, 20).
uniform_color(center_console_cap, silver).
z_index(center_console_cap, 2).
contains(center_console, center_console_cap).
adjacent(center_console_cap, center_console_body, below).
turtle_program(center_console_cap,
    [penup, setcolor(silver), set_pos(190,250), fill_rect(50,20)]).

object(center_console_body, console_part).
bbox(center_console_body, 190, 270, 239, 299).
geometry(center_console_body, rectangle).
dimensions(center_console_body, 50, 30).
uniform_color(center_console_body, maroon).
z_index(center_console_body, 2).
contains(center_console, center_console_body).
adjacent(center_console_body, center_console_cap, above).
adjacent(center_console_body, green_terrain, left_right_and_below).
turtle_program(center_console_body,
    [penup, setcolor(maroon), set_pos(190,270), fill_rect(50,30)]).

object(player, avatar).
bbox(player, 200, 310, 229, 339).
geometry(player, asymmetric_composite_sprite).
dimensions(player, 30, 30).
z_index(player, 3).
contains(arc3_state, player).
overlaid_on(player, green_terrain).
below(player, center_console).
horizontal_gap(player, center_console, 10).
region(player, 200, 310, 20, 20, blue).
region(player, 210, 320, 20, 10, black).
region(player, 210, 330, 10, 10, blue).
turtle_program(player,
    [penup,
     setcolor(blue), set_pos(200,310), fill_rect(20,20),
     setcolor(black), set_pos(210,320), fill_rect(20,10),
     setcolor(blue), set_pos(210,330), fill_rect(10,10)]).

object(player_blue_body, avatar_part).
bbox(player_blue_body, 200, 310, 219, 339).
geometry(player_blue_body, bent_vertical_region).
uniform_color(player_blue_body, blue).
z_index(player_blue_body, 3).
contains(player, player_blue_body).
region(player_blue_body, 200, 310, 20, 20).
region(player_blue_body, 210, 330, 10, 10).
turtle_program(player_blue_body,
    [penup, setcolor(blue),
     set_pos(200,310), fill_rect(20,20),
     set_pos(210,330), fill_rect(10,10)]).

object(player_black_arm, avatar_part).
bbox(player_black_arm, 210, 320, 229, 329).
geometry(player_black_arm, rectangle).
dimensions(player_black_arm, 20, 10).
uniform_color(player_black_arm, black).
z_index(player_black_arm, 4).
contains(player, player_black_arm).
overlaps(player_black_arm, player_blue_body).
turtle_program(player_black_arm,
    [penup, setcolor(black), set_pos(210,320), fill_rect(20,10)]).

object(bottom_left_portal_tile, portal_tile).
bbox(bottom_left_portal_tile, 10, 530, 109, 629).
geometry(bottom_left_portal_tile, rectangle).
dimensions(bottom_left_portal_tile, 100, 100).
uniform_color(bottom_left_portal_tile, silver).
z_index(bottom_left_portal_tile, 1).
contains(arc3_state, bottom_left_portal_tile).
turtle_program(bottom_left_portal_tile,
    [penup, setcolor(silver), set_pos(10,530), fill_rect(100,100)]).

object(bottom_left_portal_glyph, glyph).
bbox(bottom_left_portal_glyph, 30, 550, 89, 609).
geometry(bottom_left_portal_glyph, disconnected_orthogonal_glyph).
uniform_color(bottom_left_portal_glyph, maroon).
component_count(bottom_left_portal_glyph, 2).
z_index(bottom_left_portal_glyph, 2).
contains(bottom_left_portal_tile, bottom_left_portal_glyph).
region(bottom_left_portal_glyph, 30, 550, 60, 20).
region(bottom_left_portal_glyph, 70, 570, 20, 40).
region(bottom_left_portal_glyph, 30, 590, 20, 20).
turtle_program(bottom_left_portal_glyph,
    [penup, setcolor(maroon),
     set_pos(30,550), fill_rect(60,20),
     set_pos(70,570), fill_rect(20,40),
     set_pos(30,590), fill_rect(20,20)]).

object(status_bar_frame, interface_panel).
bbox(status_bar_frame, 120, 600, 639, 639).
geometry(status_bar_frame, rectangle).
dimensions(status_bar_frame, 520, 40).
uniform_color(status_bar_frame, silver).
z_index(status_bar_frame, 1).
contains(arc3_state, status_bar_frame).
touches_canvas_edge(status_bar_frame, right).
touches_canvas_edge(status_bar_frame, bottom).
turtle_program(status_bar_frame,
    [penup, setcolor(silver), set_pos(120,600), fill_rect(520,40)]).

object(status_green_segment, status_segment).
bbox(status_green_segment, 130, 610, 199, 629).
geometry(status_green_segment, rectangle).
dimensions(status_green_segment, 70, 20).
uniform_color(status_green_segment, green).
z_index(status_green_segment, 2).
contains(status_bar_frame, status_green_segment).
adjacent(status_green_segment, status_dark_segment, right).
turtle_program(status_green_segment,
    [penup, setcolor(green), set_pos(130,610), fill_rect(70,20)]).

object(status_dark_segment, status_segment).
bbox(status_dark_segment, 200, 610, 549, 629).
geometry(status_dark_segment, rectangle).
dimensions(status_dark_segment, 350, 20).
uniform_color(status_dark_segment, dark_gray).
z_index(status_dark_segment, 2).
contains(status_bar_frame, status_dark_segment).
adjacent(status_dark_segment, status_green_segment, left).
turtle_program(status_dark_segment,
    [penup, setcolor(dark_gray), set_pos(200,610), fill_rect(350,20)]).

object(status_blue_segment_1, status_segment).
bbox(status_blue_segment_1, 560, 610, 579, 629).
geometry(status_blue_segment_1, rectangle).
dimensions(status_blue_segment_1, 20, 20).
uniform_color(status_blue_segment_1, light_blue).
z_index(status_blue_segment_1, 2).
contains(status_bar_frame, status_blue_segment_1).
horizontal_gap(status_blue_segment_1, status_dark_segment, 10).
turtle_program(status_blue_segment_1,
    [penup, setcolor(light_blue), set_pos(560,610), fill_rect(20,20)]).

object(status_blue_segment_2, status_segment).
bbox(status_blue_segment_2, 590, 610, 609, 629).
geometry(status_blue_segment_2, rectangle).
dimensions(status_blue_segment_2, 20, 20).
uniform_color(status_blue_segment_2, light_blue).
z_index(status_blue_segment_2, 2).
contains(status_bar_frame, status_blue_segment_2).
horizontal_gap(status_blue_segment_2, status_blue_segment_1, 10).
turtle_program(status_blue_segment_2,
    [penup, setcolor(light_blue), set_pos(590,610), fill_rect(20,20)]).

object(status_blue_segment_3, status_segment).
bbox(status_blue_segment_3, 620, 610, 639, 629).
geometry(status_blue_segment_3, rectangle).
dimensions(status_blue_segment_3, 20, 20).
uniform_color(status_blue_segment_3, light_blue).
z_index(status_blue_segment_3, 2).
contains(status_bar_frame, status_blue_segment_3).
horizontal_gap(status_blue_segment_3, status_blue_segment_2, 10).
touches_canvas_edge(status_blue_segment_3, right).
turtle_program(status_blue_segment_3,
    [penup, setcolor(light_blue), set_pos(620,610), fill_rect(20,20)]).

left_of(left_wall, green_terrain).
above(green_terrain, status_bar_frame).
above(green_terrain, bottom_left_portal_tile).
left_of(bottom_left_portal_tile, status_bar_frame).
aligned_to_grid(left_wall, 10).
aligned_to_grid(green_terrain, 10).
aligned_to_grid(top_portal_tile, 10).
aligned_to_grid(top_portal_glyph, 10).
aligned_to_grid(center_console, 10).
aligned_to_grid(player, 10).
aligned_to_grid(bottom_left_portal_tile, 10).
aligned_to_grid(bottom_left_portal_glyph, 10).
aligned_to_grid(status_bar_frame, 10).

render_order([
    background,
    left_wall,
    green_terrain,
    top_portal_tile,
    top_portal_glyph,
    center_console,
    player,
    bottom_left_portal_tile,
    bottom_left_portal_glyph,
    status_bar_frame,
    status_green_segment,
    status_dark_segment,
    status_blue_segment_1,
    status_blue_segment_2,
    status_blue_segment_3
]).
