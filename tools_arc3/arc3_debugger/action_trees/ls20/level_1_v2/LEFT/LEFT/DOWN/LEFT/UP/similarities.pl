object_match(yellow_playfield, yellow_playfield,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box]))).

object_match(left_boundary_wall, left_boundary_wall,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box]))).

object_match(green_fortress, green_fortress,
             match(confidence(0.99),
                   evidence([same_canonical_id, same_color, same_role, locally_extended_region]))).

object_match(fortress_main_body, fortress_main_body,
             match(confidence(0.99),
                   evidence([same_canonical_id, same_color, same_role, changed_component_boxes]))).

object_match(fortress_left_wing, fortress_left_wing,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box]))).

object_match(fortress_right_wing, fortress_right_wing,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box]))).

object_match(fortress_lower_bridge, fortress_lower_bridge,
             match(confidence(0.99),
                   evidence([same_canonical_id, same_color, same_geometry, extended_left_by(5)])).

object_match(fortress_upper_stem, fortress_upper_stem,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box]))).

object_match(fortress_inner_courtyard, fortress_inner_courtyard,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box]))).

object_match(upper_chamber_frame, upper_chamber_frame,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box]))).

object_match(upper_chamber_interior, upper_chamber_interior,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box]))).

object_match(upper_burgundy_glyph, upper_burgundy_glyph,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_component_boxes]))).

object_match(blue_black_player, blue_black_player,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_colors, same_geometry, same_bounding_box, stationary]))).

object_match(player_black_core, player_black_core,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_parent, same_bounding_box]))).

object_match(player_blue_tail, player_blue_tail,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_parent, same_bounding_box]))).

object_match(bottom_center_gate, bottom_center_gate,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_colors, same_geometry, moved_by(0,-5), same_components]))).

object_match(gate_gray_header, gate_gray_header,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_parent, moved_by(0,-5)]))).

object_match(gate_burgundy_panel, gate_burgundy_panel,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_parent, moved_by(0,-5)]))).

object_match(lower_left_symbol_card, lower_left_symbol_card,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box, same_pixels]))).

object_match(lower_left_burgundy_glyph, lower_left_burgundy_glyph,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_parent, same_component_boxes]))).

object_match(bottom_status_panel, bottom_status_panel,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_bounding_box, same_components]))).

object_match(bottom_status_track, bottom_status_track,
             match(confidence(0.99),
                   evidence([same_canonical_id, same_color, same_geometry, same_parent, width_changed(38,37)]))).

object_match(green_status_block, green_status_block,
             match(confidence(0.99),
                   evidence([same_canonical_id, same_color, same_geometry, same_parent, width_changed(4,5)]))).

object_match(cyan_status_blocks, cyan_status_blocks,
             match(confidence(1.0),
                   evidence([same_canonical_id, same_color, same_geometry, same_parent, same_component_boxes]))).

unmatched_previous_objects([]).
unmatched_current_objects([]).
