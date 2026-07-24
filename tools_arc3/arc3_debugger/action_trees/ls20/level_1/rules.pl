evidence(ev_initial_action,
         action_history,
         action(initial, empty_payload)).

evidence(ev_no_successor_difference,
         differences_pl,
         no_post_action_difference_available(initial)).

evidence(ev_player_components,
         objects_pl,
         composite(blue_black_player,
                   [black_player_head, blue_player_tail])).

evidence(ev_player_component_geometry,
         objects_pl,
         [geometry(black_player_head,
                   union([rectangle(210,310,10,20),
                          rectangle(220,320,10,10)])),
          geometry(blue_player_tail,
                   union([rectangle(200,320,10,10),
                          rectangle(210,330,10,10)]))]).

evidence(ev_player_on_structure,
         objects_pl,
         [contains(green_maze_structure, black_player_head),
          contains(green_maze_structure, blue_player_tail)]).

evidence(ev_grid_scale,
         objects_pl,
         [grid_size(64,64),
          cell_size(10,10),
          aligned_to_grid(blue_black_player,10)]).

evidence(ev_structure_geometry,
         objects_pl,
         [object_type(green_maze_structure, compound_structure),
          object_type(green_main_platform, platform),
          object_type(green_chamber_stem, vertical_bar),
          object_type(green_upper_chamber_frame, enclosure)]).

evidence(ev_cavity_geometry,
         objects_pl,
         [object_type(yellow_inner_cavity,hole),
          enclosed_by(yellow_inner_cavity,green_maze_structure)]).

evidence(ev_gate_geometry,
         objects_pl,
         [composite(bottom_center_gate,
                    [gray_gate_cap,red_gate_base]),
          embedded_in(bottom_center_gate,green_maze_structure)]).

evidence(ev_upper_marker,
         objects_pl,
         [contains(gray_upper_chamber_interior,upper_red_hook_glyph),
          contains(gray_upper_chamber_interior,upper_red_square)]).

evidence(ev_matching_red_markers,
         objects_pl,
         [same_color(upper_red_hook_glyph,lower_left_red_hook_glyph),
          same_color(upper_red_square,lower_left_red_square)]).

evidence(ev_status_panel,
         objects_pl,
         [contains(bottom_status_panel,bottom_dark_status_bar),
          contains(bottom_status_panel,left_cyan_status_cell),
          contains(bottom_status_panel,middle_cyan_status_cell),
          contains(bottom_status_panel,right_cyan_status_cell)]).

observed_rule(initial_sample_only,
              rule(
                  transition_observation_count(0),
                  evidence_refs([ev_initial_action,
                                 ev_no_successor_difference]))).

observed_rule(player_composition,
              rule(
                  composed_of(blue_black_player,
                              [black_player_head,blue_player_tail]),
                  evidence_refs([ev_player_components,
                                 ev_player_component_geometry]))).

observed_rule(player_components_move_as_one_identity,
              rule(
                  rigid_components(blue_black_player,
                                   [black_player_head,blue_player_tail]),
                  evidence_refs([ev_player_components,
                                 ev_player_component_geometry]))).

observed_rule(grid_alignment,
              rule(
                  nominal_step_size(blue_black_player,10,10),
                  evidence_refs([ev_grid_scale]))).

observed_rule(current_player_region,
              rule(
                  currently_supported_by(blue_black_player,
                                         green_maze_structure),
                  evidence_refs([ev_player_on_structure]))).

observed_rule(gate_composition,
              rule(
                  composed_of(bottom_center_gate,
                              [gray_gate_cap,red_gate_base]),
                  evidence_refs([ev_gate_geometry]))).

observed_rule(no_empirical_action_effect_yet,
              rule(
                  insufficient_evidence_for_deterministic_transition,
                  evidence_refs([ev_initial_action,
                                 ev_no_successor_difference]))).

