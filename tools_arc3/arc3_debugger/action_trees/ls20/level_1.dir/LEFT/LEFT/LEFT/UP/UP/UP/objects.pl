% Canonical identities are loaded from the level registry.
:- ensure_loaded('../../../../../../object_registry.pl').

% State-specific facts for this action-tree node.
state(current).
logical_grid(current, 64, 64).
coordinate_system(current, zero_based, x_right_y_down).
background_color(current, yellow).

present_object(current, base_glyph, compound_object).
present_object(current, central_hole, hole).
present_object(current, green_structure, compound_object).
present_object(current, hud_panel, interface_object).
present_object(current, left_boundary_bar, bar).
present_object(current, status_marker, interface_object).
present_object(current, status_pips, interface_object).
present_object(current, status_track, interface_object).
present_object(current, top_glyph, glyph).
not_visibly_detected(current, player_cursor).
possible_occlusion_or_removal(current, player_cursor, base_glyph).

object_bbox(current, left_boundary_bar, 0, 0, 3, 51).
object_shape(current, left_boundary_bar, rectangle(0,0,3,51,gray)).

object_bbox(current, green_structure, 14, 8, 53, 49).
object_shape(current, green_structure, union([
    rectangle(32,8,40,8,green),
    rectangle(32,9,32,15,green),
    rectangle(40,9,40,15,green),
    rectangle(32,16,40,16,green),
    rectangle(34,17,38,24,green),
    rectangle(14,25,53,29,green),
    rectangle(14,30,28,39,green),
    rectangle(19,40,23,44,green),
    rectangle(34,30,53,44,green),
    rectangle(19,45,53,49,green)
])).
structural_part(current, green_structure, top_frame, frame(32,8,40,16,1,green)).
structural_part(current, green_structure, neck, rectangle(34,17,38,24,green)).
structural_part(current, green_structure, upper_bar, rectangle(14,25,53,29,green)).
structural_part(current, green_structure, left_lobe, rectangle(14,30,28,39,green)).
structural_part(current, green_structure, left_lower_connector, rectangle(19,40,23,44,green)).
structural_part(current, green_structure, right_body, rectangle(34,30,53,44,green)).
structural_part(current, green_structure, bottom_bar, rectangle(19,45,53,49,green)).
subobject_geometry(current, green_structure, top_chamber_panel, rectangle(33,9,39,15,gray)).

object_bbox(current, top_glyph, 35, 11, 37, 13).
object_shape(current, top_glyph, union([
    rectangle(35,11,37,11,dark_red),
    rectangle(37,12,37,13,dark_red),
    cell(35,13,dark_red)
])).
contained_in(current, top_glyph, green_structure).

object_bbox(current, central_hole, 24, 30, 33, 44).
object_shape(current, central_hole, union([
    rectangle(29,30,33,39,yellow),
    rectangle(24,40,33,44,yellow)
])).
enclosed_by(current, central_hole, [green_structure]).

object_bbox(current, base_glyph, 19, 30, 23, 34).
object_shape(current, base_glyph, layered([
    rectangle(19,30,23,31,gray),
    rectangle(19,32,23,34,dark_red)
])).
structural_part(current, base_glyph, gray_cap, rectangle(19,30,23,31,gray)).
structural_part(current, base_glyph, dark_red_body, rectangle(19,32,23,34,dark_red)).
overlays(current, base_glyph, green_structure).

object_bbox(current, hud_panel, 1, 53, 10, 62).
object_shape(current, hud_panel, layered([
    rectangle(1,53,10,62,gray),
    rectangle(3,55,8,56,dark_red),
    rectangle(7,57,8,60,dark_red),
    rectangle(3,59,4,60,dark_red)
])).
subobject_geometry(current, hud_panel, status_glyph, union([
    rectangle(3,55,8,56,dark_red),
    rectangle(7,57,8,60,dark_red),
    rectangle(3,59,4,60,dark_red)
])).

object_bbox(current, status_track, 12, 60, 63, 63).
object_shape(current, status_track, layered([
    rectangle(12,60,63,63,gray),
    rectangle(17,61,54,62,dark_gray)
])).

object_bbox(current, status_marker, 13, 61, 17, 62).
object_shape(current, status_marker, rectangle(13,61,17,62,green)).

object_bbox(current, status_pips, 56, 61, 63, 62).
object_shape(current, status_pips, union([
    rectangle(56,61,57,62,cyan),
    rectangle(59,61,60,62,cyan),
    rectangle(62,61,63,62,cyan)
])).
overlays(current, status_marker, status_track).
overlays(current, status_pips, status_track).

z_order(current, [background,left_boundary_bar,green_structure,top_chamber_panel,top_glyph,central_hole,base_glyph,hud_panel,status_track,status_marker,status_pips]).

turtle_program(left_boundary_bar, [set_color(gray),fill_rect(0,0,3,51)]).
turtle_program(green_structure, [set_color(green),fill_rect(32,8,40,8),fill_rect(32,9,32,15),fill_rect(40,9,40,15),fill_rect(32,16,40,16),fill_rect(34,17,38,24),fill_rect(14,25,53,29),fill_rect(14,30,28,39),fill_rect(19,40,23,44),fill_rect(34,30,53,44),fill_rect(19,45,53,49),set_color(gray),fill_rect(33,9,39,15)]).
turtle_program(top_glyph, [set_color(dark_red),fill_rect(35,11,37,11),fill_rect(37,12,37,13),fill_cell(35,13)]).
turtle_program(central_hole, [set_color(yellow),fill_rect(29,30,33,39),fill_rect(24,40,33,44)]).
turtle_program(base_glyph, [set_color(gray),fill_rect(19,30,23,31),set_color(dark_red),fill_rect(19,32,23,34)]).
turtle_program(hud_panel, [set_color(gray),fill_rect(1,53,10,62),set_color(dark_red),fill_rect(3,55,8,56),fill_rect(7,57,8,60),fill_rect(3,59,4,60)]).
turtle_program(status_track, [set_color(gray),fill_rect(12,60,63,63),set_color(dark_gray),fill_rect(17,61,54,62)]).
turtle_program(status_marker, [set_color(green),fill_rect(13,61,17,62)]).
turtle_program(status_pips, [set_color(cyan),fill_rect(56,61,57,62),fill_rect(59,61,60,62),fill_rect(62,61,63,62)]).
