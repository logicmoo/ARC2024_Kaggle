evidence_reference(ev_action8_action9,
                   transition_action(action8, action9, action('ACTION1', {}))).

evidence_reference(ev_gate_translation,
                   moved_object(bottom_center_gate,
                                position(19, 30),
                                position(19, 25),
                                delta(0, -5))).

evidence_reference(ev_gate_component_translation,
                   [moved_object(gate_gray_header,
                                 position(19, 30),
                                 position(19, 25),
                                 delta(0, -5)),
                    moved_object(gate_burgundy_panel,
                                 position(19, 32),
                                 position(19, 27),
                                 delta(0, -5))]).

evidence_reference(ev_player_reveal,
                   revealed_object(blue_black_player, bottom_center_gate)).

evidence_reference(ev_player_occlusion_removed,
                   [removed_relation(occluded_by(blue_black_player,
                                                 bottom_center_gate)),
                    removed_relation(overlays(bottom_center_gate,
                                              blue_black_player))]).

evidence_reference(ev_status_advance,
                   [resized_object(green_status_block,
                                   size(6, 2),
                                   size(7, 2)),
                    resized_object(bottom_status_track,
                                   size(36, 2),
                                   size(35, 2))]).

evidence_reference(ev_no_object_lifecycle_change,
                   [no_added_object, no_removed_object]).

evidence_reference(ev_action8_status_unchanged,
                   state(action8, status_progress_unchanged)).

evidence_reference(ev_current_gate_endpoint,
                   [bounding_box(bottom_center_gate, 19, 25, 5, 5),
                    state(bottom_center_gate, raised_to_main_body_top)]).

evidence_reference(ev_current_player_position,
                   [bounding_box(blue_black_player, 20, 31, 3, 3),
                    state(blue_black_player, visible),
                    state(blue_black_player, stationary_below_gate)]).

observed_rule(action1_translated_gate_up_at_action9,
              rule(
                  conditions([
                      state_id(action9),
                      previous_state(action9, action8),
                      incoming_action(action9, action('ACTION1', {}))
                  ]),
                  effects([
                      moved(bottom_center_gate, delta(0, -5)),
                      moved(gate_gray_header, delta(0, -5)),
                      moved(gate_burgundy_panel, delta(0, -5))
                  ]),
                  evidence([
                      ev_action8_action9,
                      ev_gate_translation,
                      ev_gate_component_translation
                  ]))).

observed_rule(gate_translation_revealed_player_at_action9,
              rule(
                  conditions([
                      moved(bottom_center_gate, delta(0, -5)),
                      previously_occluded(blue_black_player,
                                          bottom_center_gate)
                  ]),
                  effects([
                      revealed(blue_black_player),
                      revealed(player_black_core),
                      revealed(player_blue_tail),
                      removed_occlusion(blue_black_player,
                                        bottom_center_gate)
                  ]),
                  evidence([
                      ev_gate_translation,
                      ev_player_reveal,
                      ev_player_occlusion_removed
                  ]))).

observed_rule(action9_advanced_status_by_one_pixel,
              rule(
                  conditions([
                      state_id(action9),
                      incoming_action(action9, action('ACTION1', {}))
                  ]),
                  effects([
                      expanded_right(green_status_block, 1),
                      contracted_from_left(bottom_status_track, 1),
                      status_progress_advanced
                  ]),
                  evidence([
                      ev_action8_action9,
                      ev_status_advance
                  ]))).

observed_rule(action9_preserved_registered_objects,
              rule(
                  conditions([
                      transition(action8, action9)
                  ]),
                  effects([
                      preserved(bottom_center_gate),
                      preserved(blue_black_player),
                      preserved(green_fortress),
                      no_object_created,
                      no_object_destroyed
                  ]),
                  evidence([
                      ev_no_object_lifecycle_change
                  ]))).

hypothetical_rule(gate_components_follow_gate_rigidly,
                  rule(
                      conditions([
                          action(action('ACTION1', {})),
                          movable(bottom_center_gate),
                          moved(bottom_center_gate, delta(DX, DY))
                      ]),
                      effects([
                          moved(gate_gray_header, delta(DX, DY)),
                          moved(gate_burgundy_panel, delta(DX, DY)),
                          preserved_relative_layout(bottom_center_gate,
                                                    gate_gray_header),
                          preserved_relative_layout(bottom_center_gate,
                                                    gate_burgundy_panel)
                      ])),
                  assessment(
                      high,
                      evidence([
                          ev_gate_translation,
                          ev_gate_component_translation
                      ]),
                      caveat(observed_on_one_transition))).

