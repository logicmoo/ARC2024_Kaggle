current_state(action15).
previous_state(action15, action14).

action_history_step(action13, action('ACTION1', {}), action14).
action_history_step(action14, action('ACTION1', {}), action15).
current_action_path([
    step(action13, action('ACTION1', {}), action14),
    step(action14, action('ACTION1', {}), action15)
]).

evidence_ref(ev_action15_input,
             source(current_objects,
                    incoming_action(action15, action('ACTION1', {})))).

evidence_ref(ev_fortress_reconfigured,
             source(differences,
                    changed_object(green_fortress,
                                   geometry,
                                   connected_compound_structure,
                                   connected_branching_maze_structure))).

evidence_ref(ev_courtyard_opened,
             source(differences,
                    changed_object(fortress_inner_courtyard,
                                   state,
                                   empty,
                                   open_winding_passage))).

evidence_ref(ev_chamber_relocated,
             source(differences,
                    moved_object(upper_chamber_frame,
                                 from(36, 12),
                                 to(16, 42),
                                 delta(-20, 30)))).

evidence_ref(ev_gate_relocated,
             source(differences,
                    moved_object(bottom_center_gate,
                                 from(36, 17),
                                 to(31, 42),
                                 delta(-5, 25)))).

evidence_ref(ev_player_relocated,
             source(differences,
                    moved_object(blue_black_player,
                                 from(21, 32),
                                 to(51, 47),
                                 delta(30, 15)))).

evidence_ref(ev_green_status_removed,
             source(differences,
                    removed_object(green_status_block))).

evidence_ref(ev_status_track_expanded,
             source(differences,
                    resized_object(bottom_status_track,
                                   size(30, 2),
                                   size(42, 2)))).

evidence_ref(ev_upper_target_revealed,
             source(differences,
                    newly_visible_registry_object(
                        upper_left_green_target))).

evidence_ref(ev_lower_target_revealed,
             source(differences,
                    newly_visible_registry_object(
                        lower_right_green_target))).

evidence_ref(ev_upper_target_registry_identity,
             source(object_registry,
                    object_identity(
                        upper_left_green_target,
                        target_marker,
                        'Gray target marker with a green center in the upper-left wing'))).

evidence_ref(ev_lower_target_registry_identity,
             source(object_registry,
                    object_identity(
                        lower_right_green_target,
                        target_marker,
                        'Gray target marker with a green center in the lower-right wing'))).

evidence_ref(ev_gate_compound_preserved,
             source(differences,
                    movement_kind(bottom_center_gate,
                                  rigid_translation))).

evidence_ref(ev_player_compound_preserved,
             source(differences,
                    movement_kind(blue_black_player,
                                  rigid_translation))).

evidence_ref(ev_chamber_compound_preserved,
             source(differences,
                    movement_kind(upper_chamber_frame,
                                  rigid_translation))).

evidence_ref(ev_parent_status_progress,
             source(parent_objects,
                    state(green_status_block,
                          expanded_by_five_cells))).

evidence_ref(ev_parent_gate_progress,
             source(parent_objects,
                    state(bottom_center_gate,
                          shifted_up_two_steps))).

evidence_ref(ev_current_status_depleted,
             source(current_objects,
                    state(green_status_block, not_visible))).

evidence_ref(ev_current_targets_active,
             source(current_objects,
                    states([
                        state(upper_left_green_target, active),
                        state(lower_right_green_target, active)
                    ]))).

evidence_ref(ev_unchanged_interface,
             source(differences,
                    unchanged_objects([
                        yellow_playfield,
                        left_boundary_wall,
                        lower_left_symbol_card,
                        lower_left_burgundy_glyph,
                        bottom_status_panel,
                        cyan_status_blocks
                    ]))).

observed_rule(
    action('ACTION1', {}),
    transition_rule(
        from(action14),
        to(action15),
        observed_effects([
            reconfigured(green_fortress,
                         connected_branching_maze_structure),
            opened_passage(fortress_inner_courtyard,
                           open_winding_passage)
        ]),
        supported_by([
            ev_action15_input,
            ev_fortress_reconfigured,
            ev_courtyard_opened
        ])
    )
).

