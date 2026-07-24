% Canonical identities are loaded from the level registry.
:- ensure_loaded('../../../../../../../../object_registry.pl').

% State-specific facts for this action-tree node.
state(current).
canvas_size(64,64).
background_color(yellow).

object(green_structure,compound_object,green).
object_bbox(green_structure,14,9,53,49).
object_part(green_structure,rectangle(33,9,40,16)).
object_part(green_structure,rectangle(34,17,38,24)).
object_part(green_structure,rectangle(14,25,53,29)).
object_part(green_structure,rectangle(19,30,23,49)).
object_part(green_structure,rectangle(34,30,53,49)).
object_part(green_structure,rectangle(24,45,33,49)).

object(central_hole,hole,yellow).
object_bbox(central_hole,24,30,33,44).
enclosed_by(central_hole,green_structure).

object(top_glyph,glyph,dark_red).
object_bbox(top_glyph,35,11,37,13).
object_cells(top_glyph,[(35,11),(36,11),(37,11),(37,12),(37,13)]).

object(base_glyph,compound_object,dark_red).
object_bbox(base_glyph,19,30,23,34).
object_part(base_glyph,rectangle(19,30,23,34)).

object(hud_panel,interface_object,gray).
object_bbox(hud_panel,1,53,10,62).
object_part(hud_panel,rectangle(1,53,10,62)).
object_cells(hud_panel,[rectangle(1,53,10,62)]).

object(status_track,interface_object,gray).
object_bbox(status_track,13,61,54,62).
object_part(status_track,rectangle(13,61,54,62)).

object(status_pips,interface_object,cyan).
object_bbox(status_pips,56,61,63,62).
object_part(status_pips,rectangle(56,61,57,62)).
object_part(status_pips,rectangle(59,61,60,62)).
object_part(status_pips,rectangle(62,61,63,62)).

object(base_glyph_hud_copy,glyph,dark_red).
object_bbox(base_glyph_hud_copy,3,55,8,60).
object_cells(base_glyph_hud_copy,[(3,55),(4,55),(5,55),(6,55),(7,55),(8,55),(3,56),(4,56),(5,56),(6,56),(7,56),(8,56),(3,57),(4,57),(7,57),(8,57),(3,58),(4,58),(7,58),(8,58),(3,59),(4,59),(7,59),(8,59),(3,60),(4,60),(7,60),(8,60)]).
sub_object(base_glyph_hud_copy,hud_panel).

absent(player_cursor).
absent(status_marker).

same_shape_palette_role(top_glyph,base_glyph_hud_copy,dark_red).

turtle_program(current_frame,[clear(yellow),fill_rect(33,9,40,16,green),fill_rect(34,17,38,24,green),fill_rect(14,25,53,29,green),fill_rect(19,30,23,49,green),fill_rect(34,30,53,49,green),fill_rect(24,45,33,49,green),fill_rect(24,30,33,44,yellow),fill_rect(35,11,37,11,dark_red),fill_rect(37,12,37,13,dark_red),fill_rect(19,30,23,34,dark_red),fill_rect(1,53,10,62,gray),fill_cells([(3,55),(4,55),(5,55),(6,55),(7,55),(8,55),(3,56),(4,56),(5,56),(6,56),(7,56),(8,56),(3,57),(4,57),(7,57),(8,57),(3,58),(4,58),(7,58),(8,58),(3,59),(4,59),(7,59),(8,59),(3,60),(4,60),(7,60),(8,60)],dark_red),fill_rect(13,61,54,62,gray),fill_rect(56,61,57,62,cyan),fill_rect(59,61,60,62,cyan),fill_rect(62,61,63,62,cyan)]).
