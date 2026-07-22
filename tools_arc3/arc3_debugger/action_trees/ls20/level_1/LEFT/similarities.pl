:- ensure_loaded('object_registry.pl').

object_identity(green_status_block, status_indicator,
    'Single green progress block at the left end of the bottom status track').

object_match(yellow_playfield, yellow_playfield, 1.0-[same_identity, same_bounding_box, same_color, same_geometry]).
object_match(left_boundary_wall, left_boundary_wall, 1.0-[same_identity, same_bounding_box, same_color, same_geometry]).
object_match(green_fortress, green_fortress, 0.99-[same_identity, same_bounding_box, same_color, persistent_structure, gate_notch_relocated]).
object_match(fortress_main_body, fortress_main_body, 0.99-[same_identity, same_bounding_box, same_color, persistent_component, gate_notch_relocated]).
object_match(fortress_left_wing, fortress_left_wing, 1.0-[same_identity, same_bounding_box, same_color, same_geometry]).
object_match(fortress_right_wing, fortress_right_wing, 0.99-[same_identity, same_bounding_box, same_color, persistent_component, gate_notch_filled]).
object_match(fortress_lower_bridge, fortress_lower_bridge, 0.99-[same_identity, same_bounding_box, same_color, persistent_component, gate_notch_relocated]).
object_match(fortress_upper_stem, fortress_upper_stem, 1.0-[same_identity, same_bounding_box, same_color, same_geometry]).
object_match(fortress_inner_courtyard, fortress_inner_courtyard, 1.0-[same_identity, same_bounding_box, same_color, same_geometry]).
object_match(upper_chamber_frame, upper_chamber_frame, 1.0-[same_identity, same_bounding_box, same_color, same_geometry]).
object_match(upper_chamber_interior, upper_chamber_interior, 1.0-[same_identity, same_bounding_box, same_color, same_geometry]).
object_match(upper_burgundy_glyph, upper_burgundy_glyph, 1.0-[same_identity, same_bounding_box, same_color, same_geometry]).
object_match(blue_black_player, blue_black_player, 1.0-[same_identity, same_bounding_box, same_colors, same_geometry, same_center, same_state]).
object_match(player_black_core, player_black_core, 1.0-[same_identity, same_bounding_box, same_color, same_geometry, same_parent]).
object_match(player_blue_tail, player_blue_tail, 1.0-[same_identity, same_bounding_box, same_color, same_geometry, same_parent]).
object_match(bottom_center_gate, bottom_center_gate, 1.0-[same_identity, same_size, same_colors, same_geometry, same_state, translated(-5, 0)]).
object_match(gate_gray_header, gate_gray_header, 1.0-[same_identity, same_size, same_color, same_geometry, same_parent, translated(-5, 0)]).
object_match(gate_burgundy_panel, gate_burgundy_panel, 1.0-[same_identity, same_size, same_color, same_geometry, same_parent, translated(-5, 0)]).
object_match(lower_left_symbol_card, lower_left_symbol_card, 1.0-[same_identity, same_bounding_box, same_color, same_geometry, same_center]).
object_match(lower_left_burgundy_glyph, lower_left_burgundy_glyph, 1.0-[same_identity, same_bounding_box, same_color, same_geometry, same_parent]).
object_match(bottom_status_panel, bottom_status_panel, 1.0-[same_identity, same_bounding_box, same_color, same_geometry, same_state]).
object_match(bottom_status_track, bottom_status_track, 1.0-[same_identity, same_bounding_box, same_color, same_geometry, same_parent]).
object_match(cyan_status_blocks, cyan_status_blocks, 1.0-[same_identity, same_bounding_box, same_color, same_geometry, same_components, same_state]).

unmatched_current(green_status_block).
unmatched_objects(previous, []).
unmatched_objects(current, [green_status_block]).

unmatched_evidence(green_status_block, 1.0,
    [newly_visible, bounding_box(13, 61, 1, 2), color(green),
     geometry(filled_rectangle), overlays(bottom_status_track),
     contained_by(bottom_status_panel)]).
