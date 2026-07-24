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
