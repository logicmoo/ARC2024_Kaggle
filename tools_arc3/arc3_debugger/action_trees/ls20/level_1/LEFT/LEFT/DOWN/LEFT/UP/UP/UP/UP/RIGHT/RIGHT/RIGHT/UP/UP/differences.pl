bbox_space(pixel_half_open).

schema_normalization(previous, grid_inclusive_to_pixel_half_open, scale(10,10)).
schema_normalization(current, pixel_half_open, scale(1,1)).
color_alias(gray, light_gray).
color_alias(cyan, light_blue).

object_correspondence(background_yellow, background).
object_correspondence(left_sidebar, left_border).
object_correspondence(sign_frame, portal_frame).
object_correspondence(sign_face, portal_panel).
object_correspondence(sign_glyph, portal_glyph).
object_correspondence(sign_post_green, portal_connector).
object_correspondence(main_platform, green_structure).
object_correspondence(platform_cavity, structure_cavity).
object_correspondence(avatar_black, avatar_black).
object_correspondence(avatar_blue, avatar_blue).
object_correspondence(popup_panel, control_panel).
object_correspondence(popup_glyph, control_glyph).
object_correspondence(bottom_status_panel, status_panel).
object_correspondence(status_green_bar, status_green).
object_correspondence(status_dark_bar, status_dark).
object_correspondence(status_cyan_1, status_blue_1).
object_correspondence(status_cyan_2, status_blue_2).
object_correspondence(status_cyan_3, status_blue_3).

renamed_object(Old, Current) :-
    object_correspondence(Old, Current),
    Old \== Current.

observed_added_object(_) :-
    fail.

added_object(Object) :-
    observed_added_object(Object).

observed_removed_object(sign_post_gray).
observed_removed_object(sign_post_maroon).

removed_object(Object) :-
    observed_removed_object(Object).

absorbed_object(sign_post_gray, green_structure).
absorbed_object(sign_post_maroon, green_structure).

merged_into(green_structure, [main_platform, sign_post_gray, sign_post_maroon]).

unchanged_object(background_yellow, background).
unchanged_object(left_sidebar, left_border).
unchanged_object(sign_frame, portal_frame).
unchanged_object(sign_glyph, portal_glyph).
unchanged_object(platform_cavity, structure_cavity).
unchanged_object(avatar_black, avatar_black).
unchanged_object(avatar_blue, avatar_blue).
unchanged_object(popup_panel, control_panel).
unchanged_object(popup_glyph, control_glyph).
unchanged_object(bottom_status_panel, status_panel).
unchanged_object(status_cyan_1, status_blue_1).
unchanged_object(status_cyan_2, status_blue_2).
unchanged_object(status_cyan_3, status_blue_3).

changed_object(portal_panel,
    bbox(330,90,400,160),
    bbox(330,90,400,170)).
changed_object(portal_panel,
    geometry(filled_rectangle(330,90,70,70)),
    geometry(union([
        rectangle(330,90,70,70),
        rectangle(340,160,50,10)
    ]))).

changed_object(portal_frame,
    visible_region(rectangle(340,160,50,10), green),
    visible_region(rectangle(340,160,50,10), light_gray)).

changed_object(portal_connector,
    color(green),
    color(maroon)).

changed_object(green_structure,
    bbox(140,250,540,500),
    bbox(140,200,540,500)).
changed_object(green_structure,
    geometry(main_platform_only),
    geometry(main_platform_with_upper_stem)).

changed_object(status_green,
    bbox(130,610,240,630),
    bbox(130,610,250,630)).
changed_object(status_dark,
    bbox(240,610,550,630),
    bbox(250,610,550,630)).

recolored_object(portal_connector, green, maroon).

resized_object(portal_panel,
    bbox(330,90,400,160),
    bbox(330,90,400,170)).
resized_object(green_structure,
    bbox(140,250,540,500),
    bbox(140,200,540,500)).
resized_object(status_green,
    bbox(130,610,240,630),
    bbox(130,610,250,630)).
resized_object(status_dark,
    bbox(240,610,550,630),
    bbox(250,610,550,630)).

observed_moved_object(_, _, _, _) :-
    fail.

moved_object(Object, OldPosition, NewPosition, Delta) :-
    observed_moved_object(Object, OldPosition, NewPosition, Delta).

observation(region_recolored(
    rectangle(340,160,50,10),
    green,
    light_gray)).
observation(region_recolored(
    rectangle(340,170,50,30),
    green,
    maroon)).
observation(region_recolored(
    rectangle(340,200,50,20),
    light_gray,
    green)).
observation(region_recolored(
    rectangle(340,220,50,30),
    maroon,
    green)).
observation(region_recolored(
    rectangle(240,610,10,20),
    dark_gray,
    green)).

observation(region_added_to_object(
    portal_panel,
    rectangle(340,160,50,10))).
observation(region_added_to_object(
    green_structure,
    rectangle(340,200,50,50))).
observation(region_added_to_object(
    status_green,
    rectangle(240,610,10,20))).

observation(region_removed_from_object(
    status_dark,
    rectangle(240,610,10,20))).

observation(independent_object_count(previous, 20)).
observation(independent_object_count(current, 18)).

observation(draw_order_changed(
    [avatar_black, avatar_blue],
    [avatar_blue, avatar_black])).

visible_pixel_change(Rectangle, OldColor, NewColor) :-
    observation(region_recolored(Rectangle, OldColor, NewColor)).

hypothesis(action_effect(
    unknown_preceding_action,
    advance_status_progress(10_pixels)),
    high).

hypothesis(action_effect(
    unknown_preceding_action,
    cycle_portal_connector_colors),
    medium).

hypothesis(action_effect(
    unknown_preceding_action,
    integrate_lower_connector_into_green_structure),
    medium).

hypothesis(color_band_motion(
    maroon,
    rectangle(340,220,50,30),
    rectangle(340,170,50,30),
    delta(0,-50)),
    medium).

hypothesis(portal_activation_phase_advanced, medium).

action_effect(Action, Effect) :-
    hypothesis(action_effect(Action, Effect), _).

hypothesis_confidence(Hypothesis, Confidence) :-
    hypothesis(Hypothesis, Confidence).

observed_difference(Difference) :-
    observation(Difference).

difference(changed(Object, Before, After)) :-
    changed_object(Object, Before, After).
difference(removed(Object)) :-
    removed_object(Object).
difference(added(Object)) :-
    added_object(Object).
difference(moved(Object, OldPosition, NewPosition, Delta)) :-
    moved_object(Object, OldPosition, NewPosition, Delta).
difference(recolored(Object, OldColor, NewColor)) :-
    recolored_object(Object, OldColor, NewColor).
difference(resized(Object, OldBounds, NewBounds)) :-
    resized_object(Object, OldBounds, NewBounds).
