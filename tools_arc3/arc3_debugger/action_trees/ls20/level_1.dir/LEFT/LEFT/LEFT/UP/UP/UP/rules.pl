observed_rule(base_shift_observed, effect('ACTION1', translated(base_glyph,delta(0,-5)))).
observed_rule(cursor_visibility_loss_observed, effect('ACTION1', visibility_change(player_cursor,visible,not_visibly_detected))).
observed_rule(hud_reflection_observed, effect('ACTION1', reflected(hud_panel,status_glyph,horizontal,rational_axis_x(11,2)))).

hypothetical_rule(cursor_base_interaction_hypothesis, 'ACTION1', interaction(player_cursor,base_glyph,occludes_or_removes_cursor_while_shifting_base)).
hypothetical_rule(hud_action_indicator_hypothesis, 'ACTION1', hud_panel_encodes_action_by(horizontal_reflection)).
hypothetical_rule(global_upward_motion_hypothesis, 'ACTION1', translated(all_present_scene_objects,delta(0,-5))).

evidence(ev_base_bbox, 'ACTION1', bbox_change(base_glyph,bbox(19,35,23,39),bbox(19,30,23,34))).
evidence(ev_base_shape, 'ACTION1', same_colored_shape_at_delta(base_glyph,delta(0,-5))).
evidence(ev_cursor_visibility, 'ACTION1', no_visible_cells_of(player_cursor)).
evidence(ev_cursor_coverage, 'ACTION1', prior_cursor_bbox_contained_in_current_base_bbox(bbox(20,31,22,33),bbox(19,30,23,34))).
evidence(ev_hud_delta, 'ACTION1', cell_delta(removed(rectangle(3,57,4,58,dark_red)),added(rectangle(7,57,8,58,dark_red)))).
evidence(ev_hud_reflection, 'ACTION1', exact_horizontal_reflection(status_glyph,rational_axis_x(11,2))).
evidence(ev_static_anchors, 'ACTION1', unchanged([left_boundary_bar,green_structure,top_glyph,central_hole,status_track,status_marker,status_pips])).

supported_by(base_shift_observed, ev_base_bbox).
supported_by(base_shift_observed, ev_base_shape).
supported_by(cursor_visibility_loss_observed, ev_cursor_visibility).
supported_by(cursor_visibility_loss_observed, ev_cursor_coverage).
supported_by(hud_reflection_observed, ev_hud_delta).
supported_by(hud_reflection_observed, ev_hud_reflection).
supported_by(cursor_base_interaction_hypothesis, ev_base_bbox).
supported_by(cursor_base_interaction_hypothesis, ev_cursor_coverage).
supported_by(hud_action_indicator_hypothesis, ev_hud_reflection).

contradicted_by(global_upward_motion_hypothesis, ev_static_anchors).
