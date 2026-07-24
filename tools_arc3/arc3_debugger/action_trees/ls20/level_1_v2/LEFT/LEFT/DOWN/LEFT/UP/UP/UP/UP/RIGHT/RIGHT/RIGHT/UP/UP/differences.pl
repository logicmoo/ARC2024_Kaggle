added_object(_) :-
    fail.

removed_object(_) :-
    fail.

recolored_object(_, _, _) :-
    fail.

moved_object(bottom_center_gate,
             position(34, 20),
             position(34, 15),
             delta(0, -5)).
moved_object(gate_gray_header,
             position(34, 20),
             position(34, 15),
             delta(0, -5)).
moved_object(gate_burgundy_panel,
             position(34, 22),
             position(34, 17),
             delta(0, -5)).

resized_object(fortress_upper_stem, size(5, 3), size(5, 5)).
resized_object(green_status_block, size(11, 2), size(12, 2)).
resized_object(bottom_status_track, size(31, 2), size(30, 2)).

changed_object(bottom_center_gate,
               bounding_box(34, 20, 5, 5),
               bounding_box(34, 15, 5, 5)).
changed_object(bottom_center_gate,
               center(36, 22),
               center(36, 17)).
changed_object(bottom_center_gate,
               state(raised_into_upper_stem),
               state(raised_into_upper_chamber)).
changed_object(bottom_center_gate,
               state(shifted_up_one_step),
               state(shifted_up_two_steps)).

changed_object(gate_gray_header,
               bounding_box(34, 20, 5, 2),
               bounding_box(34, 15, 5, 2)).
changed_object(gate_gray_header,
               center(36, 21),
               center(36, 16)).

changed_object(gate_burgundy_panel,
               bounding_box(34, 22, 5, 3),
               bounding_box(34, 17, 5, 3)).
changed_object(gate_burgundy_panel,
               center(36, 23),
               center(36, 18)).

changed_object(fortress_upper_stem,
               bounding_box(34, 17, 5, 3),
               bounding_box(34, 20, 5, 5)).
changed_object(fortress_upper_stem,
               center(36, 18),
               center(36, 22)).
changed_object(fortress_upper_stem,
               geometry(visible_vertical_bar_segment),
               geometry(filled_vertical_bar)).

changed_object(green_fortress,
               component_extent(fortress_upper_stem,
                                bounding_box(34, 17, 5, 3)),
               component_extent(fortress_upper_stem,
                                bounding_box(34, 20, 5, 5))).

changed_object(green_status_block,
               bounding_box(13, 61, 11, 2),
               bounding_box(13, 61, 12, 2)).
changed_object(green_status_block,
               center(18, 62),
               center(19, 62)).
changed_object(green_status_block,
               state(expanded_by_four_cells),
               state(expanded_by_five_cells)).

changed_object(bottom_status_track,
               bounding_box(24, 61, 31, 2),
               bounding_box(25, 61, 30, 2)).
changed_object(bottom_status_track,
               center(39, 62),
               center(40, 62)).

changed_object(bottom_status_panel,
               partition(green_status_block, bottom_status_track, 24),
               partition(green_status_block, bottom_status_track, 25)).

unchanged_object(yellow_playfield, yellow_playfield).
unchanged_object(left_boundary_wall, left_boundary_wall).
unchanged_object(fortress_main_body, fortress_main_body).
unchanged_object(fortress_left_wing, fortress_left_wing).
unchanged_object(fortress_right_wing, fortress_right_wing).
unchanged_object(fortress_lower_bridge, fortress_lower_bridge).
unchanged_object(fortress_inner_courtyard, fortress_inner_courtyard).
unchanged_object(upper_chamber_frame, upper_chamber_frame).
unchanged_object(upper_chamber_interior, upper_chamber_interior).
unchanged_object(upper_burgundy_glyph, upper_burgundy_glyph).
unchanged_object(blue_black_player, blue_black_player).
unchanged_object(player_black_core, player_black_core).
unchanged_object(player_blue_tail, player_blue_tail).
unchanged_object(lower_left_symbol_card, lower_left_symbol_card).
unchanged_object(lower_left_burgundy_glyph, lower_left_burgundy_glyph).
unchanged_object(cyan_status_blocks, cyan_status_blocks).

added_relation(adjacent(upper_chamber_frame, bottom_center_gate)).
added_relation(adjacent(fortress_upper_stem, fortress_main_body)).
added_relation(adjacent(fortress_upper_stem, fortress_right_wing)).
added_relation(embedded_in(bottom_center_gate, upper_chamber_frame)).
added_relation(overlays(bottom_center_gate, upper_chamber_frame)).
added_relation(overlays(gate_gray_header, upper_chamber_interior)).
added_relation(overlays(gate_gray_header, upper_chamber_frame)).
added_relation(above(upper_chamber_frame, fortress_upper_stem)).
added_relation(above(bottom_center_gate, fortress_upper_stem)).
added_relation(above(fortress_upper_stem, fortress_main_body)).
added_relation(below(fortress_upper_stem, bottom_center_gate)).

removed_relation(adjacent(upper_chamber_frame, fortress_upper_stem)).
removed_relation(adjacent(bottom_center_gate, fortress_main_body)).
removed_relation(adjacent(bottom_center_gate, fortress_right_wing)).
removed_relation(embedded_in(bottom_center_gate, fortress_upper_stem)).
removed_relation(overlays(bottom_center_gate, fortress_upper_stem)).
removed_relation(above(upper_chamber_frame, bottom_center_gate)).
removed_relation(above(fortress_upper_stem, bottom_center_gate)).
removed_relation(below(bottom_center_gate, upper_chamber_frame)).
removed_relation(below(bottom_center_gate, fortress_upper_stem)).

action_effect(action('ACTION1', {}),
              moved(bottom_center_gate, delta(0, -5))).
action_effect(action('ACTION1', {}),
              moved(gate_gray_header, delta(0, -5))).
action_effect(action('ACTION1', {}),
              moved(gate_burgundy_panel, delta(0, -5))).
action_effect(action('ACTION1', {}),
              expanded(fortress_upper_stem, size(5, 3), size(5, 5))).
action_effect(action('ACTION1', {}),
              expanded(green_status_block, size(11, 2), size(12, 2))).
action_effect(action('ACTION1', {}),
              contracted(bottom_status_track, size(31, 2), size(30, 2))).
action_effect(action('ACTION1', {}),
              unchanged(blue_black_player)).

observed_transition(action13, action14).
observed_effect(gate_raised_by_cells(5)).
observed_effect(status_progress_advanced_by_cells(1)).
observed_effect(player_stationary).

hypothesized_rule(action('ACTION1', {}),
                  advances_gate_toward_upper_chamber).
hypothesized_rule(action('ACTION1', {}),
                  advances_green_status_progress).
