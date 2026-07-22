# `ls20` level `1` — LEFT

- **Full game ID:** `ls20`
- **State:** `NOT_FINISHED`
- **Image hash:** `c8aac72598f024fd`
- **Incoming action:** `ACTION3`

## Navigation

- [Level start](../README.md)
- [Parent state](../README.md)

## Image

![ARC3 state](image.png)

## Files

- [state.json](state.json)
- [differences.pl](differences.pl)
- [objects.pl](objects.pl)
- [redraw.pl](redraw.pl)
- [redraw_diff.pl](redraw_diff.pl)
- [similarities.pl](similarities.pl)

## `objects.pl`

```prolog
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
```

## `differences.pl`

```prolog
state(previous).
state(current).

coordinate_units(previous, pixel).
coordinate_units(current, grid).
bbox_convention(previous, origin_width_height).
bbox_convention(current, inclusive_corners).
render_scale(current, 10).

object_correspondence(background_yellow, background_yellow, exact).
object_correspondence(left_gray_strip, left_wall, exact).
object_correspondence(main_green_structure, green_terrain, structural).
object_correspondence(top_gray_inset, top_panel, exact).
object_correspondence(top_maroon_glyph, top_glyph, exact).
object_correspondence(player_black, player_black, exact).
object_correspondence(player_blue, player_blue, exact).
object_correspondence(lower_gray_gate, door_cap, exact).
object_correspondence(lower_maroon_gate, door_body, exact).
object_correspondence(lower_left_gray_card, lower_icon_panel, exact).
object_correspondence(lower_left_maroon_glyph, lower_glyph, exact).
object_correspondence(bottom_control_panel, hud_panel, exact).
object_correspondence(bottom_dark_slot, hud_dark_bar, partial).
object_correspondence(bottom_button_1, hud_blue_slot_1, exact).
object_correspondence(bottom_button_2, hud_blue_slot_2, exact).
object_correspondence(bottom_button_3, hud_blue_slot_3, exact).

renamed_object(left_gray_strip, left_wall).
renamed_object(main_green_structure, green_terrain).
renamed_object(top_gray_inset, top_panel).
renamed_object(top_maroon_glyph, top_glyph).
renamed_object(lower_gray_gate, door_cap).
renamed_object(lower_maroon_gate, door_body).
renamed_object(lower_left_gray_card, lower_icon_panel).
renamed_object(lower_left_maroon_glyph, lower_glyph).
renamed_object(bottom_control_panel, hud_panel).
renamed_object(bottom_dark_slot, hud_dark_bar).
renamed_object(bottom_button_1, hud_blue_slot_1).
renamed_object(bottom_button_2, hud_blue_slot_2).
renamed_object(bottom_button_3, hud_blue_slot_3).

retagged_object(left_gray_strip, sidebar, boundary).
retagged_object(main_green_structure, connected_platform, connected_terrain).
retagged_object(top_maroon_glyph, glyph, symbol).
retagged_object(player_black, avatar_component, player_component).
retagged_object(player_blue, avatar_component, player_component).
retagged_object(lower_gray_gate, gate_component, portal_component).
retagged_object(lower_maroon_gate, gate_component, portal_component).
retagged_object(lower_left_gray_card, card, inset_panel).
retagged_object(lower_left_maroon_glyph, glyph, symbol).
retagged_object(bottom_control_panel, control_panel, user_interface_panel).
retagged_object(bottom_dark_slot, display_slot, status_bar).
retagged_object(bottom_button_1, button, status_slot).
retagged_object(bottom_button_2, button, status_slot).
retagged_object(bottom_button_3, button, status_slot).

added_object(hud_green_marker).

removed_object(Object) :-
    observation(object_removed(Object)).

changed_object(lower_gray_gate, door_cap,
    [renamed(lower_gray_gate, door_cap),
     retagged(gate_component, portal_component),
     position_changed(pixel_bbox(340,450,50,20),
                      pixel_bbox(290,450,50,20))]).

changed_object(lower_maroon_gate, door_body,
    [renamed(lower_maroon_gate, door_body),
     retagged(gate_component, portal_component),
     position_changed(pixel_bbox(340,470,50,30),
                      pixel_bbox(290,470,50,30))]).

changed_object(main_green_structure, green_terrain,
    [renamed(main_green_structure, green_terrain),
     retagged(connected_platform, connected_terrain),
     visible_geometry_changed,
     vacated_portal_region_filled_green,
     destination_portal_region_occluded]).

changed_object(bottom_dark_slot, hud_dark_bar,
    [renamed(bottom_dark_slot, hud_dark_bar),
     retagged(display_slot, status_bar),
     left_edge_changed(130,140),
     width_changed(420,410),
     leading_region_recolored(dark_gray,green)]).

moved_object(lower_gray_gate, door_cap,
    position(340,450), position(290,450)).
moved_object(lower_maroon_gate, door_body,
    position(340,470), position(290,470)).

movement_delta(lower_gray_gate, door_cap, -50, 0).
movement_delta(lower_maroon_gate, door_body, -50, 0).
movement_delta_grid(lower_gray_gate, door_cap, -5, 0).
movement_delta_grid(lower_maroon_gate, door_body, -5, 0).

resized_object(bottom_dark_slot, hud_dark_bar,
    size(420,20), size(410,20)).

recolored_object(hud_green_marker, dark_gray, green).

recolored_region(
    pixel_rect(130,610,10,20),
    dark_gray,
    green).

region_replaced(
    grid_rect(29,45,5,2),
    green,
    light_gray).
region_replaced(
    grid_rect(29,47,5,3),
    green,
    maroon).
region_replaced(
    grid_rect(34,45,5,2),
    light_gray,
    green).
region_replaced(
    grid_rect(34,47,5,3),
    maroon,
    green).
region_replaced(
    grid_rect(13,61,1,2),
    dark_gray,
    green).

unchanged_object(background_yellow, background_yellow).
unchanged_object(left_gray_strip, left_wall).
unchanged_object(top_gray_inset, top_panel).
unchanged_object(top_maroon_glyph, top_glyph).
unchanged_object(player_black, player_black).
unchanged_object(player_blue, player_blue).
unchanged_object(lower_left_gray_card, lower_icon_panel).
unchanged_object(lower_left_maroon_glyph, lower_glyph).
unchanged_object(bottom_control_panel, hud_panel).
unchanged_object(bottom_button_1, hud_blue_slot_1).
unchanged_object(bottom_button_2, hud_blue_slot_2).
unchanged_object(bottom_button_3, hud_blue_slot_3).

unchanged_property(background_yellow, color(yellow)).
unchanged_property(left_gray_strip, color(light_gray)).
unchanged_property(main_green_structure, color(green)).
unchanged_property(top_gray_inset, color(light_gray)).
unchanged_property(top_maroon_glyph, color(maroon)).
unchanged_property(player_black, color(black)).
unchanged_property(player_blue, color(blue)).
unchanged_property(lower_gray_gate, color(light_gray)).
unchanged_property(lower_maroon_gate, color(maroon)).
unchanged_property(lower_left_gray_card, color(light_gray)).
unchanged_property(lower_left_maroon_glyph, color(maroon)).
unchanged_property(bottom_control_panel, color(light_gray)).
unchanged_property(bottom_button_1, color(light_blue)).
unchanged_property(bottom_button_2, color(light_blue)).
unchanged_property(bottom_button_3, color(light_blue)).

unchanged_property(player_black,
    pixel_bbox(210,310,20,20)).
unchanged_property(player_blue,
    pixel_bbox(200,320,20,20)).
unchanged_property(top_gray_inset,
    pixel_bbox(330,90,70,70)).
unchanged_property(top_maroon_glyph,
    pixel_bbox(350,110,30,30)).
unchanged_property(lower_left_gray_card,
    pixel_bbox(10,530,100,100)).
unchanged_property(lower_left_maroon_glyph,
    pixel_bbox(30,550,60,60)).
unchanged_property(bottom_control_panel,
    pixel_bbox(120,600,520,40)).

composite_correspondence(player_avatar,
    [player_black,player_blue],
    [player_black,player_blue]).
composite_correspondence(lower_gate,
    [lower_gray_gate,lower_maroon_gate],
    [door_cap,door_body]).
composite_correspondence(top_marker,
    [top_gray_inset,top_maroon_glyph],
    [top_panel,top_glyph]).
composite_correspondence(lower_left_marker,
    [lower_left_gray_card,lower_left_maroon_glyph],
    [lower_icon_panel,lower_glyph]).
composite_correspondence(bottom_ui,
    [bottom_control_panel,bottom_dark_slot,
     bottom_button_1,bottom_button_2,bottom_button_3],
    [hud_panel,hud_green_marker,hud_dark_bar,
     hud_blue_slot_1,hud_blue_slot_2,hud_blue_slot_3]).

observation(added_object(hud_green_marker)).
observation(moved_object(lower_gray_gate, door_cap,
    position(340,450), position(290,450))).
observation(moved_object(lower_maroon_gate, door_body,
    position(340,470), position(290,470))).
observation(resized_object(bottom_dark_slot, hud_dark_bar,
    size(420,20), size(410,20))).
observation(recolored_region(
    pixel_rect(130,610,10,20), dark_gray, green)).
observation(portal_shift(left,5,grid_cells)).
observation(no_avatar_motion).
observation(no_marker_motion).
observation(no_button_change).

hypothesis(action_effect(unknown_action,
    move(lower_gate,left,5,grid_cells)), high).
hypothesis(action_effect(unknown_action,
    expose_terrain_at(grid_rect(34,45,5,5))), high).
hypothesis(action_effect(unknown_action,
    cover_terrain_at(grid_rect(29,45,5,5))), high).
hypothesis(action_effect(unknown_action,
    activate_status_marker(hud_green_marker)), medium).
hypothesis(action_effect(unknown_action,
    advance_portal_or_progress_state), medium).

action_effect(Action, Effect) :-
    hypothesis(action_effect(Action, Effect), _).

observed_difference(Difference) :-
    observation(Difference).

hypothesized_difference(Difference, Confidence) :-
    hypothesis(Difference, Confidence).
```

## Actions

- [`LEFT`](LEFT/README.md)
