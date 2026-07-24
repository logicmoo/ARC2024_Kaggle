canvas_size(640, 640).
coordinate_system(origin_top_left, x_right, y_down).
cell_extent_rule(inclusive_pixel_bounds).
layer_order([background_yellow, left_rail, main_green, top_panel_gray, top_glyph, body_panel_gray, body_indicator, control_panel, control_glyph, status_panel, meter_green, meter_dark, slot_blue_1, slot_blue_2, slot_blue_3]).

palette(yellow, rgb(255, 220, 0)).
palette(green, rgb(45, 204, 62)).
palette(gray, rgb(170, 170, 170)).
palette(dark_gray, rgb(102, 102, 102)).
palette(maroon, rgb(153, 9, 40)).
palette(light_blue, rgb(135, 206, 235)).

object(background_yellow).
bbox(background_yellow, 0, 0, 639, 639).
color(background_yellow, yellow).
geometry(background_yellow, filled_rectangle(0, 0, 640, 640)).
role(background_yellow, background).
turtle_program(background_yellow, [penup, set_pos(0, 0), setcolor(yellow), set_cell(640, 640)]).

object(left_rail).
bbox(left_rail, 0, 0, 39, 519).
color(left_rail, gray).
geometry(left_rail, filled_rectangle(0, 0, 40, 520)).
role(left_rail, boundary_strip).
turtle_program(left_rail, [penup, set_pos(0, 0), setcolor(gray), set_cell(40, 520)]).

object(main_green).
bbox(main_green, 140, 80, 539, 499).
color(main_green, green).
geometry(main_green, union([
    filled_rectangle(320, 80, 90, 90),
    filled_rectangle(340, 170, 50, 80),
    filled_rectangle(140, 250, 400, 50),
    filled_rectangle(140, 300, 150, 100),
    filled_rectangle(340, 300, 200, 150),
    filled_rectangle(190, 400, 50, 50),
    filled_rectangle(190, 450, 350, 50)
])).
geometry(main_green, connected_component_count(1)).
geometry(main_green, orthogonal).
geometry(main_green, interior_hole([
    point(290, 300),
    point(340, 300),
    point(340, 450),
    point(240, 450),
    point(240, 400),
    point(290, 400)
])).
role(main_green, main_structure).
turtle_program(main_green, [
    penup, setcolor(green),
    set_pos(320, 80), set_cell(90, 90),
    set_pos(340, 170), set_cell(50, 80),
    set_pos(140, 250), set_cell(400, 50),
    set_pos(140, 300), set_cell(150, 100),
    set_pos(340, 300), set_cell(200, 150),
    set_pos(190, 400), set_cell(50, 50),
    set_pos(190, 450), set_cell(350, 50)
]).

object(top_panel_gray).
bbox(top_panel_gray, 330, 90, 399, 159).
color(top_panel_gray, gray).
geometry(top_panel_gray, filled_rectangle(330, 90, 70, 70)).
role(top_panel_gray, inset_panel).
contained_in(top_panel_gray, main_green).
surrounded_by(top_panel_gray, main_green).
adjacent(top_panel_gray, main_green, all_four_sides).
turtle_program(top_panel_gray, [penup, set_pos(330, 90), setcolor(gray), set_cell(70, 70)]).

object(top_glyph).
bbox(top_glyph, 350, 110, 379, 139).
color(top_glyph, maroon).
geometry(top_glyph, union([
    filled_rectangle(350, 110, 30, 10),
    filled_rectangle(370, 110, 10, 30),
    filled_rectangle(350, 130, 10, 10)
])).
geometry(top_glyph, connected_component_count(2)).
role(top_glyph, symbol).
contained_in(top_glyph, top_panel_gray).
turtle_program(top_glyph, [
    penup, setcolor(maroon),
    set_pos(350, 110), set_cell(30, 10),
    set_pos(370, 110), set_cell(10, 30),
    set_pos(350, 130), set_cell(10, 10)
]).

object(body_panel_gray).
bbox(body_panel_gray, 190, 300, 239, 349).
color(body_panel_gray, gray).
geometry(body_panel_gray, filled_rectangle(190, 300, 50, 50)).
visible_geometry(body_panel_gray, filled_rectangle(190, 300, 50, 20)).
role(body_panel_gray, inset_panel).
contained_in(body_panel_gray, main_green).
surrounded_by(body_panel_gray, main_green).
partially_occluded_by(body_panel_gray, body_indicator).
turtle_program(body_panel_gray, [penup, set_pos(190, 300), setcolor(gray), set_cell(50, 50)]).

