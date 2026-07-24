observed_rule(action3_advances_status_marker,'ACTION3 recolors the leftmost gray status-track cell column green, extending the marker one logical cell to the right.').
observed_rule(scene_geometry_preserved,'ACTION3 leaves the puzzle structure, glyphs, cursor, panel, and cyan pips unchanged.').
evidence(action3_advances_status_marker,color_change(rect(53,61,53,62),gray,green),direct_parent_current_comparison).
evidence(scene_geometry_preserved,unchanged([green_structure,central_hole,player_cursor,hud_panel,status_pips,top_glyph,base_glyph,left_boundary_bar]),direct_parent_current_comparison).
supported_by(action3_advances_status_marker,color_change(rect(53,61,53,62),gray,green)).
supported_by(scene_geometry_preserved,unchanged_non_track_pixels).
contradicted_by(action3_advances_status_marker,none).
contradicted_by(scene_geometry_preserved,none).
hypothetical_rule(repeated_action3_progresses_track,'A further ACTION3 may convert the next gray track column to green while gray capacity remains.',single_transition_extrapolation).
evidence(repeated_action3_progresses_track,one_column_rightward_extension,transition(previous,current)).
supported_by(repeated_action3_progresses_track,action3_advances_status_marker).
contradicted_by(repeated_action3_progresses_track,insufficient_repeated_trials).
