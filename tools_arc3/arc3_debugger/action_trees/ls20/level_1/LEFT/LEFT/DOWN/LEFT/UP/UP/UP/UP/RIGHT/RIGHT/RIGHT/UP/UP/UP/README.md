# `ls20` level `1` — LEFT / LEFT / DOWN / LEFT / UP / UP / UP / UP / RIGHT / RIGHT / RIGHT / UP / UP / UP

- **Full game ID:** `ls20`
- **State:** `NOT_FINISHED`
- **Image hash:** `7e264c1b99b773f1`
- **Incoming action:** `ACTION1`

## Navigation

- [Level start](../../../../../../../../../../../../../../README.md)
- [Parent state](../README.md)

## Image

![ARC3 state](image.png)

## Files

- [state.json](state.json)
- [differences.pl](differences.pl)
- [objects.pl](objects.pl)

## `objects.pl`

```prolog
canvas_size(640,640).
coordinate_system(screen_pixels).
origin(top_left).
x_axis(right).
y_axis(down).
bbox_format(inclusive).

color_value(yellow,rgb(255,220,0)).
color_value(green,rgb(46,204,64)).
color_value(light_gray,rgb(170,170,170)).
color_value(dark_gray,rgb(85,85,85)).
color_value(dark_red,rgb(128,0,32)).
color_value(blue,rgb(0,116,217)).
color_value(cyan,rgb(127,219,255)).
color_value(black,rgb(0,0,0)).

object(playfield,background).
bbox(playfield,0,0,639,639).
color(playfield,yellow).
geometry(playfield,rectangle(0,0,640,640)).
turtle_program(playfield,
 [penup,setcolor(yellow),fill_rect(0,0,640,640)]).

object(left_wall,wall).
bbox(left_wall,0,0,39,519).
color(left_wall,light_gray).
geometry(left_wall,rectangle(0,0,40,520)).
turtle_program(left_wall,
 [penup,setcolor(light_gray),fill_rect(0,0,40,520)]).

object(maze_green,maze).
bbox(maze_green,90,50,589,549).
color(maze_green,green).
geometry(maze_green,orthogonal_union([
 rect(190,50,350,50),
 rect(90,100,450,50),
 rect(90,150,150,50),
 rect(290,150,100,50),
 rect(440,150,100,50),
 rect(90,200,150,50),
 rect(290,200,100,50),
 rect(490,200,100,100),
 rect(140,250,50,130),
 rect(340,250,100,100),
 rect(490,300,50,90),
 rect(290,350,100,100),
 rect(120,380,90,90),
 rect(440,390,150,160),
 rect(390,500,50,50)
])).
turtle_program(maze_green,
 [penup,setcolor(green),
  fill_rect(190,50,350,50),
  fill_rect(90,100,450,50),
  fill_rect(90,150,150,50),
  fill_rect(290,150,100,50),
  fill_rect(440,150,100,50),
  fill_rect(90,200,150,50),
  fill_rect(290,200,100,50),
  fill_rect(490,200,100,100),
  fill_rect(140,250,50,130),
  fill_rect(340,250,100,100),
  fill_rect(490,300,50,90),
  fill_rect(290,350,100,100),
  fill_rect(120,380,90,90),
  fill_rect(440,390,150,160),
  fill_rect(390,500,50,50)]).

object(marker_north,marker).
bbox(marker_north,150,160,179,189).
colors(marker_north,[dark_gray,green]).
geometry(marker_north,framed_square(
 outer(rect(150,160,30,30),dark_gray),
 inner(rect(160,170,10,10),green))).
turtle_program(marker_north,
 [penup,setcolor(dark_gray),fill_rect(150,160,30,30),
  penup,setcolor(green),fill_rect(160,170,10,10)]).

object(left_terminal,terminal).
bbox(left_terminal,130,390,199,459).
colors(left_terminal,[light_gray,dark_red]).
geometry(left_terminal,composite([
 rect(130,390,70,70,light_gray),
 rect(150,410,30,20,dark_red),
 rect(170,430,10,10,dark_red)
])).
turtle_program(left_terminal,
 [penup,setcolor(light_gray),fill_rect(130,390,70,70),
  penup,setcolor(dark_red),fill_rect(150,410,30,20),
  penup,setcolor(dark_red),fill_rect(170,430,10,10)]).

object(center_gate,gate).
bbox(center_gate,290,400,339,449).
colors(center_gate,[light_gray,dark_red]).
geometry(center_gate,vertical_bicolor([
 rect(290,400,50,20,light_gray),
 rect(290,420,50,30,dark_red)
])).
turtle_program(center_gate,
 [penup,setcolor(light_gray),fill_rect(290,400,50,20),
  penup,setcolor(dark_red),fill_rect(290,420,50,30)]).

object(player,avatar).
bbox(player,500,460,529,489).
colors(player,[blue,black]).
geometry(player,composite([
 rect(510,460,10,10,black),
 rect(500,470,20,10,blue),
 rect(520,470,10,10,black),
 rect(510,480,10,10,blue)
])).
orientation(player,right).
turtle_program(player,
 [penup,setcolor(black),fill_rect(510,460,10,10),
  penup,setcolor(blue),fill_rect(500,470,20,10),
  penup,setcolor(black),fill_rect(520,470,10,10),
  penup,setcolor(blue),fill_rect(510,480,10,10)]).

object(marker_south,marker).
bbox(marker_south,400,510,429,539).
colors(marker_south,[dark_gray,green]).
geometry(marker_south,framed_square(
 outer(rect(400,510,30,30),dark_gray),
 inner(rect(410,520,10,10),green))).
turtle_program(marker_south,
 [penup,setcolor(dark_gray),fill_rect(400,510,30,30),
  penup,setcolor(green),fill_rect(410,520,10,10)]).

object(control_pad,control).
bbox(control_pad,10,530,109,629).
colors(control_pad,[light_gray,dark_red]).
geometry(control_pad,composite([
 rect(10,530,100,100,light_gray),
 rect(30,550,60,20,dark_red),
 rect(70,570,20,40,dark_red),
 rect(30,590,20,20,dark_red)
])).
turtle_program(control_pad,
 [penup,setcolor(light_gray),fill_rect(10,530,100,100),
  penup,setcolor(dark_red),fill_rect(30,550,60,20),
  penup,setcolor(dark_red),fill_rect(70,570,20,40),
  penup,setcolor(dark_red),fill_rect(30,590,20,20)]).

object(status_panel,status_display).
bbox(status_panel,120,600,639,639).
colors(status_panel,[light_gray,dark_gray,cyan]).
geometry(status_panel,composite([
 rect(120,600,520,40,light_gray),
 rect(130,610,420,20,dark_gray),
 rect(560,610,20,20,cyan),
 rect(590,610,20,20,cyan),
 rect(620,610,20,20,cyan)
])).
turtle_program(status_panel,
 [penup,setcolor(light_gray),fill_rect(120,600,520,40),
  penup,setcolor(dark_gray),fill_rect(130,610,420,20),
  penup,setcolor(cyan),fill_rect(560,610,20,20),
  penup,setcolor(cyan),fill_rect(590,610,20,20),
  penup,setcolor(cyan),fill_rect(620,610,20,20)]).

contains(playfield,left_wall).
contains(playfield,maze_green).
contains(playfield,control_pad).
contains(playfield,status_panel).
contains(maze_green,marker_north).
contains(maze_green,left_terminal).
contains(maze_green,center_gate).
contains(maze_green,player).
contains(maze_green,marker_south).

embedded_in(marker_north,maze_green).
embedded_in(left_terminal,maze_green).
embedded_in(center_gate,maze_green).
embedded_in(player,maze_green).
embedded_in(marker_south,maze_green).

adjacent(left_wall,playfield).
adjacent_side(left_wall,playfield,right).
adjacent_side(left_terminal,maze_green,top).
adjacent_side(left_terminal,maze_green,right).
adjacent_side(left_terminal,maze_green,bottom).
adjacent_side(left_terminal,maze_green,left).
adjacent_side(center_gate,maze_green,top).
adjacent_side(center_gate,maze_green,right).
adjacent_side(marker_north,maze_green,top).
adjacent_side(marker_north,maze_green,right).
adjacent_side(marker_north,maze_green,bottom).
adjacent_side(marker_north,maze_green,left).
adjacent_side(marker_south,maze_green,top).
adjacent_side(marker_south,maze_green,right).
adjacent_side(marker_south,maze_green,bottom).
adjacent_side(marker_south,maze_green,left).

spatial_relation(marker_north,left_terminal,above).
spatial_relation(marker_north,center_gate,above).
spatial_relation(left_terminal,center_gate,left_of).
spatial_relation(center_gate,player,left_of).
spatial_relation(marker_south,player,below_left).
spatial_relation(control_pad,status_panel,left_of).

layer_order(playfield,0).
layer_order(left_wall,1).
layer_order(maze_green,2).
layer_order(marker_north,3).
layer_order(left_terminal,3).
layer_order(center_gate,3).
layer_order(player,3).
layer_order(marker_south,3).
layer_order(control_pad,4).
layer_order(status_panel,4).

grid_alignment(10).
rendering(pixelated).
anti_aliasing(false).
```