observed_rule(
    action('ACTION1', {}),
    transition_rule(
        from(action14),
        to(action15),
        observed_effects([
            relocated(upper_chamber_frame,
                      from(36, 12),
                      to(16, 42)),
            relocated(upper_chamber_interior,
                      from(36, 12),
                      to(16, 42)),
            relocated(upper_burgundy_glyph,
                      from(36, 12),
                      to(16, 42)),
            preserved_compound_identity(upper_chamber_frame)
        ]),
        supported_by([
            ev_chamber_relocated,
            ev_chamber_compound_preserved
        ])
    )
).

observed_rule(
    action('ACTION1', {}),
    transition_rule(
        from(action14),
        to(action15),
        observed_effects([
            relocated(bottom_center_gate,
                      from(36, 17),
                      to(31, 42)),
            relocated(gate_gray_header,
                      from(36, 16),
                      to(31, 41)),
            relocated(gate_burgundy_panel,
                      from(36, 18),
                      to(31, 43)),
            preserved_state(bottom_center_gate, closed),
            preserved_compound_identity(bottom_center_gate)
        ]),
        supported_by([
            ev_gate_relocated,
            ev_gate_compound_preserved
        ])
    )
).

observed_rule(
    action('ACTION1', {}),
    transition_rule(
        from(action14),
        to(action15),
        observed_effects([
            relocated(blue_black_player,
                      from(21, 32),
                      to(51, 47)),
            relocated(player_black_core,
                      from(22, 32),
                      to(52, 47)),
            relocated(player_blue_tail,
                      from(21, 33),
                      to(51, 48)),
            preserved_compound_identity(blue_black_player)
        ]),
        supported_by([
            ev_player_relocated,
            ev_player_compound_preserved
        ])
    )
).

observed_rule(
    action('ACTION1', {}),
    transition_rule(
        from(action14),
        to(action15),
        observed_effects([
            hidden(green_status_block),
            expanded_leftward(bottom_status_track,
                              from(size(30, 2)),
                              to(size(42, 2))),
            revealed(upper_left_green_target),
            revealed(lower_right_green_target)
        ]),
        supported_by([
            ev_green_status_removed,
            ev_status_track_expanded,
            ev_upper_target_revealed,
            ev_lower_target_revealed,
            ev_upper_target_registry_identity,
            ev_lower_target_registry_identity
        ])
    )
).

observed_rule(
    action('ACTION1', {}),
    transition_rule(
        from(action14),
        to(action15),
        observed_effects([
            unchanged(yellow_playfield),
            unchanged(left_boundary_wall),
            unchanged(lower_left_symbol_card),
            unchanged(lower_left_burgundy_glyph),
            unchanged(bottom_status_panel),
            unchanged(cyan_status_blocks)
        ]),
        supported_by([ev_unchanged_interface])
    )
).

hypothetical_rule(
    action('ACTION1', {}),
    rule(
        when([
            status_progress_present(green_status_block),
            status_progress_reaches_terminal_step
        ]),
        may_transition_to([
            hide(green_status_block),
            expose_full_dark_track(bottom_status_track),
            reconfigure(green_fortress),
            reveal(upper_left_green_target),
            reveal(lower_right_green_target)
        ])
    ),
    evidence([
        ev_parent_status_progress,
        ev_green_status_removed,
        ev_status_track_expanded,
        ev_fortress_reconfigured,
        ev_upper_target_revealed,
        ev_lower_target_revealed
    ], confidence(cautious))
).

hypothetical_rule(
    action('ACTION1', {}),
    rule(
        when([
            gate_progressed_upward(bottom_center_gate),
            terminal_status_transition
        ]),
        may_reset_layout_anchors([
            relocate(upper_chamber_frame),
            relocate(bottom_center_gate),
            relocate(blue_black_player)
        ])
    ),
    evidence([
        ev_parent_gate_progress,
        ev_chamber_relocated,
        ev_gate_relocated,
        ev_player_relocated
    ], confidence(cautious))
).

hypothetical_rule(
    action('ACTION1', {}),
    rule(
        when([
            fortress_phase_changes_to_maze,
            green_status_block_not_visible
        ]),
        may_activate_objectives([
            upper_left_green_target,
            lower_right_green_target
        ])
    ),
    evidence([
        ev_fortress_reconfigured,
        ev_current_status_depleted,
        ev_current_targets_active,
        ev_upper_target_registry_identity,
        ev_lower_target_registry_identity
    ], confidence(cautious))
).
