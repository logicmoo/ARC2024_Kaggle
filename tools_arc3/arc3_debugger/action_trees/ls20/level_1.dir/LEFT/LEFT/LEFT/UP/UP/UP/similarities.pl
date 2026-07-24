object_correspondence(parent, left_boundary_bar, current, left_boundary_bar, exact_geometry_and_color).
object_correspondence(parent, green_structure, current, green_structure, exact_geometry_and_color).
object_correspondence(parent, top_glyph, current, top_glyph, exact_geometry_and_color).
object_correspondence(parent, central_hole, current, central_hole, exact_geometry_and_color).
object_correspondence(parent, base_glyph, current, base_glyph, same_shape_and_colors_translated(delta(0,-5))).
object_correspondence(parent, hud_panel, current, hud_panel, same_panel_with_reflected_internal_glyph).
object_correspondence(parent, status_track, current, status_track, exact_geometry_and_color).
object_correspondence(parent, status_marker, current, status_marker, exact_geometry_and_color).
object_correspondence(parent, status_pips, current, status_pips, exact_geometry_and_color).

unmatched_visible_parent_object(parent, player_cursor, current).
coverage_correspondence(parent, player_cursor, current, base_glyph, prior_cursor_cells_fully_covered).
