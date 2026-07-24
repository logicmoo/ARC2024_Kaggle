observed_rule(action1_base_glyph_step, transition(action1, translate(base_glyph,vector(0,-5)))).
observed_rule(action1_restores_departed_area, transition(action1, paint(rectangle(19,45,23,49),green))).
observed_rule(action1_overwrites_destination, transition(action1, paint_pattern(base_glyph,bbox(19,40,23,44)))).
observed_rule(action1_advances_status_marker, transition(action1, extend(status_marker,right,3))).

hypothetical_rule(repeated_action1_continues_upward, on(repeated(action1)), translate(base_glyph,vector(0,-5))).
hypothetical_rule(status_marker_is_action_progress, on(action1), increment_width(status_marker,3)).
hypothetical_rule(action1_deletes_base_glyph, on(action1), delete(base_glyph)).

evidence(base_glyph_translation_evidence, parent_current_comparison, matched_pattern(bbox(19,45,23,49),bbox(19,40,23,44),vector(0,-5))).
evidence(departed_area_restoration_evidence, parent_current_comparison, recolored(rectangle(19,45,23,49),[gray,dark_red],green)).
evidence(destination_overwrite_evidence, parent_current_comparison, recolored(rectangle(19,40,23,44),green,[gray,dark_red])).
evidence(status_extension_evidence, parent_current_comparison, recolored(rectangle(14,61,16,62),dark_gray,green)).
evidence(base_glyph_present_evidence, current, present(base_glyph,bbox(19,40,23,44))).

supported_by(action1_base_glyph_step, base_glyph_translation_evidence).
supported_by(action1_restores_departed_area, departed_area_restoration_evidence).
supported_by(action1_overwrites_destination, destination_overwrite_evidence).
supported_by(action1_advances_status_marker, status_extension_evidence).
supported_by(repeated_action1_continues_upward, base_glyph_translation_evidence).
supported_by(status_marker_is_action_progress, status_extension_evidence).

contradicted_by(action1_deletes_base_glyph, base_glyph_present_evidence).
