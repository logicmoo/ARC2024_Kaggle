# `ls20` level `1` — LEFT / LEFT / DOWN / LEFT / UP / UP / UP / UP / RIGHT / RIGHT / RIGHT / UP

- **Full game ID:** `ls20`
- **State:** `NOT_FINISHED`
- **Image hash:** `cddc824959a7f509`
- **Incoming action:** `ACTION1`

## Navigation

- [Level start](../../../../../../../../../../../../README.md)
- [Parent state](../README.md)

## Image

![ARC3 state](image.png)

## Files

- [state.json](state.json)
- [differences.pl](differences.pl)
- [objects.pl](objects.pl)

## `objects.pl`

```prolog
canvas(arc3_state, 64, 64).
pixel_size(arc3_state, 640, 640).
cell_size(arc3_state, 10, 10).
coordinate_origin(arc3_state, top_left).
bbox_convention(inclusive).

color(yellow, 255, 220, 0).
color(green, 46, 204, 64).
color(gray, 170, 170, 170).
color(dark_gray, 102, 102, 102).
color(maroon, 133, 20, 75).
color(blue, 0, 116, 217).
color(black, 0, 0, 0).
color(cyan, 127, 219, 255).

object(background_yellow, background).
grid_bbox(background_yellow, 0, 0, 63, 63).
pixel_bbox(background_yellow, 0, 0, 639, 639).
object_color(background_yellow, yellow).
geometry(background_yellow, filled_rectangle(64,64)).
z_index(background_yellow, 0).
turtle_program(background_yellow,
 [penup,set_pos(0,0),setcolor(yellow),pendown,fill_rect(64,64),penup]).

object(left_sidebar, solid_region).
grid_bbox(left_sidebar, 0, 0, 3, 51).
pixel_bbox(left_sidebar, 0, 0, 39, 519).
object_color(left_sidebar, gray).
geometry(left_sidebar, filled_rectangle(4,52)).
touches_canvas_edge(left_sidebar, left).
touches_canvas_edge(left_sidebar, top).
z_index(left_sidebar, 1).
turtle_program(left_sidebar,
 [penup,set_pos(0,0),setcolor(gray),pendown,fill_rect(4,52),penup]).

object(sign_frame, rectangular_frame).
grid_bbox(sign_frame, 32, 8, 40, 16).
pixel_bbox(sign_frame, 320, 80, 409, 169).
object_color(sign_frame, green).
geometry(sign_frame, frame(9,9,1)).
z_index(sign_frame, 2).
turtle_program(sign_frame,
 [penup,setcolor(green),
  set_pos(32,8),pendown,fill_rect(9,1),penup,
  set_pos(32,9),pendown,fill_rect(1,7),penup,
  set_pos(40,9),pendown,fill_rect(1,7),penup,
  set_pos(32,16),pendown,fill_rect(9,1),penup]).

object(sign_face, solid_region).
grid_bbox(sign_face, 33, 9, 39, 15).
pixel_bbox(sign_face, 330, 90, 399, 159).
object_color(sign_face, gray).
geometry(sign_face, filled_rectangle(7,7)).
inside(sign_face, sign_frame).
surrounded_by(sign_face, sign_frame).
z_index(sign_face, 3).
turtle_program(sign_face,
 [penup,set_pos(33,9),setcolor(gray),pendown,fill_rect(7,7),penup]).

object(sign_glyph, polyomino).
grid_bbox(sign_glyph, 35, 11, 37, 13).
pixel_bbox(sign_glyph, 350, 110, 379, 139).
object_color(sign_glyph, maroon).
geometry(sign_glyph, cells([(35,11),(36,11),(37,11),(37,12),(35,13),(37,13)])).
inside(sign_glyph, sign_face).
z_index(sign_glyph, 4).
turtle_program(sign_glyph,
 [penup,setcolor(maroon),
  set_pos(35,11),pendown,set_cell,penup,
  set_pos(36,11),pendown,set_cell,penup,
  set_pos(37,11),pendown,set_cell,penup,
  set_pos(37,12),pendown,set_cell,penup,
  set_pos(35,13),pendown,set_cell,penup,
  set_pos(37,13),pendown,set_cell,penup]).

object(sign_post_green, solid_region).
grid_bbox(sign_post_green, 34, 17, 38, 19).
pixel_bbox(sign_post_green, 340, 170, 389, 199).
object_color(sign_post_green, green).
geometry(sign_post_green, filled_rectangle(5,3)).
adjacent(sign_post_green, sign_frame, north).
z_index(sign_post_green, 2).
turtle_program(sign_post_green,
 [penup,set_pos(34,17),setcolor(green),pendown,fill_rect(5,3),penup]).

object(sign_post_gray, solid_region).
grid_bbox(sign_post_gray, 34, 20, 38, 21).
pixel_bbox(sign_post_gray, 340, 200, 389, 219).
object_color(sign_post_gray, gray).
geometry(sign_post_gray, filled_rectangle(5,2)).
adjacent(sign_post_gray, sign_post_green, north).
z_index(sign_post_gray, 2).
turtle_program(sign_post_gray,
 [penup,set_pos(34,20),setcolor(gray),pendown,fill_rect(5,2),penup]).

object(sign_post_maroon, solid_region).
grid_bbox(sign_post_maroon, 34, 22, 38, 24).
pixel_bbox(sign_post_maroon, 340, 220, 389, 249).
object_color(sign_post_maroon, maroon).
geometry(sign_post_maroon, filled_rectangle(5,3)).
adjacent(sign_post_maroon, sign_post_gray, north).
z_index(sign_post_maroon, 2).
turtle_program(sign_post_maroon,
 [penup,set_pos(34,22),setcolor(maroon),pendown,fill_rect(5,3),penup]).

object(main_platform, concave_solid_region).
grid_bbox(main_platform, 14, 25, 53, 49).
pixel_bbox(main_platform, 140, 250, 539, 499).
object_color(main_platform, green).
geometry(main_platform,
 union_of_rectangles([
  rect(14,25,40,5),
  rect(14,30,15,10),
  rect(34,30,20,15),
  rect(19,40,5,5),
  rect(19,45,35,5)
 ])).
has_hole(main_platform, platform_cavity).
adjacent(main_platform, sign_post_maroon, north).
z_index(main_platform, 2).
turtle_program(main_platform,
 [penup,setcolor(green),
  set_pos(14,25),pendown,fill_rect(40,5),penup,
  set_pos(14,30),pendown,fill_rect(15,10),penup,
  set_pos(34,30),pendown,fill_rect(20,15),penup,
  set_pos(19,40),pendown,fill_rect(5,5),penup,
  set_pos(19,45),pendown,fill_rect(35,5),penup]).

object(platform_cavity, enclosed_background_region).
grid_bbox(platform_cavity, 24, 30, 33, 44).
pixel_bbox(platform_cavity, 240, 300, 339, 449).
object_color(platform_cavity, yellow).
geometry(platform_cavity,
 union_of_rectangles([
  rect(29,30,5,10),
  rect(24,40,10,5)
 ])).
inside(platform_cavity, main_platform).
z_index(platform_cavity, 3).
turtle_program(platform_cavity,
 [penup,setcolor(yellow),
  set_pos(29,30),pendown,fill_rect(5,10),penup,
  set_pos(24,40),pendown,fill_rect(10,5),penup]).

object(avatar_black, polyomino).
grid_bbox(avatar_black, 21, 31, 22, 32).
pixel_bbox(avatar_black, 210, 310, 229, 329).
object_color(avatar_black, black).
geometry(avatar_black, cells([(21,31),(21,32),(22,32)])).
inside(avatar_black, main_platform).
z_index(avatar_black, 5).
turtle_program(avatar_black,
 [penup,setcolor(black),
  set_pos(21,31),pendown,set_cell,penup,
  set_pos(21,32),pendown,set_cell,penup,
  set_pos(22,32),pendown,set_cell,penup]).

object(avatar_blue, polyomino).
grid_bbox(avatar_blue, 20, 32, 21, 33).
pixel_bbox(avatar_blue, 200, 320, 219, 339).
object_color(avatar_blue, blue).
geometry(avatar_blue, cells([(20,32),(21,33)])).
inside(avatar_blue, main_platform).
adjacent(avatar_blue, avatar_black, edge).
z_index(avatar_blue, 5).
turtle_program(avatar_blue,
 [penup,setcolor(blue),
  set_pos(20,32),pendown,set_cell,penup,
  set_pos(21,33),pendown,set_cell,penup]).

object(popup_panel, solid_region).
grid_bbox(popup_panel, 1, 53, 10, 62).
pixel_bbox(popup_panel, 10, 530, 109, 629).
object_color(popup_panel, gray).
geometry(popup_panel, filled_rectangle(10,10)).
z_index(popup_panel, 6).
turtle_program(popup_panel,
 [penup,set_pos(1,53),setcolor(gray),pendown,fill_rect(10,10),penup]).

object(popup_glyph, scaled_polyomino).
grid_bbox(popup_glyph, 3, 55, 8, 60).
pixel_bbox(popup_glyph, 30, 550, 89, 609).
object_color(popup_glyph, maroon).
geometry(popup_glyph,
 union_of_rectangles([
  rect(3,55,6,2),
  rect(7,57,2,4),
  rect(3,59,2,2)
 ])).
scale_relation(popup_glyph, sign_glyph, 2).
inside(popup_glyph, popup_panel).
z_index(popup_glyph, 7).
turtle_program(popup_glyph,
 [penup,setcolor(maroon),
  set_pos(3,55),pendown,fill_rect(6,2),penup,
  set_pos(7,57),pendown,fill_rect(2,4),penup,
  set_pos(3,59),pendown,fill_rect(2,2),penup]).

object(bottom_status_panel, solid_region).
grid_bbox(bottom_status_panel, 12, 60, 63, 63).
pixel_bbox(bottom_status_panel, 120, 600, 639, 639).
object_color(bottom_status_panel, gray).
geometry(bottom_status_panel, filled_rectangle(52,4)).
touches_canvas_edge(bottom_status_panel, right).
touches_canvas_edge(bottom_status_panel, bottom).
z_index(bottom_status_panel, 6).
turtle_program(bottom_status_panel,
 [penup,set_pos(12,60),setcolor(gray),pendown,fill_rect(52,4),penup]).

object(status_green_bar, solid_region).
grid_bbox(status_green_bar, 13, 61, 23, 62).
pixel_bbox(status_green_bar, 130, 610, 239, 629).
object_color(status_green_bar, green).
geometry(status_green_bar, filled_rectangle(11,2)).
inside(status_green_bar, bottom_status_panel).
z_index(status_green_bar, 7).
turtle_program(status_green_bar,
 [penup,set_pos(13,61),setcolor(green),pendown,fill_rect(11,2),penup]).

object(status_dark_bar, solid_region).
grid_bbox(status_dark_bar, 24, 61, 54, 62).
pixel_bbox(status_dark_bar, 240, 610, 549, 629).
object_color(status_dark_bar, dark_gray).
geometry(status_dark_bar, filled_rectangle(31,2)).
inside(status_dark_bar, bottom_status_panel).
adjacent(status_dark_bar, status_green_bar, west).
z_index(status_dark_bar, 7).
turtle_program(status_dark_bar,
 [penup,set_pos(24,61),setcolor(dark_gray),pendown,fill_rect(31,2),penup]).

object(status_cyan_1, solid_region).
grid_bbox(status_cyan_1, 56, 61, 57, 62).
pixel_bbox(status_cyan_1, 560, 610, 579, 629).
object_color(status_cyan_1, cyan).
geometry(status_cyan_1, filled_rectangle(2,2)).
inside(status_cyan_1, bottom_status_panel).
z_index(status_cyan_1, 7).
turtle_program(status_cyan_1,
 [penup,set_pos(56,61),setcolor(cyan),pendown,fill_rect(2,2),penup]).

object(status_cyan_2, solid_region).
grid_bbox(status_cyan_2, 59, 61, 60, 62).
pixel_bbox(status_cyan_2, 590, 610, 609, 629).
object_color(status_cyan_2, cyan).
geometry(status_cyan_2, filled_rectangle(2,2)).
inside(status_cyan_2, bottom_status_panel).
z_index(status_cyan_2, 7).
turtle_program(status_cyan_2,
 [penup,set_pos(59,61),setcolor(cyan),pendown,fill_rect(2,2),penup]).

object(status_cyan_3, solid_region).
grid_bbox(status_cyan_3, 62, 61, 63, 62).
pixel_bbox(status_cyan_3, 620, 610, 639, 629).
object_color(status_cyan_3, cyan).
geometry(status_cyan_3, filled_rectangle(2,2)).
inside(status_cyan_3, bottom_status_panel).
touches_canvas_edge(status_cyan_3, right).
z_index(status_cyan_3, 7).
turtle_program(status_cyan_3,
 [penup,set_pos(62,61),setcolor(cyan),pendown,fill_rect(2,2),penup]).

part_of(sign_frame, sign_assembly).
part_of(sign_face, sign_assembly).
part_of(sign_glyph, sign_assembly).
part_of(sign_post_green, sign_assembly).
part_of(sign_post_gray, sign_assembly).
part_of(sign_post_maroon, sign_assembly).

part_of(avatar_black, avatar).
part_of(avatar_blue, avatar).

part_of(popup_panel, popup_control).
part_of(popup_glyph, popup_control).

part_of(status_green_bar, bottom_status_panel).
part_of(status_dark_bar, bottom_status_panel).
part_of(status_cyan_1, bottom_status_panel).
part_of(status_cyan_2, bottom_status_panel).
part_of(status_cyan_3, bottom_status_panel).

render_order([
 background_yellow,
 left_sidebar,
 sign_frame,
 sign_post_green,
 sign_post_gray,
 sign_post_maroon,
 main_platform,
 sign_face,
 platform_cavity,
 sign_glyph,
 avatar_black,
 avatar_blue,
 popup_panel,
 bottom_status_panel,
 popup_glyph,
 status_green_bar,
 status_dark_bar,
 status_cyan_1,
 status_cyan_2,
 status_cyan_3
]).
```

