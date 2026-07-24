% Canonical identities are loaded from the level registry.
:- ensure_loaded('../../../../../../../object_registry.pl').

% State-specific facts for this action-tree node.
state(current).
incoming_action(current, action4).
grid_size(current, 64, 64).
coordinate_system(current, logical_grid, origin(top_left), cell_size(1)).
rectangle_convention(rectangle_xy_width_height).
background_color(current, yellow).

object_present(current, base_glyph).
object_present(current, central_hole).
object_present(current, green_structure).
object_present(current, hud_panel).
object_present(current, left_boundary_bar).
object_present(current, player_cursor).
object_present(current, status_marker).
object_present(current, status_pips).
object_present(current, status_track).
object_present(current, top_glyph).

object_bbox(current, left_boundary_bar, rect(0,0,4,52)).
object_geometry(current, left_boundary_bar, rect(0,0,4,52)).
object_color_region(current, left_boundary_bar, gray, rect(0,0,4,52)).

object_bbox(current, green_structure, rect(14,8,40,42)).
object_geometry(current, green_structure,
    union([
        difference(rect(32,8,9,9),rect(33,9,7,7)),
        rect(34,17,5,8),
        difference(
            union([rect(14,25,40,15),rect(19,40,35,10)]),
            union([rect(29,30,5,10),rect(24,40,10,5)]))
    ])).
object_color(current, green_structure, green).
object_subregion(current, green_structure, top_chamber_fill, gray, rect(33,9,7,7)).

object_bbox(current, central_hole, rect(24,30,10,15)).
object_geometry(current, central_hole,
    union([rect(29,30,5,10),rect(24,40,10,5)])).
object_color(current, central_hole, yellow).
enclosed_by(current, central_hole, green_structure).

object_bbox(current, top_glyph, rect(35,11,3,3)).
object_geometry(current, top_glyph,
    union([rect(35,11,3,1),rect(37,12,1,2),rect(35,13,1,1)])).
object_color(current, top_glyph, dark_red).
contained_in(current, top_glyph, green_structure).

object_bbox(current, player_cursor, rect(20,31,3,3)).
object_color_region(current, player_cursor, black,
    union([cell(21,31),cell(21,32),cell(22,32)])).
object_color_region(current, player_cursor, blue,
    union([cell(20,32),cell(21,33)])).
contained_in(current, player_cursor, green_structure).
object_occludes(current, player_cursor, green_structure).

object_bbox(current, base_glyph, rect(34,45,5,5)).
object_geometry(current, base_glyph, rect(34,45,5,5)).
object_color_region(current, base_glyph, gray, rect(34,45,5,2)).
object_color_region(current, base_glyph, dark_red, rect(34,47,5,3)).
contained_in(current, base_glyph, green_structure).
object_occludes(current, base_glyph, green_structure).

object_bbox(current, hud_panel, rect(1,53,10,10)).
object_geometry(current, hud_panel, rect(1,53,10,10)).
object_color_region(current, hud_panel, gray, rect(1,53,10,10)).
object_subregion(current, hud_panel, panel_glyph, dark_red,
    union([rect(3,55,6,2),rect(3,57,2,4),rect(7,59,2,2)])).

object_bbox(current, status_track, rect(12,60,52,4)).
object_geometry(current, status_track, rect(12,60,52,4)).
object_color_region(current, status_track, gray, rect(12,60,52,4)).
object_color_region(current, status_track, dark_gray, rect(20,61,35,2)).

object_bbox(current, status_marker, rect(13,61,7,2)).
object_geometry(current, status_marker, rect(13,61,7,2)).
object_color(current, status_marker, green).
contained_in(current, status_marker, status_track).
object_occludes(current, status_marker, status_track).

object_bbox(current, status_pips, rect(56,61,8,2)).
object_geometry(current, status_pips,
    union([rect(56,61,2,2),rect(59,61,2,2),rect(62,61,2,2)])).
object_color(current, status_pips, cyan).
contained_in(current, status_pips, status_track).
object_occludes(current, status_pips, status_track).

turtle_program(left_boundary_bar,
    [set_color(gray),fill_rect(0,0,4,52)]).
turtle_program(green_structure,
    [set_color(green),fill_rect(32,8,9,9),
     set_color(gray),fill_rect(33,9,7,7),
     set_color(green),fill_rect(34,17,5,8),fill_rect(14,25,40,15),fill_rect(19,40,35,10),
     set_color(yellow),fill_rect(29,30,5,10),fill_rect(24,40,10,5)]).
turtle_program(central_hole,
    [set_color(yellow),fill_rect(29,30,5,10),fill_rect(24,40,10,5)]).
turtle_program(top_glyph,
    [set_color(dark_red),fill_rect(35,11,3,1),fill_rect(37,12,1,2),fill_cell(35,13)]).
turtle_program(player_cursor,
    [set_color(black),fill_cell(21,31),fill_rect(21,32,2,1),
     set_color(blue),fill_cell(20,32),fill_cell(21,33)]).
turtle_program(base_glyph,
    [set_color(gray),fill_rect(34,45,5,2),set_color(dark_red),fill_rect(34,47,5,3)]).
turtle_program(hud_panel,
    [set_color(gray),fill_rect(1,53,10,10),
     set_color(dark_red),fill_rect(3,55,6,2),fill_rect(3,57,2,4),fill_rect(7,59,2,2)]).
turtle_program(status_track,
    [set_color(gray),fill_rect(12,60,52,4),set_color(dark_gray),fill_rect(13,61,42,2)]).
turtle_program(status_marker,
    [set_color(green),fill_rect(13,61,7,2)]).
turtle_program(status_pips,
    [set_color(cyan),fill_rect(56,61,2,2),fill_rect(59,61,2,2),fill_rect(62,61,2,2)]).
