added_object(_) :-
    fail.

removed_object(_) :-
    fail.

recolored_object(_, _, _) :-
    fail.

moved_object(bottom_center_gate,
             position(29, 25),
             position(34, 25),
             delta(5, 0)).
moved_object(gate_gray_header,
             position(29, 25),
             position(34, 25),
             delta(5, 0)).
moved_object(gate_burgundy_panel,
             position(29, 27),
             position(34, 27),
             delta(5, 0)).

resized_object(player_blue_tail,
               size(2, 3),
               size(2, 2)).
resized_object(green_status_block,
               size(9, 2),
               size(10, 2)).
resized_object(bottom_status_track,
               size(33, 2),
               size(32, 2)).

changed_object(bottom_center_gate,
               bounding_box(29, 25, 5, 5),
               bounding_box(34, 25, 5, 5)).
changed_object(gate_gray_header,
               bounding_box(29, 25, 5, 2),
               bounding_box(34, 25, 5, 2)).
changed_object(gate_burgundy_panel,
               bounding_box(29, 27, 5, 3),
               bounding_box(34, 27, 5, 3)).
changed_object(player_blue_tail,
               bounding_box(20, 31, 2, 3),
               bounding_box(20, 32, 2, 2)).
changed_object(player_blue_tail,
               geometry(bent_three_cell_cluster),
               geometry(diagonal_two_cell_tail)).
changed_object(player_blue_tail,
               occupied_cells([cell(20,31), cell(20,32), cell(21,33)]),
               occupied_cells([cell(20,32), cell(21,33)])).
changed_object(green_status_block,
               bounding_box(13, 61, 9, 2),
               bounding_box(13, 61, 10, 2)).
changed_object(bottom_status_track,
               bounding_box(22, 61, 33, 2),
               bounding_box(23, 61, 32, 2)).
changed_object(bottom_center_gate,
               state(shifted_right_two_steps),
               state(shifted_right_three_steps)).
changed_object(green_status_block,
               state(expanded_by_two_cells),
               state(expanded_by_three_cells)).
changed_object(bottom_center_gate,
               separated_by_gap(blue_black_player, 6),
               separated_by_gap(blue_black_player, 11)).

removed_cell(player_blue_tail, cell(20, 31)).
added_cell(green_status_block, cell(22, 61)).
added_cell(green_status_block, cell(22, 62)).
removed_cell(bottom_status_track, cell(22, 61)).
removed_cell(bottom_status_track, cell(22, 62)).

added_relation(adjacent(fortress_upper_stem, bottom_center_gate)).
added_relation(embedded_in(bottom_center_gate, fortress_right_wing)).
added_relation(overlays(bottom_center_gate, fortress_right_wing)).
added_relation(left_of(fortress_inner_courtyard, bottom_center_gate)).
added_relation(aligned_with(bottom_center_gate, fortress_upper_stem, vertical)).
added_relation(aligned_with(bottom_center_gate, fortress_right_wing, left_edge)).
added_relation(aligned_with(green_status_block, bottom_status_track, horizontal)).

removed_relation(adjacent(bottom_center_gate, fortress_left_wing)).
removed_relation(aligned_with(bottom_center_gate,
                              fortress_inner_courtyard,
                              vertical)).
removed_relation(between(bottom_center_gate,
                         fortress_left_wing,
                         fortress_right_wing)).

unchanged_object(yellow_playfield, intrinsic_properties).
unchanged_object(left_boundary_wall, intrinsic_properties).
unchanged_object(green_fortress, intrinsic_properties).
unchanged_object(fortress_main_body, intrinsic_properties).
unchanged_object(fortress_left_wing, intrinsic_properties).
unchanged_object(fortress_right_wing, intrinsic_properties).
unchanged_object(fortress_lower_bridge, intrinsic_properties).
unchanged_object(fortress_upper_stem, intrinsic_properties).
unchanged_object(fortress_inner_courtyard, intrinsic_properties).
unchanged_object(upper_chamber_frame, intrinsic_properties).
unchanged_object(upper_chamber_interior, intrinsic_properties).
unchanged_object(upper_burgundy_glyph, intrinsic_properties).
unchanged_object(blue_black_player, bounding_box_and_center).
unchanged_object(player_black_core, intrinsic_properties).
unchanged_object(lower_left_symbol_card, intrinsic_properties).
unchanged_object(lower_left_burgundy_glyph, intrinsic_properties).
unchanged_object(bottom_status_panel, intrinsic_properties).
unchanged_object(cyan_status_blocks, intrinsic_properties).

observation(no_objects_added).
observation(no_objects_removed).
observation(no_objects_recolored).
observation(gate_translated_right_by(5)).
observation(player_black_core_stationary).
observation(player_blue_tail_lost_cell(cell(20,31))).
observation(status_progress_increased_by_one_column).
observation(all_canonical_identities_preserved).

action_effect(action('ACTION4', {}),
              observed(gate_translated(bottom_center_gate, delta(5,0)))).
action_effect(action('ACTION4', {}),
              observed(player_black_core_remained_stationary)).
action_effect(action('ACTION4', {}),
              observed(player_blue_tail_removed_cell(cell(20,31)))).
action_effect(action('ACTION4', {}),
              observed(status_progress_advanced_by_one_column)).
action_effect(action('ACTION4', {}),
              hypothesized(advances_gate_and_status_progress)).

hypothesis(action4_moves_gate_right_one_grid_step, high_confidence).
hypothesis(action4_advances_status_progress_one_column, high_confidence).
hypothesis(player_blue_tail_change_is_animation_or_occlusion, medium_confidence).
