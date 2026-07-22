% Observed transition from action8 to action9.

previous_state(action9, action8).
transition_action(action8, action9, action('ACTION1', {})).

% No canonical object was created or destroyed.
added_object(_Object) :-
    fail.

removed_object(_Object) :-
    fail.

% The gate and its canonical components moved upward by five pixels.
moved_object(bottom_center_gate, position(19, 30), position(19, 25), delta(0, -5)).
moved_object(gate_gray_header, position(19, 30), position(19, 25), delta(0, -5)).
moved_object(gate_burgundy_panel, position(19, 32), position(19, 27), delta(0, -5)).

changed_object(bottom_center_gate,
               bounding_box(19, 30, 5, 5),
               bounding_box(19, 25, 5, 5)).
changed_object(gate_gray_header,
               bounding_box(19, 30, 5, 2),
               bounding_box(19, 25, 5, 2)).
changed_object(gate_burgundy_panel,
               bounding_box(19, 32, 5, 3),
               bounding_box(19, 27, 5, 3)).

changed_object(bottom_center_gate,
               center(21, 32),
               center(21, 27)).
changed_object(gate_gray_header,
               center(21, 31),
               center(21, 26)).
changed_object(gate_burgundy_panel,
               center(21, 33),
               center(21, 28)).

changed_object(bottom_center_gate,
               raised_third_time,
               raised_to_main_body_top).

% The player already existed in the registry and was previously occluded.
% It is newly observed, not a newly added object.
newly_visible_object(blue_black_player).
newly_visible_object(player_black_core).
newly_visible_object(player_blue_tail).

revealed_object(blue_black_player, bottom_center_gate).
revealed_object(player_black_core, bottom_center_gate).
revealed_object(player_blue_tail, bottom_center_gate).

changed_object(blue_black_player, fully_occluded, visible).

removed_relation(occluded_by(blue_black_player, bottom_center_gate)).
removed_relation(occluded_by(player_black_core, bottom_center_gate)).
removed_relation(occluded_by(player_blue_tail, bottom_center_gate)).
removed_relation(overlays(bottom_center_gate, blue_black_player)).

added_relation(component_of(player_black_core, blue_black_player)).
added_relation(component_of(player_blue_tail, blue_black_player)).
added_relation(contains(blue_black_player, player_black_core)).
added_relation(contains(blue_black_player, player_blue_tail)).
added_relation(adjacent(player_black_core, player_blue_tail)).
added_relation(embedded_in(blue_black_player, fortress_left_wing)).
added_relation(embedded_in(blue_black_player, green_fortress)).
added_relation(overlays(blue_black_player, fortress_left_wing)).
added_relation(above(bottom_center_gate, blue_black_player)).
added_relation(below(blue_black_player, bottom_center_gate)).

% Status progress advanced by one pixel.
resized_object(green_status_block, size(6, 2), size(7, 2)).
resized_object(bottom_status_track, size(36, 2), size(35, 2)).

changed_object(green_status_block,
               bounding_box(13, 61, 6, 2),
               bounding_box(13, 61, 7, 2)).
changed_object(bottom_status_track,
               bounding_box(19, 61, 36, 2),
               bounding_box(20, 61, 35, 2)).

changed_object(green_status_block,
               lit,
               expanded_by_one_cell).

% No object changed color.
recolored_object(_Object, _OldColor, _NewColor) :-
    fail.

% Objects whose observed appearance and location remained unchanged.
unchanged_object(yellow_playfield, appearance_and_location).
unchanged_object(left_boundary_wall, appearance_and_location).
unchanged_object(green_fortress, appearance_and_location).
unchanged_object(fortress_main_body, appearance_and_location).
unchanged_object(fortress_left_wing, appearance_and_location).
unchanged_object(fortress_right_wing, appearance_and_location).
unchanged_object(fortress_lower_bridge, appearance_and_location).
unchanged_object(fortress_upper_stem, appearance_and_location).
unchanged_object(fortress_inner_courtyard, appearance_and_location).
unchanged_object(upper_chamber_frame, appearance_and_location).
unchanged_object(upper_chamber_interior, appearance_and_location).
unchanged_object(upper_burgundy_glyph, appearance_and_location).
unchanged_object(lower_left_symbol_card, appearance_and_location).
unchanged_object(lower_left_burgundy_glyph, appearance_and_location).
unchanged_object(bottom_status_panel, appearance_and_location).
unchanged_object(cyan_status_blocks, appearance_and_location).

unchanged_object(bottom_center_gate, size_and_color).
unchanged_object(gate_gray_header, size_and_color).
unchanged_object(gate_burgundy_panel, size_and_color).
unchanged_object(green_status_block, color_and_height).
unchanged_object(bottom_status_track, color_and_height).

% Directly observed effects of ACTION1.
action_effect(action('ACTION1', {}),
              moved(bottom_center_gate, delta(0, -5))).
action_effect(action('ACTION1', {}),
              revealed(blue_black_player)).
action_effect(action('ACTION1', {}),
              expanded(green_status_block, delta_size(1, 0))).
action_effect(action('ACTION1', {}),
              contracted_from_left(bottom_status_track, delta_size(-1, 0))).
action_effect(action('ACTION1', {}),
              status_progress_advanced).

observed_difference(moved_object(bottom_center_gate,
                                 position(19, 30),
                                 position(19, 25),
                                 delta(0, -5))).
observed_difference(revealed_object(blue_black_player,
                                    bottom_center_gate)).
observed_difference(resized_object(green_status_block,
                                   size(6, 2),
                                   size(7, 2))).
observed_difference(resized_object(bottom_status_track,
                                   size(36, 2),
                                   size(35, 2))).

% Hypotheses are explicitly separated from observations.
hypothesis(player_persisted_while_occluded(blue_black_player)).
hypothesis(player_position_unchanged_during_transition(blue_black_player)).
hypothesis(gate_motion_caused_reveal(bottom_center_gate,
                                     blue_black_player)).
hypothesis(status_progress_corresponds_to_action_count(green_status_block)).