object(body_indicator).
bbox(body_indicator, 190, 320, 239, 349).
color(body_indicator, maroon).
geometry(body_indicator, filled_rectangle(190, 320, 50, 30)).
role(body_indicator, filled_indicator).
contained_in(body_indicator, body_panel_gray).
overlays(body_indicator, body_panel_gray).
adjacent(body_indicator, main_green, left_right_bottom).
turtle_program(body_indicator, [penup, set_pos(190, 320), setcolor(maroon), set_cell(50, 30)]).

object(control_panel).
bbox(control_panel, 10, 530, 109, 629).
color(control_panel, gray).
geometry(control_panel, filled_rectangle(10, 530, 100, 100)).
role(control_panel, control_tile).
turtle_program(control_panel, [penup, set_pos(10, 530), setcolor(gray), set_cell(100, 100)]).

object(control_glyph).
bbox(control_glyph, 30, 550, 89, 609).
color(control_glyph, maroon).
geometry(control_glyph, union([
    filled_rectangle(30, 550, 60, 20),
    filled_rectangle(70, 550, 20, 60),
    filled_rectangle(30, 590, 20, 20)
])).
geometry(control_glyph, connected_component_count(2)).
role(control_glyph, symbol).
contained_in(control_glyph, control_panel).
turtle_program(control_glyph, [
    penup, setcolor(maroon),
    set_pos(30, 550), set_cell(60, 20),
    set_pos(70, 550), set_cell(20, 60),
    set_pos(30, 590), set_cell(20, 20)
]).

object(status_panel).
bbox(status_panel, 120, 600, 639, 639).
color(status_panel, gray).
geometry(status_panel, filled_rectangle(120, 600, 520, 40)).
role(status_panel, status_bar).
touches_canvas_edge(status_panel, right).
touches_canvas_edge(status_panel, bottom).
turtle_program(status_panel, [penup, set_pos(120, 600), setcolor(gray), set_cell(520, 40)]).

object(meter_green).
bbox(meter_green, 130, 610, 189, 629).
color(meter_green, green).
geometry(meter_green, filled_rectangle(130, 610, 60, 20)).
role(meter_green, status_segment).
contained_in(meter_green, status_panel).
overlays(meter_green, status_panel).
turtle_program(meter_green, [penup, set_pos(130, 610), setcolor(green), set_cell(60, 20)]).

object(meter_dark).
bbox(meter_dark, 190, 610, 549, 629).
color(meter_dark, dark_gray).
geometry(meter_dark, filled_rectangle(190, 610, 360, 20)).
role(meter_dark, status_segment).
contained_in(meter_dark, status_panel).
overlays(meter_dark, status_panel).
adjacent(meter_green, meter_dark, right_left_edge).
turtle_program(meter_dark, [penup, set_pos(190, 610), setcolor(dark_gray), set_cell(360, 20)]).

object(slot_blue_1).
bbox(slot_blue_1, 560, 610, 579, 629).
color(slot_blue_1, light_blue).
geometry(slot_blue_1, filled_rectangle(560, 610, 20, 20)).
role(slot_blue_1, status_slot).
contained_in(slot_blue_1, status_panel).
overlays(slot_blue_1, status_panel).
turtle_program(slot_blue_1, [penup, set_pos(560, 610), setcolor(light_blue), set_cell(20, 20)]).

object(slot_blue_2).
bbox(slot_blue_2, 590, 610, 609, 629).
color(slot_blue_2, light_blue).
geometry(slot_blue_2, filled_rectangle(590, 610, 20, 20)).
role(slot_blue_2, status_slot).
contained_in(slot_blue_2, status_panel).
overlays(slot_blue_2, status_panel).
turtle_program(slot_blue_2, [penup, set_pos(590, 610), setcolor(light_blue), set_cell(20, 20)]).

object(slot_blue_3).
bbox(slot_blue_3, 620, 610, 639, 629).
color(slot_blue_3, light_blue).
geometry(slot_blue_3, filled_rectangle(620, 610, 20, 20)).
role(slot_blue_3, status_slot).
contained_in(slot_blue_3, status_panel).
overlays(slot_blue_3, status_panel).
touches_canvas_edge(slot_blue_3, right).
turtle_program(slot_blue_3, [penup, set_pos(620, 610), setcolor(light_blue), set_cell(20, 20)]).

gap(meter_dark, slot_blue_1, 10, gray).
gap(slot_blue_1, slot_blue_2, 10, gray).
gap(slot_blue_2, slot_blue_3, 10, gray).
aligned_horizontal([meter_green, meter_dark, slot_blue_1, slot_blue_2, slot_blue_3], 610, 629).
aligned_grid(main_green, 10).
aligned_grid(top_panel_gray, 10).
aligned_grid(control_panel, 10).
aligned_grid(status_panel, 10).
