:- ensure_loaded('objects.pl').
:- ensure_loaded('differences.pl').

evidence_reference(action_history_initial_only,
                   'The action history contains only action(initial,{}).').
evidence_reference(state_id_initial,
                   'The current snapshot has state_id(initial).').
evidence_reference(no_observed_transition_difference,
                   'No before-and-after difference from a non-initial action is available.').
evidence_reference(player_location,
                   'blue_black_player has bounding_box(20,31,3,3) and center(21,32).').
evidence_reference(player_composition,
                   'player_black_core and player_blue_tail are components of blue_black_player.').
evidence_reference(player_on_fortress,
                   'blue_black_player overlays fortress_left_wing and is contained by fortress_main_body.').
evidence_reference(courtyard_obstacle_geometry,
                   'fortress_inner_courtyard is an empty enclosed yellow hole in green_fortress.').
evidence_reference(gate_initial_state,
                   'bottom_center_gate is closed and embedded in fortress_main_body.').
evidence_reference(gate_objective_color_relation,
                   'gate_burgundy_panel and upper_burgundy_glyph share the color burgundy.').
evidence_reference(upper_chamber_structure,
                   'upper_burgundy_glyph is contained in upper_chamber_interior inside upper_chamber_frame.').
evidence_reference(symbol_card_structure,
                   'lower_left_burgundy_glyph is displayed on lower_left_symbol_card outside the playfield structure.').
evidence_reference(status_initial_state,
                   'cyan_status_blocks consists of three separated lit blocks in bottom_status_panel.').
evidence_reference(grid_scale,
                   'grid_cell_size_pixels(10) indicates discrete spatial actions, but no movement displacement is observed.').

observed_rule(initial_action_establishes_baseline,
              supported(
                  rule(
                      action(initial),
                      establishes_snapshot(initial)
                  ),
                  [action_history_initial_only,
                   state_id_initial,
                   no_observed_transition_difference]
              )).

observed_rule(player_components_move_as_one_identity,
              supported(
                  invariant(
                      blue_black_player,
                      components([player_black_core, player_blue_tail])
                  ),
                  [player_composition]
              )).

observed_rule(gate_is_initially_closed,
              supported(
                  holds_after(
                      action(initial),
                      state(bottom_center_gate, closed)
                  ),
                  [gate_initial_state,
                   action_history_initial_only]
              )).

observed_rule(status_initially_shows_three_lit_blocks,
              supported(
                  holds_after(
                      action(initial),
                      state(cyan_status_blocks, three_lit_blocks)
                  ),
                  [status_initial_state,
                   action_history_initial_only]
              )).

observed_rule(no_causal_transition_yet_observed,
              supported(
                  transition_sample_count(noninitial, 0),
                  [action_history_initial_only,
                   no_observed_transition_difference]
              )).

cardinal_delta(up, 0, -1).
cardinal_delta(down, 0, 1).
cardinal_delta(left, -1, 0).
cardinal_delta(right, 1, 0).

hypothetical_rule(
    cardinal_player_translation,
    rule(
        transition(move(Direction), State0, State1),
        preconditions([
            cardinal_delta(Direction, DX, DY),
            bounding_box_in(State0, blue_black_player, X, Y, W, H),
            translated_footprint_is_walkable(State0, blue_black_player, DX, DY)
        ]),
        effects([
            bounding_box_in(State1, blue_black_player, X1, Y1, W, H),
            coordinate_relation(X1, X, plus(DX)),
            coordinate_relation(Y1, Y, plus(DY)),
            translated_together([blue_black_player,
                                 player_black_core,
                                 player_blue_tail],
                                DX, DY),
            preserves_geometry(blue_black_player),
            preserves_colors(blue_black_player)
        ])
    ),
    evidence(
        [player_location,
         player_composition,
         player_on_fortress,
         grid_scale],
        confidence(medium)
    )
).

