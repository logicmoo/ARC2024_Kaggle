transition(action3, action4).
transition_action(action3, action4, action('ACTION2', {})).

added_object(_) :- fail.
removed_object(_) :- fail.
changed_object(_, _, _) :- fail.
moved_object(_, _, _, _) :- fail.
recolored_object(_, _, _) :- fail.
resized_object(_, _, _) :- fail.

unchanged_object(yellow_playfield, all_observed_properties).
unchanged_object(left_boundary_wall, all_observed_properties).
unchanged_object(green_fortress, all_observed_properties).
unchanged_object(fortress_main_body, all_observed_properties).
unchanged_object(fortress_left_wing, all_observed_properties).
unchanged_object(fortress_right_wing, all_observed_properties).
unchanged_object(fortress_lower_bridge, all_observed_properties).
unchanged_object(fortress_upper_stem, all_observed_properties).
unchanged_object(fortress_inner_courtyard, all_observed_properties).
unchanged_object(upper_chamber_frame, all_observed_properties).
unchanged_object(upper_chamber_interior, all_observed_properties).
unchanged_object(upper_burgundy_glyph, all_observed_properties).
unchanged_object(blue_black_player, all_observed_properties).
unchanged_object(player_black_core, all_observed_properties).
unchanged_object(player_blue_tail, all_observed_properties).
unchanged_object(bottom_center_gate, all_observed_properties).
unchanged_object(gate_gray_header, all_observed_properties).
unchanged_object(gate_burgundy_panel, all_observed_properties).
unchanged_object(lower_left_symbol_card, all_observed_properties).
unchanged_object(lower_left_burgundy_glyph, all_observed_properties).
unchanged_object(bottom_status_panel, all_observed_properties).
unchanged_object(bottom_status_track, all_observed_properties).
unchanged_object(cyan_status_blocks, all_observed_properties).

observation(action4, visually_unchanged_from(action3)).
observation(action4, no_added_objects).
observation(action4, no_removed_objects).
observation(action4, no_changed_objects).

action_effect(action('ACTION2', {}), no_observable_visual_change).

hypothesis(action4, none).
