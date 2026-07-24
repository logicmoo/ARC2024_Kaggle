:- ensure_loaded('../../object_registry.pl').

object_match(yellow_playfield, yellow_playfield,
    match_confidence(1.0, [same_identity, same_bounding_box, same_color, same_geometry])).
object_match(left_boundary_wall, left_boundary_wall,
    match_confidence(1.0, [same_identity, same_bounding_box, same_color, same_geometry])).
object_match(green_fortress, green_fortress,
    match_confidence(0.99, [same_identity, same_extent, same_color, local_fill_change])).
object_match(fortress_main_body, fortress_main_body,
    match_confidence(0.99, [same_identity, same_bounding_box, same_color, local_fill_change])).
object_match(fortress_left_wing, fortress_left_wing,
    match_confidence(1.0, [same_identity, same_bounding_box, same_color, same_geometry])).
object_match(fortress_right_wing, fortress_right_wing,
    match_confidence(1.0, [same_identity, same_bounding_box, same_color, same_geometry])).
object_match(fortress_lower_bridge, fortress_lower_bridge,
    match_confidence(0.99, [same_identity, same_bounding_box, same_color, reconfigured_around_shifted_gate])).
object_match(fortress_upper_stem, fortress_upper_stem,
    match_confidence(1.0, [same_identity, same_bounding_box, same_color, same_geometry])).
object_match(fortress_inner_courtyard, fortress_inner_courtyard,
    match_confidence(1.0, [same_identity, same_bounding_box, same_color, same_geometry])).
object_match(upper_chamber_frame, upper_chamber_frame,
    match_confidence(1.0, [same_identity, same_bounding_box, same_color, same_geometry])).
object_match(upper_chamber_interior, upper_chamber_interior,
    match_confidence(1.0, [same_identity, same_bounding_box, same_color, same_geometry])).
object_match(upper_burgundy_glyph, upper_burgundy_glyph,
    match_confidence(1.0, [same_identity, same_bounding_box, same_color, same_geometry])).
object_match(blue_black_player, blue_black_player,
    match_confidence(1.0, [same_identity, same_bounding_box, same_colors, same_geometry, same_center])).
object_match(player_black_core, player_black_core,
    match_confidence(1.0, [same_identity, same_bounding_box, same_color, same_component_relationship])).
object_match(player_blue_tail, player_blue_tail,
    match_confidence(1.0, [same_identity, same_bounding_box, same_color, same_component_relationship])).
object_match(bottom_center_gate, bottom_center_gate,
    match_confidence(1.0, [same_identity, same_dimensions, same_colors, same_geometry, moved_by(-5, 0)])).
object_match(gate_gray_header, gate_gray_header,
    match_confidence(1.0, [same_identity, same_dimensions, same_color, same_geometry, moved_by(-5, 0)])).
object_match(gate_burgundy_panel, gate_burgundy_panel,
    match_confidence(1.0, [same_identity, same_dimensions, same_color, same_geometry, moved_by(-5, 0)])).
object_match(lower_left_symbol_card, lower_left_symbol_card,
    match_confidence(1.0, [same_identity, same_bounding_box, same_color, same_geometry])).
object_match(lower_left_burgundy_glyph, lower_left_burgundy_glyph,
    match_confidence(1.0, [same_identity, same_bounding_box, same_color, same_geometry])).
object_match(bottom_status_panel, bottom_status_panel,
    match_confidence(1.0, [same_identity, same_bounding_box, same_color, same_geometry])).
object_match(bottom_status_track, bottom_status_track,
    match_confidence(1.0, [same_identity, same_bounding_box, same_color, same_geometry])).
object_match(cyan_status_blocks, cyan_status_blocks,
    match_confidence(1.0, [same_identity, same_bounding_box, same_color, same_components])).

unmatched_previous_object(_) :-
    fail.

unmatched_current_object(_) :-
    fail.
