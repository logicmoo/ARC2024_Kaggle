transition(action6, action7, action('ACTION1', {})).

added_object(_Object) :-
    fail.

removed_object(_Object) :-
    fail.

recolored_object(_Object, _OldColor, _NewColor) :-
    fail.

moved_object(
    bottom_center_gate,
    point(19, 40),
    point(19, 35),
    delta(0, -5)
).
moved_object(
    gate_gray_header,
    point(19, 40),
    point(19, 35),
    delta(0, -5)
).
moved_object(
    gate_burgundy_panel,
    point(19, 42),
    point(19, 37),
    delta(0, -5)
).

resized_object(
    green_status_block,
    size(5, 2),
    size(6, 2)
).
resized_object(
    bottom_status_track,
    size(37, 2),
    size(36, 2)
).

changed_object(
    bottom_center_gate,
    bounding_box(19, 40, 5, 5),
    bounding_box(19, 35, 5, 5)
).
changed_object(
    bottom_center_gate,
    center(21, 42),
    center(21, 37)
).
changed_object(
    bottom_center_gate,
    state_set([closed, shifted_far_left, raised]),
    state_set([closed, shifted_far_left, raised, raised_again])
).
changed_object(
    gate_gray_header,
    bounding_box(19, 40, 5, 2),
    bounding_box(19, 35, 5, 2)
).
changed_object(
    gate_burgundy_panel,
    bounding_box(19, 42, 5, 3),
    bounding_box(19, 37, 5, 3)
).
changed_object(
    green_status_block,
    bounding_box(13, 61, 5, 2),
    bounding_box(13, 61, 6, 2)
).
changed_object(
    green_status_block,
    center(15, 62),
    center(16, 62)
).
changed_object(
    bottom_status_track,
    bounding_box(18, 61, 37, 2),
    bounding_box(19, 61, 36, 2)
).
changed_object(
    bottom_status_track,
    center(36, 62),
    center(37, 62)
).

boundary_shifted(
    green_status_block,
    right_edge,
    from(18),
    to(19)
).
boundary_shifted(
    bottom_status_track,
    left_edge,
    from(18),
    to(19)
).

added_relation(embedded_in(bottom_center_gate, fortress_left_wing)).
added_relation(overlays(bottom_center_gate, fortress_left_wing)).
removed_relation(adjacent(fortress_lower_bridge, bottom_center_gate)).

unchanged_object(yellow_playfield, appearance_and_extent).
unchanged_object(left_boundary_wall, appearance_and_extent).
unchanged_object(green_fortress, appearance_and_extent).
unchanged_object(fortress_main_body, appearance_and_extent).
unchanged_object(fortress_left_wing, appearance_and_extent).
unchanged_object(fortress_right_wing, appearance_and_extent).
unchanged_object(fortress_lower_bridge, appearance_and_extent).
unchanged_object(fortress_upper_stem, appearance_and_extent).
unchanged_object(fortress_inner_courtyard, appearance_and_extent).
unchanged_object(upper_chamber_frame, appearance_and_extent).
unchanged_object(upper_chamber_interior, appearance_and_extent).
unchanged_object(upper_burgundy_glyph, appearance_and_extent).
unchanged_object(blue_black_player, appearance_and_extent).
unchanged_object(player_black_core, appearance_and_extent).
unchanged_object(player_blue_tail, appearance_and_extent).
unchanged_object(lower_left_symbol_card, appearance_and_extent).
unchanged_object(lower_left_burgundy_glyph, appearance_and_extent).
unchanged_object(bottom_status_panel, appearance_and_extent).
unchanged_object(cyan_status_blocks, appearance_and_extent).

observed_difference(
    moved_object(
        bottom_center_gate,
        point(19, 40),
        point(19, 35),
        delta(0, -5)
    )
).
observed_difference(
    moved_object(
        gate_gray_header,
        point(19, 40),
        point(19, 35),
        delta(0, -5)
    )
).
observed_difference(
    moved_object(
        gate_burgundy_panel,
        point(19, 42),
        point(19, 37),
        delta(0, -5)
    )
).
observed_difference(
    resized_object(green_status_block, size(5, 2), size(6, 2))
).
observed_difference(
    resized_object(bottom_status_track, size(37, 2), size(36, 2))
).
observed_difference(
    added_relation(embedded_in(bottom_center_gate, fortress_left_wing))
).
observed_difference(
    added_relation(overlays(bottom_center_gate, fortress_left_wing))
).
observed_difference(
    removed_relation(adjacent(fortress_lower_bridge, bottom_center_gate))
).

observed_transition_effect(
    action('ACTION1', {}),
    gate_translated(bottom_center_gate, delta(0, -5))
).
observed_transition_effect(
    action('ACTION1', {}),
    status_progress_advanced(
        green_status_block,
        bottom_status_track,
        cells(1)
    )
).

hypothesized_action_effect(
    action('ACTION1', {}),
    raises(bottom_center_gate, cells(5))
).
hypothesized_action_effect(
    action('ACTION1', {}),
    advances_status_progress(cells(1))
).

action_effect(Action, Effect) :-
    hypothesized_action_effect(Action, Effect).

hypothesis(
    action_effect(
        action('ACTION1', {}),
        raises(bottom_center_gate, cells(5))
    ),
    strongly_supported
).
hypothesis(
    action_effect(
        action('ACTION1', {}),
        advances_status_progress(cells(1))
    ),
    strongly_supported
).
