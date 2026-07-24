observed_rule(action2_removes_cursor,'ACTION2 removes the visible player cursor from the enclosure area.').
observed_rule(action2_updates_base_glyph,'ACTION2 replaces the upper-left gray and dark-red base-glyph configuration with a solid dark-red 5 by 5 block at rows 30 through 34.').
observed_rule(action2_consumes_marker,'ACTION2 removes the green status marker and restores the underlying status-track cells to gray.').
observed_rule(action2_updates_hud,'ACTION2 changes the dark-red glyph displayed inside the lower-left HUD panel.').

hypothetical_rule(cursor_activation_transforms_target,'The cursor activated the base glyph, causing its transformed current form.',medium).
hypothetical_rule(status_marker_is_action_resource,'The green status marker represents a consumable action resource.',medium).
hypothetical_rule(hud_reports_action_state,'The HUD glyph encodes the state reached after the action.',medium).

evidence(action2_removes_cursor,parent_cursor_present_current_absent,direct_image_difference).
evidence(action2_updates_base_glyph,parent_upper_left_glyph_current_lower_solid_block,direct_image_difference).
evidence(action2_consumes_marker,parent_green_track_segment_current_gray_track,direct_image_difference).
evidence(action2_updates_hud,parent_and_current_hud_glyphs_differ,direct_image_difference).
evidence(cursor_activation_transforms_target,cursor_was_adjacent_to_base_glyph,spatial_proximity).
evidence(status_marker_is_action_resource,marker_disappears_after_action2,interface_change).
evidence(hud_reports_action_state,hud_glyph_changes_synchronously_with_action2,interface_change).

supported_by(cursor_activation_transforms_target,action2_removes_cursor).
supported_by(cursor_activation_transforms_target,action2_updates_base_glyph).
supported_by(status_marker_is_action_resource,action2_consumes_marker).
supported_by(hud_reports_action_state,action2_updates_hud).

contradicted_by(cursor_activation_transforms_target,no_counterevidence_observed).
contradicted_by(status_marker_is_action_resource,no_counterevidence_observed).
contradicted_by(hud_reports_action_state,no_counterevidence_observed).
