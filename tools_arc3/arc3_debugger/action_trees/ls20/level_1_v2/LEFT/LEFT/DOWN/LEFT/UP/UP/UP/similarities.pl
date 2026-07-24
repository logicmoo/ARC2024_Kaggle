object_match(yellow_playfield, yellow_playfield,
             match(1.0, [canonical_id, same_color, same_geometry, same_bounding_box])).
object_match(left_boundary_wall, left_boundary_wall,
             match(1.0, [canonical_id, same_color, same_geometry, same_bounding_box])).
object_match(green_fortress, green_fortress,
             match(1.0, [canonical_id, same_semantic_structure, same_bounding_box])).
object_match(fortress_main_body, fortress_main_body,
             match(1.0, [canonical_id, same_semantic_structure, same_bounding_box])).
object_match(fortress_left_wing, fortress_left_wing,
             match(1.0, [canonical_id, same_color, same_geometry, same_bounding_box])).
object_match(fortress_right_wing, fortress_right_wing,
             match(1.0, [canonical_id, same_color, same_geometry, same_bounding_box])).
object_match(fortress_lower_bridge, fortress_lower_bridge,
             match(1.0, [canonical_id, same_color, same_geometry, same_bounding_box])).
object_match(fortress_upper_stem, fortress_upper_stem,
             match(1.0, [canonical_id, same_color, same_geometry, same_bounding_box])).
object_match(fortress_inner_courtyard, fortress_inner_courtyard,
             match(1.0, [canonical_id, same_color, same_geometry, same_bounding_box])).
object_match(upper_chamber_frame, upper_chamber_frame,
             match(1.0, [canonical_id, same_color, same_geometry, same_bounding_box])).
object_match(upper_chamber_interior, upper_chamber_interior,
             match(1.0, [canonical_id, same_color, same_geometry, same_bounding_box])).
object_match(upper_burgundy_glyph, upper_burgundy_glyph,
             match(1.0, [canonical_id, same_color, same_geometry, same_bounding_box])).
object_match(blue_black_player, blue_black_player,
             match(1.0, [canonical_id, explicit_occlusion, occluded_by(bottom_center_gate)])).
object_match(player_black_core, player_black_core,
             match(1.0, [canonical_id, component_identity, explicit_occlusion, occluded_by(bottom_center_gate)])).
object_match(player_blue_tail, player_blue_tail,
             match(1.0, [canonical_id, component_identity, explicit_occlusion, occluded_by(bottom_center_gate)])).
object_match(bottom_center_gate, bottom_center_gate,
             match(1.0, [canonical_id, same_size, same_colors, same_geometry, translated(0, -5)])).
object_match(gate_gray_header, gate_gray_header,
             match(1.0, [canonical_id, same_component_role, same_size, same_color, translated(0, -5)])).
object_match(gate_burgundy_panel, gate_burgundy_panel,
             match(1.0, [canonical_id, same_component_role, same_size, same_color, translated(0, -5)])).
object_match(lower_left_symbol_card, lower_left_symbol_card,
             match(1.0, [canonical_id, same_color, same_geometry, same_bounding_box])).
object_match(lower_left_burgundy_glyph, lower_left_burgundy_glyph,
             match(0.99, [canonical_id, same_parent, same_color, same_bounding_box, horizontal_mirror])).
object_match(bottom_status_panel, bottom_status_panel,
             match(1.0, [canonical_id, same_color, same_geometry, same_bounding_box])).
object_match(bottom_status_track, bottom_status_track,
             match(1.0, [canonical_id, same_color, same_geometry, same_bounding_box])).
object_match(green_status_block, green_status_block,
             match(1.0, [canonical_id, same_color, same_geometry, same_bounding_box])).
object_match(cyan_status_blocks, cyan_status_blocks,
             match(1.0, [canonical_id, same_color, same_geometry, same_bounding_box])).

unmatched_previous_object(_) :-
    fail.

unmatched_current_object(_) :-
    fail.
