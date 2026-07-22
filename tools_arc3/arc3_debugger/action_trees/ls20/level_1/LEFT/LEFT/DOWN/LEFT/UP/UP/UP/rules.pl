evidence_reference(
    e_transition_action7_action8,
    differences_pl(state_transition(action7, action8, action('ACTION1', {})))
).

evidence_reference(
    e_gate_up_five,
    differences_pl([
        moved_object(bottom_center_gate, center(21, 37), center(21, 32), delta(0, -5)),
        moved_object(gate_gray_header,
                     bounding_box(19, 35, 5, 2),
                     bounding_box(19, 30, 5, 2),
                     delta(0, -5)),
        moved_object(gate_burgundy_panel,
                     bounding_box(19, 37, 5, 3),
                     bounding_box(19, 32, 5, 3),
                     delta(0, -5))
    ])
).

evidence_reference(
    e_gate_rigid_components,
    object_registry_and_objects_pl([
        object_identity(bottom_center_gate, compound_rectangle),
        object_identity(gate_gray_header, horizontal_bar),
        object_identity(gate_burgundy_panel, rectangular_block),
        component_of(gate_gray_header, bottom_center_gate),
        component_of(gate_burgundy_panel, bottom_center_gate)
    ])
).

evidence_reference(
    e_player_occlusion,
    differences_pl([
        changed_object(blue_black_player,
                       visibility(visible),
                       visibility(fully_occluded)),
        occluded_object(blue_black_player, bottom_center_gate),
        occluded_object(player_black_core, bottom_center_gate),
        occluded_object(player_blue_tail, bottom_center_gate)
    ])
).

evidence_reference(
    e_player_identity_persists,
    object_registry_and_differences_pl([
        object_identity(blue_black_player, player_marker),
        object_identity(player_black_core, pixel_cluster),
        object_identity(player_blue_tail, pixel_cluster),
        unchanged_object(blue_black_player, canonical_identity),
        unchanged_object(player_black_core, canonical_identity),
        unchanged_object(player_blue_tail, canonical_identity)
    ])
).

evidence_reference(
    e_current_gate_player_overlap,
    current_objects_pl([
        bounding_box(bottom_center_gate, 19, 30, 5, 5),
        overlays(bottom_center_gate, blue_black_player),
        occluded_by(blue_black_player, bottom_center_gate),
        state(blue_black_player, fully_occluded)
    ])
).

evidence_reference(
    e_status_unchanged_action8,
    differences_pl(
        observed_action_effect(
            action('ACTION1', {}),
            status_progress_unchanged
        )
    )
).

evidence_reference(
    e_status_path_variation,
    action_history([
        state(action7, status_progress_increased),
        state(action8, status_progress_unchanged)
    ])
).

evidence_reference(
    e_repeated_raise_path,
    action_history([
        incoming_action(action7, action('ACTION1', {})),
        state(action7, gate_moved_up),
        state(bottom_center_gate, raised_again),
        incoming_action(action8, action('ACTION1', {})),
        state(action8, gate_moved_up),
        state(bottom_center_gate, raised_third_time)
    ])
).

evidence_reference(
    e_glyph_raster_change,
    differences_pl([
        changed_object(
            lower_left_burgundy_glyph,
            component_boxes([
                box(3, 55, 6, 2),
                box(3, 57, 2, 4),
                box(7, 59, 2, 2)
            ]),
            component_boxes([
                box(3, 55, 6, 2),
                box(7, 57, 2, 4),
                box(3, 59, 2, 2)
            ])
        ),
        observation_conflict(
            lower_left_burgundy_glyph,
            raster_observation(horizontal_mirror),
            current_objects_pl(component_boxes_unchanged)
        )
    ])
).

observed_rule(
    action7_action1_moves_gate_up,
    rule(
        when([
            state_id(action7),
            action(action('ACTION1', {})),
            center(bottom_center_gate, 21, 37)
        ]),
        then([
            next_state(action8),
            translate(bottom_center_gate, delta(0, -5)),
            translate(gate_gray_header, delta(0, -5)),
            translate(gate_burgundy_panel, delta(0, -5))
        ]),
        evidence([
            e_transition_action7_action8,
            e_gate_up_five,
            e_gate_rigid_components
        ])
    )
).

