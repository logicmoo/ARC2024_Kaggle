:- ensure_loaded('../../../../../../../../../../../../../../object_registry.pl').

object_match(yellow_playfield, yellow_playfield,
             match_confidence(1.0, evidence([canonical_identity, same_color, same_geometry, same_bounding_box]))).
object_match(left_boundary_wall, left_boundary_wall,
             match_confidence(1.0, evidence([canonical_identity, same_color, same_geometry, same_bounding_box]))).
object_match(green_fortress, green_fortress,
             match_confidence(0.99, evidence([canonical_identity, same_role, same_color, observed_reconfiguration]))).
object_match(fortress_main_body, fortress_main_body,
             match_confidence(0.98, evidence([canonical_identity, same_component_role, same_color, observed_reconfiguration]))).
object_match(fortress_left_wing, fortress_left_wing,
             match_confidence(0.98, evidence([canonical_identity, same_component_role, same_color, observed_reconfiguration]))).
object_match(fortress_right_wing, fortress_right_wing,
             match_confidence(0.98, evidence([canonical_identity, same_component_role, same_color, observed_reconfiguration]))).
object_match(fortress_lower_bridge, fortress_lower_bridge,
             match_confidence(0.97, evidence([canonical_identity, same_component_role, same_color, observed_reconfiguration]))).
object_match(fortress_upper_stem, fortress_upper_stem,
             match_confidence(0.98, evidence([canonical_identity, same_connector_role, same_color, observed_reconfiguration]))).
object_match(fortress_inner_courtyard, fortress_inner_courtyard,
             match_confidence(0.98, evidence([canonical_identity, same_contained_region_role, same_color, observed_reconfiguration]))).
object_match(upper_chamber_frame, upper_chamber_frame,
             match_confidence(1.0, evidence([canonical_identity, same_size, same_geometry, rigid_translation(delta(-20,30))]))).
object_match(upper_chamber_interior, upper_chamber_interior,
             match_confidence(1.0, evidence([canonical_identity, same_size, same_geometry, rigid_translation(delta(-20,30))]))).
object_match(upper_burgundy_glyph, upper_burgundy_glyph,
             match_confidence(1.0, evidence([canonical_identity, same_color, same_geometry, rigid_translation(delta(-20,30))]))).
object_match(bottom_center_gate, bottom_center_gate,
             match_confidence(1.0, evidence([canonical_identity, same_size, same_geometry, same_closed_state, rigid_translation(delta(-5,25))]))).
object_match(gate_gray_header, gate_gray_header,
             match_confidence(1.0, evidence([canonical_identity, same_color, same_size, same_component_role, rigid_translation(delta(-5,25))]))).
object_match(gate_burgundy_panel, gate_burgundy_panel,
             match_confidence(1.0, evidence([canonical_identity, same_color, same_size, same_component_role, rigid_translation(delta(-5,25))]))).
object_match(blue_black_player, blue_black_player,
             match_confidence(1.0, evidence([canonical_identity, same_colors, same_size, same_geometry, rigid_translation(delta(30,15))]))).
object_match(player_black_core, player_black_core,
             match_confidence(1.0, evidence([canonical_identity, same_color, same_size, same_component_role, rigid_translation(delta(30,15))]))).
object_match(player_blue_tail, player_blue_tail,
             match_confidence(1.0, evidence([canonical_identity, same_color, same_geometry, same_two_cell_diagonal_state, rigid_translation(delta(30,15))]))).
object_match(lower_left_symbol_card, lower_left_symbol_card,
             match_confidence(1.0, evidence([canonical_identity, same_color, same_geometry, same_bounding_box]))).
object_match(lower_left_burgundy_glyph, lower_left_burgundy_glyph,
             match_confidence(1.0, evidence([canonical_identity, same_color, same_geometry, same_bounding_box]))).
object_match(bottom_status_panel, bottom_status_panel,
             match_confidence(1.0, evidence([canonical_identity, same_color, same_geometry, same_bounding_box, same_active_state]))).
object_match(bottom_status_track, bottom_status_track,
             match_confidence(0.99, evidence([canonical_identity, same_color, same_panel_component, leftward_expansion, green_block_depletion]))).
object_match(cyan_status_blocks, cyan_status_blocks,
             match_confidence(1.0, evidence([canonical_identity, same_color, same_geometry, same_bounding_box, same_three_lit_blocks_state]))).

unmatched_previous(green_status_block,
                   match_confidence(1.0, evidence([removed_object, newly_hidden_registry_object, disappeared_from(bounding_box(13,61,12,2))]))).

unmatched_current(upper_left_green_target,
                  match_confidence(1.0, evidence([added_object, newly_visible_registry_object, appeared_at(bounding_box(15,16,3,3))]))).
unmatched_current(lower_right_green_target,
                  match_confidence(1.0, evidence([added_object, newly_visible_registry_object, appeared_at(bounding_box(40,51,3,3))]))).
