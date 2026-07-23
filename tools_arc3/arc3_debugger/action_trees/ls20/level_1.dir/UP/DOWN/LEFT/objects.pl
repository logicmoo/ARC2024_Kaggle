% Canonical identities are loaded from the level registry.
:- ensure_loaded('../../../object_registry.pl').

% State-specific facts for this action-tree node.
state(current).
canvas_size(64,64).
background_color(yellow).

object(green_structure,compound_object,green).
object_geometry(green_structure,union([rect(33,9,8,8),rect(34,17,5,8),rect(14,25,40,15),rect(19,40,35,10)])).
sub_object(green_structure,top_enclosure,rect(33,9,8,8)).
sub_object(green_structure,vertical_stem,rect(34,17,5,8)).
sub_object(green_structure,upper_body,rect(14,25,40,15)).
sub_object(green_structure,lower_body,rect(19,40,35,10)).

object(central_hole,hole,yellow).
object_geometry(central_hole,union([rect(29,30,5,15),rect(24,40,5,5)])).
enclosed_by(central_hole,green_structure).

object(top_glyph,glyph,dark_red).
object_geometry(top_glyph,cells([(35,11),(36,11),(37,11),(35,12),(36,12),(37,12),(37,13)])).

object(base_glyph,compound_object,multicolor).
object_geometry(base_glyph,rect(29,45,5,5)).
sub_object(base_glyph,base_cap,rect(29,45,5,2)).
sub_object(base_glyph,base_body,rect(29,47,5,3)).
object_color(base_cap,light_gray).
object_color(base_body,dark_red).

object(player_cursor,compound_object,multicolor).
object_geometry(player_cursor,rect(21,31,1,3)).
sub_object(player_cursor,cursor_head,rect(21,31,1,2)).
sub_object(player_cursor,cursor_tail,cell(21,33)).
object_color(cursor_head,black).
object_color(cursor_tail,blue).

object(hud_panel,interface_object,multicolor).
object_geometry(hud_panel,rect(1,53,10,10)).
sub_object(hud_panel,hud_background,rect(1,53,10,10)).
sub_object(hud_panel,hud_red_glyph,union([rect(3,55,6,2),rect(3,57,2,4),rect(5,59,3,2)])).
sub_object(hud_panel,hud_black_inset,rect(5,57,4,2)).
object_color(hud_background,light_gray).
object_color(hud_red_glyph,dark_red).
object_color(hud_black_inset,black).

object(status_track,interface_object,gray).
object_geometry(status_track,rect(13,61,42,2)).

object(status_pips,interface_object,cyan).
object_geometry(status_pips,union([rect(56,61,2,2),rect(59,61,2,2),rect(62,61,2,2)])).

object(status_marker,interface_object,green).
object_state(status_marker,absent).

contains(green_structure,central_hole).
contains(green_structure,top_glyph).
contains(green_structure,base_glyph).
contains(green_structure,player_cursor).

turtle_program(current_frame,[set_color(yellow),fill_rect(0,0,64,64),set_color(green),fill_rect(33,9,8,8),fill_rect(34,17,5,8),fill_rect(14,25,40,15),fill_rect(19,40,35,10),set_color(yellow),fill_rect(29,30,5,15),fill_rect(24,40,5,5),set_color(light_gray),fill_rect(34,10,6,6),set_color(dark_red),fill_cells([(35,11),(36,11),(37,11),(35,12),(36,12),(37,12),(37,13)]),set_color(light_gray),fill_rect(29,45,5,2),set_color(dark_red),fill_rect(29,47,5,3),set_color(black),fill_rect(21,31,1,2),set_color(blue),fill_cell(21,33),set_color(light_gray),fill_rect(1,53,10,10),set_color(dark_red),fill_rect(3,55,6,2),fill_rect(3,57,2,4),fill_rect(5,59,3,2),set_color(black),fill_rect(5,57,4,2),set_color(gray),fill_rect(13,61,42,2),set_color(cyan),fill_rect(56,61,2,2),fill_rect(59,61,2,2),fill_rect(62,61,2,2)]).
