object_match(yellow_playfield, yellow_playfield,
             confidence(1.0, evidence([same_canonical_id, unchanged_appearance_and_location]))).
object_match(left_boundary_wall, left_boundary_wall,
             confidence(1.0, evidence([same_canonical_id, unchanged_appearance_and_location]))).
object_match(green_fortress, green_fortress,
             confidence(1.0, evidence([same_canonical_id, unchanged_appearance_and_location]))).
object_match(fortress_main_body, fortress_main_body,
             confidence(1.0, evidence([same_canonical_id, unchanged_appearance_and_location]))).
object_match(fortress_left_wing, fortress_left_wing,
             confidence(1.0, evidence([same_canonical_id, unchanged_appearance_and_location]))).
object_match(fortress_right_wing, fortress_right_wing,
             confidence(1.0, evidence([same_canonical_id, unchanged_appearance_and_location]))).
object_match(fortress_lower_bridge, fortress_lower_bridge,
             confidence(1.0, evidence([same_canonical_id, unchanged_appearance_and_location]))).
object_match(fortress_upper_stem, fortress_upper_stem,
             confidence(1.0, evidence([same_canonical_id, unchanged_appearance_and_location]))).
object_match(fortress_inner_courtyard, fortress_inner_courtyard,
             confidence(1.0, evidence([same_canonical_id, unchanged_appearance_and_location]))).
object_match(upper_chamber_frame, upper_chamber_frame,
             confidence(1.0, evidence([same_canonical_id, unchanged_appearance_and_location]))).
object_match(upper_chamber_interior, upper_chamber_interior,
             confidence(1.0, evidence([same_canonical_id, unchanged_appearance_and_location]))).
object_match(upper_burgundy_glyph, upper_burgundy_glyph,
             confidence(1.0, evidence([same_canonical_id, unchanged_appearance_and_location]))).

object_match(bottom_center_gate, bottom_center_gate,
             confidence(1.0,
                        evidence([same_canonical_id,
                                  same_size_color_and_geometry,
                                  moved_by(delta(0, -5))]))).
object_match(gate_gray_header, gate_gray_header,
             confidence(1.0,
                        evidence([same_canonical_id,
                                  same_component_role,
                                  same_size_color_and_geometry,
                                  moved_by(delta(0, -5))]))).
object_match(gate_burgundy_panel, gate_burgundy_panel,
             confidence(1.0,
                        evidence([same_canonical_id,
                                  same_component_role,
                                  same_size_color_and_geometry,
                                  moved_by(delta(0, -5))]))).

object_match(blue_black_player, blue_black_player,
             confidence(1.0,
                        evidence([same_canonical_id,
                                  persisted_while_occluded,
                                  revealed_from_behind(bottom_center_gate),
                                  changed_visibility(fully_occluded, visible)]))).
object_match(player_black_core, player_black_core,
             confidence(1.0,
                        evidence([same_canonical_id,
                                  persisted_while_occluded,
                                  revealed_from_behind(bottom_center_gate),
                                  component_of(blue_black_player)]))).
object_match(player_blue_tail, player_blue_tail,
             confidence(1.0,
                        evidence([same_canonical_id,
                                  persisted_while_occluded,
                                  revealed_from_behind(bottom_center_gate),
                                  component_of(blue_black_player)]))).

object_match(lower_left_symbol_card, lower_left_symbol_card,
             confidence(1.0, evidence([same_canonical_id, unchanged_appearance_and_location]))).
object_match(lower_left_burgundy_glyph, lower_left_burgundy_glyph,
             confidence(1.0, evidence([same_canonical_id, unchanged_appearance_and_location]))).
object_match(bottom_status_panel, bottom_status_panel,
             confidence(1.0, evidence([same_canonical_id, unchanged_appearance_and_location]))).
object_match(bottom_status_track, bottom_status_track,
             confidence(1.0,
                        evidence([same_canonical_id,
                                  same_color_and_height,
                                  contracted_from_left(delta_size(-1, 0))]))).
object_match(green_status_block, green_status_block,
             confidence(1.0,
                        evidence([same_canonical_id,
                                  same_color_and_height,
                                  expanded(delta_size(1, 0))]))).
object_match(cyan_status_blocks, cyan_status_blocks,
             confidence(1.0, evidence([same_canonical_id, unchanged_appearance_and_location]))).

unmatched_previous_object(_Object) :-
    fail.

unmatched_current_object(_Object) :-
    fail.
