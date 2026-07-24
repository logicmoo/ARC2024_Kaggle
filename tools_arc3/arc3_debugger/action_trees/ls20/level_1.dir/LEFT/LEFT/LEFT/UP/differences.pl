parent_state(parent).
current_state(current).
incoming_action(action1).

object_translation(parent, current, base_glyph, vector(0,-5)).
object_bbox_change(base_glyph, bbox(19,45,23,49), bbox(19,40,23,44)).
pattern_preserved(base_glyph, layered([rectangle(0,0,4,1,gray),rectangle(0,2,4,4,dark_red)])).

changed_rectangle(parent, current, rectangle(19,40,23,41), green, gray).
changed_rectangle(parent, current, rectangle(19,42,23,44), green, dark_red).
changed_rectangle(parent, current, rectangle(19,45,23,46), gray, green).
changed_rectangle(parent, current, rectangle(19,47,23,49), dark_red, green).
changed_rectangle(parent, current, rectangle(14,61,16,62), dark_gray, green).
changed_logical_cell_count(parent, current, 56).

green_structure_edit(parent, current, removed_green(rectangle(19,40,23,44))).
green_structure_edit(parent, current, added_green(rectangle(19,45,23,49))).
status_marker_change(parent, current, bbox(13,61,13,62), bbox(13,61,16,62)).
status_marker_extension(parent, current, right, 3).
status_track_dark_segment_change(parent, current, rectangle(14,61,54,62), rectangle(17,61,54,62)).

unchanged_geometry(parent, current, central_hole).
unchanged_geometry(parent, current, hud_panel).
unchanged_geometry(parent, current, left_boundary_bar).
unchanged_geometry(parent, current, player_cursor).
unchanged_geometry(parent, current, status_pips).
unchanged_geometry(parent, current, top_glyph).
