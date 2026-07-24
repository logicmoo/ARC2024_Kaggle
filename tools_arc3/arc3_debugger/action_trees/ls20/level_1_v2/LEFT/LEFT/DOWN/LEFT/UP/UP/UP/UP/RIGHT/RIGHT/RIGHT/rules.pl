evidence(ev_repeated_action4_path,
         [incoming_action(action11, action('ACTION4', {})),
          incoming_action(action12, action('ACTION4', {})),
          previous_state(action12, action11)]).

evidence(ev_gate_translation,
         [moved_object(bottom_center_gate,
                       position(29,25),
                       position(34,25),
                       delta(5,0)),
          changed_object(bottom_center_gate,
                         state(shifted_right_two_steps),
                         state(shifted_right_three_steps))]).

evidence(ev_gate_component_translation,
         [moved_object(gate_gray_header,
                       position(29,25),
                       position(34,25),
                       delta(5,0)),
          moved_object(gate_burgundy_panel,
                       position(29,27),
                       position(34,27),
                       delta(5,0))]).

evidence(ev_status_progress,
         [resized_object(green_status_block,
                         size(9,2),
                         size(10,2)),
          resized_object(bottom_status_track,
                         size(33,2),
                         size(32,2)),
          added_cell(green_status_block, cell(22,61)),
          added_cell(green_status_block, cell(22,62)),
          removed_cell(bottom_status_track, cell(22,61)),
          removed_cell(bottom_status_track, cell(22,62))]).

evidence(ev_player_core_stationary,
         [unchanged_object(blue_black_player, bounding_box_and_center),
          observation(player_black_core_stationary)]).

evidence(ev_player_tail_change,
         [removed_cell(player_blue_tail, cell(20,31)),
          changed_object(player_blue_tail,
                         geometry(bent_three_cell_cluster),
                         geometry(diagonal_two_cell_tail)),
          resized_object(player_blue_tail,
                         size(2,3),
                         size(2,2))]).

evidence(ev_identity_and_palette_stability,
         [observation(no_objects_added),
          observation(no_objects_removed),
          observation(no_objects_recolored),
          observation(all_canonical_identities_preserved)]).

evidence(ev_current_gate_clearance,
         [bounding_box(bottom_center_gate,34,25,5,5),
          bounding_box(fortress_main_body,14,25,40,25),
          state(bottom_center_gate,closed),
          state(bottom_center_gate,shifted_right_three_steps)]).

evidence(ev_current_status_capacity,
         [bounding_box(green_status_block,13,61,10,2),
          bounding_box(bottom_status_track,23,61,32,2),
          adjacent(green_status_block,bottom_status_track)]).

observed_rule(
    action('ACTION4', {}),
    transition(action11,
               action12,
               translate([bottom_center_gate,
                          gate_gray_header,
                          gate_burgundy_panel],
                         delta(5,0)),
               evidence([ev_gate_translation,
                         ev_gate_component_translation]))).

observed_rule(
    action('ACTION4', {}),
    transition(action11,
               action12,
               advance_status_boundary(
                   green_status_block,
                   bottom_status_track,
                   delta(1,0)),
               evidence([ev_status_progress]))).

observed_rule(
    action('ACTION4', {}),
    transition(action11,
               action12,
               preserve_position([blue_black_player,
                                  player_black_core]),
               evidence([ev_player_core_stationary]))).

observed_rule(
    action('ACTION4', {}),
    transition(action11,
               action12,
               remove_cell(player_blue_tail,cell(20,31)),
               evidence([ev_player_tail_change]))).

observed_rule(
    action('ACTION4', {}),
    transition(action11,
               action12,
               preserve_object_set_and_colors,
               evidence([ev_identity_and_palette_stability]))).

hypothetical_rule(
    action('ACTION4', {}),
    if([state(bottom_center_gate,closed),
        state(bottom_center_gate,shifted_right_three_steps),
        next_translation_remains_within_playfield(
            bottom_center_gate,
            delta(5,0))],
       then([translate(bottom_center_gate,delta(5,0)),
             translate(gate_gray_header,delta(5,0)),
             translate(gate_burgundy_panel,delta(5,0)),
             next_bounding_box(bottom_center_gate,39,25,5,5),
             next_bounding_box(gate_gray_header,39,25,5,2),
             next_bounding_box(gate_burgundy_panel,39,27,5,3),
             next_state(bottom_center_gate,
                        shifted_right_four_steps)])),
    support(high_confidence,
            [ev_repeated_action4_path,
             ev_gate_translation,
             ev_gate_component_translation,
             ev_current_gate_clearance])).

hypothetical_rule(
    action('ACTION4', {}),
    if([adjacent(green_status_block,bottom_status_track),
        width_remaining(bottom_status_track,positive)],
       then([expand_right(green_status_block,1),
             shrink_from_left(bottom_status_track,1),
             next_bounding_box(green_status_block,13,61,11,2),
             next_bounding_box(bottom_status_track,24,61,31,2)])),
    support(high_confidence,
            [ev_repeated_action4_path,
             ev_status_progress,
             ev_current_status_capacity])).

hypothetical_rule(
    action('ACTION4', {}),
    if([visible(blue_black_player),
        visible(player_black_core)],
       then([preserve_position(blue_black_player),
             preserve_position(player_black_core)])),
    support(medium_high_confidence,
            [ev_player_core_stationary,
             ev_repeated_action4_path])).

hypothetical_rule(
    action('ACTION4', {}),
    if([visible(player_blue_tail)],
       then([allow_animation_or_occlusion_change(player_blue_tail),
             do_not_infer_player_translation_from_tail_only])),
    support(medium_confidence,
            [ev_player_tail_change,
             ev_player_core_stationary])).

hypothetical_rule(
    action('ACTION4', {}),
    if([all_current_objects_retain_intrinsic_identity],
       then([preserve_object_set,
             preserve_canonical_object_identities,
             preserve_object_colors])),
    support(medium_confidence,
            [ev_identity_and_palette_stability])).
