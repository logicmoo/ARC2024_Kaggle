parent_state(previous).
current_state(current).

direct_change(base_glyph,translated(0,-5)).
parent_bbox(base_glyph,19,40,5,5).
current_bbox(base_glyph,19,35,5,5).
changed_cells(base_glyph,rectangle(19,35,5,5),added_current_appearance).
changed_cells(base_glyph,rectangle(19,40,5,5),restored_green_structure).

direct_change(status_marker,extended_right(1)).
parent_bbox(status_marker,13,61,5,2).
current_bbox(status_marker,13,61,6,2).
changed_cells(status_marker,rectangle(18,61,1,2),dark_gray_to_green).

unchanged(green_structure).
unchanged(central_hole).
unchanged(top_glyph).
unchanged(player_cursor).
unchanged(hud_panel).
unchanged(left_boundary_bar).
unchanged(status_track).
unchanged(status_pips).
