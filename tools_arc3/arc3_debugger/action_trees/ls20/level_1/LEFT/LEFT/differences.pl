added_object(_) :-
    fail.

removed_object(_) :-
    fail.

recolored_object(_, _, _) :-
    fail.

resized_object(_, _, _) :-
    fail.

moved_object(
    bottom_center_gate,
    position(29, 45),
    position(24, 45),
    delta(-5, 0)
).
moved_object(
    gate_gray_header,
    position(29, 45),
    position(24, 45),
    delta(-5, 0)
).
moved_object(
    gate_burgundy_panel,
    position(29, 47),
    position(24, 47),
    delta(-5, 0)
).

changed_object(
    bottom_center_gate,
    bounding_box(29, 45, 5, 5),
    bounding_box(24, 45, 5, 5)
).
changed_object(
    gate_gray_header,
    bounding_box(29, 45, 5, 2),
    bounding_box(24, 45, 5, 2)
).
changed_object(
    gate_burgundy_panel,
    bounding_box(29, 47, 5, 3),
    bounding_box(24, 47, 5, 3)
).
changed_object(
    bottom_center_gate,
    center(31, 47),
    center(26, 47)
).
changed_object(
    fortress_lower_bridge,
    geometry(interrupted_horizontal_bar),
    geometry(gate_interrupted_horizontal_bar)
).
changed_object(
    fortress_lower_bridge,
    component_rectangles([
        rect(19, 45, 10, 5),
        rect(34, 45, 20, 5)
    ]),
    component_rectangles([
        rect(19, 45, 5, 5),
        rect(29, 45, 25, 5)
    ])
).
changed_object(
    fortress_main_body,
    green_fill(absent, rect(29, 45, 5, 5)),
    green_fill(present, rect(29, 45, 5, 5))
).
changed_object(
    green_fortress,
    green_fill(absent, rect(29, 45, 5, 5)),
    green_fill(present, rect(29, 45, 5, 5))
).
changed_object(
    bottom_center_gate,
    embedded_in(fortress_main_body),
    embedded_in(fortress_lower_bridge)
).

property_added(bottom_center_gate, state(shifted_left)).

removed_relation(embedded_in(bottom_center_gate, fortress_main_body)).
added_relation(embedded_in(bottom_center_gate, fortress_lower_bridge)).
removed_relation(adjacent(fortress_right_wing, bottom_center_gate)).

unchanged_object(yellow_playfield, observed_visual_properties).
unchanged_object(left_boundary_wall, observed_visual_properties).
unchanged_object(fortress_left_wing, observed_visual_properties).
unchanged_object(fortress_right_wing, observed_visual_properties).
unchanged_object(fortress_upper_stem, observed_visual_properties).
unchanged_object(fortress_inner_courtyard, observed_visual_properties).
unchanged_object(upper_chamber_frame, observed_visual_properties).
unchanged_object(upper_chamber_interior, observed_visual_properties).
unchanged_object(upper_burgundy_glyph, observed_visual_properties).
unchanged_object(blue_black_player, observed_visual_properties).
unchanged_object(player_black_core, observed_visual_properties).
unchanged_object(player_blue_tail, observed_visual_properties).
unchanged_object(lower_left_symbol_card, observed_visual_properties).
unchanged_object(lower_left_burgundy_glyph, observed_visual_properties).
unchanged_object(bottom_status_panel, observed_visual_properties).
unchanged_object(bottom_status_track, observed_visual_properties).
unchanged_object(cyan_status_blocks, observed_visual_properties).

action_effect(
    action3,
    observed(moved(bottom_center_gate, delta(-5, 0)))
).
action_effect(
    action3,
    observed(moved(gate_gray_header, delta(-5, 0)))
).
action_effect(
    action3,
    observed(moved(gate_burgundy_panel, delta(-5, 0)))
).
action_effect(
    action3,
    observed(reconfigured(fortress_lower_bridge))
).
action_effect(
    action3,
    observed(filled_region(green_fortress, rect(29, 45, 5, 5)))
).

hypothesis(
    cause_of_gate_shift,
    unspecified_because_action_payload_is_empty
).
