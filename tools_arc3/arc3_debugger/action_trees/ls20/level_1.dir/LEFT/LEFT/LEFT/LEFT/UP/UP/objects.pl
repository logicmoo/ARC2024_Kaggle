% Canonical identities are loaded from the level registry.
:- ensure_loaded('../../../../../../object_registry.pl').

% State-specific facts for this action-tree node.
state(current).
canvas_size(64,64).
background_color(yellow).

object(green_structure,compound_object).
object_bbox(green_structure,14,9,40,41).
object_part(green_structure,rectangle(14,25,40,25,green)).
object_part(green_structure,rectangle(33,9,8,8,green)).
object_part(green_structure,rectangle(34,17,5,8,green)).
object_part(green_structure,rectangle(34,10,6,6,gray)).
contains(green_structure,central_hole).

object(central_hole,hole).
object_bbox(central_hole,29,30,5,15).
object_part(central_hole,rectangle(29,30,5,15,yellow)).

object(top_glyph,glyph).
object_bbox(top_glyph,35,11,3,3).
object_cells(top_glyph,[cell(35,11),cell(36,11),cell(37,11),cell(35,12),cell(37,12),cell(37,13)]).
color(top_glyph,dark_red).
contained_in(top_glyph,green_structure).

object(player_cursor,compound_object).
object_bbox(player_cursor,20,31,2,3).
object_part(player_cursor,rectangle(21,31,1,2,black)).
object_part(player_cursor,rectangle(20,33,2,1,blue)).
contained_in(player_cursor,green_structure).

object(base_glyph,compound_object).
object_bbox(base_glyph,19,35,5,5).
object_part(base_glyph,rectangle(19,35,5,2,gray)).
object_part(base_glyph,rectangle(19,37,5,3,dark_red)).
contained_in(base_glyph,green_structure).

object(hud_panel,interface_object).
object_bbox(hud_panel,1,53,10,10).
object_part(hud_panel,rectangle(1,53,10,10,gray)).

object(left_boundary_bar,bar).
object_bbox(left_boundary_bar,3,55,6,6).
object_part(left_boundary_bar,rectangle(3,55,6,2,dark_red)).
object_part(left_boundary_bar,rectangle(3,57,2,4,dark_red)).
object_part(left_boundary_bar,rectangle(7,59,2,2,dark_red)).
contained_in(left_boundary_bar,hud_panel).

object(status_track,interface_object).
object_bbox(status_track,13,61,42,2).
object_part(status_track,rectangle(13,61,42,2,dark_gray)).

object(status_marker,interface_object).
object_bbox(status_marker,13,61,6,2).
object_part(status_marker,rectangle(13,61,6,2,green)).
contained_in(status_marker,status_track).

object(status_pips,interface_object).
object_bbox(status_pips,56,61,8,2).
object_part(status_pips,rectangle(56,61,2,2,cyan)).
object_part(status_pips,rectangle(59,61,2,2,cyan)).
object_part(status_pips,rectangle(62,61,2,2,cyan)).

turtle_program(green_structure,[fill_rect(14,25,40,25,green),fill_rect(33,9,8,8,green),fill_rect(34,17,5,8,green),fill_rect(34,10,6,6,gray),fill_rect(29,30,5,15,yellow)]).
turtle_program(top_glyph,[fill_cells([cell(35,11),cell(36,11),cell(37,11),cell(35,12),cell(37,12),cell(37,13)],dark_red)]).
turtle_program(player_cursor,[fill_rect(21,31,1,2,black),fill_rect(20,33,2,1,blue)]).
turtle_program(base_glyph,[fill_rect(19,35,5,2,gray),fill_rect(19,37,5,3,dark_red)]).
turtle_program(hud_panel,[fill_rect(1,53,10,10,gray)]).
turtle_program(left_boundary_bar,[fill_rect(3,55,6,2,dark_red),fill_rect(3,57,2,4,dark_red),fill_rect(7,59,2,2,dark_red)]).
turtle_program(status_track,[fill_rect(13,61,42,2,dark_gray)]).
turtle_program(status_marker,[fill_rect(13,61,6,2,green)]).
turtle_program(status_pips,[fill_rect(56,61,2,2,cyan),fill_rect(59,61,2,2,cyan),fill_rect(62,61,2,2,cyan)]).
