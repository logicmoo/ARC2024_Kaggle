:- ensure_loaded('../../../../object_registry.pl').

observed_rule(
    action2_no_visible_transition,
    transition_rule(
        action('ACTION2', {}),
        state(action4),
        effects([
            visually_unchanged(action4)
        ]),
        evidence([
            objects_pl(state(action4)),
            objects_pl(incoming_action(action4, action('ACTION2', {}))),
            objects_pl(state(action4, visually_unchanged))
        ])
    )
).

observed_rule(
    action3_translated_gate_left,
    transition_rule(
        action('ACTION3', {}),
        transition(action4, action5),
        effects([
            moved(bottom_center_gate, delta(-5, 0)),
            moved(gate_gray_header, delta(-5, 0)),
            moved(gate_burgundy_panel, delta(-5, 0)),
            shift_state(bottom_center_gate, shifted_left, shifted_far_left)
        ]),
        evidence([
            differences_pl(moved_object(bottom_center_gate,
                                        position(24, 45),
                                        position(19, 45),
                                        delta(-5, 0))),
            differences_pl(moved_object(gate_gray_header,
                                        position(24, 45),
                                        position(19, 45),
                                        delta(-5, 0))),
            differences_pl(moved_object(gate_burgundy_panel,
                                        position(24, 47),
                                        position(19, 47),
                                        delta(-5, 0))),
            differences_pl(changed_object(bottom_center_gate,
                                          shift_state,
                                          change(shifted_left,
                                                 shifted_far_left))),
            differences_pl(action_effect(
                action('ACTION3', {}),
                observed_transition(
                    moved(bottom_center_gate, delta(-5, 0)))))
        ])
    )
).

observed_rule(
    action3_preserved_gate_shape_and_closed_state,
    transition_rule(
        action('ACTION3', {}),
        transition(action4, action5),
        effects([
            preserved_size(bottom_center_gate, size(5, 5)),
            preserved_components(bottom_center_gate,
                                 [gate_gray_header,
                                  gate_burgundy_panel]),
            preserved_state(bottom_center_gate, closed)
        ]),
        evidence([
            objects_pl(action4,
                       bounding_box(bottom_center_gate, 24, 45, 5, 5)),
            objects_pl(action5,
                       bounding_box(bottom_center_gate, 19, 45, 5, 5)),
            objects_pl(action4, state(bottom_center_gate, closed)),
            objects_pl(action5, state(bottom_center_gate, closed)),
            object_registry_pl(
                object_identity(bottom_center_gate,
                                compound_rectangle,
                                'Two-color gate embedded at the bottom center of the fortress'))
        ])
    )
).

observed_rule(
    action3_shifted_gate_gap_with_gate,
    transition_rule(
        action('ACTION3', {}),
        transition(action4, action5),
        effects([
            replaced_region(rect(19, 45, 5, 5),
                            green_fortress_cells,
                            bottom_center_gate_cells),
            replaced_region(rect(24, 45, 5, 5),
                            bottom_center_gate_cells,
                            green_fortress_cells),
            changed_occupied_shape(green_fortress,
                                   gate_gap_at_x_24_to_28,
                                   gate_gap_at_x_19_to_23),
            resized(fortress_lower_bridge,
                    size(35, 5),
                    size(30, 5))
        ]),
        evidence([
            differences_pl(observed_region_transition(
                rect(19, 45, 5, 5),
                green_fortress_cells,
                bottom_center_gate_cells)),
            differences_pl(observed_region_transition(
                rect(24, 45, 5, 5),
                bottom_center_gate_cells,
                green_fortress_cells)),
            differences_pl(changed_object(
                green_fortress,
                occupied_shape,
                change(gate_gap_at_x_24_to_28,
                       gate_gap_at_x_19_to_23))),
            differences_pl(resized_object(
                fortress_lower_bridge,
                size(35, 5),
                size(30, 5)))
        ])
    )
).

observed_rule(
    action3_incremented_status_progress,
    transition_rule(
        action('ACTION3', {}),
        transition(action4, action5),
        effects([
            added(green_status_block),
            lit(green_status_block),
            occupied_status_region(rect(13, 61, 4, 2)),
            resized(bottom_status_track,
                    size(42, 2),
                    size(38, 2)),
            advanced(bottom_status_panel, status_progress)
        ]),
        evidence([
            differences_pl(added_object(green_status_block)),
            differences_pl(observed_region_transition(
                rect(13, 61, 4, 2),
                bottom_status_track_cells,
                green_status_block_cells)),
            differences_pl(resized_object(
                bottom_status_track,
                size(42, 2),
                size(38, 2))),
            differences_pl(action_effect(
                action('ACTION3', {}),
                observed_transition(added(green_status_block)))),
            differences_pl(action_effect(
                action('ACTION3', {}),
                observed_transition(
                    advanced(bottom_status_panel,
                             status_progress)))),
            objects_pl(action5, state(green_status_block, lit))
        ])
    )
).

