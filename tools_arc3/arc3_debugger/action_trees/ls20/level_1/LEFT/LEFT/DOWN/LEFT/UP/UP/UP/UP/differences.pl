observation(canvas_unchanged(size(640, 640))).
observation(coordinate_system_unchanged(origin_top_left, x_right, y_down)).
observation(grid_size(cell(10, 10))).

object_correspondence(background_yellow, background).
object_correspondence(left_rail, left_wall).
object_correspondence(main_green, green_terrain).
object_correspondence(top_panel_gray, top_portal_tile).
object_correspondence(top_glyph, top_portal_glyph).
object_correspondence(body_panel_gray, center_console_cap).
object_correspondence(body_indicator, center_console_body).
object_correspondence(control_panel, bottom_left_portal_tile).
object_correspondence(control_glyph, bottom_left_portal_glyph).
object_correspondence(status_panel, status_bar_frame).
object_correspondence(meter_green, status_green_segment).
object_correspondence(meter_dark, status_dark_segment).
object_correspondence(slot_blue_1, status_blue_segment_1).
object_correspondence(slot_blue_2, status_blue_segment_2).
object_correspondence(slot_blue_3, status_blue_segment_3).

composite_correspondence(
    [body_panel_gray, body_indicator],
    center_console
).

observation(unchanged_object(background_yellow, background)).
observation(unchanged_object(left_rail, left_wall)).
observation(unchanged_object(main_green, green_terrain)).
observation(unchanged_object(top_panel_gray, top_portal_tile)).
observation(unchanged_object(top_glyph, top_portal_glyph)).
observation(unchanged_object(control_panel, bottom_left_portal_tile)).
observation(unchanged_object(control_glyph, bottom_left_portal_glyph)).
observation(unchanged_object(status_panel, status_bar_frame)).
observation(unchanged_object(slot_blue_1, status_blue_segment_1)).
observation(unchanged_object(slot_blue_2, status_blue_segment_2)).
observation(unchanged_object(slot_blue_3, status_blue_segment_3)).

observation(added_object(player)).
observation(added_object(player_blue_body)).
observation(added_object(player_black_arm)).

observation(no_removed_visual_object).
observation(no_object_recolored).

observation(moved_object(
    body_panel_gray,
    center_console_cap,
    point(190, 300),
    point(190, 250)
)).
observation(moved_object(
    body_indicator,
    center_console_body,
    point(190, 320),
    point(190, 270)
)).

observation(resized_object(
    meter_green,
    size(60, 20),
    size(70, 20)
)).
observation(resized_object(
    meter_dark,
    size(360, 20),
    size(350, 20)
)).

observation(changed_object(
    body_panel_gray,
    center_console_cap,
    [
        position(point(190, 300), point(190, 250)),
        displacement(delta(0, -50)),
        visible_size_preserved(size(50, 20)),
        representation_changed(occluded_panel, explicit_console_part)
    ]
)).
observation(changed_object(
    body_indicator,
    center_console_body,
    [
        position(point(190, 320), point(190, 270)),
        displacement(delta(0, -50)),
        size_preserved(size(50, 30))
    ]
)).
observation(changed_object(
    meter_green,
    status_green_segment,
    [
        width(60, 70),
        right_edge(189, 199),
        left_edge_preserved(130)
    ]
)).
observation(changed_object(
    meter_dark,
    status_dark_segment,
    [
        position(point(190, 610), point(200, 610)),
        width(360, 350),
        left_edge(190, 200),
        right_edge_preserved(549)
    ]
)).

observation(displacement(center_console, delta(0, -50))).
observation(composite_size_preserved(center_console, size(50, 50))).
observation(composite_color_layout_preserved(
    center_console,
    [
        upper(silver, size(50, 20)),
        lower(maroon, size(50, 30))
    ]
)).

observation(added_region(player, rect(200, 310, 30, 30))).
observation(player_region(rect(200, 310, 20, 20), blue)).
observation(player_region(rect(210, 320, 20, 10), black)).
observation(player_region(rect(210, 330, 10, 10), blue)).

observation(vacated_region(
    rect(190, 300, 50, 50),
    previously(console_composite),
    currently(green_terrain)
)).
observation(occupied_region(
    rect(190, 250, 50, 50),
    previously(green_terrain),
    currently(center_console)
)).

