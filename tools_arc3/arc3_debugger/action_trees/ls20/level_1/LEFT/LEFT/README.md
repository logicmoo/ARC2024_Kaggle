# `ls20` level `1` — LEFT / LEFT

- **Full game ID:** `ls20`
- **State:** `NOT_FINISHED`
- **Image hash:** `256a4d182c9894fb`
- **Incoming action:** `ACTION3`

## Navigation

- [Level start](../../README.md)
- [Parent state](../README.md)

## Image

![ARC3 state](image.png)

## Files

- [state.json](state.json)
- [differences.pl](differences.pl)
- [objects.pl](objects.pl)

## `objects.pl`

```prolog
canvas_size(640, 640).
coordinate_system(origin_top_left, x_right, y_down).
bbox_format(inclusive).

palette(yellow, rgb(255,220,0)).
palette(green, rgb(46,204,64)).
palette(gray, rgb(170,170,170)).
palette(dark_gray, rgb(102,102,102)).
palette(maroon, rgb(133,20,75)).
palette(blue, rgb(0,116,217)).
palette(cyan, rgb(127,219,255)).
palette(black, rgb(0,0,0)).

object(background_1, background).
bbox(background_1, bbox(0,0,639,639)).
color(background_1, yellow).
geometry(background_1, rectangle(0,0,640,640)).
z_order(background_1, 0).
turtle_program(background_1,
    [penup,set_pos(0,0),setcolor(yellow),pendown,fill_rect(640,640),penup]).

object(left_wall_1, wall).
bbox(left_wall_1, bbox(0,0,39,519)).
color(left_wall_1, gray).
geometry(left_wall_1, rectangle(0,0,40,520)).
orientation(left_wall_1, vertical).
touches_canvas_edge(left_wall_1, left).
touches_canvas_edge(left_wall_1, top).
z_order(left_wall_1, 1).
turtle_program(left_wall_1,
    [penup,set_pos(0,0),setcolor(gray),pendown,fill_rect(40,520),penup]).

object(structure_1, connected_structure).
bbox(structure_1, bbox(140,80,539,499)).
color(structure_1, green).
geometry(structure_1,
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
connected(structure_1).
z_order(structure_1, 2).
turtle_program(structure_1,
    [penup,setcolor(green),
     set_pos(320,80),pendown,fill_rect(90,90),penup,
     set_pos(340,160),pendown,fill_rect(50,90),penup,
     set_pos(140,250),pendown,fill_rect(400,50),penup,
     set_pos(140,300),pendown,fill_rect(150,100),penup,
     set_pos(340,300),pendown,fill_rect(200,100),penup,
     set_pos(190,400),pendown,fill_rect(50,100),penup,
     set_pos(340,400),pendown,fill_rect(200,100),penup,
     set_pos(240,450),pendown,fill_rect(100,50),penup]).

object(chamber_1, inset_panel).
bbox(chamber_1, bbox(330,90,399,159)).
color(chamber_1, gray).
geometry(chamber_1, rectangle(330,90,70,70)).
contained_in(chamber_1, structure_1).
bordered_by(chamber_1, structure_1).
z_order(chamber_1, 3).
turtle_program(chamber_1,
    [penup,set_pos(330,90),setcolor(gray),pendown,fill_rect(70,70),penup]).

object(chamber_glyph_1, glyph).
bbox(chamber_glyph_1, bbox(350,110,379,139)).
color(chamber_glyph_1, maroon).
geometry(chamber_glyph_1,
    union_of_rectangles([
        rectangle(350,110,30,10),
        rectangle(370,120,10,20),
        rectangle(350,130,10,10)
    ])).
contained_in(chamber_glyph_1, chamber_1).
shape(chamber_glyph_1, angular_hook).
z_order(chamber_glyph_1, 4).
turtle_program(chamber_glyph_1,
    [penup,setcolor(maroon),
     set_pos(350,110),pendown,fill_rect(30,10),penup,
     set_pos(370,120),pendown,fill_rect(10,20),penup,
     set_pos(350,130),pendown,fill_rect(10,10),penup]).

object(player_1, player).
bbox(player_1, bbox(200,310,229,339)).
colors(player_1, [black,blue]).
geometry(player_1,
    colored_union([
        black-rectangle(210,310,10,20),
        black-rectangle(220,320,10,10),
        blue-rectangle(200,320,10,10),
        blue-rectangle(210,330,10,10)
    ])).
contained_in(player_1, structure_1).
orientation(player_1, right).
z_order(player_1, 5).
turtle_program(player_1,
    [penup,setcolor(black),
     set_pos(210,310),pendown,fill_rect(10,20),penup,
     set_pos(220,320),pendown,fill_rect(10,10),penup,
     setcolor(blue),
     set_pos(200,320),pendown,fill_rect(10,10),penup,
     set_pos(210,330),pendown,fill_rect(10,10),penup]).

object(portal_cap_1, portal_cap).
bbox(portal_cap_1, bbox(240,450,289,469)).
color(portal_cap_1, gray).
geometry(portal_cap_1, rectangle(240,450,50,20)).
contained_in(portal_cap_1, structure_1).
z_order(portal_cap_1, 6).
turtle_program(portal_cap_1,
    [penup,set_pos(240,450),setcolor(gray),pendown,fill_rect(50,20),penup]).

object(portal_1, portal).
bbox(portal_1, bbox(240,470,289,499)).
color(portal_1, maroon).
geometry(portal_1, rectangle(240,470,50,30)).
adjacent_above(portal_cap_1, portal_1).
z_order(portal_1, 7).
turtle_program(portal_1,
    [penup,set_pos(240,470),setcolor(maroon),pendown,fill_rect(50,30),penup]).

object(control_panel_1, control_panel).
bbox(control_panel_1, bbox(10,530,109,629)).
color(control_panel_1, gray).
geometry(control_panel_1, rectangle(10,530,100,100)).
z_order(control_panel_1, 8).
turtle_program(control_panel_1,
    [penup,set_pos(10,530),setcolor(gray),pendown,fill_rect(100,100),penup]).

object(control_glyph_1, glyph).
bbox(control_glyph_1, bbox(30,550,89,609)).
color(control_glyph_1, maroon).
geometry(control_glyph_1,
    union_of_rectangles([
        rectangle(30,550,60,20),
        rectangle(30,570,20,40),
        rectangle(70,590,20,20)
    ])).
contained_in(control_glyph_1, control_panel_1).
shape(control_glyph_1, angular_symbol).
z_order(control_glyph_1, 9).
turtle_program(control_glyph_1,
    [penup,setcolor(maroon),
     set_pos(30,550),pendown,fill_rect(60,20),penup,
     set_pos(30,570),pendown,fill_rect(20,40),penup,
     set_pos(70,590),pendown,fill_rect(20,20),penup]).

object(status_panel_1, status_panel).
bbox(status_panel_1, bbox(120,600,639,639)).
color(status_panel_1, gray).
geometry(status_panel_1, rectangle(120,600,520,40)).
touches_canvas_edge(status_panel_1, right).
touches_canvas_edge(status_panel_1, bottom).
z_order(status_panel_1, 10).
turtle_program(status_panel_1,
    [penup,set_pos(120,600),setcolor(gray),pendown,fill_rect(520,40),penup]).

object(status_green_1, status_segment).
bbox(status_green_1, bbox(130,610,149,629)).
color(status_green_1, green).
geometry(status_green_1, rectangle(130,610,20,20)).
contained_in(status_green_1, status_panel_1).
z_order(status_green_1, 11).
turtle_program(status_green_1,
    [penup,set_pos(130,610),setcolor(green),pendown,fill_rect(20,20),penup]).

object(status_bar_1, status_bar).
bbox(status_bar_1, bbox(150,610,549,629)).
color(status_bar_1, dark_gray).
geometry(status_bar_1, rectangle(150,610,400,20)).
contained_in(status_bar_1, status_panel_1).
adjacent_left(status_green_1, status_bar_1).
z_order(status_bar_1, 12).
turtle_program(status_bar_1,
    [penup,set_pos(150,610),setcolor(dark_gray),pendown,fill_rect(400,20),penup]).

object(status_slot_1, status_slot).
bbox(status_slot_1, bbox(560,610,579,629)).
color(status_slot_1, cyan).
geometry(status_slot_1, rectangle(560,610,20,20)).
contained_in(status_slot_1, status_panel_1).
z_order(status_slot_1, 13).
turtle_program(status_slot_1,
    [penup,set_pos(560,610),setcolor(cyan),pendown,fill_rect(20,20),penup]).

object(status_slot_2, status_slot).
bbox(status_slot_2, bbox(590,610,609,629)).
color(status_slot_2, cyan).
geometry(status_slot_2, rectangle(590,610,20,20)).
contained_in(status_slot_2, status_panel_1).
z_order(status_slot_2, 14).
turtle_program(status_slot_2,
    [penup,set_pos(590,610),setcolor(cyan),pendown,fill_rect(20,20),penup]).

object(status_slot_3, status_slot).
bbox(status_slot_3, bbox(620,610,639,629)).
color(status_slot_3, cyan).
geometry(status_slot_3, rectangle(620,610,20,20)).
contained_in(status_slot_3, status_panel_1).
touches_canvas_edge(status_slot_3, right).
z_order(status_slot_3, 15).
turtle_program(status_slot_3,
    [penup,set_pos(620,610),setcolor(cyan),pendown,fill_rect(20,20),penup]).

touches(left_wall_1, background_1).
touches(structure_1, background_1).
touches(control_panel_1, background_1).
touches(status_panel_1, background_1).
touches(chamber_1, structure_1).
touches(chamber_glyph_1, chamber_1).
touches(player_1, structure_1).
touches(portal_cap_1, portal_1).
touches(portal_cap_1, structure_1).
touches(portal_1, structure_1).
touches(control_glyph_1, control_panel_1).
touches(status_green_1, status_bar_1).

adjacent(A,B) :- touches(A,B).
adjacent(A,B) :- touches(B,A).
```