observed_rule(
    action3_did_not_move_player,
    transition_rule(
        action('ACTION3', {}),
        transition(action4, action5),
        effects([
            preserved_position(blue_black_player, point(20, 31)),
            preserved_center(blue_black_player, point(21, 32)),
            preserved_state(blue_black_player, stationary)
        ]),
        evidence([
            objects_pl(action4,
                       bounding_box(blue_black_player, 20, 31, 3, 3)),
            objects_pl(action5,
                       bounding_box(blue_black_player, 20, 31, 3, 3)),
            objects_pl(action4, center(blue_black_player, 21, 32)),
            objects_pl(action5, center(blue_black_player, 21, 32)),
            differences_pl(
                observation(
                    player_remained_stationary(blue_black_player)))
        ])
    )
).

hypothetical_rule(
    action3_advances_closed_gate_one_step_left,
    transition_rule(
        action('ACTION3', {}),
        preconditions([
            state(bottom_center_gate, closed),
            leftward_destination_available(bottom_center_gate,
                                           step(5))
        ]),
        predicted_effects([
            translate(bottom_center_gate, delta(-5, 0)),
            translate(gate_gray_header, delta(-5, 0)),
            translate(gate_burgundy_panel, delta(-5, 0)),
            preserve_state(bottom_center_gate, closed),
            transfer_gate_gap_left(step(5))
        ])
    ),
    evidence(
        cautious,
        [
            differences_pl(hypothesis(
                action3_advances_gate_leftward_by_one_five_cell_step)),
            differences_pl(observation(
                gate_translation(bottom_center_gate,
                                 delta(-5, 0)))),
            observed_rule(action3_translated_gate_left),
            observed_rule(action3_preserved_gate_shape_and_closed_state),
            limitation(single_observed_action3_transition)
        ])
    )
).

hypothetical_rule(
    action3_increments_status_by_one_four_cell_segment,
    transition_rule(
        action('ACTION3', {}),
        preconditions([
            state(bottom_status_panel, active),
            status_track_has_unfilled_width(bottom_status_track,
                                            at_least(4))
        ]),
        predicted_effects([
            extend_lit_progress_rightward(bottom_status_panel,
                                         color(green),
                                         size(4, 2)),
            reduce_unfilled_track_from_left(bottom_status_track,
                                            width(4))
        ])
    ),
    evidence(
        cautious,
        [
            differences_pl(hypothesis(
                action3_increments_status_progress)),
            differences_pl(hypothesis(
                green_status_block_records_successful_action_progress)),
            differences_pl(changed_object(
                bottom_status_track,
                left_edge,
                change(13, 17))),
            observed_rule(action3_incremented_status_progress),
            limitation(single_progress_increment_observed)
        ])
    )
).

hypothetical_rule(
    action3_is_environment_control_not_player_motion,
    transition_rule(
        action('ACTION3', {}),
        preconditions([
            state(blue_black_player, stationary)
        ]),
        predicted_effects([
            preserve_position(blue_black_player),
            modify(bottom_center_gate),
            modify(bottom_status_panel)
        ])
    ),
    evidence(
        cautious,
        [
            differences_pl(observation(
                player_remained_stationary(blue_black_player))),
            observed_rule(action3_did_not_move_player),
            observed_rule(action3_translated_gate_left),
            observed_rule(action3_incremented_status_progress),
            limitation(not_yet_tested_from_other_player_positions)
        ])
    )
).

hypothetical_rule(
    action2_is_inert_in_the_observed_configuration,
    transition_rule(
        action('ACTION2', {}),
        preconditions([
            configuration_matching_state(action4)
        ]),
        predicted_effects([
            preserve_visible_scene
        ])
    ),
    evidence(
        very_cautious,
        [
            observed_rule(action2_no_visible_transition),
            objects_pl(incoming_action(action4,
                                       action('ACTION2', {}))),
            objects_pl(state(action4, visually_unchanged)),
            limitation(single_action2_observation)
        ])
    )
).
