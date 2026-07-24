coordinate_unit(cell).
previous_to_current_scale(10).
comparison_basis(normalized_cell_grid).

object_correspondence(background, background_yellow, identity).
object_correspondence(left_sidebar, left_wall, identity).
object_correspondence(main_structure, arena_green, identity).
object_correspondence(upper_display, top_pad, identity).
object_correspondence(upper_glyph, top_glyph, identity).
object_correspondence(avatar, player_sprite(player_black, player_blue), color_component_split).
object_correspondence(lower_barrier_gray, door_lintel, identity).
object_correspondence(lower_barrier_maroon, door_maroon, identity).
object_correspondence(lower_icon_panel, inventory_card, identity).
object_correspondence(lower_icon_glyph, inventory_glyph, identity).
object_correspondence(status_panel, status_tray, identity).
object_correspondence(status_green, status_green_segment, identity).
object_correspondence(status_dark, status_dark_segment, identity).
object_correspondence(status_light_1, status_aqua_1, identity).
object_correspondence(status_light_2, status_aqua_2, identity).
object_correspondence(status_light_3, status_aqua_3, identity).

color_equivalent(light_blue, aqua).
color_equivalent(C, C).

representation_split(avatar, [player_black, player_blue]).
representation_added_object(arena_cavity).
representation_reclassified(background, arena_cavity, exposed_background_to_explicit_cavity).
representation_renamed(light_blue, aqua).

observed_semantic_addition(_) :- fail.
observed_semantic_removal(_) :- fail.
observed_recoloring(_, _, _) :- fail.

added_object(Object) :-
    observed_semantic_addition(Object).

removed_object(Object) :-
    observed_semantic_removal(Object).

recolored_object(ObjectPair, OldColor, NewColor) :-
    observed_recoloring(ObjectPair, OldColor, NewColor).

observed_move(lower_barrier_gray, door_lintel, 0, -5).
observed_move(lower_barrier_maroon, door_maroon, 0, -5).

moved_object(Previous, Current, DX, DY) :-
    observed_move(Previous, Current, DX, DY).

observed_resize(
    status_green-status_green_segment,
    size(5, 2),
    size(6, 2)
).
observed_resize(
    status_dark-status_dark_segment,
    size(37, 2),
    size(36, 2)
).

resized_object(ObjectPair, OldSize, NewSize) :-
    observed_resize(ObjectPair, OldSize, NewSize).

observed_change(
    main_structure,
    arena_green,
    geometry_added(cell_rectangle(19, 40, 5, 5))
).
observed_change(
    lower_barrier_gray,
    door_lintel,
    displacement(0, -5)
).
observed_change(
    lower_barrier_maroon,
    door_maroon,
    displacement(0, -5)
).
observed_change(
    status_green,
    status_green_segment,
    resized(size(5, 2), size(6, 2))
).
observed_change(
    status_dark,
    status_dark_segment,
    resized_and_left_edge_shifted(size(37, 2), size(36, 2), 1)
).

changed_object(Previous, Current, Change) :-
    observed_change(Previous, Current, Change).

unchanged_object(background, background_yellow).
unchanged_object(left_sidebar, left_wall).
unchanged_object(upper_display, top_pad).
unchanged_object(upper_glyph, top_glyph).
unchanged_object(avatar, player_sprite(player_black, player_blue)).
unchanged_object(lower_icon_panel, inventory_card).
unchanged_object(lower_icon_glyph, inventory_glyph).
unchanged_object(status_panel, status_tray).
unchanged_object(status_light_1, status_aqua_1).
unchanged_object(status_light_2, status_aqua_2).
unchanged_object(status_light_3, status_aqua_3).

unchanged_bbox(background, background_yellow, bbox(0, 0, 63, 63)).
unchanged_bbox(left_sidebar, left_wall, bbox(0, 0, 3, 51)).
unchanged_bbox(main_structure, arena_green, bbox(14, 8, 53, 49)).
unchanged_bbox(upper_display, top_pad, bbox(33, 9, 39, 15)).
unchanged_bbox(upper_glyph, top_glyph, bbox(35, 11, 37, 13)).
unchanged_bbox(avatar, player_sprite(player_black, player_blue), bbox(20, 31, 22, 33)).
unchanged_bbox(lower_icon_panel, inventory_card, bbox(1, 53, 10, 62)).
unchanged_bbox(lower_icon_glyph, inventory_glyph, bbox(3, 55, 8, 60)).
unchanged_bbox(status_panel, status_tray, bbox(12, 60, 63, 63)).
unchanged_bbox(status_light_1, status_aqua_1, bbox(56, 61, 57, 62)).
unchanged_bbox(status_light_2, status_aqua_2, bbox(59, 61, 60, 62)).
unchanged_bbox(status_light_3, status_aqua_3, bbox(62, 61, 63, 62)).

