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