observed_rule(
    gate_overlap_fully_occludes_player_on_action8,
    rule(
        when([
            transition(action7, action8),
            moved_to(bottom_center_gate, bounding_box(19, 30, 5, 5))
        ]),
        then([
            fully_occluded(blue_black_player, bottom_center_gate),
            fully_occluded(player_black_core, bottom_center_gate),
            fully_occluded(player_blue_tail, bottom_center_gate)
        ]),
        evidence([
            e_player_occlusion,
            e_player_identity_persists,
            e_current_gate_player_overlap
        ])
    )
).

observed_rule(
    action8_status_does_not_advance,
    rule(
        when([
            transition(action7, action8),
            action(action('ACTION1', {}))
        ]),
        then([
            status_progress_unchanged
        ]),
        evidence([
            e_status_unchanged_action8
        ])
    )
).

observed_rule(
    action8_raster_mirrors_lower_left_glyph,
    rule(
        when([
            transition(action7, action8),
            action(action('ACTION1', {}))
        ]),
        then([
            raster_transform(lower_left_burgundy_glyph, horizontal_mirror)
        ]),
        caveat(current_objects_pl_does_not_encode_changed_component_boxes),
        evidence([
            e_glyph_raster_change
        ])
    )
).

hypothetical_rule(
    repeated_action1_raises_closed_gate_by_five,
    rule(
        when([
            action(action('ACTION1', {})),
            state(bottom_center_gate, closed),
            vertical_translation_permitted(bottom_center_gate, -5)
        ]),
        then([
            translate(bottom_center_gate, delta(0, -5)),
            translate(gate_gray_header, delta(0, -5)),
            translate(gate_burgundy_panel, delta(0, -5)),
            preserve_identity(bottom_center_gate),
            preserve_identity(gate_gray_header),
            preserve_identity(gate_burgundy_panel)
        ])
    ),
    support(
        confidence(medium_high),
        evidence([
            e_gate_up_five,
            e_gate_rigid_components,
            e_repeated_raise_path
        ])
    )
).

hypothetical_rule(
    next_action1_places_gate_at_y25,
    rule(
        when([
            state_id(action8),
            action(action('ACTION1', {})),
            bounding_box(bottom_center_gate, 19, 30, 5, 5),
            vertical_translation_permitted(bottom_center_gate, -5)
        ]),
        then([
            predicted_bounding_box(bottom_center_gate, 19, 25, 5, 5),
            predicted_bounding_box(gate_gray_header, 19, 25, 5, 2),
            predicted_bounding_box(gate_burgundy_panel, 19, 27, 5, 3)
        ])
    ),
    support(
        confidence(medium),
        evidence([
            e_gate_up_five,
            e_repeated_raise_path,
            e_gate_rigid_components
        ])
    )
).

hypothetical_rule(
    player_reappears_after_gate_ceases_overlap,
    rule(
        when([
            state(blue_black_player, fully_occluded),
            occluded_by(blue_black_player, bottom_center_gate),
            next_position_does_not_overlap(bottom_center_gate, blue_black_player)
        ]),
        then([
            visible_again(blue_black_player),
            visible_again(player_black_core),
            visible_again(player_blue_tail),
            preserve_position(blue_black_player),
            preserve_identity(blue_black_player)
        ])
    ),
    support(
        confidence(medium),
        evidence([
            e_player_occlusion,
            e_player_identity_persists,
            e_current_gate_player_overlap,
            e_gate_up_five
        ])
    )
).

hypothetical_rule(
    status_progress_is_phase_dependent,
    rule(
        when([
            action(action('ACTION1', {}))
        ]),
        then([
            status_effect_requires_additional_state
        ]),
        excludes([
            unconditional_status_progress_increase,
            unconditional_status_progress_unchanged
        ])
    ),
    support(
        confidence(high),
        evidence([
            e_status_unchanged_action8,
            e_status_path_variation
        ])
    )
).

hypothetical_rule(
    action1_may_toggle_lower_left_glyph_mirror,
    rule(
        when([
            action(action('ACTION1', {})),
            visible(lower_left_burgundy_glyph)
        ]),
        then([
            possible_transform(lower_left_burgundy_glyph, horizontal_mirror)
        ])
    ),
    support(
        confidence(low),
        evidence([
            e_glyph_raster_change
        ])
    )
).