hypothetical_rule(grid_step_player_motion,
                  rule(
                      candidate_transition(
                          State0,
                          directional_input(Direction),
                          State1),
                      conditions([
                          direction_delta(Direction,DX,DY),
                          member(Direction,[up,down,left,right]),
                          member(pair(DX,DY),
                                 [pair(0,-10),pair(0,10),
                                  pair(-10,0),pair(10,0)]),
                          translates(blue_black_player,DX,DY),
                          translates(black_player_head,DX,DY),
                          translates(blue_player_tail,DX,DY),
                          destination_supported(State0,
                                                blue_black_player,
                                                green_maze_structure),
                          destination_unblocked(State0,
                                                blue_black_player),
                          preserves_relative_geometry(
                              [black_player_head,blue_player_tail]),
                          State1=translated_state(State0,
                                                  blue_black_player,
                                                  DX,DY)
                      ])),
                  evidence_refs(
                      [ev_grid_scale,
                       ev_player_components,
                       ev_player_component_geometry,
                       ev_player_on_structure],
                      confidence(medium_low),
                      caveat(no_directional_action_has_been_observed))).

hypothetical_rule(block_motion_into_yellow_cavity,
                  rule(
                      candidate_transition(
                          State0,
                          directional_input(Direction),
                          State0),
                      conditions([
                          proposed_destination(Direction,
                                               blue_black_player,
                                               Destination),
                          overlaps(Destination,yellow_inner_cavity)
                      ])),
                  evidence_refs(
                      [ev_cavity_geometry,
                       ev_player_on_structure,
                       ev_grid_scale],
                      confidence(low),
                      caveat(collision_behavior_is_unobserved))).

hypothetical_rule(block_motion_off_navigable_structure,
                  rule(
                      candidate_transition(
                          State0,
                          directional_input(Direction),
                          State0),
                      conditions([
                          proposed_destination(Direction,
                                               blue_black_player,
                                               Destination),
                          outside(Destination,green_maze_structure),
                          not_entering(Destination,
                                       gray_upper_chamber_interior),
                          not_passing_through(Destination,
                                              bottom_center_gate)
                      ])),
                  evidence_refs(
                      [ev_structure_geometry,
                       ev_player_on_structure,
                       ev_grid_scale],
                      confidence(low),
                      caveat(navigable_colors_are_not_empirically_confirmed))).

hypothetical_rule(closed_gate_blocks_player,
                  rule(
                      candidate_transition(
                          State0,
                          directional_input(Direction),
                          State0),
                      conditions([
                          gate_state(State0,bottom_center_gate,closed),
                          proposed_destination(Direction,
                                               blue_black_player,
                                               Destination),
                          overlaps(Destination,bottom_center_gate)
                      ])),
                  evidence_refs(
                      [ev_gate_geometry,
                       ev_grid_scale],
                      confidence(low),
                      caveat(gate_state_and_collision_effect_are_unobserved))).

hypothetical_rule(upper_marker_contact_may_trigger_event,
                  rule(
                      candidate_transition(
                          State0,
                          contact(blue_black_player,
                                  upper_red_hook_glyph),
                          State1),
                      conditions([
                          enters(blue_black_player,
                                 gray_upper_chamber_interior),
                          contacts(blue_black_player,
                                   upper_red_hook_glyph),
                          possible_effect(
                              State1,
                              one_of([
                                  gate_state_change(bottom_center_gate),
                                  status_change(bottom_status_panel),
                                  no_change
                              ]))
                      ])),
                  evidence_refs(
                      [ev_upper_marker,
                       ev_matching_red_markers,
                       ev_gate_geometry,
                       ev_status_panel],
                      confidence(very_low),
                      caveat(no_contact_or_trigger_transition_has_been_observed))).

hypothetical_rule(non_player_objects_remain_fixed_during_plain_motion,
                  rule(
                      invariant_under(
                          directional_input(_),
                          [green_maze_structure,
                           green_main_platform,
                           green_chamber_stem,
                           green_upper_chamber_frame,
                           gray_upper_chamber_interior,
                           yellow_inner_cavity,
                           bottom_center_gate,
                           gray_gate_cap,
                           red_gate_base,
                           upper_red_hook_glyph,
                           upper_red_square,
                           lower_left_control_panel,
                           lower_left_red_hook_glyph,
                           lower_left_red_square,
                           bottom_status_panel,
                           bottom_dark_status_bar,
                           left_cyan_status_cell,
                           middle_cyan_status_cell,
                           right_cyan_status_cell,
                           left_gray_border,
                           yellow_playfield])),
                  evidence_refs(
                      [ev_initial_action,
                       ev_structure_geometry,
                       ev_gate_geometry,
                       ev_status_panel],
                      confidence(low),
                      caveat(no_noninitial_transition_has_been_observed))).
