image_size(640, 640).
coordinate_system(pixel, origin_top_left, x_right, y_down).
bbox_format(inclusive_xyxy).
cell_size(10).

color(yellow, 255, 220, 0).
color(green, 46, 204, 64).
color(gray, 170, 170, 170).
color(dark_gray, 102, 102, 102).
color(maroon, 133, 20, 75).
color(blue, 0, 116, 217).
color(light_blue, 127, 219, 255).
color(black, 0, 0, 0).

draw_order([
    background,
    left_sidebar,
    main_structure,
    upper_display,
    upper_glyph,
    lower_barrier_gray,
    lower_barrier_maroon,
    avatar,
    lower_icon_panel,
    lower_icon_glyph,
    status_panel,
    status_green,
    status_dark,
    status_light_1,
    status_light_2,
    status_light_3
]).

object(background, background).
bbox(background, 0, 0, 639, 639).
object_color(background, yellow).
geometry(background, rectangle).
rect(background, 0, 0, 640, 640).
turtle_program(background, [
    penup,
    set_pos(0, 0),
    setcolor(yellow),
    fill_rect(640, 640)
]).

object(left_sidebar, sidebar).
bbox(left_sidebar, 0, 0, 39, 519).
object_color(left_sidebar, gray).
geometry(left_sidebar, rectangle).
rect(left_sidebar, 0, 0, 40, 520).
touches_image_edge(left_sidebar, left).
touches_image_edge(left_sidebar, top).
turtle_program(left_sidebar, [
    penup,
    set_pos(0, 0),
    setcolor(gray),
    fill_rect(40, 520)
]).

object(main_structure, connected_orthogonal_shape).
bbox(main_structure, 140, 80, 539, 499).
object_color(main_structure, green).
geometry(main_structure, union_of_rectangles).
rect(main_structure, 320, 80, 90, 90).
rect(main_structure, 340, 170, 50, 80).
rect(main_structure, 140, 250, 400, 50).
rect(main_structure, 140, 300, 150, 100).
rect(main_structure, 340, 300, 200, 150).
rect(main_structure, 190, 450, 350, 50).
connected(main_structure).
orthogonal(main_structure).
turtle_program(main_structure, [
    penup,
    setcolor(green),
    set_pos(320, 80),
    fill_rect(90, 90),
    set_pos(340, 170),
    fill_rect(50, 80),
    set_pos(140, 250),
    fill_rect(400, 50),
    set_pos(140, 300),
    fill_rect(150, 100),
    set_pos(340, 300),
    fill_rect(200, 150),
    set_pos(190, 450),
    fill_rect(350, 50)
]).

object(upper_display, inset_panel).
bbox(upper_display, 330, 90, 399, 159).
object_color(upper_display, gray).
geometry(upper_display, rectangle).
rect(upper_display, 330, 90, 70, 70).
contained_in(upper_display, main_structure).
surrounded_by(upper_display, main_structure).
turtle_program(upper_display, [
    penup,
    set_pos(330, 90),
    setcolor(gray),
    fill_rect(70, 70)
]).

object(upper_glyph, glyph).
bbox(upper_glyph, 350, 110, 379, 139).
object_color(upper_glyph, maroon).
geometry(upper_glyph, cell_union).
rect(upper_glyph, 350, 110, 30, 10).
rect(upper_glyph, 370, 120, 10, 20).
rect(upper_glyph, 350, 130, 10, 10).
contained_in(upper_glyph, upper_display).
turtle_program(upper_glyph, [
    penup,
    setcolor(maroon),
    set_pos(350, 110),
    fill_rect(30, 10),
    set_pos(370, 120),
    fill_rect(10, 20),
    set_pos(350, 130),
    fill_rect(10, 10)
]).

object(avatar, multicolor_sprite).
bbox(avatar, 200, 310, 229, 339).
geometry(avatar, cell_sprite).
sprite_cell(avatar, 21, 31, black).
sprite_cell(avatar, 20, 32, blue).
sprite_cell(avatar, 21, 32, black).
sprite_cell(avatar, 22, 32, black).
sprite_cell(avatar, 21, 33, blue).
rect(avatar, 210, 310, 10, 10, black).
rect(avatar, 200, 320, 10, 10, blue).
rect(avatar, 210, 320, 20, 10, black).
rect(avatar, 210, 330, 10, 10, blue).
contained_in(avatar, main_structure).
turtle_program(avatar, [
    penup,
    setcolor(black),
    set_pos(210, 310),
    fill_rect(10, 10),
    setcolor(blue),
    set_pos(200, 320),
    fill_rect(10, 10),
    setcolor(black),
    set_pos(210, 320),
    fill_rect(20, 10),
    setcolor(blue),
    set_pos(210, 330),
    fill_rect(10, 10)
]).

