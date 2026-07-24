% Observed differences between action14 and action15.

previous_state_id(action14).
current_state_id(action15).
compared_action(action('ACTION1', {})).

added_object(upper_left_green_target).
added_object(lower_right_green_target).

removed_object(green_status_block).

newly_visible_registry_object(upper_left_green_target).
newly_visible_registry_object(lower_right_green_target).
newly_hidden_registry_object(green_status_block).

appeared_at(upper_left_green_target, bounding_box(15, 16, 3, 3)).
appeared_at(lower_right_green_target, bounding_box(40, 51, 3, 3)).
disappeared_from(green_status_block, bounding_box(13, 61, 12, 2)).

changed_object(green_fortress,
               geometry,
               connected_compound_structure,
               connected_branching_maze_structure).
changed_object(fortress_main_body,
               geometry,
               stepped_block_region,
               stepped_orthogonal_block_region).
changed_object(fortress_left_wing,
               geometry,
               filled_rectangle,
               branching_block_and_vertical_bar).
changed_object(fortress_right_wing,
               geometry,
               filled_rectangle,
               stepped_vertical_block_region).
changed_object(fortress_lower_bridge,
               geometry,
               filled_horizontal_bar,
               thick_lower_right_block).
changed_object(fortress_upper_stem,
               geometry,
               filled_vertical_bar,
               zigzag_vertical_connector).
changed_object(fortress_inner_courtyard,
               geometry,
               l_shaped_hole,
               winding_open_corridor).

changed_object(green_fortress,
               state,
               solid,
               reconfigured_as_maze).
changed_object(fortress_inner_courtyard,
               state,
               empty,
               open_winding_passage).
changed_object(upper_chamber_frame,
               state,
               located_in_upper_chamber,
               relocated_to_lower_left_branch).
changed_object(bottom_center_gate,
               state,
               raised_into_upper_chamber,
               relocated_to_central_lower_corridor).
changed_object(blue_black_player,
               state,
               stationary_below_and_left_of_gate,
               relocated_to_lower_right_wing).
changed_object(green_status_block,
               visibility,
               visible,
               not_visible).
changed_object(bottom_status_track,
               state,
               partially_covered_by_green_status_block,
               fully_dark).

moved_object(green_fortress,
             from(34, 29),
             to(34, 30),
             delta(0, 1)).
moved_object(fortress_main_body,
             from(34, 37),
             to(34, 30),
             delta(0, -7)).
moved_object(fortress_left_wing,
             from(21, 32),
             to(16, 28),
             delta(-5, -4)).
moved_object(fortress_right_wing,
             from(44, 37),
             to(49, 35),
             delta(5, -2)).
moved_object(fortress_lower_bridge,
             from(36, 47),
             to(51, 47),
             delta(15, 0)).
moved_object(fortress_upper_stem,
             from(36, 22),
             to(36, 30),
             delta(0, 8)).
moved_object(fortress_inner_courtyard,
             from(29, 37),
             to(34, 32),
             delta(5, -5)).

moved_object(upper_chamber_frame,
             from(36, 12),
             to(16, 42),
             delta(-20, 30)).
moved_object(upper_chamber_interior,
             from(36, 12),
             to(16, 42),
             delta(-20, 30)).
moved_object(upper_burgundy_glyph,
             from(36, 12),
             to(16, 42),
             delta(-20, 30)).

moved_object(bottom_center_gate,
             from(36, 17),
             to(31, 42),
             delta(-5, 25)).
moved_object(gate_gray_header,
             from(36, 16),
             to(31, 41),
             delta(-5, 25)).
moved_object(gate_burgundy_panel,
             from(36, 18),
             to(31, 43),
             delta(-5, 25)).

moved_object(blue_black_player,
             from(21, 32),
             to(51, 47),
             delta(30, 15)).
moved_object(player_black_core,
             from(22, 32),
             to(52, 47),
             delta(30, 15)).
moved_object(player_blue_tail,
             from(21, 33),
             to(51, 48),
             delta(30, 15)).

moved_object(bottom_status_track,
             from(40, 62),
             to(34, 62),
             delta(-6, 0)).

movement_kind(upper_chamber_frame, rigid_translation).
movement_kind(upper_chamber_interior, rigid_translation).
movement_kind(upper_burgundy_glyph, rigid_translation).
movement_kind(bottom_center_gate, rigid_translation).
movement_kind(gate_gray_header, rigid_translation).
movement_kind(gate_burgundy_panel, rigid_translation).
movement_kind(blue_black_player, rigid_translation).
movement_kind(player_black_core, rigid_translation).
movement_kind(player_blue_tail, rigid_translation).
movement_kind(bottom_status_track, leftward_expansion).
movement_kind(green_fortress, reconfiguration).
movement_kind(fortress_main_body, reconfiguration).
movement_kind(fortress_left_wing, reconfiguration).
movement_kind(fortress_right_wing, reconfiguration).
movement_kind(fortress_lower_bridge, reconfiguration).
movement_kind(fortress_upper_stem, reconfiguration).
movement_kind(fortress_inner_courtyard, reconfiguration).

resized_object(green_fortress, size(40, 42), size(50, 50)).
resized_object(fortress_main_body, size(40, 25), size(50, 50)).
resized_object(fortress_left_wing, size(15, 15), size(15, 37)).
resized_object(fortress_right_wing, size(20, 25), size(20, 40)).
resized_object(fortress_lower_bridge, size(35, 5), size(15, 15)).
resized_object(fortress_upper_stem, size(5, 5), size(15, 30)).
resized_object(fortress_inner_courtyard, size(10, 15), size(30, 35)).
resized_object(bottom_status_track, size(30, 2), size(42, 2)).

