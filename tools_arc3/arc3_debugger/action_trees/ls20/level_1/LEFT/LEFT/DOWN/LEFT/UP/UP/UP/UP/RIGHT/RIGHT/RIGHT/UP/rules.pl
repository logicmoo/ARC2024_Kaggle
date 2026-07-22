evidence_reference(ev_action12_action13_transition,
                   transition(action12, action13, action('ACTION1', {}))).

evidence_reference(ev_action1_gate_move,
                   moved_object(bottom_center_gate,
                                point(34, 25),
                                point(34, 20),
                                delta(0, -5))).

evidence_reference(ev_action1_header_move,
                   moved_object(gate_gray_header,
                                point(34, 25),
                                point(34, 20),
                                delta(0, -5))).

evidence_reference(ev_action1_panel_move,
                   moved_object(gate_burgundy_panel,
                                point(34, 27),
                                point(34, 22),
                                delta(0, -5))).

evidence_reference(ev_action1_stem_occlusion,
                   resized_object(fortress_upper_stem,
                                  size(5, 8),
                                  size(5, 3))).

evidence_reference(ev_action1_status_growth,
                   resized_object(green_status_block,
                                  size(10, 2),
                                  size(11, 2))).

evidence_reference(ev_action1_track_consumption,
                   resized_object(bottom_status_track,
                                  size(32, 2),
                                  size(31, 2))).

evidence_reference(ev_action1_track_shift,
                   moved_object(bottom_status_track,
                                point(23, 61),
                                point(24, 61),
                                delta(1, 0))).

evidence_reference(ev_action1_player_stationary,
                   observed_difference(player_stationary(blue_black_player))).

evidence_reference(ev_action1_no_object_creation,
                   observed_difference(no_object_additions)).

evidence_reference(ev_action1_no_object_removal,
                   observed_difference(no_object_removals)).

evidence_reference(ev_action1_no_recoloring,
                   observed_difference(no_recoloring)).

evidence_reference(ev_prior_action4_gate_state,
                   conjunction([
                       incoming_action(action12, action('ACTION4', {})),
                       state(action12, gate_moved_right),
                       state(bottom_center_gate, shifted_right_three_steps)
                   ])).

evidence_reference(ev_prior_status_progress,
                   conjunction([
                       state(action12, status_progress_advanced),
                       state(green_status_block, expanded_by_three_cells),
                       state(action13, status_progress_advanced),
                       state(green_status_block, expanded_by_four_cells)
                   ])).

evidence_reference(ev_current_gate_pose,
                   conjunction([
                       bounding_box(bottom_center_gate, 34, 20, 5, 5),
                       bounding_box(gate_gray_header, 34, 20, 5, 2),
                       bounding_box(gate_burgundy_panel, 34, 22, 5, 3),
                       state(bottom_center_gate, closed)
                   ])).

observed_rule(action1_translated_gate_up_one_grid_step,
              observation(
                  transition(action12, action13, action('ACTION1', {})),
                  effects([
                      translate(bottom_center_gate, delta(0, -5)),
                      translate(gate_gray_header, delta(0, -5)),
                      translate(gate_burgundy_panel, delta(0, -5))
                  ]),
                  evidence([
                      ev_action12_action13_transition,
                      ev_action1_gate_move,
                      ev_action1_header_move,
                      ev_action1_panel_move
                  ]))).

observed_rule(action1_preserved_gate_composition,
              observation(
                  action('ACTION1', {}),
                  invariants([
                      component_of(gate_gray_header, bottom_center_gate),
                      component_of(gate_burgundy_panel, bottom_center_gate),
                      color(gate_gray_header, light_gray),
                      color(gate_burgundy_panel, burgundy),
                      state(bottom_center_gate, closed)
                  ]),
                  evidence([
                      ev_action1_header_move,
                      ev_action1_panel_move,
                      ev_action1_no_recoloring
                  ]))).

observed_rule(action1_advanced_status_by_one_cell,
              observation(
                  action('ACTION1', {}),
                  effects([
                      resize(green_status_block, delta_size(1, 0)),
                      translate(bottom_status_track, delta(1, 0)),
                      resize(bottom_status_track, delta_size(-1, 0))
                  ]),
                  evidence([
                      ev_action1_status_growth,
                      ev_action1_track_shift,
                      ev_action1_track_consumption
                  ]))).

observed_rule(action1_left_player_stationary,
              observation(
                  action('ACTION1', {}),
                  invariant_pose(blue_black_player,
                                 bounding_box(20, 31, 3, 3)),
                  evidence([
                      ev_action1_player_stationary
                  ]))).

observed_rule(action1_changed_no_object_identity_set,
              observation(
                  action('ACTION1', {}),
                  effects([
                      no_object_additions,
                      no_object_removals,
                      no_recoloring
                  ]),
                  evidence([
                      ev_action1_no_object_creation,
                      ev_action1_no_object_removal,
                      ev_action1_no_recoloring
                  ]))).

