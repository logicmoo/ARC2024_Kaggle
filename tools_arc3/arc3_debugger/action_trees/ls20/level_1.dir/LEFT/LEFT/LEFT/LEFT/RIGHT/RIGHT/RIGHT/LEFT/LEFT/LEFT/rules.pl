observed_rule(action3_reconfigures_base_glyph,'ACTION3 replaces the prior stepped gray/dark-red base pattern with a five-column gray-over-dark-red block at the left base of the green structure.').
observed_rule(action3_advances_status_marker,'ACTION3 extends the green status marker one logical column to the right.').
evidence(action3_reconfigures_base_glyph,parent_region,region(base_glyph,gray,24,45,28,46)).
evidence(action3_reconfigures_base_glyph,current_region,region(base_glyph,gray,19,45,23,46)).
evidence(action3_reconfigures_base_glyph,current_region,region(base_glyph,dark_red,19,47,23,49)).
evidence(action3_advances_status_marker,parent_right_edge,21).
evidence(action3_advances_status_marker,current_right_edge,22).
supported_by(action3_reconfigures_base_glyph,direct_parent_current_difference).
supported_by(action3_advances_status_marker,direct_parent_current_difference).
hypothetical_rule(progress_tracks_actions,'Each successful action advances the status marker by one logical column.',medium_confidence).
hypothetical_rule(base_glyph_encodes_action_state,'The base glyph geometry encodes the current action or progress state.',medium_confidence).
supported_by(progress_tracks_actions,action3_advances_status_marker).
supported_by(base_glyph_encodes_action_state,action3_reconfigures_base_glyph).
contradicted_by(progress_tracks_actions,no_known_evidence).
contradicted_by(base_glyph_encodes_action_state,no_known_evidence).
