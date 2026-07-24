parent_state(parent).
current_state(current).
applied_action(parent, current, 'ACTION1').

object_translation(parent, current, base_glyph, vector(0,-5)).
object_bbox_change(parent, current, base_glyph, bbox(19,40,23,44), bbox(19,35,23,39)).
object_shape_preserved_under_translation(parent, current, base_glyph, vector(0,-5)).

object_geometry_extension(parent, current, green_structure, rectangle(19,40,23,44,green)).
structural_part_added(parent, current, green_structure, left_lower_connector, rectangle(19,40,23,44,green)).
relation_change(parent, current, central_hole, enclosed_by([green_structure,base_glyph]), enclosed_by([green_structure])).

object_bbox_change(parent, current, status_marker, bbox(13,61,16,62), bbox(13,61,17,62)).
object_geometry_extension(parent, current, status_marker, rectangle(17,61,17,62,green)).

color_change_region(parent, current, rectangle(19,35,23,36), green, gray).
color_change_region(parent, current, rectangle(19,37,23,39), green, dark_red).
color_change_region(parent, current, rectangle(19,40,23,41), gray, green).
color_change_region(parent, current, rectangle(19,42,23,44), dark_red, green).
color_change_region(parent, current, rectangle(17,61,17,62), dark_gray, green).

unchanged_object(parent, current, left_boundary_bar).
unchanged_object(parent, current, top_glyph).
unchanged_object(parent, current, central_hole).
unchanged_object(parent, current, player_cursor).
unchanged_object(parent, current, hud_panel).
unchanged_object(parent, current, status_track).
unchanged_object(parent, current, status_pips).