## `differences.pl`

```prolog
color_alias(light_gray, gray).
color_alias(light_cyan, cyan).

object_correspondence(canvas_background, background_yellow, renamed).
object_correspondence(left_sidebar, left_sidebar, same_identity).
object_correspondence(upper_green_structure, sign_assembly, decomposed).
object_correspondence(top_plate, sign_face, renamed).
object_correspondence(top_maroon_glyph, sign_glyph, renamed).
object_correspondence(gate_gray_band, sign_post_gray, renamed).
object_correspondence(gate_maroon_band, sign_post_maroon, renamed).
object_correspondence(main_green_region, main_platform, renamed).
object_correspondence(avatar_black_part, avatar_black, renamed).
object_correspondence(avatar_blue_part, avatar_blue, renamed).
object_correspondence(left_control_panel, popup_panel, renamed).
object_correspondence(left_control_glyph, popup_glyph, renamed).
object_correspondence(bottom_status_panel, bottom_status_panel, same_identity).
object_correspondence(status_green_segment, status_green_bar, renamed).
object_correspondence(status_dark_segment, status_dark_bar, renamed).
object_correspondence(status_cyan_slots, status_cyan_group, split).

current_group(status_cyan_group,
              [status_cyan_1, status_cyan_2, status_cyan_3]).

observation(no_added_scene_objects).
observation(no_removed_scene_objects).

observation(unchanged_object(canvas_background, background_yellow)).
observation(unchanged_object(left_sidebar, left_sidebar)).
observation(unchanged_object(main_green_region, main_platform)).
observation(unchanged_object(top_plate, sign_face)).
observation(unchanged_object(top_maroon_glyph, sign_glyph)).
observation(unchanged_object(avatar_black_part, avatar_black)).
observation(unchanged_object(avatar_blue_part, avatar_blue)).
observation(unchanged_object(left_control_panel, popup_panel)).
observation(unchanged_object(left_control_glyph, popup_glyph)).
observation(unchanged_object(bottom_status_panel, bottom_status_panel)).
observation(unchanged_object(status_cyan_slots, status_cyan_group)).

observation(moved_object(gate_gray_band, sign_post_gray, 0, -5)).
observation(moved_object(gate_maroon_band, sign_post_maroon, 0, -5)).

observation(
    changed_object(
        gate_gray_band,
        sign_post_gray,
        [position(bbox(34,25,5,2), bbox(34,20,5,2)),
         translation(0,-5),
         color_equivalent(light_gray,gray)]
    )
).

observation(
    changed_object(
        gate_maroon_band,
        sign_post_maroon,
        [position(bbox(34,27,5,3), bbox(34,22,5,3)),
         translation(0,-5)]
    )
).

observation(
    changed_object(
        status_green_segment,
        status_green_bar,
        [bbox(bbox(13,61,10,2), bbox(13,61,11,2)),
         size(size(10,2), size(11,2)),
         extended(right,1)]
    )
).

observation(
    changed_object(
        status_dark_segment,
        status_dark_bar,
        [bbox(bbox(23,61,32,2), bbox(24,61,31,2)),
         size(size(32,2), size(31,2)),
         contracted(left,1)]
    )
).

observation(
    resized_object(status_green_segment, size(10,2), size(11,2))
).
observation(
    resized_object(status_dark_segment, size(32,2), size(31,2))
).

observation(
    recolored_object(status_column_23, dark_gray, green)
).

change_region(status_column_23, bbox(23,61,1,2)).
change_region(post_new_gray_area, bbox(34,20,5,2)).
change_region(post_new_maroon_area, bbox(34,22,5,3)).
change_region(platform_exposed_gray_area, bbox(34,25,5,2)).
change_region(platform_exposed_maroon_area, bbox(34,27,5,3)).

observation(
    recolored_region(post_new_gray_area, green, gray)
).
observation(
    recolored_region(post_new_maroon_area, green, maroon)
).
observation(
    recolored_region(platform_exposed_gray_area, gray, green)
).
observation(
    recolored_region(platform_exposed_maroon_area, maroon, green)
).

observation(
    action_effect(
        previous_to_current_transition,
        moved(gate_gray_band, 0, -5)
    )
).
observation(
    action_effect(
        previous_to_current_transition,
        moved(gate_maroon_band, 0, -5)
    )
).
observation(
    action_effect(
        previous_to_current_transition,
        status_green_width_changed(10,11)
    )
).
observation(
    action_effect(
        previous_to_current_transition,
        status_dark_width_changed(32,31)
    )
).
observation(
    action_effect(
        previous_to_current_transition,
        recolored(status_column_23,dark_gray,green)
    )
).

representation_change(
    upper_green_structure,
    decomposed_into([sign_frame, sign_post_green])
).
representation_change(
    status_cyan_slots,
    split_into([status_cyan_1, status_cyan_2, status_cyan_3])
).
representation_change(
    main_green_region,
    cavity_made_explicit(platform_cavity)
).
representation_change(avatar, changed_from_object_to_assembly).
representation_change(left_control_panel, renamed_to(popup_panel)).
representation_change(left_control_glyph, renamed_to(popup_glyph)).

representation_added_object(sign_frame).
representation_added_object(sign_post_green).
representation_added_object(platform_cavity).
representation_added_object(status_cyan_1).
representation_added_object(status_cyan_2).
representation_added_object(status_cyan_3).

representation_removed_object(upper_green_structure).
representation_removed_object(status_cyan_slots).

hypothesis(
    gate_retracted_upward,
    supported_by([
        translation(gate_gray_band,0,-5),
        translation(gate_maroon_band,0,-5),
        exposed_platform_region(bbox(34,25,5,5))
    ])
).

hypothesis(
    gate_opened_or_raised,
    confidence(high)
).

hypothesis(
    status_meter_incremented_by_one_cell,
    confidence(high)
).

hypothesis(
    status_change_caused_by_successful_action,
    confidence(medium)
).

added_object(Object) :-
    observation(added_object(Object)).

removed_object(Object) :-
    observation(removed_object(Object)).

changed_object(Previous, Current, Changes) :-
    observation(changed_object(Previous, Current, Changes)).

moved_object(Previous, Current, DX, DY) :-
    observation(moved_object(Previous, Current, DX, DY)).

recolored_object(Object, PreviousColor, CurrentColor) :-
    observation(recolored_object(Object, PreviousColor, CurrentColor)).

resized_object(Object, PreviousSize, CurrentSize) :-
    observation(resized_object(Object, PreviousSize, CurrentSize)).

unchanged_object(Previous, Current) :-
    observation(unchanged_object(Previous, Current)).

action_effect(Action, Effect) :-
    observation(action_effect(Action, Effect)).

scene_object_added(Object) :-
    added_object(Object).

scene_object_removed(Object) :-
    removed_object(Object).

pure_translation(Previous, Current) :-
    moved_object(Previous, Current, _, _),
    \+ resized_object(Previous, _, _).

status_meter_delta(green, 1).
status_meter_delta(dark_gray, -1).
gate_translation(0, -5).
```

## Actions

- [`UP`](UP/README.md)