## `differences.pl`

```prolog
:- discontiguous observation/1.
:- discontiguous hypothesis/2.

previous_bbox_convention(half_open).
current_bbox_convention(inclusive).

normalized_previous_bbox(background, bbox(0,0,640,640)).
normalized_current_bbox(playfield, bbox(0,0,640,640)).
normalized_previous_bbox(left_border, bbox(0,0,40,520)).
normalized_current_bbox(left_wall, bbox(0,0,40,520)).
normalized_previous_bbox(green_structure, bbox(140,200,540,500)).
normalized_current_bbox(maze_green, bbox(90,50,590,550)).
normalized_previous_bbox(avatar_pair, bbox(200,310,230,340)).
normalized_current_bbox(player, bbox(500,460,530,490)).
normalized_previous_bbox(control_composite, bbox(10,530,110,630)).
normalized_current_bbox(control_pad, bbox(10,530,110,630)).
normalized_previous_bbox(status_panel, bbox(120,600,640,640)).
normalized_current_bbox(status_panel, bbox(120,600,640,640)).

observation(identifier_renamed(background, playfield)).
observation(identifier_renamed(left_border, left_wall)).
observation(identifier_renamed(green_structure, maze_green)).

observation(objects_merged([control_panel,control_glyph], control_pad)).
observation(objects_merged(
    [status_panel,status_green,status_dark,status_blue_1,status_blue_2,status_blue_3],
    status_panel)).

hypothesis(0.99, objects_merged([avatar_black,avatar_blue], player)).
hypothesis(0.99, corresponding_object(avatar_pair, player)).
hypothesis(0.95, corresponding_object(green_structure, maze_green)).

observation(added_object(marker_north)).
observation(added_object(left_terminal)).
observation(added_object(center_gate)).
observation(added_object(marker_south)).

observation(removed_object(portal_frame)).
observation(removed_object(portal_panel)).
observation(removed_object(portal_glyph)).
observation(removed_object(portal_connector)).
observation(removed_object(structure_cavity)).

observation(changed_object(
    green_structure,
    maze_green,
    geometry_replaced)).

observation(changed_object(
    green_structure,
    maze_green,
    bbox(bbox(140,200,540,500),bbox(90,50,590,550)))).

observation(changed_object(
    status_panel,
    status_panel,
    representation_changed(from_container_with_children,to_composite_object)))).

observation(changed_object(
    control_panel,
    control_pad,
    representation_changed(from_container_with_child,to_composite_object)))).

observation(changed_object(
    avatar_pair,
    player,
    color_partition_changed)).

observation(changed_object(
    avatar_pair,
    player,
    orientation_changed(unspecified,right))).

hypothesis(0.99,
    moved_object(
        avatar_pair-player,
        bbox(200,310,230,340),
        bbox(500,460,530,490),
        delta(300,150))).

observation(resized_object(
    green_structure-maze_green,
    size(400,300),
    size(500,500))).

observation(resized_object(
    status_dark-status_panel_dark_segment,
    size(300,20),
    size(420,20))).

observation(recolored_object(
    status_green-status_panel_left_segment,
    green,
    dark_gray)).

observation(recolored_object(
    control_glyph-control_pad_glyph,
    maroon,
    dark_red)).

observation(recolored_object(
    avatar_pair_middle_cell,
    black,
    blue)).

observation(unchanged_object(background, playfield)).
observation(unchanged_object(left_border, left_wall)).
observation(unchanged_object(control_composite, control_pad)).
observation(unchanged_object(status_panel_outer, status_panel)).
observation(unchanged_object(status_blue_1, status_panel_marker_1)).
observation(unchanged_object(status_blue_2, status_panel_marker_2)).
observation(unchanged_object(status_blue_3, status_panel_marker_3)).
observation(unchanged_object(avatar_pair_silhouette, player)).

observation(preserved_property(
    background-playfield,
    [geometry,size,position,color])).

observation(preserved_property(
    left_border-left_wall,
    [geometry,size,position,color])).

observation(preserved_property(
    control_composite-control_pad,
    [geometry,size,position])).

observation(preserved_property(
    status_panel_outer-status_panel,
    [geometry,size,position,color])).

observation(preserved_property(
    avatar_pair-player,
    [size,silhouette])).

observation(color_alias(light_blue, cyan, rgb(127,219,255))).

observation(palette_change(
    maroon,
    rgb(133,20,75),
    dark_red,
    rgb(128,0,32))).

observation(palette_change(
    dark_gray,
    rgb(102,102,102),
    dark_gray,
    rgb(85,85,85))).

observation(status_change(
    green_length,
    120,
    0)).

observation(status_change(
    dark_length,
    300,
    420)).

observation(status_change(
    cyan_marker_count,
    3,
    3)).

observation(world_layout_change(
    old_green_region_bbox(bbox(140,200,540,500)),
    new_green_region_bbox(bbox(90,50,590,550)))).

observation(new_embedded_object(marker_north, maze_green)).
observation(new_embedded_object(left_terminal, maze_green)).
observation(new_embedded_object(center_gate, maze_green)).
observation(new_embedded_object(marker_south, maze_green)).

hypothesis(0.97,
    action_effect(
        preceding_action,
        player_relocated(delta(300,150)))).

hypothesis(0.94,
    action_effect(
        preceding_action,
        maze_layout_replaced))).

hypothesis(0.90,
    action_effect(
        preceding_action,
        portal_group_removed))).

hypothesis(0.90,
    action_effect(
        preceding_action,
        puzzle_objects_spawned(
            [marker_north,left_terminal,center_gate,marker_south]))).

hypothesis(0.88,
    action_effect(
        preceding_action,
        status_green_depleted))).

hypothesis(0.82,
    action_effect(
        preceding_action,
        level_or_room_transition))).

hypothesis(0.72,
    possible_functional_successor(portal_glyph, left_terminal)).

hypothesis(0.68,
    possible_functional_successor(portal_connector, center_gate)).

identifier_renamed(Old, New) :-
    observation(identifier_renamed(Old, New)).

objects_merged(OldObjects, NewObject) :-
    observation(objects_merged(OldObjects, NewObject)).
objects_merged(OldObjects, NewObject) :-
    hypothesis(_, objects_merged(OldObjects, NewObject)).

added_object(Object) :-
    observation(added_object(Object)).

removed_object(Object) :-
    observation(removed_object(Object)).

changed_object(Previous, Current, Change) :-
    observation(changed_object(Previous, Current, Change)).

moved_object(Object, From, To, Delta) :-
    observation(moved_object(Object, From, To, Delta)).
moved_object(Object, From, To, Delta) :-
    hypothesis(_, moved_object(Object, From, To, Delta)).

recolored_object(Object, OldColor, NewColor) :-
    observation(recolored_object(Object, OldColor, NewColor)).

resized_object(Object, OldSize, NewSize) :-
    observation(resized_object(Object, OldSize, NewSize)).

unchanged_object(Previous, Current) :-
    observation(unchanged_object(Previous, Current)).

action_effect(Action, Effect) :-
    observation(action_effect(Action, Effect)).
action_effect(Action, Effect) :-
    hypothesis(_, action_effect(Action, Effect)).

observed_difference(Difference) :-
    observation(Difference).

hypothesized_difference(Confidence, Difference) :-
    hypothesis(Confidence, Difference).

corresponding_object(Previous, Current) :-
    observation(identifier_renamed(Previous, Current)).
corresponding_object(Previous, Current) :-
    observation(unchanged_object(Previous, Current)).
corresponding_object(Previous, Current) :-
    hypothesis(_, corresponding_object(Previous, Current)).

visual_displacement(Previous, Current, DX, DY) :-
    normalized_previous_bbox(Previous, bbox(PX1,PY1,_,_)),
    normalized_current_bbox(Current, bbox(CX1,CY1,_,_)),
    DX is CX1-PX1,
    DY is CY1-PY1.

same_normalized_bbox(Previous, Current) :-
    normalized_previous_bbox(Previous, Box),
    normalized_current_bbox(Current, Box).
```

## Actions

*No child actions recorded yet.*
