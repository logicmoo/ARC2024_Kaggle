object_match(yellow_playfield, yellow_playfield, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(left_boundary_wall, left_boundary_wall, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(green_fortress, green_fortress, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(fortress_main_body, fortress_main_body, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(fortress_left_wing, fortress_left_wing, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(fortress_right_wing, fortress_right_wing, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(fortress_lower_bridge, fortress_lower_bridge, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(fortress_upper_stem, fortress_upper_stem, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(fortress_inner_courtyard, fortress_inner_courtyard, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(upper_chamber_frame, upper_chamber_frame, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(upper_chamber_interior, upper_chamber_interior, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(upper_burgundy_glyph, upper_burgundy_glyph, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(blue_black_player, blue_black_player, match(1.0, [canonical_id, unchanged_appearance_and_extent, stationary])).
object_match(player_black_core, player_black_core, match(1.0, [canonical_id, unchanged_appearance_and_extent, same_parent(blue_black_player)])).
object_match(player_blue_tail, player_blue_tail, match(1.0, [canonical_id, unchanged_appearance_and_extent, same_parent(blue_black_player)])).
object_match(bottom_center_gate, bottom_center_gate, match(1.0, [canonical_id, same_color_and_geometry, translated(delta(0, -5)), state_continuity])).
object_match(gate_gray_header, gate_gray_header, match(1.0, [canonical_id, same_color_and_geometry, translated(delta(0, -5)), same_parent(bottom_center_gate)])).
object_match(gate_burgundy_panel, gate_burgundy_panel, match(1.0, [canonical_id, same_color_and_geometry, translated(delta(0, -5)), same_parent(bottom_center_gate)])).
object_match(lower_left_symbol_card, lower_left_symbol_card, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(lower_left_burgundy_glyph, lower_left_burgundy_glyph, match(1.0, [canonical_id, unchanged_appearance_and_extent, same_parent(lower_left_symbol_card)])).
object_match(bottom_status_panel, bottom_status_panel, match(1.0, [canonical_id, unchanged_appearance_and_extent])).
object_match(bottom_status_track, bottom_status_track, match(1.0, [canonical_id, same_color_and_geometry, resized(size(37, 2), size(36, 2)), same_parent(bottom_status_panel)])).
object_match(green_status_block, green_status_block, match(1.0, [canonical_id, same_color_and_geometry, resized(size(5, 2), size(6, 2)), same_parent(bottom_status_panel)])).
object_match(cyan_status_blocks, cyan_status_blocks, match(1.0, [canonical_id, unchanged_appearance_and_extent, same_parent(bottom_status_panel)])).

unmatched_previous_object(_Object) :-
    fail.

unmatched_current_object(_Object) :-
    fail.
