observed_rule(action1_base_translation, transition(action('ACTION1'), translation(base_glyph,0,-5))).
observed_rule(action1_green_connector, transition(action('ACTION1'), add_part(green_structure,rectangle(19,40,23,44,green)))).
observed_rule(action1_status_advance, transition(action('ACTION1'), extend_right(status_marker,1))).

hypothetical_rule(action1_moves_base_up_by_its_height, effect(action('ACTION1'),move(base_glyph,up,5)), confidence(medium)).
hypothetical_rule(vacated_base_footprint_becomes_green_structure, effect(move(base_glyph),fill_vacated_footprint(green_structure,green)), confidence(medium)).
hypothetical_rule(status_marker_tracks_successful_actions, effect(successful_action,extend_right(status_marker,1)), confidence(low)).

evidence(ev_base_bbox, bbox_transition(base_glyph,bbox(19,40,23,44),bbox(19,35,23,39)), direct_parent_current_comparison).
evidence(ev_base_pixels, translated_color_pattern(base_glyph,vector(0,-5)), direct_parent_current_comparison).
evidence(ev_connector_pixels, color_transition(rectangle(19,40,23,44),base_glyph_colors,green), direct_parent_current_comparison).
evidence(ev_enclosure, enclosure_transition(central_hole,[green_structure,base_glyph],[green_structure]), derived_from_exact_geometry).
evidence(ev_status_column, color_transition(rectangle(17,61,17,62),dark_gray,green), direct_parent_current_comparison).

supported_by(action1_base_translation, ev_base_bbox).
supported_by(action1_base_translation, ev_base_pixels).
supported_by(action1_green_connector, ev_connector_pixels).
supported_by(action1_green_connector, ev_enclosure).
supported_by(action1_status_advance, ev_status_column).
supported_by(action1_moves_base_up_by_its_height, ev_base_bbox).
supported_by(vacated_base_footprint_becomes_green_structure, ev_connector_pixels).
supported_by(status_marker_tracks_successful_actions, ev_status_column).

contradicted_by(_Rule, _Evidence) :- fail.
