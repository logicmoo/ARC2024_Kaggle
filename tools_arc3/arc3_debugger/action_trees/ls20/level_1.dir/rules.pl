:- dynamic observed_rule/2.
:- dynamic hypothetical_rule/3.
:- dynamic evidence/3.
:- dynamic supported_by/2.
:- dynamic contradicted_by/2.

observed_rule(green_structure_encloses_hole,encloses(green_structure,central_hole)).
observed_rule(cursor_is_on_green_structure,overlays(player_cursor,green_structure)).
observed_rule(glyphs_occupy_terminal_regions,terminal_embeddings(top_glyph,base_glyph,green_structure)).
observed_rule(hud_reflects_top_glyph,transformed_copy(hud_panel,top_glyph,[reflect(horizontal),scale(2)])).
observed_rule(three_status_pips_visible,status_pip_count(3)).

hypothetical_rule(cursor_cardinal_navigation,action(move(player_cursor,Direction)),effect(translate_cardinally(player_cursor,Direction),requires(destination_on(green_structure)))).
hypothetical_rule(hud_motif_is_orientation_cue,condition(compare(hud_panel,top_glyph)),predicts(required_transform([reflect(horizontal),scale(2)]))).

evidence(hole_geometry,current_frame,regions([rect(31,30,10,5),rect(41,25,5,10)],closed_by(green_structure))).
evidence(cursor_location,current_frame,cursor_cells([cell(32,22,black),cell(33,22,black),cell(33,23,black),cell(33,21,blue),cell(34,22,blue)],within(left_upper_branch))).
evidence(terminal_geometry,current_frame,placements([top_glyph-at(top_chamber_backing),base_glyph-at(bottom_boundary)])).
evidence(motif_geometry,current_frame,normalized_motifs(top_glyph-[cell(1,1),cell(1,2),cell(1,3),cell(2,3),cell(3,1),cell(3,3)],hud_panel-[cell(1,1),cell(1,2),cell(1,3),cell(2,1),cell(3,1),cell(3,3)],hud_scale(2))).
evidence(status_pip_geometry,current_frame,rectangles([rect(62,57,2,2),rect(62,60,2,2),rect(62,63,2,2)])).

supported_by(green_structure_encloses_hole,hole_geometry).
supported_by(cursor_is_on_green_structure,cursor_location).
supported_by(glyphs_occupy_terminal_regions,terminal_geometry).
supported_by(hud_reflects_top_glyph,motif_geometry).
supported_by(three_status_pips_visible,status_pip_geometry).
supported_by(cursor_cardinal_navigation,cursor_location).
supported_by(hud_motif_is_orientation_cue,motif_geometry).

% No direct transition evidence or contradicted_by/2 facts exist at the initial root state.