recolored_object(_Object, _OldColor, _NewColor) :-
    fail.

no_observed_difference(recoloring).

unchanged_object(yellow_playfield,
                 bounding_box(0, 0, 64, 64)).
unchanged_object(left_boundary_wall,
                 bounding_box(0, 0, 4, 52)).
unchanged_object(lower_left_symbol_card,
                 bounding_box(1, 53, 10, 10)).
unchanged_object(lower_left_burgundy_glyph,
                 bounding_box(3, 55, 6, 6)).
unchanged_object(bottom_status_panel,
                 bounding_box(12, 60, 52, 4)).
unchanged_object(cyan_status_blocks,
                 bounding_box(56, 61, 8, 2)).

unchanged_object(upper_chamber_frame,
                 size(9, 9)).
unchanged_object(upper_chamber_interior,
                 size(7, 7)).
unchanged_object(upper_burgundy_glyph,
                 size(3, 3)).
unchanged_object(bottom_center_gate,
                 size(5, 5)).
unchanged_object(gate_gray_header,
                 size(5, 2)).
unchanged_object(gate_burgundy_panel,
                 size(5, 3)).
unchanged_object(blue_black_player,
                 size(3, 3)).
unchanged_object(player_black_core,
                 size(2, 2)).
unchanged_object(player_blue_tail,
                 size(2, 2)).

unchanged_object(upper_chamber_frame,
                 geometry(one_cell_thick_rectangular_frame)).
unchanged_object(upper_chamber_interior,
                 geometry(filled_rectangle)).
unchanged_object(upper_burgundy_glyph,
                 geometry(hooked_angular_glyph)).
unchanged_object(bottom_center_gate,
                 geometry(vertically_partitioned_rectangle)).
unchanged_object(blue_black_player,
                 geometry(asymmetric_two_color_marker)).
unchanged_object(player_blue_tail,
                 geometry(diagonal_two_cell_tail)).
unchanged_object(lower_left_symbol_card,
                 geometry(filled_square_panel)).
unchanged_object(lower_left_burgundy_glyph,
                 geometry(angular_thick_glyph)).
unchanged_object(bottom_status_panel,
                 geometry(filled_horizontal_panel)).
unchanged_object(cyan_status_blocks,
                 geometry(three_separated_rectangular_blocks)).

unchanged_object(bottom_center_gate, state(closed)).
unchanged_object(blue_black_player, state(visible)).
unchanged_object(player_blue_tail, state(two_cell_diagonal)).
unchanged_object(bottom_status_panel, state(active)).
unchanged_object(cyan_status_blocks, state(three_lit_blocks)).

removed_relation(component_of(green_status_block, bottom_status_panel)).
removed_relation(contains(bottom_status_panel, green_status_block)).
removed_relation(overlays(green_status_block, bottom_status_panel)).
removed_relation(adjacent(green_status_block, bottom_status_track)).
removed_relation(embedded_in(bottom_center_gate, upper_chamber_frame)).
removed_relation(embedded_in(bottom_center_gate, green_fortress)).
removed_relation(embedded_in(blue_black_player, fortress_left_wing)).
removed_relation(contains(fortress_main_body, fortress_inner_courtyard)).

added_relation(embedded_in(upper_chamber_frame, green_fortress)).
added_relation(embedded_in(bottom_center_gate, fortress_upper_stem)).
added_relation(embedded_in(blue_black_player, fortress_right_wing)).
added_relation(embedded_in(upper_left_green_target, fortress_left_wing)).
added_relation(embedded_in(lower_right_green_target, fortress_right_wing)).
added_relation(overlays(upper_left_green_target, fortress_left_wing)).
added_relation(overlays(lower_right_green_target, fortress_right_wing)).

action_effect(action('ACTION1', {}),
              observed(reconfigured(green_fortress))).
action_effect(action('ACTION1', {}),
              observed(relocated(upper_chamber_frame,
                                 from(36, 12),
                                 to(16, 42)))).
action_effect(action('ACTION1', {}),
              observed(relocated(bottom_center_gate,
                                 from(36, 17),
                                 to(31, 42)))).
action_effect(action('ACTION1', {}),
              observed(relocated(blue_black_player,
                                 from(21, 32),
                                 to(51, 47)))).
action_effect(action('ACTION1', {}),
              observed(removed_from_view(green_status_block))).
action_effect(action('ACTION1', {}),
              observed(expanded(bottom_status_track,
                                from(size(30, 2)),
                                to(size(42, 2))))).
action_effect(action('ACTION1', {}),
              observed(revealed(upper_left_green_target))).
action_effect(action('ACTION1', {}),
              observed(revealed(lower_right_green_target))).

hypothesized_action_effect(action('ACTION1', {}),
                           caused_global_fortress_reconfiguration).
hypothesized_action_effect(action('ACTION1', {}),
                           consumed_green_status_block).
hypothesized_action_effect(action('ACTION1', {}),
                           activated_or_exposed_green_targets).

evidence_status(added_object(upper_left_green_target), observed).
evidence_status(added_object(lower_right_green_target), observed).
evidence_status(removed_object(green_status_block), observed).
evidence_status(reconfigured(green_fortress), observed).
evidence_status(consumed_green_status_block, hypothesis).
evidence_status(caused_global_fortress_reconfiguration, hypothesis).
evidence_status(activated_or_exposed_green_targets, hypothesis).