hypothetical_rule(player_persists_when_gate_occludes_it,
                  rule(
                      conditions([
                          overlaps(bottom_center_gate, blue_black_player)
                      ]),
                      effects([
                          persists(blue_black_player),
                          visually_occluded(blue_black_player,
                                            bottom_center_gate),
                          not_created_on_later_reveal(blue_black_player)
                      ])),
                  assessment(
                      high,
                      evidence([
                          ev_player_reveal,
                          ev_player_occlusion_removed,
                          ev_no_object_lifecycle_change
                      ]),
                      caveat(position_while_fully_occluded_is_inferred))).

hypothetical_rule(gate_motion_controls_player_visibility,
                  rule(
                      conditions([
                          moved(bottom_center_gate, delta(0, DY)),
                          DY < 0,
                          ceases_to_overlap(bottom_center_gate,
                                            blue_black_player)
                      ]),
                      effects([
                          visible(blue_black_player),
                          visible(player_black_core),
                          visible(player_blue_tail)
                      ])),
                  assessment(
                      medium,
                      evidence([
                          ev_gate_translation,
                          ev_player_reveal,
                          ev_player_occlusion_removed
                      ]),
                      caveat(correlation_does_not_prove_general_causation))).

hypothetical_rule(repeated_action1_may_continue_upward_step,
                  rule(
                      conditions([
                          current_state(action9),
                          next_action(action('ACTION1', {})),
                          upward_motion_permitted(bottom_center_gate)
                      ]),
                      effects([
                          predicted_bounding_box(bottom_center_gate,
                                                 19, 20, 5, 5),
                          predicted_bounding_box(gate_gray_header,
                                                 19, 20, 5, 2),
                          predicted_bounding_box(gate_burgundy_panel,
                                                 19, 22, 5, 3),
                          moved(bottom_center_gate, delta(0, -5)),
                          moved(gate_gray_header, delta(0, -5)),
                          moved(gate_burgundy_panel, delta(0, -5))
                      ])),
                  assessment(
                      low,
                      evidence([
                          ev_gate_translation,
                          ev_gate_component_translation,
                          ev_current_gate_endpoint
                      ]),
                      caveat(raised_to_main_body_top_may_be_a_motion_endpoint))).

hypothetical_rule(gate_may_stop_at_main_body_top,
                  rule(
                      conditions([
                          current_state(action9),
                          next_action(action('ACTION1', {})),
                          state(bottom_center_gate,
                                raised_to_main_body_top),
                          no_further_upward_route(bottom_center_gate)
                      ]),
                      effects([
                          unchanged_position(bottom_center_gate),
                          unchanged_position(gate_gray_header),
                          unchanged_position(gate_burgundy_panel)
                      ])),
                  assessment(
                      low,
                      evidence([
                          ev_current_gate_endpoint
                      ]),
                      caveat(competing_with_continued_upward_motion))).

hypothetical_rule(status_advance_marks_reveal_or_gate_milestone,
                  rule(
                      conditions([
                          action(action('ACTION1', {})),
                          newly_revealed(blue_black_player),
                          reached_gate_milestone(bottom_center_gate,
                                                 raised_to_main_body_top)
                      ]),
                      effects([
                          expanded_right(green_status_block, 1),
                          contracted_from_left(bottom_status_track, 1)
                      ])),
                  assessment(
                      medium,
                      evidence([
                          ev_player_reveal,
                          ev_status_advance,
                          ev_current_gate_endpoint,
                          ev_action8_status_unchanged
                      ]),
                      caveat(reveal_and_gate_milestone_coincide_in_the_observation))).

hypothetical_rule(no_new_milestone_preserves_status_progress,
                  rule(
                      conditions([
                          current_state(action9),
                          next_action(action('ACTION1', {})),
                          no_new_reveal,
                          no_new_gate_milestone
                      ]),
                      effects([
                          unchanged_size(green_status_block),
                          unchanged_size(bottom_status_track),
                          status_progress_unchanged
                      ])),
                  assessment(
                      medium,
                      evidence([
                          ev_action8_status_unchanged,
                          ev_status_advance,
                          ev_current_player_position
                      ]),
                      caveat(status_may_track_an_unobserved_action_counter))).