observed_rule(gate_overlap_reduced_visible_upper_stem,
              observation(
                  transition(action12, action13, action('ACTION1', {})),
                  effects([
                      visible_resize(fortress_upper_stem,
                                     size(5, 8),
                                     size(5, 3)),
                      overlays(bottom_center_gate, fortress_upper_stem)
                  ]),
                  evidence([
                      ev_action1_gate_move,
                      ev_action1_stem_occlusion
                  ]))).

hypothetical_rule(action1_means_gate_up,
                  confidence(high),
                  rule(
                      conditions([
                          incoming_action(CurrentState,
                                          action('ACTION1', {})),
                          bounding_box(bottom_center_gate, X, Y, 5, 5),
                          movement_permitted(bottom_center_gate,
                                             delta(0, -5))
                      ]),
                      predicts([
                          next_bounding_box(bottom_center_gate,
                                            X, Y-5, 5, 5),
                          gate_translation(bottom_center_gate,
                                           delta(0, -5))
                      ]),
                      evidence([
                          ev_action12_action13_transition,
                          ev_action1_gate_move
                      ]))).

hypothetical_rule(gate_components_translate_rigidly,
                  confidence(high),
                  rule(
                      conditions([
                          gate_translation(bottom_center_gate,
                                           delta(DX, DY)),
                          component_of(gate_gray_header,
                                       bottom_center_gate),
                          component_of(gate_burgundy_panel,
                                       bottom_center_gate)
                      ]),
                      predicts([
                          component_translation(gate_gray_header,
                                                delta(DX, DY)),
                          component_translation(gate_burgundy_panel,
                                                delta(DX, DY)),
                          preserve_relative_layout(
                              bottom_center_gate,
                              [gate_gray_header, gate_burgundy_panel])
                      ]),
                      evidence([
                          ev_action1_gate_move,
                          ev_action1_header_move,
                          ev_action1_panel_move
                      ]))).

hypothetical_rule(action4_means_gate_right,
                  confidence(medium),
                  rule(
                      conditions([
                          incoming_action(NextState,
                                          action('ACTION4', {})),
                          bounding_box(bottom_center_gate, X, Y, 5, 5),
                          movement_permitted(bottom_center_gate,
                                             delta(5, 0))
                      ]),
                      predicts([
                          next_bounding_box(bottom_center_gate,
                                            X+5, Y, 5, 5),
                          gate_translation(bottom_center_gate,
                                           delta(5, 0))
                      ]),
                      evidence([
                          ev_prior_action4_gate_state
                      ]))).

hypothetical_rule(successful_control_action_advances_status,
                  confidence(medium_high),
                  rule(
                      conditions([
                          incoming_action(NextState, Action),
                          successful_gate_translation(Action),
                          bounding_box(green_status_block,
                                       13, 61, Width, 2),
                          bounding_box(bottom_status_track,
                                       TrackX, 61, TrackWidth, 2),
                          TrackWidth > 0
                      ]),
                      predicts([
                          next_bounding_box(green_status_block,
                                            13, 61, Width+1, 2),
                          next_bounding_box(bottom_status_track,
                                            TrackX+1, 61,
                                            TrackWidth-1, 2),
                          player_stationary(blue_black_player)
                      ]),
                      evidence([
                          ev_action1_status_growth,
                          ev_action1_track_shift,
                          ev_action1_track_consumption,
                          ev_prior_status_progress,
                          ev_action1_player_stationary
                      ]))).

hypothetical_rule(stem_resize_is_gate_occlusion_not_structural_loss,
                  confidence(medium_high),
                  rule(
                      conditions([
                          overlays(bottom_center_gate,
                                   fortress_upper_stem),
                          aligned_with(bottom_center_gate,
                                       fortress_upper_stem,
                                       vertical)
                      ]),
                      predicts([
                          preserve_identity(fortress_upper_stem),
                          preserve_color(fortress_upper_stem, green),
                          visible_geometry_only_change(
                              fortress_upper_stem)
                      ]),
                      evidence([
                          ev_action1_gate_move,
                          ev_action1_stem_occlusion,
                          ev_action1_no_object_removal,
                          ev_action1_no_recoloring
                      ]))).

hypothetical_rule(repeating_action1_from_current_pose,
                  confidence(medium),
                  rule(
                      conditions([
                          state_id(action13),
                          incoming_action(NextState,
                                          action('ACTION1', {})),
                          movement_permitted(bottom_center_gate,
                                             delta(0, -5)),
                          bounding_box(bottom_center_gate,
                                       34, 20, 5, 5)
                      ]),
                      predicts([
                          next_bounding_box(bottom_center_gate,
                                            34, 15, 5, 5),
                          next_bounding_box(gate_gray_header,
                                            34, 15, 5, 2),
                          next_bounding_box(gate_burgundy_panel,
                                            34, 17, 5, 3),
                          next_bounding_box(green_status_block,
                                            13, 61, 12, 2),
                          next_bounding_box(bottom_status_track,
                                            25, 61, 30, 2),
                          player_stationary(blue_black_player)
                      ]),
                      evidence([
                          ev_current_gate_pose,
                          ev_action1_gate_move,
                          ev_action1_header_move,
                          ev_action1_panel_move,
                          ev_action1_status_growth,
                          ev_action1_track_consumption
                      ]))).
