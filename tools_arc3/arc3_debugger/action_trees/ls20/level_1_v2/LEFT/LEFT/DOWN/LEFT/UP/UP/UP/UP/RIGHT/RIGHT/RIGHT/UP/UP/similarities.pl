object_match(yellow_playfield, yellow_playfield,
             match(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).
object_match(left_boundary_wall, left_boundary_wall,
             match(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).
object_match(green_fortress, green_fortress,
             match(0.99, [same_canonical_id, same_overall_extent, same_color, persistent_compound_structure, component_extent_changed])).
object_match(fortress_main_body, fortress_main_body,
             match(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).
object_match(fortress_left_wing, fortress_left_wing,
             match(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).
object_match(fortress_right_wing, fortress_right_wing,
             match(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).
object_match(fortress_lower_bridge, fortress_lower_bridge,
             match(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).
object_match(fortress_upper_stem, fortress_upper_stem,
             match(0.99, [same_canonical_id, same_color, same_width, same_fortress_component, resized_from(size(5,3)), resized_to(size(5,5))])).
object_match(fortress_inner_courtyard, fortress_inner_courtyard,
             match(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).
object_match(upper_chamber_frame, upper_chamber_frame,
             match(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).
object_match(upper_chamber_interior, upper_chamber_interior,
             match(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).
object_match(upper_burgundy_glyph, upper_burgundy_glyph,
             match(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).
object_match(bottom_center_gate, bottom_center_gate,
             match(1.0, [same_canonical_id, same_size, same_colors, same_partitioned_geometry, translated(delta(0,-5))])).
object_match(gate_gray_header, gate_gray_header,
             match(1.0, [same_canonical_id, same_size, same_color, same_parent_gate, translated(delta(0,-5))])).
object_match(gate_burgundy_panel, gate_burgundy_panel,
             match(1.0, [same_canonical_id, same_size, same_color, same_parent_gate, translated(delta(0,-5))])).
object_match(blue_black_player, blue_black_player,
             match(1.0, [same_canonical_id, same_bounding_box, same_colors, same_geometry, stationary])).
object_match(player_black_core, player_black_core,
             match(1.0, [same_canonical_id, same_bounding_box, same_color, same_player_component, stationary])).
object_match(player_blue_tail, player_blue_tail,
             match(1.0, [same_canonical_id, same_bounding_box, same_color, same_player_component, stationary])).
object_match(lower_left_symbol_card, lower_left_symbol_card,
             match(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).
object_match(lower_left_burgundy_glyph, lower_left_burgundy_glyph,
             match(1.0, [same_canonical_id, same_bounding_box, same_color, same_parent_card, same_geometry])).
object_match(bottom_status_panel, bottom_status_panel,
             match(1.0, [same_canonical_id, same_bounding_box, same_color, persistent_interface_panel])).
object_match(bottom_status_track, bottom_status_track,
             match(0.99, [same_canonical_id, same_color, same_height, same_panel_component, contracted_from(size(31,2)), contracted_to(size(30,2))])).
object_match(green_status_block, green_status_block,
             match(0.99, [same_canonical_id, same_color, same_height, same_panel_component, expanded_from(size(11,2)), expanded_to(size(12,2))])).
object_match(cyan_status_blocks, cyan_status_blocks,
             match(1.0, [same_canonical_id, same_bounding_box, same_color, same_geometry])).

unmatched_previous_object(_) :-
    fail.

unmatched_current_object(_) :-
    fail.
