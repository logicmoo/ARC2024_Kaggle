observed_rule(
    action3_translates_closed_gate_assembly_left,
    observed_transition(
        preconditions([
            incoming_action(action3, '{}'),
            state(bottom_center_gate, closed),
            position(bottom_center_gate, 29, 45)
        ]),
        effects([
            moved(bottom_center_gate, delta(-5, 0)),
            moved(gate_gray_header, delta(-5, 0)),
            moved(gate_burgundy_panel, delta(-5, 0)),
            position(bottom_center_gate, 24, 45),
            position(gate_gray_header, 24, 45),
            position(gate_burgundy_panel, 24, 47),
            state(bottom_center_gate, shifted_left)
        ]),
        evidence([
            evidence_ref(differences_pl,
                moved_object(bottom_center_gate,
                    position(29, 45), position(24, 45), delta(-5, 0))),
            evidence_ref(differences_pl,
                moved_object(gate_gray_header,
                    position(29, 45), position(24, 45), delta(-5, 0))),
            evidence_ref(differences_pl,
                moved_object(gate_burgundy_panel,
                    position(29, 47), position(24, 47), delta(-5, 0))),
            evidence_ref(objects_pl,
                component_of(gate_gray_header, bottom_center_gate)),
            evidence_ref(objects_pl,
                component_of(gate_burgundy_panel, bottom_center_gate))
        ])
    )
).

observed_rule(
    action3_preserves_gate_appearance_and_closed_state,
    observed_transition(
        preconditions([
            bounding_box(bottom_center_gate, 29, 45, 5, 5),
            colors(bottom_center_gate, [light_gray, burgundy]),
            state(bottom_center_gate, closed)
        ]),
        effects([
            bounding_box(bottom_center_gate, 24, 45, 5, 5),
            colors(bottom_center_gate, [light_gray, burgundy]),
            state(bottom_center_gate, closed)
        ]),
        evidence([
            evidence_ref(differences_pl,
                changed_object(bottom_center_gate,
                    bounding_box(29, 45, 5, 5),
                    bounding_box(24, 45, 5, 5))),
            evidence_ref(differences_pl, no_recolored_object),
            evidence_ref(differences_pl, no_resized_object),
            evidence_ref(objects_pl,
                state(bottom_center_gate, closed))
        ])
    )
).

observed_rule(
    action3_reconfigures_bridge_around_shifted_gate,
    observed_transition(
        preconditions([
            embedded_in(bottom_center_gate, fortress_main_body),
            gate_footprint(rect(29, 45, 5, 5))
        ]),
        effects([
            embedded_in(bottom_center_gate, fortress_lower_bridge),
            reconfigured(fortress_lower_bridge),
            green_fill(green_fortress, present, rect(29, 45, 5, 5)),
            green_fill(fortress_main_body, present, rect(29, 45, 5, 5)),
            gate_interruption(fortress_lower_bridge, rect(24, 45, 5, 5))
        ]),
        evidence([
            evidence_ref(differences_pl,
                changed_object(fortress_lower_bridge,
                    geometry(interrupted_horizontal_bar),
                    geometry(gate_interrupted_horizontal_bar))),
            evidence_ref(differences_pl,
                changed_object(fortress_lower_bridge,
                    component_rectangles([
                        rect(19, 45, 10, 5),
                        rect(34, 45, 20, 5)
                    ]),
                    component_rectangles([
                        rect(19, 45, 5, 5),
                        rect(29, 45, 25, 5)
                    ]))),
            evidence_ref(differences_pl,
                changed_object(green_fortress,
                    green_fill(absent, rect(29, 45, 5, 5)),
                    green_fill(present, rect(29, 45, 5, 5)))),
            evidence_ref(differences_pl,
                removed_relation(
                    embedded_in(bottom_center_gate, fortress_main_body))),
            evidence_ref(differences_pl,
                added_relation(
                    embedded_in(bottom_center_gate, fortress_lower_bridge)))
        ])
    )
).

observed_rule(
    action3_does_not_move_player_or_change_status,
    observed_transition(
        preconditions([
            incoming_action(action3, '{}'),
            center(blue_black_player, 21, 32),
            state(cyan_status_blocks, three_lit_blocks)
        ]),
        effects([
            stationary(blue_black_player),
            center(blue_black_player, 21, 32),
            unchanged(cyan_status_blocks),
            state(cyan_status_blocks, three_lit_blocks)
        ]),
        evidence([
            evidence_ref(differences_pl,
                unchanged_object(blue_black_player,
                    observed_visual_properties)),
            evidence_ref(differences_pl,
                unchanged_object(player_black_core,
                    observed_visual_properties)),
            evidence_ref(differences_pl,
                unchanged_object(player_blue_tail,
                    observed_visual_properties)),
            evidence_ref(differences_pl,
                unchanged_object(cyan_status_blocks,
                    observed_visual_properties)),
            evidence_ref(objects_pl,
                state(blue_black_player, stationary))
        ])
    )
).

