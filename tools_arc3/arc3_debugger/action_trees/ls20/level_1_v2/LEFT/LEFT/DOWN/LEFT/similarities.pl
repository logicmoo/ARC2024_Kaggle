object_match(yellow_playfield, yellow_playfield,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(left_boundary_wall, left_boundary_wall,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(green_fortress, green_fortress,
    match(0.99, [same_canonical_id, same_role, same_bounding_box, local_shape_change_due_to_gate_translation])).

object_match(fortress_main_body, fortress_main_body,
    match(0.99, [same_canonical_id, same_role, same_bounding_box, component_boxes_updated_around_gate])).

object_match(fortress_left_wing, fortress_left_wing,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(fortress_right_wing, fortress_right_wing,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(fortress_lower_bridge, fortress_lower_bridge,
    match(0.98, [same_canonical_id, same_color, same_structural_role, resized_after_gate_translation])).

object_match(fortress_upper_stem, fortress_upper_stem,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(fortress_inner_courtyard, fortress_inner_courtyard,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(upper_chamber_frame, upper_chamber_frame,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(upper_chamber_interior, upper_chamber_interior,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(upper_burgundy_glyph, upper_burgundy_glyph,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(blue_black_player, blue_black_player,
    match(1.00, [same_canonical_id, same_position, same_colors, same_geometry, stationary])).

object_match(player_black_core, player_black_core,
    match(1.00, [same_canonical_id, same_position, same_color, same_geometry])).

object_match(player_blue_tail, player_blue_tail,
    match(1.00, [same_canonical_id, same_position, same_color, same_geometry])).

object_match(bottom_center_gate, bottom_center_gate,
    match(1.00, [same_canonical_id, same_size, same_colors, same_geometry, translated_by(-5, 0)])).

object_match(gate_gray_header, gate_gray_header,
    match(1.00, [same_canonical_id, same_size, same_color, same_component_role, translated_by(-5, 0)])).

object_match(gate_burgundy_panel, gate_burgundy_panel,
    match(1.00, [same_canonical_id, same_size, same_color, same_component_role, translated_by(-5, 0)])).

object_match(lower_left_symbol_card, lower_left_symbol_card,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(lower_left_burgundy_glyph, lower_left_burgundy_glyph,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

object_match(bottom_status_panel, bottom_status_panel,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, status_progress_increased])).

object_match(bottom_status_track, bottom_status_track,
    match(0.99, [same_canonical_id, same_color, same_role, shortened_from_left_for_status_block])).

object_match(cyan_status_blocks, cyan_status_blocks,
    match(1.00, [same_canonical_id, same_bounding_box, same_color, same_geometry, same_lit_state])).

unmatched_object(current, green_status_block,
    unmatched(1.00, [newly_visible, added_status_progress_indicator])).

unmatched_previous_objects([]).
