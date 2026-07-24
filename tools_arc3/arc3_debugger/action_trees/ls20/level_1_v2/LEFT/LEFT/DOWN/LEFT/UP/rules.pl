evidence_reference(action5_action6_transition,
                   observed_transition(action5, action6, action('ACTION1', {}))).

evidence_reference(action1_gate_motion,
                   moved_object(bottom_center_gate,
                                box(19,45,5,5),
                                box(19,40,5,5),
                                delta(0,-5))).

evidence_reference(action1_gate_component_motion,
                   [moved_object(gate_gray_header,
                                 box(19,45,5,2),
                                 box(19,40,5,2),
                                 delta(0,-5)),
                    moved_object(gate_burgundy_panel,
                                 box(19,47,5,3),
                                 box(19,42,5,3),
                                 delta(0,-5))]).

evidence_reference(action1_vacated_area_fill,
                   [changed_object(green_fortress,
                                   occupied_region,
                                   extended_into(box(19,45,5,5))),
                    changed_object(fortress_main_body,
                                   occupied_region,
                                   extended_into(box(19,45,5,5))),
                    changed_object(fortress_lower_bridge,
                                   bounding_box,
                                   change(box(24,45,30,5),
                                          box(19,45,35,5)))]).

evidence_reference(action1_status_advance,
                   [resized_object(green_status_block,
                                   size(4,2),
                                   size(5,2)),
                    resized_object(bottom_status_track,
                                   size(38,2),
                                   size(37,2))]).

evidence_reference(action1_no_player_motion,
                   [unchanged_object(blue_black_player,
                                     intrinsic_visual_form),
                    unchanged_object(player_black_core,
                                     intrinsic_visual_form),
                    unchanged_object(player_blue_tail,
                                     intrinsic_visual_form)]).

evidence_reference(action1_preserves_gate_appearance,
                   [unchanged_color(bottom_center_gate,
                                    [light_gray,burgundy]),
                    unchanged_color(gate_gray_header, light_gray),
                    unchanged_color(gate_burgundy_panel, burgundy)]).

evidence_reference(action3_path_annotation,
                   [incoming_action(action5, action('ACTION3', {})),
                    state(action5, gate_shifted_left),
                    state(action5, status_progress_increased),
                    state(bottom_center_gate, shifted_far_left)]).

observed_rule(action1_moves_gate_up_one_macrocell,
              rule(
                  transition(action5, action6, action('ACTION1', {})),
                  effects([
                      moved(bottom_center_gate, delta(0,-5)),
                      moved(gate_gray_header, delta(0,-5)),
                      moved(gate_burgundy_panel, delta(0,-5))
                  ]),
                  evidence([
                      action5_action6_transition,
                      action1_gate_motion,
                      action1_gate_component_motion
                  ]))).

observed_rule(action1_fills_vacated_gate_cell_with_fortress,
              rule(
                  transition(action5, action6, action('ACTION1', {})),
                  effects([
                      filled_vacated_region(
                          bottom_center_gate,
                          box(19,45,5,5),
                          green_fortress),
                      extended_left(fortress_lower_bridge, 5)
                  ]),
                  evidence([
                      action1_vacated_area_fill
                  ]))).

observed_rule(action1_advances_status_by_one_unit,
              rule(
                  transition(action5, action6, action('ACTION1', {})),
                  effects([
                      increased_width(green_status_block, 1),
                      decreased_width_from_left(bottom_status_track, 1)
                  ]),
                  evidence([
                      action1_status_advance
                  ]))).

observed_rule(action1_does_not_move_player,
              rule(
                  transition(action5, action6, action('ACTION1', {})),
                  effects([
                      preserved_position(blue_black_player),
                      preserved_position(player_black_core),
                      preserved_position(player_blue_tail)
                  ]),
                  evidence([
                      action1_no_player_motion
                  ]))).

observed_rule(action1_preserves_gate_identity_and_colors,
              rule(
                  transition(action5, action6, action('ACTION1', {})),
                  effects([
                      preserved_identity(bottom_center_gate),
                      preserved_identity(gate_gray_header),
                      preserved_identity(gate_burgundy_panel),
                      preserved_colors(bottom_center_gate)
                  ]),
                  evidence([
                      action1_preserves_gate_appearance
                  ]))).

