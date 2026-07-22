current_state(action14).
current_action_path([action13, action14]).
path_action(action13, action('ACTION1', {})).
path_action(action14, action('ACTION1', {})).

evidence_reference(ev_transition_a13_a14,
                   differences_pl(observed_transition(action13, action14))).

evidence_reference(ev_gate_move_a13_a14,
                   differences_pl(moved_object(bottom_center_gate,
                                               position(34, 20),
                                               position(34, 15),
                                               delta(0, -5)))).
evidence_reference(ev_gate_header_move_a13_a14,
                   differences_pl(moved_object(gate_gray_header,
                                               position(34, 20),
                                               position(34, 15),
                                               delta(0, -5)))).
evidence_reference(ev_gate_panel_move_a13_a14,
                   differences_pl(moved_object(gate_burgundy_panel,
                                               position(34, 22),
                                               position(34, 17),
                                               delta(0, -5)))).

evidence_reference(ev_stem_resize_a13_a14,
                   differences_pl(resized_object(fortress_upper_stem,
                                                 size(5, 3),
                                                 size(5, 5)))).
evidence_reference(ev_status_expand_a13_a14,
                   differences_pl(resized_object(green_status_block,
                                                 size(11, 2),
                                                 size(12, 2)))).
evidence_reference(ev_track_contract_a13_a14,
                   differences_pl(resized_object(bottom_status_track,
                                                 size(31, 2),
                                                 size(30, 2)))).

evidence_reference(ev_player_unchanged_a13_a14,
                   differences_pl(unchanged_object(blue_black_player,
                                                   blue_black_player))).
evidence_reference(ev_no_added_objects_a13_a14,
                   differences_pl(no_added_object)).
evidence_reference(ev_no_removed_objects_a13_a14,
                   differences_pl(no_removed_object)).
evidence_reference(ev_no_recolored_objects_a13_a14,
                   differences_pl(no_recolored_object)).

evidence_reference(ev_gate_current_box,
                   objects_pl(action14,
                              bounding_box(bottom_center_gate, 34, 15, 5, 5))).
evidence_reference(ev_header_current_box,
                   objects_pl(action14,
                              bounding_box(gate_gray_header, 34, 15, 5, 2))).
evidence_reference(ev_panel_current_box,
                   objects_pl(action14,
                              bounding_box(gate_burgundy_panel, 34, 17, 5, 3))).
evidence_reference(ev_gate_current_state,
                   objects_pl(action14,
                              state(bottom_center_gate,
                                    raised_into_upper_chamber))).
evidence_reference(ev_gate_step_state,
                   objects_pl(action14,
                              state(bottom_center_gate,
                                    shifted_up_two_steps))).

evidence_reference(ev_status_current_box,
                   objects_pl(action14,
                              bounding_box(green_status_block, 13, 61, 12, 2))).
evidence_reference(ev_track_current_box,
                   objects_pl(action14,
                              bounding_box(bottom_status_track, 25, 61, 30, 2))).
evidence_reference(ev_status_current_state,
                   objects_pl(action14,
                              state(green_status_block,
                                    expanded_by_five_cells))).

evidence_reference(ev_player_current_box,
                   objects_pl(action14,
                              bounding_box(blue_black_player, 20, 31, 3, 3))).
evidence_reference(ev_player_stationary_state,
                   objects_pl(action14,
                              state(blue_black_player,
                                    stationary_below_and_left_of_gate))).

evidence_reference(ev_gate_chamber_adjacency,
                   differences_pl(
                       added_relation(
                           adjacent(upper_chamber_frame,
                                    bottom_center_gate)))).
evidence_reference(ev_gate_chamber_embedding,
                   differences_pl(
                       added_relation(
                           embedded_in(bottom_center_gate,
                                       upper_chamber_frame)))).
evidence_reference(ev_gate_chamber_overlay,
                   differences_pl(
                       added_relation(
                           overlays(bottom_center_gate,
                                    upper_chamber_frame)))).

observed_rule(
    action('ACTION1', {}),
    supported(
        transition(action13, action14,
                   translate_gate_assembly(
                       [bottom_center_gate,
                        gate_gray_header,
                        gate_burgundy_panel],
                       delta(0, -5))),
        [ev_transition_a13_a14,
         ev_gate_move_a13_a14,
         ev_gate_header_move_a13_a14,
         ev_gate_panel_move_a13_a14])).

observed_rule(
    action('ACTION1', {}),
    supported(
        transition(action13, action14,
                   advance_gate_stage(
                       bottom_center_gate,
                       shifted_up_one_step,
                       shifted_up_two_steps)),
        [ev_transition_a13_a14,
         ev_gate_move_a13_a14,
         ev_gate_step_state])).

