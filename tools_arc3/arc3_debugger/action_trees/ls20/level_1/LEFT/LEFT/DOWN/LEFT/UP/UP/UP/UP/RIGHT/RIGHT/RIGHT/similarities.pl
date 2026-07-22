state_pair(action11, action12).

object_match(yellow_playfield, yellow_playfield,
             [confidence(1.0), evidence([same_canonical_id, same_bounding_box, same_color, same_geometry])]).
object_match(left_boundary_wall, left_boundary_wall,
             [confidence(1.0), evidence([same_canonical_id, same_bounding_box, same_color, same_geometry])]).
object_match(green_fortress, green_fortress,
             [confidence(1.0), evidence([same_canonical_id, same_bounding_box, same_structure])]).
object_match(fortress_main_body, fortress_main_body,
             [confidence(1.0), evidence([same_canonical_id, same_bounding_box, same_geometry])]).
object_match(fortress_left_wing, fortress_left_wing,
             [confidence(1.0), evidence([same_canonical_id, same_bounding_box, same_geometry])]).
object_match(fortress_right_wing, fortress_right_wing,
             [confidence(1.0), evidence([same_canonical_id, same_bounding_box, same_geometry])]).
object_match(fortress_lower_bridge, fortress_lower_bridge,
             [confidence(1.0), evidence([same_canonical_id, same_bounding_box, same_geometry])]).
object_match(fortress_upper_stem, fortress_upper_stem,
             [confidence(1.0), evidence([same_canonical_id, same_bounding_box, same_geometry])]).
object_match(fortress_inner_courtyard, fortress_inner_courtyard,
             [confidence(1.0), evidence([same_canonical_id, same_bounding_box, same_geometry])]).
object_match(upper_chamber_frame, upper_chamber_frame,
             [confidence(1.0), evidence([same_canonical_id, same_bounding_box, same_geometry])]).
object_match(upper_chamber_interior, upper_chamber_interior,
             [confidence(1.0), evidence([same_canonical_id, same_bounding_box, same_color])]).
object_match(upper_burgundy_glyph, upper_burgundy_glyph,
             [confidence(1.0), evidence([same_canonical_id, same_bounding_box, same_glyph])]).
object_match(bottom_center_gate, bottom_center_gate,
             [confidence(1.0), evidence([same_canonical_id, same_size, same_colors, translated_by(5, 0), same_components])]).
object_match(gate_gray_header, gate_gray_header,
             [confidence(1.0), evidence([same_canonical_id, same_size, same_color, translated_by(5, 0), same_parent])]).
object_match(gate_burgundy_panel, gate_burgundy_panel,
             [confidence(1.0), evidence([same_canonical_id, same_size, same_color, translated_by(5, 0), same_parent])]).
object_match(blue_black_player, blue_black_player,
             [confidence(1.0), evidence([same_canonical_id, same_bounding_box, same_center, same_colors, same_role])]).
object_match(player_black_core, player_black_core,
             [confidence(1.0), evidence([same_canonical_id, same_bounding_box, same_color, same_parent])]).
object_match(player_blue_tail, player_blue_tail,
             [confidence(0.99), evidence([same_canonical_id, same_color, same_parent, retained_cells([cell(20,32), cell(21,33)]), animation_or_occlusion_change])]).
object_match(lower_left_symbol_card, lower_left_symbol_card,
             [confidence(1.0), evidence([same_canonical_id, same_bounding_box, same_color, same_contents])]).
object_match(lower_left_burgundy_glyph, lower_left_burgundy_glyph,
             [confidence(1.0), evidence([same_canonical_id, same_bounding_box, same_color, same_parent])]).
object_match(bottom_status_panel, bottom_status_panel,
             [confidence(1.0), evidence([same_canonical_id, same_bounding_box, same_color, same_components])]).
object_match(bottom_status_track, bottom_status_track,
             [confidence(1.0), evidence([same_canonical_id, same_color, same_parent, progress_boundary_shifted_right_by(1)])]).
object_match(green_status_block, green_status_block,
             [confidence(1.0), evidence([same_canonical_id, same_color, same_parent, expanded_right_by(1)])]).
object_match(cyan_status_blocks, cyan_status_blocks,
             [confidence(1.0), evidence([same_canonical_id, same_bounding_box, same_color, same_geometry])]).

unmatched_objects(previous, []).
unmatched_objects(current, []).
