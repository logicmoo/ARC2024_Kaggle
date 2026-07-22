# `ls20` level `1` — LEFT / LEFT / DOWN / LEFT / UP / UP / UP / UP / RIGHT / RIGHT / RIGHT

- **Full game ID:** `ls20`
- **State:** `NOT_FINISHED`
- **Image hash:** `5f2dc63c826458dd`
- **Incoming action:** `ACTION4`

## Navigation

- [Level start](../../../../../../../../../../../README.md)
- [Parent state](../README.md)

## Image

![ARC3 state](image.png)

## Files

- [state.json](state.json)
- [objects.pl](objects.pl)

## `objects.pl`

```prolog
grid_size(64, 64).
cell_size_pixels(10, 10).
coordinate_system(origin_top_left, x_right, y_down).
bbox_format(x_y_width_height).

color(yellow, rgb(255, 220, 0)).
color(light_gray, rgb(170, 170, 170)).
color(green, rgb(46, 204, 64)).
color(maroon, rgb(133, 20, 75)).
color(black, rgb(0, 0, 0)).
color(blue, rgb(0, 116, 217)).
color(dark_gray, rgb(102, 102, 102)).
color(light_cyan, rgb(127, 219, 255)).

object(canvas_background).
drawable(canvas_background).
bbox(canvas_background, 0, 0, 64, 64).
geometry(canvas_background, rectangle(0, 0, 64, 64)).
object_color(canvas_background, yellow).
layer(canvas_background, 0).

object(left_sidebar).
drawable(left_sidebar).
bbox(left_sidebar, 0, 0, 4, 52).
geometry(left_sidebar, rectangle(0, 0, 4, 52)).
object_color(left_sidebar, light_gray).
layer(left_sidebar, 1).

object(main_green_region).
drawable(main_green_region).
bbox(main_green_region, 14, 25, 40, 25).
geometry(main_green_region,
         union([rectangle(14,25,20,5),
                rectangle(14,30,15,10),
                rectangle(39,25,15,25),
                rectangle(34,30,5,20),
                rectangle(19,40,5,10),
                rectangle(24,45,10,5)])).
object_color(main_green_region, green).
layer(main_green_region, 2).
property(main_green_region, orthogonal).
property(main_green_region, concave).
property(main_green_region, connected).

object(upper_green_structure).
drawable(upper_green_structure).
bbox(upper_green_structure, 32, 8, 9, 17).
geometry(upper_green_structure,
         union([rectangle(32,8,9,9),
                rectangle(34,16,5,9)])).
object_color(upper_green_structure, green).
layer(upper_green_structure, 2).
property(upper_green_structure, symmetric_about_vertical_axis(36)).
property(upper_green_structure, connected).

object(top_plate).
drawable(top_plate).
bbox(top_plate, 33, 9, 7, 7).
geometry(top_plate, rectangle(33, 9, 7, 7)).
object_color(top_plate, light_gray).
layer(top_plate, 3).
contained_in(top_plate, upper_green_structure).
property(top_plate, square).

object(top_maroon_glyph).
drawable(top_maroon_glyph).
bbox(top_maroon_glyph, 35, 11, 3, 3).
geometry(top_maroon_glyph,
         union([rectangle(35,11,3,1),
                rectangle(37,12,1,2),
                rectangle(35,13,1,1)])).
object_color(top_maroon_glyph, maroon).
layer(top_maroon_glyph, 4).
contained_in(top_maroon_glyph, top_plate).
property(top_maroon_glyph, angular_glyph).
property(top_maroon_glyph, disconnected_pixel_tail).

object(gate_gray_band).
drawable(gate_gray_band).
bbox(gate_gray_band, 34, 25, 5, 2).
geometry(gate_gray_band, rectangle(34, 25, 5, 2)).
object_color(gate_gray_band, light_gray).
layer(gate_gray_band, 3).
property(gate_gray_band, horizontal_band).

object(gate_maroon_band).
drawable(gate_maroon_band).
bbox(gate_maroon_band, 34, 27, 5, 3).
geometry(gate_maroon_band, rectangle(34, 27, 5, 3)).
object_color(gate_maroon_band, maroon).
layer(gate_maroon_band, 3).
property(gate_maroon_band, horizontal_band).

object(avatar).
bbox(avatar, 20, 31, 3, 3).
geometry(avatar,
         union([cell(21,31),cell(21,32),cell(22,32),
                cell(20,32),cell(21,33)])).
property(avatar, composite).
property(avatar, asymmetric).
contained_in(avatar, main_green_region).

object(avatar_black_part).
drawable(avatar_black_part).
bbox(avatar_black_part, 21, 31, 2, 2).
geometry(avatar_black_part,
         union([cell(21,31),cell(21,32),cell(22,32)])).
object_color(avatar_black_part, black).
layer(avatar_black_part, 4).
part_of(avatar_black_part, avatar).

object(avatar_blue_part).
drawable(avatar_blue_part).
bbox(avatar_blue_part, 20, 32, 2, 2).
geometry(avatar_blue_part,
         union([cell(20,32),cell(21,33)])).
object_color(avatar_blue_part, blue).
layer(avatar_blue_part, 4).
part_of(avatar_blue_part, avatar).

object(left_control_panel).
drawable(left_control_panel).
bbox(left_control_panel, 1, 53, 10, 10).
geometry(left_control_panel, rectangle(1, 53, 10, 10)).
object_color(left_control_panel, light_gray).
layer(left_control_panel, 2).
property(left_control_panel, square).

object(left_control_glyph).
drawable(left_control_glyph).
bbox(left_control_glyph, 3, 55, 6, 6).
geometry(left_control_glyph,
         union([rectangle(3,55,6,2),
                rectangle(7,57,2,4),
                rectangle(3,59,2,2)])).
object_color(left_control_glyph, maroon).
layer(left_control_glyph, 3).
contained_in(left_control_glyph, left_control_panel).

object(bottom_status_panel).
drawable(bottom_status_panel).
bbox(bottom_status_panel, 12, 60, 52, 4).
geometry(bottom_status_panel, rectangle(12, 60, 52, 4)).
object_color(bottom_status_panel, light_gray).
layer(bottom_status_panel, 2).

object(status_green_segment).
drawable(status_green_segment).
bbox(status_green_segment, 13, 61, 10, 2).
geometry(status_green_segment, rectangle(13, 61, 10, 2)).
object_color(status_green_segment, green).
layer(status_green_segment, 3).
contained_in(status_green_segment, bottom_status_panel).

object(status_dark_segment).
drawable(status_dark_segment).
bbox(status_dark_segment, 23, 61, 32, 2).
geometry(status_dark_segment, rectangle(23, 61, 32, 2)).
object_color(status_dark_segment, dark_gray).
layer(status_dark_segment, 3).
contained_in(status_dark_segment, bottom_status_panel).

object(status_cyan_slots).
drawable(status_cyan_slots).
bbox(status_cyan_slots, 56, 61, 8, 2).
geometry(status_cyan_slots,
         union([rectangle(56,61,2,2),
                rectangle(59,61,2,2),
                rectangle(62,61,2,2)])).
object_color(status_cyan_slots, light_cyan).
layer(status_cyan_slots, 3).
contained_in(status_cyan_slots, bottom_status_panel).
property(status_cyan_slots, three_equal_slots).

adjacent(upper_green_structure, gate_gray_band, edge).
adjacent(gate_gray_band, gate_maroon_band, edge).
adjacent(gate_gray_band, main_green_region, edge).
adjacent(gate_maroon_band, main_green_region, edge).
adjacent(avatar_black_part, avatar_blue_part, edge).
adjacent(status_green_segment, status_dark_segment, edge).
adjacent(left_sidebar, canvas_background, edge).
adjacent(left_control_panel, bottom_status_panel, corner).

overlays(left_sidebar, canvas_background).
overlays(main_green_region, canvas_background).
overlays(upper_green_structure, canvas_background).
overlays(top_plate, upper_green_structure).
overlays(top_maroon_glyph, top_plate).
overlays(gate_gray_band, canvas_background).
overlays(gate_maroon_band, canvas_background).
overlays(avatar_black_part, main_green_region).
overlays(avatar_blue_part, main_green_region).
overlays(left_control_panel, canvas_background).
overlays(left_control_glyph, left_control_panel).
overlays(bottom_status_panel, canvas_background).
overlays(status_green_segment, bottom_status_panel).
overlays(status_dark_segment, bottom_status_panel).
overlays(status_cyan_slots, bottom_status_panel).

aligned_center_x(upper_green_structure, top_plate).
aligned_center_x(upper_green_structure, gate_gray_band).
aligned_center_x(upper_green_structure, gate_maroon_band).
aligned_center_y(status_green_segment, status_dark_segment).
aligned_center_y(status_dark_segment, status_cyan_slots).

turtle_program(canvas_background,
 [penup,set_pos(0,0),setcolor(yellow),pendown,set_cell,fill_rect(64,64),penup]).

turtle_program(left_sidebar,
 [penup,set_pos(0,0),setcolor(light_gray),pendown,set_cell,fill_rect(4,52),penup]).

turtle_program(main_green_region,
 [penup,setcolor(green),
  set_pos(14,25),pendown,set_cell,fill_rect(20,5),penup,
  set_pos(14,30),pendown,set_cell,fill_rect(15,10),penup,
  set_pos(39,25),pendown,set_cell,fill_rect(15,25),penup,
  set_pos(34,30),pendown,set_cell,fill_rect(5,20),penup,
  set_pos(19,40),pendown,set_cell,fill_rect(5,10),penup,
  set_pos(24,45),pendown,set_cell,fill_rect(10,5),penup]).

turtle_program(upper_green_structure,
 [penup,setcolor(green),
  set_pos(32,8),pendown,set_cell,fill_rect(9,9),penup,
  set_pos(34,16),pendown,set_cell,fill_rect(5,9),penup]).

turtle_program(top_plate,
 [penup,set_pos(33,9),setcolor(light_gray),pendown,set_cell,fill_rect(7,7),penup]).

turtle_program(top_maroon_glyph,
 [penup,setcolor(maroon),
  set_pos(35,11),pendown,set_cell,fwd(2),penup,
  set_pos(37,12),pendown,set_cell,rot(90),fwd(1),penup,
  set_pos(35,13),pendown,set_cell,penup]).

turtle_program(gate_gray_band,
 [penup,set_pos(34,25),setcolor(light_gray),pendown,set_cell,fill_rect(5,2),penup]).

turtle_program(gate_maroon_band,
 [penup,set_pos(34,27),setcolor(maroon),pendown,set_cell,fill_rect(5,3),penup]).

turtle_program(avatar_black_part,
 [penup,setcolor(black),
  set_pos(21,31),pendown,set_cell,rot(90),fwd(1),penup,
  set_pos(22,32),pendown,set_cell,penup]).

turtle_program(avatar_blue_part,
 [penup,setcolor(blue),
  set_pos(20,32),pendown,set_cell,penup,
  set_pos(21,33),pendown,set_cell,penup]).

turtle_program(left_control_panel,
 [penup,set_pos(1,53),setcolor(light_gray),pendown,set_cell,fill_rect(10,10),penup]).

turtle_program(left_control_glyph,
 [penup,setcolor(maroon),
  set_pos(3,55),pendown,set_cell,fill_rect(6,2),penup,
  set_pos(7,57),pendown,set_cell,fill_rect(2,4),penup,
  set_pos(3,59),pendown,set_cell,fill_rect(2,2),penup]).

turtle_program(bottom_status_panel,
 [penup,set_pos(12,60),setcolor(light_gray),pendown,set_cell,fill_rect(52,4),penup]).

turtle_program(status_green_segment,
 [penup,set_pos(13,61),setcolor(green),pendown,set_cell,fill_rect(10,2),penup]).

turtle_program(status_dark_segment,
 [penup,set_pos(23,61),setcolor(dark_gray),pendown,set_cell,fill_rect(32,2),penup]).

turtle_program(status_cyan_slots,
 [penup,setcolor(light_cyan),
  set_pos(56,61),pendown,set_cell,fill_rect(2,2),penup,
  set_pos(59,61),pendown,set_cell,fill_rect(2,2),penup,
  set_pos(62,61),pendown,set_cell,fill_rect(2,2),penup]).
```

## Actions

- [`UP`](UP/README.md)
