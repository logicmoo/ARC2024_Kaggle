object_match(yellow_playfield, yellow_playfield,
             confidence_evidence(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).
object_match(left_boundary_wall, left_boundary_wall,
             confidence_evidence(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).
object_match(green_fortress, green_fortress,
             confidence_evidence(1.0, [same_canonical_id, same_bounding_box, same_center, same_compound_structure])).
object_match(fortress_main_body, fortress_main_body,
             confidence_evidence(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).
object_match(fortress_left_wing, fortress_left_wing,
             confidence_evidence(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).
object_match(fortress_right_wing, fortress_right_wing,
             confidence_evidence(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).
object_match(fortress_lower_bridge, fortress_lower_bridge,
             confidence_evidence(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).
object_match(fortress_upper_stem, fortress_upper_stem,
             confidence_evidence(0.99, [same_canonical_id, same_position, same_width, same_parent, partially_occluded_by_gate])).
object_match(fortress_inner_courtyard, fortress_inner_courtyard,
             confidence_evidence(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).
object_match(upper_chamber_frame, upper_chamber_frame,
             confidence_evidence(1.0, [same_canonical_id, same_bounding_box, same_center, same_geometry])).
object_match(upper_chamber_interior, upper_chamber_interior,
             confidence_evidence(1.0, [same_canonical_id, same_bounding_box, same_center, same_geometry])).
object_match(upper_burgundy_glyph, upper_burgundy_glyph,
             confidence_evidence(1.0, [same_canonical_id, same_bounding_box, same_color, same_component_boxes])).
object_match(bottom_center_gate, bottom_center_gate,
             confidence_evidence(1.0, [same_canonical_id, same_size, same_colors, translated_by(0, -5)])).
object_match(gate_gray_header, gate_gray_header,
             confidence_evidence(1.0, [same_canonical_id, same_size, same_color, translated_with_parent(0, -5)])).
object_match(gate_burgundy_panel, gate_burgundy_panel,
             confidence_evidence(1.0, [same_canonical_id, same_size, same_color, translated_with_parent(0, -5)])).
object_match(blue_black_player, blue_black_player,
             confidence_evidence(1.0, [same_canonical_id, same_bounding_box, same_center, same_colors, stationary])).
object_match(player_black_core, player_black_core,
             confidence_evidence(1.0, [same_canonical_id, same_bounding_box, same_center, same_color])).
object_match(player_blue_tail, player_blue_tail,
             confidence_evidence(1.0, [same_canonical_id, same_bounding_box, same_center, same_component_boxes])).
object_match(lower_left_symbol_card, lower_left_symbol_card,
             confidence_evidence(1.0, [same_canonical_id, same_bounding_box, same_center, same_geometry])).
object_match(lower_left_burgundy_glyph, lower_left_burgundy_glyph,
             confidence_evidence(1.0, [same_canonical_id, same_bounding_box, same_center, same_component_boxes])).
object_match(bottom_status_panel, bottom_status_panel,
             confidence_evidence(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).
object_match(bottom_status_track, bottom_status_track,
             confidence_evidence(1.0, [same_canonical_id, same_color, same_parent, left_edge_advanced_by(1), width_changed(32, 31)])).
object_match(green_status_block, green_status_block,
             confidence_evidence(1.0, [same_canonical_id, same_position, same_color, same_parent, width_changed(10, 11)])).
object_match(cyan_status_blocks, cyan_status_blocks,
             confidence_evidence(1.0, [same_canonical_id, same_bounding_box, same_center, same_component_boxes])).

unmatched_previous_object(_) :-
    fail.

unmatched_current_object(_) :-
    fail.
