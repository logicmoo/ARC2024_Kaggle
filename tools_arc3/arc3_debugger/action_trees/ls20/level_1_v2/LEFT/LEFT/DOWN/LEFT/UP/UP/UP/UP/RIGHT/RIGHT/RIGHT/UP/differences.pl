:- discontiguous changed_object/3.
:- discontiguous action_effect/2.

transition(action12, action13, action('ACTION1', {})).

added_object(_) :-
    fail.

removed_object(_) :-
    fail.

recolored_object(_, _, _) :-
    fail.

moved_object(bottom_center_gate, point(34, 25), point(34, 20), delta(0, -5)).
moved_object(gate_gray_header, point(34, 25), point(34, 20), delta(0, -5)).
moved_object(gate_burgundy_panel, point(34, 27), point(34, 22), delta(0, -5)).
moved_object(bottom_status_track, point(23, 61), point(24, 61), delta(1, 0)).

resized_object(fortress_upper_stem, size(5, 8), size(5, 3)).
resized_object(green_status_block, size(10, 2), size(11, 2)).
resized_object(bottom_status_track, size(32, 2), size(31, 2)).

changed_object(bottom_center_gate,
               bounding_box(34, 25, 5, 5),
               bounding_box(34, 20, 5, 5)).
changed_object(gate_gray_header,
               bounding_box(34, 25, 5, 2),
               bounding_box(34, 20, 5, 2)).
changed_object(gate_burgundy_panel,
               bounding_box(34, 27, 5, 3),
               bounding_box(34, 22, 5, 3)).
changed_object(fortress_upper_stem,
               bounding_box(34, 17, 5, 8),
               bounding_box(34, 17, 5, 3)).
changed_object(fortress_upper_stem,
               geometry(filled_vertical_rectangle),
               geometry(visible_vertical_bar_segment)).
changed_object(green_status_block,
               bounding_box(13, 61, 10, 2),
               bounding_box(13, 61, 11, 2)).
changed_object(bottom_status_track,
               bounding_box(23, 61, 32, 2),
               bounding_box(24, 61, 31, 2)).
changed_object(bottom_center_gate,
               state(raised_to_main_body_top),
               state(raised_into_upper_stem)).
changed_object(bottom_center_gate,
               state(shifted_right_three_steps),
               state(shifted_up_one_step)).
changed_object(green_status_block,
               state(expanded_by_three_cells),
               state(expanded_by_four_cells)).

added_relation(contains(bottom_center_gate, gate_gray_header)).
added_relation(contains(bottom_center_gate, gate_burgundy_panel)).
added_relation(adjacent(bottom_center_gate, fortress_main_body)).
added_relation(embedded_in(bottom_center_gate, fortress_upper_stem)).
added_relation(overlays(bottom_center_gate, fortress_upper_stem)).
added_relation(above(fortress_upper_stem, bottom_center_gate)).
added_relation(above(bottom_center_gate, fortress_main_body)).
added_relation(below(bottom_center_gate, fortress_upper_stem)).

removed_relation(adjacent(fortress_upper_stem, fortress_main_body)).
removed_relation(adjacent(bottom_center_gate, fortress_inner_courtyard)).
removed_relation(embedded_in(bottom_center_gate, fortress_right_wing)).
removed_relation(embedded_in(bottom_center_gate, fortress_main_body)).
removed_relation(overlays(bottom_center_gate, fortress_right_wing)).
removed_relation(overlays(bottom_center_gate, fortress_main_body)).

unchanged_object(yellow_playfield,
                 [visibility, bounding_box, color, geometry]).
unchanged_object(left_boundary_wall,
                 [visibility, bounding_box, color, geometry]).
unchanged_object(green_fortress,
                 [visibility, bounding_box, center, color, geometry]).
unchanged_object(fortress_main_body,
                 [visibility, bounding_box, color, geometry]).
unchanged_object(fortress_left_wing,
                 [visibility, bounding_box, color, geometry]).
unchanged_object(fortress_right_wing,
                 [visibility, bounding_box, color, geometry]).
unchanged_object(fortress_lower_bridge,
                 [visibility, bounding_box, color, geometry]).
unchanged_object(fortress_inner_courtyard,
                 [visibility, bounding_box, color, geometry]).
unchanged_object(upper_chamber_frame,
                 [visibility, bounding_box, center, color, geometry]).
unchanged_object(upper_chamber_interior,
                 [visibility, bounding_box, center, color, geometry]).
unchanged_object(upper_burgundy_glyph,
                 [visibility, bounding_box, color, geometry]).
unchanged_object(blue_black_player,
                 [visibility, bounding_box, center, colors, geometry]).
unchanged_object(player_black_core,
                 [visibility, bounding_box, center, color, geometry]).
unchanged_object(player_blue_tail,
                 [visibility, bounding_box, center, color, geometry]).
unchanged_object(lower_left_symbol_card,
                 [visibility, bounding_box, center, color, geometry]).
unchanged_object(lower_left_burgundy_glyph,
                 [visibility, bounding_box, center, color, geometry]).
unchanged_object(bottom_status_panel,
                 [visibility, bounding_box, color, geometry]).
unchanged_object(cyan_status_blocks,
                 [visibility, bounding_box, center, color, geometry]).

observed_difference(moved_object(bottom_center_gate,
                                 point(34, 25),
                                 point(34, 20),
                                 delta(0, -5))).
observed_difference(resized_object(fortress_upper_stem,
                                   size(5, 8),
                                   size(5, 3))).
observed_difference(resized_object(green_status_block,
                                   size(10, 2),
                                   size(11, 2))).
observed_difference(resized_object(bottom_status_track,
                                   size(32, 2),
                                   size(31, 2))).
observed_difference(player_stationary(blue_black_player)).
observed_difference(no_object_additions).
observed_difference(no_object_removals).
observed_difference(no_recoloring).

action_effect(action('ACTION1', {}),
              gate_translation(bottom_center_gate, delta(0, -5))).
action_effect(action('ACTION1', {}),
              status_progress(green_status_block, delta_width(1))).
action_effect(action('ACTION1', {}),
              status_track_consumed(bottom_status_track, delta_width(-1))).
action_effect(action('ACTION1', {}),
              player_stationary(blue_black_player)).

hypothesis(action_effect(action('ACTION1', {}),
                         gate_translation(bottom_center_gate, delta(0, -5)))).
hypothesis(action_effect(action('ACTION1', {}),
                         status_progress(green_status_block, delta_width(1)))).
hypothesis(action_effect(action('ACTION1', {}),
                         status_track_consumed(bottom_status_track,
                                               delta_width(-1)))).

observation_status(moved_object(bottom_center_gate,
                                point(34, 25),
                                point(34, 20),
                                delta(0, -5)),
                   observed).
observation_status(resized_object(fortress_upper_stem,
                                  size(5, 8),
                                  size(5, 3)),
                   observed).
observation_status(action_effect(action('ACTION1', {}),
                                 gate_translation(bottom_center_gate,
                                                  delta(0, -5))),
                   hypothesized).
observation_status(action_effect(action('ACTION1', {}),
                                 status_progress(green_status_block,
                                                 delta_width(1))),
                   hypothesized).