hypothetical_rule(action1_is_upward_gate_step,
                  rule(
                      when([
                          action(action('ACTION1', {})),
                          visible(bottom_center_gate),
                          state(bottom_center_gate, closed)
                      ]),
                      then([
                          translate(bottom_center_gate, delta(0,-5)),
                          translate(gate_gray_header, delta(0,-5)),
                          translate(gate_burgundy_panel, delta(0,-5)),
                          preserve_component_alignment(
                              bottom_center_gate,
                              [gate_gray_header,gate_burgundy_panel])
                      ]),
                      unless([
                          movement_prohibited_by_level_boundary,
                          terminal_state_reached
                      ])),
                  support(
                      confidence(medium),
                      evidence([
                          action5_action6_transition,
                          action1_gate_motion,
                          action1_gate_component_motion
                      ]))).

hypothetical_rule(gate_motion_swaps_with_green_fortress_cell,
                  rule(
                      when([
                          gate_step(bottom_center_gate,
                                    box(OldX,OldY,5,5),
                                    box(NewX,NewY,5,5)),
                          destination_region_belongs_to(
                              box(NewX,NewY,5,5),
                              green_fortress)
                      ]),
                      then([
                          occupy(bottom_center_gate,
                                 box(NewX,NewY,5,5)),
                          fill_with(box(OldX,OldY,5,5),
                                    green_fortress),
                          preserve_connected_structure(
                              green_fortress)
                      ]),
                      unless([
                          destination_is_non_fortress_region,
                          terminal_state_reached
                      ])),
                  support(
                      confidence(medium),
                      evidence([
                          action1_gate_motion,
                          action1_vacated_area_fill
                      ]))).

hypothetical_rule(each_successful_gate_step_advances_status,
                  rule(
                      when([
                          successful_gate_step(bottom_center_gate),
                          state(bottom_status_panel, active)
                      ]),
                      then([
                          increase_width(green_status_block, 1),
                          decrease_width_from_left(bottom_status_track, 1),
                          preserve_right_edge(bottom_status_track),
                          preserve(cyan_status_blocks)
                      ]),
                      unless([
                          status_track_exhausted,
                          terminal_state_reached
                      ])),
                  support(
                      confidence(medium),
                      evidence([
                          action1_status_advance,
                          action3_path_annotation
                      ]))).

hypothetical_rule(action3_is_leftward_gate_step,
                  rule(
                      when([
                          action(action('ACTION3', {})),
                          visible(bottom_center_gate),
                          state(bottom_center_gate, closed)
                      ]),
                      then([
                          translate(bottom_center_gate, delta(-5,0)),
                          translate(gate_gray_header, delta(-5,0)),
                          translate(gate_burgundy_panel, delta(-5,0)),
                          advance(bottom_status_panel)
                      ]),
                      unless([
                          movement_prohibited_by_level_boundary,
                          terminal_state_reached
                      ])),
                  support(
                      confidence(low),
                      evidence([
                          action3_path_annotation
                      ]))).

hypothetical_rule(next_action1_continues_upward_if_enabled,
                  rule(
                      when([
                          current_state(action6),
                          action(action('ACTION1', {})),
                          bounding_box(bottom_center_gate,19,40,5,5),
                          gate_step_enabled(bottom_center_gate, up)
                      ]),
                      then([
                          set_bounding_box(bottom_center_gate,
                                           box(19,35,5,5)),
                          set_bounding_box(gate_gray_header,
                                           box(19,35,5,2)),
                          set_bounding_box(gate_burgundy_panel,
                                           box(19,37,5,3)),
                          fill_with(box(19,40,5,5),
                                    green_fortress),
                          increase_width(green_status_block, 1),
                          decrease_width_from_left(bottom_status_track, 1)
                      ]),
                      unless([
                          terminal_state_reached,
                          gate_step_disabled(bottom_center_gate, up)
                      ])),
                  support(
                      confidence(low),
                      evidence([
                          action1_gate_motion,
                          action1_vacated_area_fill,
                          action1_status_advance
                      ]))).
