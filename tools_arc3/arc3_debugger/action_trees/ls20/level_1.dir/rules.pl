:- dynamic observed_rule/2.
:- dynamic hypothetical_rule/3.
:- dynamic evidence/3.
:- dynamic supported_by/2.
:- dynamic contradicted_by/2.

observed_rule(hole_is_enclosed,encloses(green_structure,central_hole)).
observed_rule(glyphs_share_center_column,aligned_center_column([top_glyph,base_glyph],36)).
observed_rule(stem_connects_aligned_glyphs,centered_on(green_structure_stem,36)).
observed_rule(cursor_is_on_structure,overlays(player_cursor,green_structure)).
observed_rule(status_has_three_pips,count(status_pips,3)).

evidence(hole_boundary_current,current_frame,boundary_is_green(central_hole,green_structure)).
evidence(glyph_alignment_current,current_frame,centers([top_glyph-36,base_glyph-36])).
evidence(stem_alignment_current,current_frame,center_column(green_structure_stem,36)).
evidence(cursor_overlap_current,current_frame,cursor_cells_within_structure_silhouette).
evidence(pip_count_current,current_frame,three_disjoint_cyan_rectangles).

supported_by(hole_is_enclosed,hole_boundary_current).
supported_by(glyphs_share_center_column,glyph_alignment_current).
supported_by(stem_connects_aligned_glyphs,stem_alignment_current).
supported_by(cursor_is_on_structure,cursor_overlap_current).
supported_by(status_has_three_pips,pip_count_current).