unchanged_color(background, background_yellow, yellow).
unchanged_color(left_sidebar, left_wall, gray).
unchanged_color(main_structure, arena_green, green).
unchanged_color(upper_display, top_pad, gray).
unchanged_color(upper_glyph, top_glyph, maroon).
unchanged_color(lower_barrier_gray, door_lintel, gray).
unchanged_color(lower_barrier_maroon, door_maroon, maroon).
unchanged_color(lower_icon_panel, inventory_card, gray).
unchanged_color(lower_icon_glyph, inventory_glyph, maroon).
unchanged_color(status_panel, status_tray, gray).
unchanged_color(status_green, status_green_segment, green).
unchanged_color(status_dark, status_dark_segment, dark_gray).
unchanged_color(status_light_1, status_aqua_1, light_blue).
unchanged_color(status_light_2, status_aqua_2, light_blue).
unchanged_color(status_light_3, status_aqua_3, light_blue).

observed_bbox_change(
    lower_barrier_gray,
    door_lintel,
    bbox(19, 40, 23, 41),
    bbox(19, 35, 23, 36)
).
observed_bbox_change(
    lower_barrier_maroon,
    door_maroon,
    bbox(19, 42, 23, 44),
    bbox(19, 37, 23, 39)
).
observed_bbox_change(
    status_green,
    status_green_segment,
    bbox(13, 61, 17, 62),
    bbox(13, 61, 18, 62)
).
observed_bbox_change(
    status_dark,
    status_dark_segment,
    bbox(18, 61, 54, 62),
    bbox(19, 61, 54, 62)
).

observed_region_change(
    cell_rectangle(19, 35, 5, 2),
    green,
    gray
).
observed_region_change(
    cell_rectangle(19, 37, 5, 3),
    green,
    maroon
).
observed_region_change(
    cell_rectangle(19, 40, 5, 2),
    gray,
    green
).
observed_region_change(
    cell_rectangle(19, 42, 5, 3),
    maroon,
    green
).
observed_region_change(
    cell_rectangle(18, 61, 1, 2),
    dark_gray,
    green
).

recolored_region(Region, OldColor, NewColor) :-
    observed_region_change(Region, OldColor, NewColor).

observation(moved_object(P, C, DX, DY)) :-
    observed_move(P, C, DX, DY).
observation(resized_object(Pair, OldSize, NewSize)) :-
    observed_resize(Pair, OldSize, NewSize).
observation(changed_object(P, C, Change)) :-
    observed_change(P, C, Change).
observation(recolored_region(Region, OldColor, NewColor)) :-
    observed_region_change(Region, OldColor, NewColor).

hypothesized_action_effect(
    unknown_action,
    moved(door_assembly, north, 5)
).
hypothesized_action_effect(
    unknown_action,
    opened_passage_below_player
).
hypothesized_action_effect(
    unknown_action,
    filled_vacated_door_region_with_green
).
hypothesized_action_effect(
    unknown_action,
    increased_green_status_by_cells(2)
).
hypothesized_action_effect(
    unknown_action,
    decreased_dark_status_by_cells(2)
).

action_effect(Action, Effect) :-
    hypothesized_action_effect(Action, Effect).

hypothesis(action_effect(Action, Effect)) :-
    hypothesized_action_effect(Action, Effect).

hypothesis(door_assembly_moved_as_unit) :-
    observed_move(lower_barrier_gray, door_lintel, 0, -5),
    observed_move(lower_barrier_maroon, door_maroon, 0, -5).

hypothesis(status_transfer(dark_gray, green, cells(2))) :-
    observed_region_change(
        cell_rectangle(18, 61, 1, 2),
        dark_gray,
        green
    ).
