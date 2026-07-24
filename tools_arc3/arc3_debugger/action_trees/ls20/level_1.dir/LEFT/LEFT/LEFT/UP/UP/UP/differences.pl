transition(parent, current, 'ACTION1').

visibility_change(parent, current, player_cursor, visible, not_visibly_detected).
prior_footprint_fully_covered_by(parent, player_cursor, current, base_glyph).
prior_bbox(parent, player_cursor, bbox(20,31,22,33)).
covering_bbox(current, base_glyph, bbox(19,30,23,34)).

object_translation(parent, current, base_glyph, delta(0,-5)).
bbox_change(parent, current, base_glyph, bbox(19,35,23,39), bbox(19,30,23,34)).
shape_change(parent, current, base_glyph,
    layered([rectangle(19,35,23,36,gray),rectangle(19,37,23,39,dark_red)]),
    layered([rectangle(19,30,23,31,gray),rectangle(19,32,23,34,dark_red)])).

internal_shape_transform(parent, current, hud_panel, status_glyph, horizontal_reflection(rational_axis_x(11,2))).
removed_cells(parent, current, hud_panel, rectangle(3,57,4,58,dark_red)).
added_cells(parent, current, hud_panel, rectangle(7,57,8,58,dark_red)).

unchanged_background(parent, current, yellow).
unchanged_object_geometry(parent, current, left_boundary_bar).
unchanged_object_geometry(parent, current, green_structure).
unchanged_object_geometry(parent, current, top_glyph).
unchanged_object_geometry(parent, current, central_hole).
unchanged_object_geometry(parent, current, status_track).
unchanged_object_geometry(parent, current, status_marker).
unchanged_object_geometry(parent, current, status_pips).