observed_rule(
    action('ACTION1', {}),
    supported(
        transition(action13, action14,
                   enter_region(bottom_center_gate,
                                upper_chamber_frame)),
        [ev_gate_current_state,
         ev_gate_chamber_adjacency,
         ev_gate_chamber_embedding,
         ev_gate_chamber_overlay])).

observed_rule(
    action('ACTION1', {}),
    supported(
        transition(action13, action14,
                   restore_vacated_green_corridor(
                       fortress_upper_stem,
                       size(5, 3),
                       size(5, 5))),
        [ev_stem_resize_a13_a14,
         ev_gate_move_a13_a14])).

observed_rule(
    action('ACTION1', {}),
    supported(
        transition(action13, action14,
                   advance_status_partition(
                       green_status_block,
                       bottom_status_track,
                       cells(1))),
        [ev_status_expand_a13_a14,
         ev_track_contract_a13_a14,
         ev_status_current_box,
         ev_track_current_box])).

observed_rule(
    action('ACTION1', {}),
    supported(
        transition(action13, action14,
                   preserve_object(blue_black_player)),
        [ev_player_unchanged_a13_a14,
         ev_player_current_box,
         ev_player_stationary_state])).

observed_rule(
    action('ACTION1', {}),
    supported(
        transition(action13, action14,
                   preserve_object_inventory_and_colors),
        [ev_no_added_objects_a13_a14,
         ev_no_removed_objects_a13_a14,
         ev_no_recolored_objects_a13_a14])).

hypothetical_rule(
    action('ACTION1', {}),
    if([current_state(action14),
        state(bottom_center_gate, closed),
        state(bottom_center_gate, shifted_up_two_steps),
        continuation_not_blocked],
       then(may_translate_gate_assembly(
                [bottom_center_gate,
                 gate_gray_header,
                 gate_burgundy_panel],
                delta(0, -5)))),
    support(confidence(medium),
            [ev_gate_move_a13_a14,
             ev_gate_header_move_a13_a14,
             ev_gate_panel_move_a13_a14,
             ev_gate_step_state])).

hypothetical_rule(
    action('ACTION1', {}),
    if([current_state(action14),
        continuation_not_blocked,
        destination_cells_available],
       then(candidate_next_bounds(
                [bounding_box(bottom_center_gate, 34, 10, 5, 5),
                 bounding_box(gate_gray_header, 34, 10, 5, 2),
                 bounding_box(gate_burgundy_panel, 34, 12, 5, 3)]))),
    support(confidence(low),
            [ev_gate_current_box,
             ev_header_current_box,
             ev_panel_current_box,
             ev_gate_move_a13_a14])).

hypothetical_rule(
    action('ACTION1', {}),
    if([current_state(action14),
        status_progress_not_saturated],
       then(advance_status_partition(
                green_status_block,
                bottom_status_track,
                cells(1)))),
    support(confidence(medium),
            [ev_status_expand_a13_a14,
             ev_track_contract_a13_a14,
             ev_status_current_state])).

hypothetical_rule(
    action('ACTION1', {}),
    if([current_state(action14),
        status_progress_not_saturated],
       then(candidate_next_bounds(
                [bounding_box(green_status_block, 13, 61, 13, 2),
                 bounding_box(bottom_status_track, 26, 61, 29, 2)]))),
    support(confidence(medium),
            [ev_status_current_box,
             ev_track_current_box,
             ev_status_expand_a13_a14,
             ev_track_contract_a13_a14])).

hypothetical_rule(
    action('ACTION1', {}),
    if([current_state(action14),
        no_independent_player_input],
       then(preserve_object(blue_black_player))),
    support(confidence(medium),
            [ev_player_unchanged_a13_a14,
             ev_player_current_box,
             ev_player_stationary_state])).

hypothetical_rule(
    action('ACTION1', {}),
    if([current_state(action14),
        gate_motion_reaches_terminal_chamber_position],
       then(stop_gate_translation_before_occluding_fixed_chamber_glyph)),
    support(confidence(low),
            [ev_gate_current_state,
             ev_gate_chamber_embedding,
             ev_gate_chamber_overlay])).

hypothetical_rule(
    action('ACTION1', {}),
    if([current_state(action14),
        transition_is_nonterminal],
       then(preserve_object_inventory_and_colors)),
    support(confidence(medium),
            [ev_no_added_objects_a13_a14,
             ev_no_removed_objects_a13_a14,
             ev_no_recolored_objects_a13_a14])).
