observed_rule(action4_base_translation,
    action_effect(action4,translate(base_glyph,vector(5,0)))).
observed_rule(action4_status_advance,
    action_effect(action4,extend(status_marker,right,1))).
observed_rule(action4_locality,
    changes_confined_to(union([rect(29,45,10,5),rect(19,61,1,2)]))).
observed_rule(action4_preservation,
    preserves([central_hole,green_structure,hud_panel,left_boundary_bar,player_cursor,status_pips,status_track,top_glyph])).

hypothetical_rule(action4_slot_progression,action4,
    advances(base_glyph,right,one_glyph_width)).
hypothetical_rule(action4_progress_meter,action4,
    increments(status_marker,one_cell)).
hypothetical_rule(action4_coupled_progress,action4,
    couples(translate(base_glyph,vector(5,0)),extend(status_marker,right,1))).

evidence(base_bbox_evidence,parent_current,
    bbox_change(base_glyph,rect(29,45,5,5),rect(34,45,5,5))).
evidence(base_recolor_evidence,parent_current,
    recolors([rect(29,45,5,2)-gray-green,rect(29,47,5,3)-dark_red-green,rect(34,45,5,2)-green-gray,rect(34,47,5,3)-green-dark_red])).
evidence(status_extension_evidence,parent_current,
    recolor(rect(19,61,1,2),dark_gray,green)).
evidence(locality_evidence,parent_current,
    exhaustive_changed_region(union([rect(29,45,10,5),rect(19,61,1,2)]))).
evidence(preservation_evidence,parent_current,
    unchanged([central_hole,green_structure,hud_panel,left_boundary_bar,player_cursor,status_pips,status_track,top_glyph])).

supported_by(action4_base_translation,base_bbox_evidence).
supported_by(action4_base_translation,base_recolor_evidence).
supported_by(action4_status_advance,status_extension_evidence).
supported_by(action4_locality,locality_evidence).
supported_by(action4_preservation,preservation_evidence).
supported_by(action4_slot_progression,base_bbox_evidence).
supported_by(action4_progress_meter,status_extension_evidence).
supported_by(action4_coupled_progress,base_bbox_evidence).
supported_by(action4_coupled_progress,status_extension_evidence).

contradicted_by(_Rule,_Evidence) :- fail.
