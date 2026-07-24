comparison_basis(rendered_pixels_and_supplied_object_descriptions).

cell_scale(10).

color_equivalent(gray, light_gray).
color_equivalent(cyan, light_blue).

object_correspondence(background_1, background).
object_correspondence(left_wall_1, left_sidebar).
object_correspondence(structure_1, main_green_structure).
object_correspondence(chamber_1, top_terminal_panel).
object_correspondence(chamber_glyph_1, top_terminal_glyph).
object_correspondence(player_1, player).
object_correspondence(portal_cap_1, lower_terminal_cap).
object_correspondence(portal_1, lower_terminal_core).
object_correspondence(control_panel_1, lower_left_panel).
object_correspondence(control_glyph_1, lower_left_glyph).
object_correspondence(status_panel_1, bottom_toolbar).
object_correspondence(status_green_1, toolbar_green_segment).
object_correspondence(status_bar_1, toolbar_dark_segment).
object_correspondence(status_slot_1, toolbar_blue_slot_1).
object_correspondence(status_slot_2, toolbar_blue_slot_2).
object_correspondence(status_slot_3, toolbar_blue_slot_3).

observation(unchanged_object(background_1, background)).
observation(unchanged_object(left_wall_1, left_sidebar)).
observation(unchanged_object(structure_1, main_green_structure)).
observation(unchanged_object(chamber_1, top_terminal_panel)).
observation(unchanged_object(chamber_glyph_1, top_terminal_glyph)).
observation(unchanged_object(player_1, player)).
observation(unchanged_object(portal_cap_1, lower_terminal_cap)).
observation(unchanged_object(portal_1, lower_terminal_core)).
observation(unchanged_object(control_panel_1, lower_left_panel)).
observation(unchanged_object(control_glyph_1, lower_left_glyph)).
observation(unchanged_object(status_panel_1, bottom_toolbar)).
observation(unchanged_object(status_slot_1, toolbar_blue_slot_1)).
observation(unchanged_object(status_slot_2, toolbar_blue_slot_2)).
observation(unchanged_object(status_slot_3, toolbar_blue_slot_3)).

observation(changed_object(
    status_green_1,
    toolbar_green_segment,
    [resized(size(20,20), size(30,20)),
     right_edge_shifted(150,160)]
)).

observation(changed_object(
    status_bar_1,
    toolbar_dark_segment,
    [moved(point(150,610), point(160,610)),
     resized(size(400,20), size(390,20)),
     left_edge_shifted(150,160),
     right_edge_unchanged(550)]
)).

observation(resized_object(
    status_green_1,
    toolbar_green_segment,
    resize(size(20,20), size(30,20))
)).

observation(resized_object(
    status_bar_1,
    toolbar_dark_segment,
    resize(size(400,20), size(390,20))
)).

observation(moved_object(
    status_bar_1,
    toolbar_dark_segment,
    point(150,610),
    point(160,610)
)).

observation(pixel_region_recolored(
    rectangle(150,610,10,20),
    dark_gray,
    green
)).

observation(status_boundary_shift(
    boundary(status_green_1, status_bar_1),
    boundary(toolbar_green_segment, toolbar_dark_segment),
    delta(10,0)
)).

observation(total_status_meter_extent_unchanged(
    interval(130,550),
    interval(130,550)
)).

observation(no_scene_object_added).
observation(no_scene_object_removed).
observation(no_whole_object_recolored).
observation(no_player_motion).
observation(no_terminal_change).
observation(no_canvas_size_change).

representation_change(structure_1, main_green_structure,
    explicit_negative_space(main_cutout)).
representation_change(player_1, player,
    decomposed_into([player_black, player_blue])).
representation_change(lower_terminal_pair, lower_terminal,
    composite_grouping([lower_terminal_cap, lower_terminal_core])).
representation_change(gray, light_gray, palette_name_only).
representation_change(cyan, light_blue, palette_name_only).

representation_added_object(main_cutout).
representation_added_component(player_black).
representation_added_component(player_blue).
representation_added_composite(player).
representation_added_composite(lower_terminal).

hypothesis(action_effect(
    last_action,
    advanced_status_meter(one_cell)
)).

hypothesis(action_effect(
    last_action,
    transferred_status_area(dark_gray, green, rectangle(150,610,10,20))
)).

hypothesis(status_meter_semantics(
    toolbar_green_segment,
    completed_or_available_amount
)).

hypothesis(status_meter_semantics(
    toolbar_dark_segment,
    remaining_amount
)).

hypothesis_confidence(advanced_status_meter(one_cell), high).
hypothesis_confidence(status_meter_semantics, medium).

added_object(Object) :-
    observation(added_object(Object)).

removed_object(Object) :-
    observation(removed_object(Object)).

changed_object(Previous, Current, Changes) :-
    observation(changed_object(Previous, Current, Changes)).

moved_object(Previous, Current, From, To) :-
    observation(moved_object(Previous, Current, From, To)).

recolored_object(Previous, Current, Recoloring) :-
    observation(recolored_object(Previous, Current, Recoloring)).

resized_object(Previous, Current, Resizing) :-
    observation(resized_object(Previous, Current, Resizing)).

unchanged_object(Previous, Current) :-
    observation(unchanged_object(Previous, Current)).

action_effect(Action, Effect) :-
    hypothesis(action_effect(Action, Effect)).

scene_object_added(Object) :-
    added_object(Object).

scene_object_removed(Object) :-
    removed_object(Object).

representation_only_change(Previous, Current) :-
    representation_change(Previous, Current, _),
    \+ changed_object(Previous, Current, _).

status_meter_advanced_by_cells(Cells) :-
    observation(status_boundary_shift(_, _, delta(DX,0))),
    cell_scale(Scale),
    Cells is DX // Scale.

status_meter_advanced_by_pixels(Pixels) :-
    observation(status_boundary_shift(_, _, delta(Pixels,0))).

only_rendered_change(rectangle(150,610,10,20)) :-
    observation(pixel_region_recolored(
        rectangle(150,610,10,20),
        dark_gray,
        green
    )),
    observation(no_player_motion),
    observation(no_terminal_change),
    observation(no_scene_object_added),
    observation(no_scene_object_removed).
