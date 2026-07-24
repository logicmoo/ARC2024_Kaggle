object_correspondence(parent, base_glyph, current, base_glyph, translated(0,-5)).
object_correspondence(parent, central_hole, current, central_hole, unchanged).
object_correspondence(parent, green_structure, current, green_structure, local_fill_exchange(rectangle(19,40,23,49))).
object_correspondence(parent, hud_panel, current, hud_panel, unchanged).
object_correspondence(parent, left_boundary_bar, current, left_boundary_bar, unchanged).
object_correspondence(parent, player_cursor, current, player_cursor, unchanged).
object_correspondence(parent, status_marker, current, status_marker, extended(right,3)).
object_correspondence(parent, status_pips, current, status_pips, unchanged).
object_correspondence(parent, status_track, current, status_track, dark_segment_shortened(left,3)).
object_correspondence(parent, top_glyph, current, top_glyph, unchanged).

same_color_pattern(parent, base_glyph, current, base_glyph).
same_dimensions(parent, base_glyph, current, base_glyph, size(5,5)).
same_hole_geometry(parent, central_hole, current, central_hole).
same_cursor_geometry(parent, player_cursor, current, player_cursor).
same_top_enclosure_geometry(parent, green_structure, current, green_structure).
same_interface_pip_count(parent, current, 3).
