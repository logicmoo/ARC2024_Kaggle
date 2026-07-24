evidence_reference(ev_gate_cap_displacement, differences_pl,
    observed_movement(gray_gate_cap, displacement(-50, 0))).
evidence_reference(ev_gate_base_displacement, differences_pl,
    observed_movement(red_gate_base, displacement(-50, 0))).
evidence_reference(ev_gate_bbox_transition, differences_pl,
    observed_transition(bottom_center_gate,
                        bbox(290, 450, 339, 499),
                        bbox(240, 450, 289, 499))).
evidence_reference(ev_vacated_gate_region_filled, differences_pl,
    observed_region_change(green_maze_structure,
                           bbox(290, 450, 339, 499),
                           gate_colors,
                           green)).
evidence_reference(ev_status_boundary_shift, differences_pl,
    observed_resize(bottom_dark_status_bar,
                    bbox(140, 610, 549, 629),
                    bbox(150, 610, 549, 629))).
evidence_reference(ev_player_components_preserved, differences_pl,
    observed_preservation([black_player_head, blue_player_tail],
                           blue_black_player)).
evidence_reference(ev_no_added_or_removed_objects, differences_pl,
    observed_correspondence_complete).
evidence_reference(ev_single_transition_only, action_history,
    transition_count(1)).

observed_rule(action3_translates_bottom_center_gate,
    rule(
        when([action('ACTION3', empty_payload)]),
        then([
            translate(bottom_center_gate, displacement(-50, 0)),
            translate(gray_gate_cap, displacement(-50, 0)),
            translate(red_gate_base, displacement(-50, 0)),
            set_bbox(bottom_center_gate, bbox(240, 450, 289, 499))
        ]),
        evidence([
            ev_gate_cap_displacement,
            ev_gate_base_displacement,
            ev_gate_bbox_transition
        ])
    )).

observed_rule(action3_fills_vacated_gate_region,
    rule(
        when([
            action('ACTION3', empty_payload),
            translate(bottom_center_gate, displacement(-50, 0))
        ]),
        then([
            extend(green_maze_structure, bbox(290, 450, 339, 499)),
            fill_vacated_region(bottom_center_gate,
                                green_maze_structure,
                                bbox(290, 450, 339, 499))
        ]),
        evidence([
            ev_gate_bbox_transition,
            ev_vacated_gate_region_filled
        ])
    )).

observed_rule(action3_advances_status_boundary,
    rule(
        when([action('ACTION3', empty_payload)]),
        then([
            shift_left_boundary(bottom_dark_status_bar, 10),
            set_bbox(bottom_dark_status_bar,
                     bbox(150, 610, 549, 629))
        ]),
        evidence([
            ev_status_boundary_shift
        ])
    )).

observed_rule(action3_preserves_player,
    rule(
        when([action('ACTION3', empty_payload)]),
        then([
            preserve_position(blue_black_player),
            preserve_component(blue_black_player, black_player_head),
            preserve_component(blue_black_player, blue_player_tail)
        ]),
        evidence([
            ev_player_components_preserved
        ])
    )).

hypothetical_rule(repeated_action3_moves_gate_one_width_left,
    rule(
        when([
            action('ACTION3', empty_payload),
            leftward_gate_step_available(bottom_center_gate, 50)
        ]),
        then([
            translate(bottom_center_gate, displacement(-50, 0)),
            translate(gray_gate_cap, displacement(-50, 0)),
            translate(red_gate_base, displacement(-50, 0))
        ])
    ),
    support(medium, [
        ev_gate_cap_displacement,
        ev_gate_base_displacement,
        ev_gate_bbox_transition,
        ev_single_transition_only
    ])).

hypothetical_rule(next_action3_gate_bbox,
    rule(
        when([
            current_bbox(bottom_center_gate,
                         bbox(240, 450, 289, 499)),
            action('ACTION3', empty_payload),
            leftward_gate_step_available(bottom_center_gate, 50)
        ]),
        then([
            predicted_bbox(bottom_center_gate,
                           bbox(190, 450, 239, 499)),
            predicted_vacated_region(bbox(240, 450, 289, 499))
        ])
    ),
    support(low, [
        ev_gate_bbox_transition,
        ev_single_transition_only
    ])).

hypothetical_rule(vacated_gate_cells_become_green_structure,
    rule(
        when([
            translate(bottom_center_gate, displacement(-50, 0)),
            vacated_region(bottom_center_gate, Region)
        ]),
        then([
            fill_vacated_region(bottom_center_gate,
                                green_maze_structure,
                                Region),
            extend(green_maze_structure, Region)
        ])
    ),
    support(high, [
        ev_gate_bbox_transition,
        ev_vacated_gate_region_filled
    ])).

hypothetical_rule(successful_gate_step_consumes_one_status_cell,
    rule(
        when([
            action('ACTION3', empty_payload),
            successful_translation(bottom_center_gate,
                                   displacement(-50, 0))
        ]),
        then([
            shift_left_boundary(bottom_dark_status_bar, 10)
        ])
    ),
    support(medium, [
        ev_gate_cap_displacement,
        ev_gate_base_displacement,
        ev_status_boundary_shift,
        ev_single_transition_only
    ])).

hypothetical_rule(action3_does_not_move_player,
    rule(
        when([
            action('ACTION3', empty_payload),
            gate_step_available(bottom_center_gate)
        ]),
        then([
            preserve_position(blue_black_player),
            preserve_component(blue_black_player, black_player_head),
            preserve_component(blue_black_player, blue_player_tail)
        ])
    ),
    support(low, [
        ev_player_components_preserved,
        ev_single_transition_only
    ])).