hypothetical_rule(
    gate_components_follow_parent_translation,
    transition_rule(
        preconditions([
            moved(bottom_center_gate, delta(DX, DY)),
            component_of(gate_gray_header, bottom_center_gate),
            component_of(gate_burgundy_panel, bottom_center_gate)
        ]),
        predicted_effects([
            moved(gate_gray_header, delta(DX, DY)),
            moved(gate_burgundy_panel, delta(DX, DY)),
            preserve_relative_layout(bottom_center_gate, gate_gray_header),
            preserve_relative_layout(bottom_center_gate, gate_burgundy_panel)
        ]),
        confidence(high)
    ),
    evidence([
        evidence_ref(differences_pl,
            moved_object(bottom_center_gate,
                position(29, 45), position(24, 45), delta(-5, 0))),
        evidence_ref(differences_pl,
            moved_object(gate_gray_header,
                position(29, 45), position(24, 45), delta(-5, 0))),
        evidence_ref(differences_pl,
            moved_object(gate_burgundy_panel,
                position(29, 47), position(24, 47), delta(-5, 0))),
        limitation(single_observed_transition)
    ])
).

hypothetical_rule(
    bridge_interruption_tracks_gate_footprint,
    transition_rule(
        preconditions([
            moved(bottom_center_gate,
                position(OldX, 45), position(NewX, 45), delta(DX, 0)),
            DX =:= NewX - OldX,
            embedded_in(bottom_center_gate, fortress_lower_bridge)
        ]),
        predicted_effects([
            green_fill(green_fortress, present,
                rect(OldX, 45, 5, 5)),
            green_fill(fortress_main_body, present,
                rect(OldX, 45, 5, 5)),
            gate_interruption(fortress_lower_bridge,
                rect(NewX, 45, 5, 5))
        ]),
        confidence(medium)
    ),
    evidence([
        evidence_ref(differences_pl,
            changed_object(green_fortress,
                green_fill(absent, rect(29, 45, 5, 5)),
                green_fill(present, rect(29, 45, 5, 5)))),
        evidence_ref(differences_pl,
            changed_object(fortress_main_body,
                green_fill(absent, rect(29, 45, 5, 5)),
                green_fill(present, rect(29, 45, 5, 5)))),
        evidence_ref(objects_pl,
            embedded_in(bottom_center_gate, fortress_lower_bridge)),
        limitation(single_observed_gate_shift)
    ])
).

hypothetical_rule(
    repeated_empty_payload_may_shift_gate_left_by_its_width,
    transition_rule(
        preconditions([
            incoming_payload('{}'),
            bounding_box(bottom_center_gate, 24, 45, 5, 5),
            state(bottom_center_gate, closed),
            destination_within(fortress_lower_bridge,
                rect(19, 45, 5, 5))
        ]),
        predicted_effects([
            possible(moved(bottom_center_gate,
                position(24, 45), position(19, 45), delta(-5, 0))),
            possible(moved(gate_gray_header,
                position(24, 45), position(19, 45), delta(-5, 0))),
            possible(moved(gate_burgundy_panel,
                position(24, 47), position(19, 47), delta(-5, 0))),
            possible(green_fill(green_fortress, present,
                rect(24, 45, 5, 5))),
            possible(gate_interruption(fortress_lower_bridge,
                rect(19, 45, 5, 5)))
        ]),
        confidence(low)
    ),
    evidence([
        evidence_ref(action_history,
            action(action3, '{}')),
        evidence_ref(differences_pl,
            action_effect(action3,
                observed(moved(bottom_center_gate, delta(-5, 0))))),
        evidence_ref(objects_pl,
            bounding_box(bottom_center_gate, 24, 45, 5, 5)),
        evidence_ref(objects_pl,
            component_box(fortress_lower_bridge, 19, 45, 5, 5)),
        limitation(action_payload_has_no_direction),
        limitation(no_repeated_transition_observed),
        limitation(cause_of_gate_shift_unspecified)
    ])
).

hypothetical_rule(
    empty_payload_transition_is_not_player_motion,
    transition_rule(
        preconditions([
            incoming_payload('{}'),
            state(blue_black_player, stationary)
        ]),
        predicted_effects([
            likely(unchanged_position(blue_black_player)),
            possible(implicit_environment_transition(bottom_center_gate))
        ]),
        confidence(medium_low)
    ),
    evidence([
        evidence_ref(differences_pl,
            unchanged_object(blue_black_player,
                observed_visual_properties)),
        evidence_ref(differences_pl,
            action_effect(action3,
                observed(moved(bottom_center_gate, delta(-5, 0))))),
        evidence_ref(differences_pl,
            hypothesis(cause_of_gate_shift,
                unspecified_because_action_payload_is_empty)),
        limitation(single_observed_transition)
    ])
).
