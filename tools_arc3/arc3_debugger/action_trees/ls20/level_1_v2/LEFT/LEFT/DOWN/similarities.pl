object_match(yellow_playfield, yellow_playfield,
    confidence_evidence(1.0, [canonical_id, bounding_box, color, geometry])).
object_match(left_boundary_wall, left_boundary_wall,
    confidence_evidence(1.0, [canonical_id, bounding_box, color, geometry])).
object_match(green_fortress, green_fortress,
    confidence_evidence(1.0, [canonical_id, bounding_box, color, geometry, component_structure])).
object_match(fortress_main_body, fortress_main_body,
    confidence_evidence(1.0, [canonical_id, bounding_box, color, geometry, component_boxes])).
object_match(fortress_left_wing, fortress_left_wing,
    confidence_evidence(1.0, [canonical_id, bounding_box, color, geometry])).
object_match(fortress_right_wing, fortress_right_wing,
    confidence_evidence(1.0, [canonical_id, bounding_box, color, geometry])).
object_match(fortress_lower_bridge, fortress_lower_bridge,
    confidence_evidence(1.0, [canonical_id, bounding_box, color, geometry, component_boxes])).
object_match(fortress_upper_stem, fortress_upper_stem,
    confidence_evidence(1.0, [canonical_id, bounding_box, color, geometry])).
object_match(fortress_inner_courtyard, fortress_inner_courtyard,
    confidence_evidence(1.0, [canonical_id, bounding_box, color, geometry, component_boxes])).
object_match(upper_chamber_frame, upper_chamber_frame,
    confidence_evidence(1.0, [canonical_id, bounding_box, color, geometry, containment])).
object_match(upper_chamber_interior, upper_chamber_interior,
    confidence_evidence(1.0, [canonical_id, bounding_box, center, color, geometry])).
object_match(upper_burgundy_glyph, upper_burgundy_glyph,
    confidence_evidence(1.0, [canonical_id, bounding_box, color, geometry, component_boxes])).
object_match(blue_black_player, blue_black_player,
    confidence_evidence(1.0, [canonical_id, bounding_box, center, colors, geometry, state])).
object_match(player_black_core, player_black_core,
    confidence_evidence(1.0, [canonical_id, bounding_box, color, geometry, parent])).
object_match(player_blue_tail, player_blue_tail,
    confidence_evidence(1.0, [canonical_id, bounding_box, color, geometry, parent])).
object_match(bottom_center_gate, bottom_center_gate,
    confidence_evidence(1.0, [canonical_id, bounding_box, center, colors, geometry, state])).
object_match(gate_gray_header, gate_gray_header,
    confidence_evidence(1.0, [canonical_id, bounding_box, color, geometry, parent])).
object_match(gate_burgundy_panel, gate_burgundy_panel,
    confidence_evidence(1.0, [canonical_id, bounding_box, color, geometry, parent])).
object_match(lower_left_symbol_card, lower_left_symbol_card,
    confidence_evidence(1.0, [canonical_id, bounding_box, center, color, geometry])).
object_match(lower_left_burgundy_glyph, lower_left_burgundy_glyph,
    confidence_evidence(1.0, [canonical_id, bounding_box, color, geometry, component_boxes])).
object_match(bottom_status_panel, bottom_status_panel,
    confidence_evidence(1.0, [canonical_id, bounding_box, color, geometry, state])).
object_match(bottom_status_track, bottom_status_track,
    confidence_evidence(1.0, [canonical_id, bounding_box, color, geometry, parent])).
object_match(cyan_status_blocks, cyan_status_blocks,
    confidence_evidence(1.0, [canonical_id, bounding_box, color, geometry, component_boxes, state])).

unmatched_previous_object(_) :- fail.
unmatched_current_object(_) :- fail.
