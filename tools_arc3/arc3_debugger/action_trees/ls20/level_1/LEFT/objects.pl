canvas(arc3_state, 64, 64).
render_scale(10).
coordinate_origin(top_left).
bbox_convention(inclusive).

palette(yellow, rgb(255,220,0)).
palette(green, rgb(46,204,64)).
palette(light_gray, rgb(170,170,170)).
palette(dark_gray, rgb(102,102,102)).
palette(maroon, rgb(135,12,45)).
palette(black, rgb(0,0,0)).
palette(blue, rgb(0,116,217)).
palette(light_blue, rgb(127,219,255)).

object(background_yellow).
type(background_yellow, background).
color(background_yellow, yellow).
geometry(background_yellow, filled_rectangle).
grid_bbox(background_yellow, 0, 0, 63, 63).
pixel_bbox(background_yellow, 0, 0, 639, 639).
layer(background_yellow, 0).
turtle_program(background_yellow,
    [penup, set_pos(0,0), setcolor(yellow), pendown,
     fill_rect(64,64), penup]).

object(left_wall).
type(left_wall, boundary).
color(left_wall, light_gray).
geometry(left_wall, filled_rectangle).
grid_bbox(left_wall, 0, 0, 3, 51).
pixel_bbox(left_wall, 0, 0, 39, 519).
layer(left_wall, 1).
touches_canvas_edge(left_wall, left).
touches_canvas_edge(left_wall, top).
turtle_program(left_wall,
    [penup, set_pos(0,0), setcolor(light_gray), pendown,
     fill_rect(4,52), penup]).

object(green_terrain).
type(green_terrain, connected_terrain).
color(green_terrain, green).
geometry(green_terrain, union_of_rectangles).
grid_bbox(green_terrain, 14, 8, 53, 49).
pixel_bbox(green_terrain, 140, 80, 539, 499).
component_rect(green_terrain, 32, 8, 9, 9).
component_rect(green_terrain, 34, 17, 5, 8).
component_rect(green_terrain, 14, 25, 40, 5).
component_rect(green_terrain, 14, 30, 15, 10).
component_rect(green_terrain, 34, 30, 20, 20).
component_rect(green_terrain, 19, 40, 5, 10).
component_rect(green_terrain, 24, 45, 5, 5).
layer(green_terrain, 2).
connected(green_terrain).
turtle_program(green_terrain,
    [penup, setcolor(green),
     set_pos(32,8), pendown, fill_rect(9,9), penup,
     set_pos(34,17), pendown, fill_rect(5,8), penup,
     set_pos(14,25), pendown, fill_rect(40,5), penup,
     set_pos(14,30), pendown, fill_rect(15,10), penup,
     set_pos(34,30), pendown, fill_rect(20,20), penup,
     set_pos(19,40), pendown, fill_rect(5,10), penup,
     set_pos(24,45), pendown, fill_rect(5,5), penup]).

object(top_panel).
type(top_panel, inset_panel).
color(top_panel, light_gray).
geometry(top_panel, filled_rectangle).
grid_bbox(top_panel, 33, 9, 39, 15).
pixel_bbox(top_panel, 330, 90, 399, 159).
layer(top_panel, 3).
contained_in(top_panel, green_terrain).
surrounded_by(top_panel, green_terrain).
adjacent(top_panel, green_terrain, left).
adjacent(top_panel, green_terrain, right).
adjacent(top_panel, green_terrain, top).
adjacent(top_panel, green_terrain, bottom).
turtle_program(top_panel,
    [penup, set_pos(33,9), setcolor(light_gray), pendown,
     fill_rect(7,7), penup]).

object(top_glyph).
type(top_glyph, symbol).
color(top_glyph, maroon).
geometry(top_glyph, union_of_rectangles).
grid_bbox(top_glyph, 35, 11, 37, 13).
pixel_bbox(top_glyph, 350, 110, 379, 139).
component_rect(top_glyph, 35, 11, 3, 1).
component_rect(top_glyph, 37, 12, 1, 2).
component_rect(top_glyph, 35, 13, 1, 1).
layer(top_glyph, 4).
contained_in(top_glyph, top_panel).
turtle_program(top_glyph,
    [penup, setcolor(maroon),
     set_pos(35,11), pendown, fill_rect(3,1), penup,
     set_pos(37,12), pendown, fill_rect(1,2), penup,
     set_pos(35,13), pendown, fill_rect(1,1), penup]).