hypothetical_rule(
    blocked_motion_has_no_spatial_effect,
    rule(
        transition(move(Direction), State0, State1),
        preconditions([
            cardinal_delta(Direction, DX, DY),
            translated_footprint_is_not_walkable(State0,
                                                 blue_black_player,
                                                 DX, DY)
        ]),
        effects([
            unchanged(State0, State1, blue_black_player),
            unchanged(State0, State1, player_black_core),
            unchanged(State0, State1, player_blue_tail)
        ])
    ),
    evidence(
        [player_on_fortress,
         courtyard_obstacle_geometry,
         no_observed_transition_difference],
        confidence(medium_low)
    )
).

hypothetical_rule(
    courtyard_is_nonwalkable,
    rule(
        attempted_entry(blue_black_player, fortress_inner_courtyard),
        implies(blocked_motion(blue_black_player))
    ),
    evidence(
        [courtyard_obstacle_geometry,
         player_on_fortress],
        confidence(medium)
    )
).

hypothetical_rule(
    fortress_surface_is_candidate_walkable_region,
    rule(
        destination_footprint_within(blue_black_player, green_fortress),
        and_not([
            overlaps_destination(blue_black_player,
                                 fortress_inner_courtyard),
            crosses_closed_gate(blue_black_player,
                                bottom_center_gate)
        ]),
        implies(candidate_walkable_destination(blue_black_player))
    ),
    evidence(
        [player_on_fortress,
         courtyard_obstacle_geometry,
         gate_initial_state],
        confidence(medium_low)
    )
).

hypothetical_rule(
    closed_gate_blocks_crossing,
    rule(
        transition(move(Direction), State0, State1),
        preconditions([
            state_in(State0, bottom_center_gate, closed),
            attempted_crossing(Direction,
                               blue_black_player,
                               bottom_center_gate)
        ]),
        effects([
            unchanged(State0, State1, blue_black_player),
            unchanged(State0, State1, bottom_center_gate)
        ])
    ),
    evidence(
        [gate_initial_state,
         no_observed_transition_difference],
        confidence(medium)
    )
).

hypothetical_rule(
    upper_glyph_may_unlock_gate,
    rule(
        transition(activate_upper_glyph, State0, State1),
        preconditions([
            player_reaches_or_activates(State0,
                                        blue_black_player,
                                        upper_burgundy_glyph),
            state_in(State0, bottom_center_gate, closed)
        ]),
        effects([
            state_in(State1, bottom_center_gate, open),
            changed(bottom_center_gate)
        ])
    ),
    evidence(
        [gate_initial_state,
         gate_objective_color_relation,
         upper_chamber_structure,
         symbol_card_structure],
        confidence(low)
    )
).

hypothetical_rule(
    opened_gate_allows_crossing,
    rule(
        transition(move(Direction), State0, State1),
        preconditions([
            state_in(State0, bottom_center_gate, open),
            attempted_crossing(Direction,
                               blue_black_player,
                               bottom_center_gate)
        ]),
        effects([
            crossing_permitted(blue_black_player,
                               bottom_center_gate)
        ])
    ),
    evidence(
        [gate_initial_state,
         gate_objective_color_relation],
        confidence(low)
    )
).

hypothetical_rule(
    status_blocks_may_encode_remaining_attempts,
    rule(
        transition(failed_attempt, State0, State1),
        preconditions([
            lit_block_count(State0, cyan_status_blocks, N),
            greater_than(N, 0)
        ]),
        effects([
            lit_block_count(State1, cyan_status_blocks, N1),
            arithmetic_relation(N1, N, minus(1))
        ])
    ),
    evidence(
        [status_initial_state,
         no_observed_transition_difference],
        confidence(low)
    )
).

hypothetical_rule(
    interface_objects_remain_spatially_fixed,
    rule(
        transition(Action, State0, State1),
        preconditions([
            noninitial_action(Action)
        ]),
        effects([
            unchanged_position(State0, State1,
                               lower_left_symbol_card),
            unchanged_position(State0, State1,
                               lower_left_burgundy_glyph),
            unchanged_position(State0, State1,
                               bottom_status_panel),
            unchanged_position(State0, State1,
                               bottom_status_track)
        ])
    ),
    evidence(
        [symbol_card_structure,
         status_initial_state],
        confidence(medium)
    )
).