observation(status_boundary_shift(
    between(status_green_segment, status_dark_segment),
    from_x(190),
    to_x(200),
    delta_x(10)
)).
observation(status_total_colored_span_unchanged(
    span(130, 549),
    width(420)
)).

observation(renamed_object(background_yellow, background)).
observation(renamed_object(left_rail, left_wall)).
observation(renamed_object(main_green, green_terrain)).
observation(renamed_object(top_panel_gray, top_portal_tile)).
observation(renamed_object(top_glyph, top_portal_glyph)).
observation(renamed_object(control_panel, bottom_left_portal_tile)).
observation(renamed_object(control_glyph, bottom_left_portal_glyph)).
observation(renamed_object(status_panel, status_bar_frame)).
observation(renamed_object(meter_green, status_green_segment)).
observation(renamed_object(meter_dark, status_dark_segment)).
observation(renamed_object(slot_blue_1, status_blue_segment_1)).
observation(renamed_object(slot_blue_2, status_blue_segment_2)).
observation(renamed_object(slot_blue_3, status_blue_segment_3)).

observation(color_name_alias(gray, silver, rgb(170, 170, 170))).
observation(symbolic_color_preserved(background_yellow, background, yellow)).
observation(symbolic_color_preserved(main_green, green_terrain, green)).
observation(symbolic_color_preserved(top_glyph, top_portal_glyph, maroon)).
observation(symbolic_color_preserved(body_indicator, center_console_body, maroon)).
observation(symbolic_color_preserved(meter_dark, status_dark_segment, dark_gray)).
observation(symbolic_color_preserved(slot_blue_1, status_blue_segment_1, light_blue)).
observation(symbolic_color_preserved(slot_blue_2, status_blue_segment_2, light_blue)).
observation(symbolic_color_preserved(slot_blue_3, status_blue_segment_3, light_blue)).

observation(palette_metadata_changed(
    green,
    rgb(45, 204, 62),
    rgb(46, 204, 64)
)).
observation(palette_metadata_changed(
    maroon,
    rgb(153, 9, 40),
    rgb(133, 20, 75)
)).
observation(palette_metadata_changed(
    light_blue,
    rgb(135, 206, 235),
    rgb(127, 219, 255)
)).

hypothesis(action_effect(
    activate_or_advance,
    spawned(player)
), medium).

hypothesis(action_effect(
    activate_or_advance,
    moved(center_console, delta(0, -50))
), high).

hypothesis(action_effect(
    activate_or_advance,
    shifted_status_boundary(delta_x(10))
), high).

hypothesis(action_effect(
    move_up,
    moved(center_console, delta(0, -50))
), medium).

hypothesis(action_effect(
    portal_or_spawn_action,
    placed(player, point(200, 310))
), medium).

added_object(Object) :-
    observation(added_object(Object)).

removed_object(Object) :-
    observation(removed_object(Object)).

changed_object(Previous, Current, Changes) :-
    observation(changed_object(Previous, Current, Changes)).

moved_object(Previous, Current, From, To) :-
    observation(moved_object(Previous, Current, From, To)).

recolored_object(Object, OldColor, NewColor) :-
    observation(recolored_object(Object, OldColor, NewColor)).

resized_object(Object, OldSize, NewSize) :-
    observation(resized_object(Object, OldSize, NewSize)).

unchanged_object(Previous, Current) :-
    observation(unchanged_object(Previous, Current)).

action_effect(Action, Effect) :-
    hypothesis(action_effect(Action, Effect), _).

hypothesis_confidence(Hypothesis, Confidence) :-
    hypothesis(Hypothesis, Confidence).

same_object(Previous, Current) :-
    object_correspondence(Previous, Current).

visually_unchanged(Previous, Current) :-
    unchanged_object(Previous, Current).

changed(Previous, Current) :-
    changed_object(Previous, Current, _).

moved_up(Previous, Current, Distance) :-
    moved_object(Previous, Current, point(X, OldY), point(X, NewY)),
    Distance is OldY - NewY,
    Distance > 0.

width_change(Object, Delta) :-
    resized_object(Object, size(OldWidth, Height), size(NewWidth, Height)),
    Delta is NewWidth - OldWidth.

representation_only_change(gray, silver) :-
    observation(color_name_alias(gray, silver, rgb(170, 170, 170))).