object(player_blue).
type(player_blue, player_component).
color(player_blue, blue).
geometry(player_blue, two_cell_diagonal).
grid_bbox(player_blue, 20, 32, 21, 33).
pixel_bbox(player_blue, 200, 320, 219, 339).
cell(player_blue, 20, 32).
cell(player_blue, 21, 33).
layer(player_blue, 4).
contained_in(player_blue, green_terrain).
corner_adjacent(player_blue, 20, 32, 21, 33).
turtle_program(player_blue,
    [penup, setcolor(blue),
     set_pos(20,32), pendown, set_cell, penup,
     set_pos(21,33), pendown, set_cell, penup]).

object(player_black).
type(player_black, player_component).
color(player_black, black).
geometry(player_black, l_tromino).
grid_bbox(player_black, 21, 31, 22, 32).
pixel_bbox(player_black, 210, 310, 229, 329).
cell(player_black, 21, 31).
cell(player_black, 21, 32).
cell(player_black, 22, 32).
layer(player_black, 5).
contained_in(player_black, green_terrain).
edge_adjacent(player_black, 21, 31, 21, 32).
edge_adjacent(player_black, 21, 32, 22, 32).
adjacent(player_black, player_blue, left).
turtle_program(player_black,
    [penup, setcolor(black),
     set_pos(21,31), pendown, set_cell, penup,
     set_pos(21,32), pendown, fill_rect(2,1), penup]).

object(door_cap).
type(door_cap, portal_component).
color(door_cap, light_gray).
geometry(door_cap, filled_rectangle).
grid_bbox(door_cap, 29, 45, 33, 46).
pixel_bbox(door_cap, 290, 450, 339, 469).
layer(door_cap, 3).
adjacent(door_cap, green_terrain, left).
adjacent(door_cap, green_terrain, right).
adjacent(door_cap, door_body, bottom).
turtle_program(door_cap,
    [penup, set_pos(29,45), setcolor(light_gray), pendown,
     fill_rect(5,2), penup]).

object(door_body).
type(door_body, portal_component).
color(door_body, maroon).
geometry(door_body, filled_rectangle).
grid_bbox(door_body, 29, 47, 33, 49).
pixel_bbox(door_body, 290, 470, 339, 499).
layer(door_body, 3).
adjacent(door_body, door_cap, top).
adjacent(door_body, green_terrain, left).
adjacent(door_body, green_terrain, right).
adjacent(door_body, background_yellow, bottom).
turtle_program(door_body,
    [penup, set_pos(29,47), setcolor(maroon), pendown,
     fill_rect(5,3), penup]).

object(lower_icon_panel).
type(lower_icon_panel, inset_panel).
color(lower_icon_panel, light_gray).
geometry(lower_icon_panel, filled_rectangle).
grid_bbox(lower_icon_panel, 1, 53, 10, 62).
pixel_bbox(lower_icon_panel, 10, 530, 109, 629).
layer(lower_icon_panel, 2).
turtle_program(lower_icon_panel,
    [penup, set_pos(1,53), setcolor(light_gray), pendown,
     fill_rect(10,10), penup]).

object(lower_glyph).
type(lower_glyph, symbol).
color(lower_glyph, maroon).
geometry(lower_glyph, union_of_rectangles).
grid_bbox(lower_glyph, 3, 55, 8, 60).
pixel_bbox(lower_glyph, 30, 550, 89, 609).
component_rect(lower_glyph, 3, 55, 6, 2).
component_rect(lower_glyph, 3, 57, 2, 4).
component_rect(lower_glyph, 7, 59, 2, 2).
layer(lower_glyph, 3).
contained_in(lower_glyph, lower_icon_panel).
turtle_program(lower_glyph,
    [penup, setcolor(maroon),
     set_pos(3,55), pendown, fill_rect(6,2), penup,
     set_pos(3,57), pendown, fill_rect(2,4), penup,
     set_pos(7,59), pendown, fill_rect(2,2), penup]).