object(lower_barrier_gray, barrier_segment).
bbox(lower_barrier_gray, 190, 400, 239, 419).
object_color(lower_barrier_gray, gray).
geometry(lower_barrier_gray, rectangle).
rect(lower_barrier_gray, 190, 400, 50, 20).
adjacent(lower_barrier_gray, main_structure, north).
adjacent(lower_barrier_gray, lower_barrier_maroon, south).
turtle_program(lower_barrier_gray, [
    penup,
    set_pos(190, 400),
    setcolor(gray),
    fill_rect(50, 20)
]).

object(lower_barrier_maroon, barrier_segment).
bbox(lower_barrier_maroon, 190, 420, 239, 449).
object_color(lower_barrier_maroon, maroon).
geometry(lower_barrier_maroon, rectangle).
rect(lower_barrier_maroon, 190, 420, 50, 30).
adjacent(lower_barrier_maroon, lower_barrier_gray, north).
adjacent(lower_barrier_maroon, main_structure, south).
turtle_program(lower_barrier_maroon, [
    penup,
    set_pos(190, 420),
    setcolor(maroon),
    fill_rect(50, 30)
]).

object(lower_icon_panel, panel).
bbox(lower_icon_panel, 10, 530, 109, 629).
object_color(lower_icon_panel, gray).
geometry(lower_icon_panel, rectangle).
rect(lower_icon_panel, 10, 530, 100, 100).
turtle_program(lower_icon_panel, [
    penup,
    set_pos(10, 530),
    setcolor(gray),
    fill_rect(100, 100)
]).

object(lower_icon_glyph, glyph).
bbox(lower_icon_glyph, 30, 550, 89, 609).
object_color(lower_icon_glyph, maroon).
geometry(lower_icon_glyph, cell_union).
rect(lower_icon_glyph, 30, 550, 60, 20).
rect(lower_icon_glyph, 30, 570, 20, 40).
rect(lower_icon_glyph, 70, 590, 20, 20).
contained_in(lower_icon_glyph, lower_icon_panel).
turtle_program(lower_icon_glyph, [
    penup,
    setcolor(maroon),
    set_pos(30, 550),
    fill_rect(60, 20),
    set_pos(30, 570),
    fill_rect(20, 40),
    set_pos(70, 590),
    fill_rect(20, 20)
]).

object(status_panel, status_frame).
bbox(status_panel, 120, 600, 639, 639).
object_color(status_panel, gray).
geometry(status_panel, clipped_rectangle).
rect(status_panel, 120, 600, 520, 40).
touches_image_edge(status_panel, right).
touches_image_edge(status_panel, bottom).
turtle_program(status_panel, [
    penup,
    set_pos(120, 600),
    setcolor(gray),
    fill_rect(520, 40)
]).

object(status_green, status_segment).
bbox(status_green, 130, 610, 179, 629).
object_color(status_green, green).
geometry(status_green, rectangle).
rect(status_green, 130, 610, 50, 20).
contained_in(status_green, status_panel).
turtle_program(status_green, [
    penup,
    set_pos(130, 610),
    setcolor(green),
    fill_rect(50, 20)
]).

object(status_dark, status_segment).
bbox(status_dark, 180, 610, 549, 629).
object_color(status_dark, dark_gray).
geometry(status_dark, rectangle).
rect(status_dark, 180, 610, 370, 20).
contained_in(status_dark, status_panel).
adjacent(status_dark, status_green, west).
turtle_program(status_dark, [
    penup,
    set_pos(180, 610),
    setcolor(dark_gray),
    fill_rect(370, 20)
]).

object(status_light_1, indicator).
bbox(status_light_1, 560, 610, 579, 629).
object_color(status_light_1, light_blue).
geometry(status_light_1, rectangle).
rect(status_light_1, 560, 610, 20, 20).
contained_in(status_light_1, status_panel).
turtle_program(status_light_1, [
    penup,
    set_pos(560, 610),
    setcolor(light_blue),
    fill_rect(20, 20)
]).

object(status_light_2, indicator).
bbox(status_light_2, 590, 610, 609, 629).
object_color(status_light_2, light_blue).
geometry(status_light_2, rectangle).
rect(status_light_2, 590, 610, 20, 20).
contained_in(status_light_2, status_panel).
turtle_program(status_light_2, [
    penup,
    set_pos(590, 610),
    setcolor(light_blue),
    fill_rect(20, 20)
]).

object(status_light_3, indicator).
bbox(status_light_3, 620, 610, 639, 629).
object_color(status_light_3, light_blue).
geometry(status_light_3, rectangle).
rect(status_light_3, 620, 610, 20, 20).
contained_in(status_light_3, status_panel).
touches_image_edge(status_light_3, right).
turtle_program(status_light_3, [
    penup,
    set_pos(620, 610),
    setcolor(light_blue),
    fill_rect(20, 20)
]).

adjacent(left_sidebar, background, east).
adjacent(main_structure, upper_display, around).
adjacent(main_structure, avatar, around).
adjacent(status_green, status_dark, east).
separated_by(status_dark, status_light_1, 10).
separated_by(status_light_1, status_light_2, 10).
separated_by(status_light_2, status_light_3, 10).
separated_by(lower_icon_panel, status_panel, 10).