## `differences.pl`

```prolog
previous_object(background_yellow).
previous_object(left_wall).
previous_object(green_terrain).
previous_object(top_panel).
previous_object(top_glyph).
previous_object(player_blue).
previous_object(player_black).
previous_object(door_cap).
previous_object(door_body).
previous_object(lower_icon_panel).
previous_object(lower_glyph).
previous_object(hud_panel).
previous_object(hud_green_marker).
previous_object(hud_dark_bar).
previous_object(hud_blue_slot_1).
previous_object(hud_blue_slot_2).
previous_object(hud_blue_slot_3).

current_object(background_1).
current_object(left_wall_1).
current_object(structure_1).
current_object(chamber_1).
current_object(chamber_glyph_1).
current_object(player_1).
current_object(portal_cap_1).
current_object(portal_1).
current_object(control_panel_1).
current_object(control_glyph_1).
current_object(status_panel_1).
current_object(status_green_1).
current_object(status_bar_1).
current_object(status_slot_1).
current_object(status_slot_2).
current_object(status_slot_3).

observed(object_correspondence(background_yellow, background_1)).
observed(object_correspondence(left_wall, left_wall_1)).
observed(object_correspondence(green_terrain, structure_1)).
observed(object_correspondence(top_panel, chamber_1)).
observed(object_correspondence(top_glyph, chamber_glyph_1)).
observed(object_correspondence(player_blue, player_1)).
observed(object_correspondence(player_black, player_1)).
observed(object_correspondence(door_cap, portal_cap_1)).
observed(object_correspondence(door_body, portal_1)).
observed(object_correspondence(lower_icon_panel, control_panel_1)).
observed(object_correspondence(lower_glyph, control_glyph_1)).
observed(object_correspondence(hud_panel, status_panel_1)).
observed(object_correspondence(hud_green_marker, status_green_1)).
observed(object_correspondence(hud_dark_bar, status_bar_1)).
observed(object_correspondence(hud_blue_slot_1, status_slot_1)).
observed(object_correspondence(hud_blue_slot_2, status_slot_2)).
observed(object_correspondence(hud_blue_slot_3, status_slot_3)).

object_correspondence(Previous, Current) :-
    observed(object_correspondence(Previous, Current)).

added_object(Current) :-
    current_object(Current),
    \+ object_correspondence(_, Current).

removed_object(Previous) :-
    previous_object(Previous),
    \+ object_correspondence(Previous, _).

observed(unchanged_object(background_yellow, background_1)).
observed(unchanged_object(left_wall, left_wall_1)).
observed(unchanged_object(top_panel, chamber_1)).
observed(unchanged_object(lower_icon_panel, control_panel_1)).
observed(unchanged_object(hud_panel, status_panel_1)).
observed(unchanged_object(hud_blue_slot_1, status_slot_1)).
observed(unchanged_object(hud_blue_slot_2, status_slot_2)).
observed(unchanged_object(hud_blue_slot_3, status_slot_3)).

unchanged_object(Previous, Current) :-
    observed(unchanged_object(Previous, Current)).

observed(unchanged_component(player_black, player_1, black)).
observed(unchanged_component(player_blue, player_1, blue)).
observed(representation_change([player_black, player_blue], player_1,
                               merged_multicolor_object)).

observed(changed_object(green_terrain, structure_1,
                        added_region(bbox(290,450,339,499)))).
observed(changed_object(green_terrain, structure_1,
                        component_decomposition_changed)).
observed(changed_object(door_cap, portal_cap_1,
                        displacement(-50,0))).
observed(changed_object(door_body, portal_1,
                        displacement(-50,0))).
observed(changed_object(hud_green_marker, status_green_1,
                        bbox_change(bbox(130,610,139,629),
                                    bbox(130,610,149,629)))).
observed(changed_object(hud_dark_bar, status_bar_1,
                        bbox_change(bbox(140,610,549,629),
                                    bbox(150,610,549,629)))).
observed(changed_object(top_glyph, chamber_glyph_1,
                        palette_value_change(maroon))).
observed(changed_object(door_body, portal_1,
                        palette_value_change(maroon))).
observed(changed_object(lower_glyph, control_glyph_1,
                        palette_value_change(maroon))).

changed_object(Previous, Current, Change) :-
    observed(changed_object(Previous, Current, Change)).

observed(moved_object(door_cap, portal_cap_1, -50, 0)).
observed(moved_object(door_body, portal_1, -50, 0)).

moved_object(Previous, Current, DeltaX, DeltaY) :-
    observed(moved_object(Previous, Current, DeltaX, DeltaY)).

observed(resized_object(hud_green_marker, status_green_1,
                        size_change(size(10,20), size(20,20)))).
observed(resized_object(hud_dark_bar, status_bar_1,
                        size_change(size(410,20), size(400,20)))).

resized_object(Previous, Current, Change) :-
    observed(resized_object(Previous, Current, Change)).

observed(recolored_object(top_glyph, chamber_glyph_1,
                          color_change(rgb(135,12,45),
                                       rgb(133,20,75)))).
observed(recolored_object(door_body, portal_1,
                          color_change(rgb(135,12,45),
                                       rgb(133,20,75)))).
observed(recolored_object(lower_glyph, control_glyph_1,
                          color_change(rgb(135,12,45),
                                       rgb(133,20,75)))).

recolored_object(Previous, Current, Change) :-
    observed(recolored_object(Previous, Current, Change)).

observed(palette_change(maroon,
                        rgb(135,12,45),
                        rgb(133,20,75))).

observed(palette_alias(light_gray, gray, rgb(170,170,170))).
observed(palette_alias(light_blue, cyan, rgb(127,219,255))).

observed(bbox_transition(door_cap,
                         bbox(290,450,339,469),
                         portal_cap_1,
                         bbox(240,450,289,469))).
observed(bbox_transition(door_body,
                         bbox(290,470,339,499),
                         portal_1,
                         bbox(240,470,289,499))).
observed(bbox_transition(hud_green_marker,
                         bbox(130,610,139,629),
                         status_green_1,
                         bbox(130,610,149,629))).
observed(bbox_transition(hud_dark_bar,
                         bbox(140,610,549,629),
                         status_bar_1,
                         bbox(150,610,549,629))).

observed(pixel_region_change(bbox(240,450,289,469),
                             green,
                             gray)).
observed(pixel_region_change(bbox(240,470,289,499),
                             green,
                             maroon)).
observed(pixel_region_change(bbox(290,450,339,469),
                             gray,
                             green)).
observed(pixel_region_change(bbox(290,470,339,499),
                             maroon,
                             green)).
observed(pixel_region_change(bbox(140,610,149,629),
                             dark_gray,
                             green)).

observed(action_effect(state_transition,
                       portal_pair_displaced(-50,0))).
observed(action_effect(state_transition,
                       status_boundary_shifted(10))).
observed(action_effect(state_transition,
                       green_structure_extended(bbox(290,450,339,499)))).

action_effect(Action, Effect) :-
    observed(action_effect(Action, Effect)).
action_effect(Action, Effect) :-
    hypothesis(action_effect(Action, Effect), _).

hypothesis(action_effect(unknown_action,
                         move_portal_left(one_portal_width)),
           confidence(high)).
hypothesis(action_effect(unknown_action,
                         increase_green_status_by(one_cell)),
           confidence(medium)).
hypothesis(linked_changes(portal_pair_displaced(-50,0),
                          status_boundary_shifted(10)),
           confidence(low)).
hypothesis(terrain_update_fills_previous_portal_location,
                           bbox(290,450,339,499)),
           confidence(high)).

change_kind(Previous, Current, moved) :-
    moved_object(Previous, Current, _, _).
change_kind(Previous, Current, resized) :-
    resized_object(Previous, Current, _).
change_kind(Previous, Current, recolored) :-
    recolored_object(Previous, Current, _).
change_kind(Previous, Current, representation_only) :-
    object_correspondence(Previous, Current),
    unchanged_object(Previous, Current).

physically_added_object(Object) :-
    added_object(Object).

physically_removed_object(Object) :-
    removed_object(Object).
```

## Actions

- [`DOWN`](DOWN/README.md)