object(hud_panel).
type(hud_panel, user_interface_panel).
color(hud_panel, light_gray).
geometry(hud_panel, filled_rectangle).
grid_bbox(hud_panel, 12, 60, 63, 63).
pixel_bbox(hud_panel, 120, 600, 639, 639).
layer(hud_panel, 2).
touches_canvas_edge(hud_panel, right).
touches_canvas_edge(hud_panel, bottom).
turtle_program(hud_panel,
    [penup, set_pos(12,60), setcolor(light_gray), pendown,
     fill_rect(52,4), penup]).

object(hud_green_marker).
type(hud_green_marker, status_marker).
color(hud_green_marker, green).
geometry(hud_green_marker, filled_rectangle).
grid_bbox(hud_green_marker, 13, 61, 13, 62).
pixel_bbox(hud_green_marker, 130, 610, 139, 629).
layer(hud_green_marker, 3).
contained_in(hud_green_marker, hud_panel).
adjacent(hud_green_marker, hud_dark_bar, right).
turtle_program(hud_green_marker,
    [penup, set_pos(13,61), setcolor(green), pendown,
     fill_rect(1,2), penup]).

object(hud_dark_bar).
type(hud_dark_bar, status_bar).
color(hud_dark_bar, dark_gray).
geometry(hud_dark_bar, filled_rectangle).
grid_bbox(hud_dark_bar, 14, 61, 54, 62).
pixel_bbox(hud_dark_bar, 140, 610, 549, 629).
layer(hud_dark_bar, 3).
contained_in(hud_dark_bar, hud_panel).
adjacent(hud_dark_bar, hud_green_marker, left).
turtle_program(hud_dark_bar,
    [penup, set_pos(14,61), setcolor(dark_gray), pendown,
     fill_rect(41,2), penup]).

object(hud_blue_slot_1).
type(hud_blue_slot_1, status_slot).
color(hud_blue_slot_1, light_blue).
geometry(hud_blue_slot_1, filled_rectangle).
grid_bbox(hud_blue_slot_1, 56, 61, 57, 62).
pixel_bbox(hud_blue_slot_1, 560, 610, 579, 629).
layer(hud_blue_slot_1, 3).
contained_in(hud_blue_slot_1, hud_panel).
turtle_program(hud_blue_slot_1,
    [penup, set_pos(56,61), setcolor(light_blue), pendown,
     fill_rect(2,2), penup]).

object(hud_blue_slot_2).
type(hud_blue_slot_2, status_slot).
color(hud_blue_slot_2, light_blue).
geometry(hud_blue_slot_2, filled_rectangle).
grid_bbox(hud_blue_slot_2, 59, 61, 60, 62).
pixel_bbox(hud_blue_slot_2, 590, 610, 609, 629).
layer(hud_blue_slot_2, 3).
contained_in(hud_blue_slot_2, hud_panel).
turtle_program(hud_blue_slot_2,
    [penup, set_pos(59,61), setcolor(light_blue), pendown,
     fill_rect(2,2), penup]).

object(hud_blue_slot_3).
type(hud_blue_slot_3, status_slot).
color(hud_blue_slot_3, light_blue).
geometry(hud_blue_slot_3, filled_rectangle).
grid_bbox(hud_blue_slot_3, 62, 61, 63, 62).
pixel_bbox(hud_blue_slot_3, 620, 610, 639, 629).
layer(hud_blue_slot_3, 3).
contained_in(hud_blue_slot_3, hud_panel).
touches_canvas_edge(hud_blue_slot_3, right).
turtle_program(hud_blue_slot_3,
    [penup, set_pos(62,61), setcolor(light_blue), pendown,
     fill_rect(2,2), penup]).

aligned_horizontally(hud_green_marker, hud_dark_bar).
aligned_horizontally(hud_blue_slot_1, hud_blue_slot_2).
aligned_horizontally(hud_blue_slot_2, hud_blue_slot_3).
equal_size(hud_blue_slot_1, hud_blue_slot_2).
equal_size(hud_blue_slot_2, hud_blue_slot_3).
gap_between(hud_dark_bar, hud_blue_slot_1, 1).
gap_between(hud_blue_slot_1, hud_blue_slot_2, 1).
gap_between(hud_blue_slot_2, hud_blue_slot_3, 1).
above(top_panel, player_black).
above(player_black, door_cap).
above(door_cap, hud_panel).
left_of(lower_icon_panel, hud_panel).
