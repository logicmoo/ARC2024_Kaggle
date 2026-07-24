observed_rule(action3_moves_base_glyph_left,'ACTION3 translates base_glyph five logical cells left while preserving its 5-by-5 shape and colors.').
observed_rule(action3_consumes_status_marker,'ACTION3 removes the green status_marker and reveals the gray status_track beneath it.').
observed_rule(scene_remains_fixed,'green_structure, central_hole, top_glyph, player_cursor, hud_panel, status_track, and status_pips retain their geometry.').

hypothetical_rule(base_follows_horizontal_sequence,'Repeated actions may move base_glyph between five-cell-aligned positions along the lower edge of green_structure.',medium).
hypothetical_rule(marker_is_action_resource,'The green status_marker may represent a consumable action or progress token.',medium).

evidence(action3_moves_base_glyph_left,parent_current_comparison,'base_glyph changes from rect(34,45,5,5) to rect(29,45,5,5).').
evidence(action3_consumes_status_marker,parent_current_comparison,'rect(13,61,2,2) changes from green to the gray color of status_track.').
evidence(scene_remains_fixed,parent_current_comparison,'All listed objects have matching logical-grid coordinates and colors in both frames.').

supported_by(base_follows_horizontal_sequence,action3_moves_base_glyph_left).
supported_by(marker_is_action_resource,action3_consumes_status_marker).

contradicted_by(base_follows_horizontal_sequence,no_repeated_action_evidence).
contradicted_by(marker_is_action_resource,no_direct_semantic_confirmation).
