# `ls20` level `1` — LEFT / LEFT / DOWN / LEFT / UP

- **Full game ID:** `ls20`
- **State:** `NOT_FINISHED`
- **Image hash:** `04d4b98413b2a3f7`
- **Incoming action:** `ACTION1`

## Navigation

- [Level start](../../../../../README.md)
- [Parent state](../README.md)

## Image

![ARC3 state](image.png)

## Files

- [state.json](state.json)
- [differences.pl](differences.pl)
- [objects.pl](objects.pl)

## `objects.pl`

```prolog
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
```

## `differences.pl`

```prolog
:- discontiguous previous_object/1.
:- discontiguous current_object/1.
:- discontiguous correspondence/2.
:- discontiguous changed_object/3.
:- discontiguous unchanged_object/2.
:- discontiguous observation/1.
:- discontiguous hypothesis/2.

previous_object(background).
previous_object(left_sidebar).
previous_object(main_green_structure).
previous_object(top_panel).
previous_object(top_burgundy_glyph).
previous_object(avatar).
previous_object(avatar_black).
previous_object(avatar_navy).
previous_object(avatar_blue).
previous_object(lower_connector_gray).
previous_object(lower_connector_burgundy).
previous_object(lower_left_panel).
previous_object(lower_left_burgundy_glyph).
previous_object(status_tray).
previous_object(status_green_segment).
previous_object(status_dark_segment).
previous_object(status_blue_segment_1).
previous_object(status_blue_segment_2).
previous_object(status_blue_segment_3).

current_object(background).
current_object(left_sidebar).
current_object(main_structure).
current_object(upper_display).
current_object(upper_glyph).
current_object(avatar).
current_object(lower_barrier_gray).
current_object(lower_barrier_maroon).
current_object(lower_icon_panel).
current_object(lower_icon_glyph).
current_object(status_panel).
current_object(status_green).
current_object(status_dark).
current_object(status_light_1).
current_object(status_light_2).
current_object(status_light_3).

correspondence(background,background).
correspondence(left_sidebar,left_sidebar).
correspondence(main_green_structure,main_structure).
correspondence(top_panel,upper_display).
correspondence(top_burgundy_glyph,upper_glyph).
correspondence(avatar,avatar).
correspondence(lower_connector_gray,lower_barrier_gray).
correspondence(lower_connector_burgundy,lower_barrier_maroon).
correspondence(lower_left_panel,lower_icon_panel).
correspondence(lower_left_burgundy_glyph,lower_icon_glyph).
correspondence(status_tray,status_panel).
correspondence(status_green_segment,status_green).
correspondence(status_dark_segment,status_dark).
correspondence(status_blue_segment_1,status_light_1).
correspondence(status_blue_segment_2,status_light_2).
correspondence(status_blue_segment_3,status_light_3).

renamed_object(main_green_structure,main_structure).
renamed_object(top_panel,upper_display).
renamed_object(top_burgundy_glyph,upper_glyph).
renamed_object(lower_connector_gray,lower_barrier_gray).
renamed_object(lower_connector_burgundy,lower_barrier_maroon).
renamed_object(lower_left_panel,lower_icon_panel).
renamed_object(lower_left_burgundy_glyph,lower_icon_glyph).
renamed_object(status_tray,status_panel).
renamed_object(status_green_segment,status_green).
renamed_object(status_dark_segment,status_dark).
renamed_object(status_blue_segment_1,status_light_1).
renamed_object(status_blue_segment_2,status_light_2).
renamed_object(status_blue_segment_3,status_light_3).

representation_merged_into(avatar_black,avatar).
representation_merged_into(avatar_navy,avatar).
representation_merged_into(avatar_blue,avatar).

color_alias(burgundy,maroon).
same_rgb_color(burgundy,maroon,rgb(133,20,75)).

bbox_convention_change(half_open_xywh,inclusive_xyxy).

normalized_bbox(previous,background,0,0,640,640).
normalized_bbox(current,background,0,0,640,640).
normalized_bbox(previous,left_sidebar,0,0,40,520).
normalized_bbox(current,left_sidebar,0,0,40,520).
normalized_bbox(previous,main_green_structure,140,80,540,500).
normalized_bbox(current,main_structure,140,80,540,500).
normalized_bbox(previous,top_panel,330,90,400,160).
normalized_bbox(current,upper_display,330,90,400,160).
normalized_bbox(previous,top_burgundy_glyph,350,110,380,140).
normalized_bbox(current,upper_glyph,350,110,380,140).
normalized_bbox(previous,avatar,200,310,230,340).
normalized_bbox(current,avatar,200,310,230,340).
normalized_bbox(previous,lower_connector_gray,190,450,240,470).
normalized_bbox(current,lower_barrier_gray,190,400,240,420).
normalized_bbox(previous,lower_connector_burgundy,190,470,240,500).
normalized_bbox(current,lower_barrier_maroon,190,420,240,450).
normalized_bbox(previous,lower_left_panel,10,530,110,630).
normalized_bbox(current,lower_icon_panel,10,530,110,630).
normalized_bbox(previous,lower_left_burgundy_glyph,30,550,90,610).
normalized_bbox(current,lower_icon_glyph,30,550,90,610).
normalized_bbox(previous,status_tray,120,600,640,640).
normalized_bbox(current,status_panel,120,600,640,640).
normalized_bbox(previous,status_green_segment,130,610,170,630).
normalized_bbox(current,status_green,130,610,180,630).
normalized_bbox(previous,status_dark_segment,170,610,550,630).
normalized_bbox(current,status_dark,180,610,550,630).
normalized_bbox(previous,status_blue_segment_1,560,610,580,630).
normalized_bbox(current,status_light_1,560,610,580,630).
normalized_bbox(previous,status_blue_segment_2,590,610,610,630).
normalized_bbox(current,status_light_2,590,610,610,630).
normalized_bbox(previous,status_blue_segment_3,620,610,640,630).
normalized_bbox(current,status_light_3,620,610,640,630).

unchanged_object(background,background).
unchanged_object(left_sidebar,left_sidebar).
unchanged_object(top_panel,upper_display).
unchanged_object(top_burgundy_glyph,upper_glyph).
unchanged_object(lower_left_panel,lower_icon_panel).
unchanged_object(lower_left_burgundy_glyph,lower_icon_glyph).
unchanged_object(status_tray,status_panel).
unchanged_object(status_blue_segment_1,status_light_1).
unchanged_object(status_blue_segment_2,status_light_2).
unchanged_object(status_blue_segment_3,status_light_3).

moved_object(lower_connector_gray,lower_barrier_gray,0,-50).
moved_object(lower_connector_burgundy,lower_barrier_maroon,0,-50).

recolored_object(avatar_navy,navy,blue).

resized_object(status_green_segment,size(40,20),size(50,20)).
resized_object(status_dark_segment,size(380,20),size(370,20)).

changed_object(
    main_green_structure,
    main_structure,
    relocated_region(rectangle(190,400,50,50),
                     rectangle(190,450,50,50))
).

changed_object(
    lower_connector_gray,
    lower_barrier_gray,
    bbox_change(box(190,450,240,470),
                box(190,400,240,420))
).

changed_object(
    lower_connector_burgundy,
    lower_barrier_maroon,
    bbox_change(box(190,470,240,500),
                box(190,420,240,450))
).

changed_object(
    avatar,
    avatar,
    cell_color_change(cell(20,32),navy,blue)
).

changed_object(
    status_green_segment,
    status_green,
    rectangle_change(rectangle(130,610,40,20),
                     rectangle(130,610,50,20))
).

changed_object(
    status_dark_segment,
    status_dark,
    rectangle_change(rectangle(170,610,380,20),
                     rectangle(180,610,370,20))
).

preserved_bbox(main_green_structure,main_structure).
preserved_bbox(avatar,avatar).
preserved_bbox(status_tray,status_panel).

preserved_right_edge(status_dark_segment,status_dark,550).
shared_boundary_change(status_green_segment,status_dark_segment,170,180).

added_green_region(rectangle(190,450,50,50)).
added_green_region(rectangle(170,610,10,20)).
removed_green_region(rectangle(190,400,50,50)).

added_maroon_region(rectangle(190,420,50,30)).
removed_maroon_region(rectangle(190,470,50,30)).

added_gray_region(rectangle(190,400,50,20)).
removed_gray_region(rectangle(190,450,50,20)).

removed_navy_region(rectangle(200,320,10,10)).
added_blue_region(rectangle(200,320,10,10)).

removed_dark_gray_region(rectangle(170,610,10,20)).

added_object(Object) :-
    current_object(Object),
    \+ correspondence(_,Object),
    \+ representation_merged_into(_,Object).

removed_object(Object) :-
    previous_object(Object),
    \+ correspondence(Object,_),
    \+ representation_merged_into(Object,_).

observation(moved_object(lower_connector_gray,lower_barrier_gray,0,-50)).
observation(moved_object(lower_connector_burgundy,lower_barrier_maroon,0,-50)).
observation(recolored_object(avatar_navy,navy,blue)).
observation(resized_object(status_green_segment,size(40,20),size(50,20))).
observation(resized_object(status_dark_segment,size(380,20),size(370,20))).
observation(added_green_region(rectangle(190,450,50,50))).
observation(removed_green_region(rectangle(190,400,50,50))).
observation(shared_boundary_change(status_green_segment,status_dark_segment,170,180)).
observation(no_semantic_object_addition).
observation(no_semantic_object_removal).

hypothesis(
    action_effect(barrier_toggle,
                  translated(barrier_pair,delta(0,-50))),
    high
).

hypothesis(
    action_effect(barrier_toggle,
                  exchanged_occupancy(
                      rectangle(190,400,50,50),
                      green_floor,
                      barrier_pair)),
    high
).

hypothesis(
    action_effect(player_action,
                  progress_increment(cells(1))),
    medium
).

hypothesis(
    action_effect(player_action,
                  status_boundary_shift(10)),
    medium
).

hypothesis(
    action_effect(player_action,
                  avatar_palette_normalization(navy,blue)),
    low
).

action_effect(Action,Effect) :-
    hypothesis(action_effect(Action,Effect),_).
```

## Actions

- [`UP`](UP/README.md)
