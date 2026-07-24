object_correspondence(parent, current, left_boundary_bar, left_boundary_bar).
object_correspondence(parent, current, green_structure, green_structure).
object_correspondence(parent, current, top_glyph, top_glyph).
object_correspondence(parent, current, central_hole, central_hole).
object_correspondence(parent, current, player_cursor, player_cursor).
object_correspondence(parent, current, base_glyph, base_glyph).
object_correspondence(parent, current, hud_panel, hud_panel).
object_correspondence(parent, current, status_track, status_track).
object_correspondence(parent, current, status_marker, status_marker).
object_correspondence(parent, current, status_pips, status_pips).

object_similarity(parent, current, base_glyph, exact_shape_and_colors, translated(0,-5)).
object_similarity(parent, current, green_structure, same_core_geometry, added_part(rectangle(19,40,23,44,green))).
object_similarity(parent, current, status_marker, same_left_anchor_and_color, extended_right(1)).
object_similarity(parent, current, left_boundary_bar, exact_geometry, unchanged).
object_similarity(parent, current, top_glyph, exact_geometry, unchanged).
object_similarity(parent, current, central_hole, exact_geometry, unchanged).
object_similarity(parent, current, player_cursor, exact_geometry, unchanged).
object_similarity(parent, current, hud_panel, exact_geometry, unchanged).
object_similarity(parent, current, status_track, exact_geometry, unchanged).
object_similarity(parent, current, status_pips, exact_geometry, unchanged).
