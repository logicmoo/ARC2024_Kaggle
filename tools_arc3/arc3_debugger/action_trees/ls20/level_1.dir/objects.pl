% Canonical identities are loaded from the level registry.
:- ensure_loaded('object_registry.pl').

% State-specific facts for this action-tree node.
frame(current_frame).
logical_grid(current_frame,64,64).
coordinate_convention(current_frame,one_based_row_column).
rectangle_convention(top_row,left_column,height,width).
background_color(current_frame,yellow).

object_present(current_frame,base_glyph).
object_present(current_frame,central_hole).
object_present(current_frame,green_structure).
object_present(current_frame,hud_panel).
object_present(current_frame,left_boundary_bar).
object_present(current_frame,player_cursor).
object_present(current_frame,status_pips).
object_present(current_frame,status_track).
object_present(current_frame,top_glyph).
object_absent(current_frame,status_marker).

object_bbox(current_frame,left_boundary_bar,1,1,52,4).
object_bbox(current_frame,green_structure,9,15,50,54).
object_bbox(current_frame,central_hole,31,25,45,34).
object_bbox(current_frame,top_glyph,12,36,14,38).
object_bbox(current_frame,base_glyph,46,35,50,39).
object_bbox(current_frame,player_cursor,32,21,34,23).
object_bbox(current_frame,hud_panel,54,2,63,11).
object_bbox(current_frame,status_track,61,13,64,64).
object_bbox(current_frame,status_pips,62,57,63,64).

object_palette(current_frame,left_boundary_bar,[gray]).
object_palette(current_frame,green_structure,[green,gray]).
object_palette(current_frame,central_hole,[yellow]).
object_palette(current_frame,top_glyph,[dark_red]).
object_palette(current_frame,base_glyph,[gray,dark_red]).
object_palette(current_frame,player_cursor,[black,blue]).
object_palette(current_frame,hud_panel,[gray,dark_red]).
object_palette(current_frame,status_track,[gray,dark_gray]).
object_palette(current_frame,status_pips,[cyan]).

object_topology(current_frame,left_boundary_bar,solid_boundary_bar).
object_topology(current_frame,green_structure,contiguous_branching_enclosure).
object_topology(current_frame,central_hole,contiguous_enclosed_hole).
object_topology(current_frame,top_glyph,compound_glyph_with_detached_lower_left_cell).
object_topology(current_frame,base_glyph,two_color_rectangular_block).
object_topology(current_frame,player_cursor,contiguous_compound_cursor).
object_topology(current_frame,hud_panel,rectangular_panel_with_compound_motif).
object_topology(current_frame,status_track,horizontal_interface_bar).
object_topology(current_frame,status_pips,three_disjoint_equal_rectangles).

object_component_rect(current_frame,left_boundary_bar,bar,1,1,52,4,gray).

object_component_rect(current_frame,green_structure,cap_top,9,33,1,9,green).
object_component_rect(current_frame,green_structure,cap_left,10,33,7,1,green).
object_component_rect(current_frame,green_structure,cap_right,10,41,7,1,green).
object_component_rect(current_frame,green_structure,cap_bottom,17,33,1,9,green).
object_component_rect(current_frame,green_structure,upper_stem,18,35,8,5,green).
object_component_rect(current_frame,green_structure,crossbar,26,15,5,40,green).
object_component_rect(current_frame,green_structure,left_upper_branch,31,15,10,15,green).
object_component_rect(current_frame,green_structure,right_body,31,35,15,20,green).
object_component_rect(current_frame,green_structure,left_lower_branch,41,20,5,5,green).
object_component_rect(current_frame,green_structure,bottom_left,46,20,5,15,green).
object_component_rect(current_frame,green_structure,bottom_right,46,40,5,15,green).
object_component_rect(current_frame,green_structure,top_chamber_backing,10,34,7,7,gray).

object_component_rect(current_frame,central_hole,upper_shaft,31,30,10,5,yellow).
object_component_rect(current_frame,central_hole,lower_chamber,41,25,5,10,yellow).

object_component_rect(current_frame,top_glyph,top_bar,12,36,1,3,dark_red).
object_component_rect(current_frame,top_glyph,right_stem,13,38,2,1,dark_red).
object_component_rect(current_frame,top_glyph,detached_lower_left,14,36,1,1,dark_red).

object_component_rect(current_frame,base_glyph,gray_cap,46,35,2,5,gray).
object_component_rect(current_frame,base_glyph,dark_red_base,48,35,3,5,dark_red).

object_component_rect(current_frame,player_cursor,black_upper,32,22,1,1,black).
object_component_rect(current_frame,player_cursor,black_middle,33,22,1,2,black).
object_component_rect(current_frame,player_cursor,blue_left,33,21,1,1,blue).
object_component_rect(current_frame,player_cursor,blue_lower,34,22,1,1,blue).

object_component_rect(current_frame,hud_panel,panel_background,54,2,10,10,gray).
object_component_rect(current_frame,hud_panel,motif_top_bar,56,4,2,6,dark_red).
object_component_rect(current_frame,hud_panel,motif_left_stem,58,4,4,2,dark_red).
object_component_rect(current_frame,hud_panel,motif_lower_right,60,8,2,2,dark_red).

object_component_rect(current_frame,status_track,track_background,61,13,4,52,gray).
object_component_rect(current_frame,status_track,dark_channel,62,14,2,42,dark_gray).
object_component_rect(current_frame,status_pips,left_pip,62,57,2,2,cyan).
object_component_rect(current_frame,status_pips,middle_pip,62,60,2,2,cyan).
object_component_rect(current_frame,status_pips,right_pip,62,63,2,2,cyan).

hole_in(current_frame,central_hole,green_structure).
encloses(current_frame,green_structure,central_hole).
subobject_region(current_frame,green_structure,top_chamber_backing).
embedded_in(current_frame,top_glyph,green_structure,top_chamber_backing).
embedded_in(current_frame,base_glyph,green_structure,bottom_boundary).
overlays(current_frame,player_cursor,green_structure,left_upper_branch).
interface_foreground_of(current_frame,status_pips,status_track).
motif_transform(current_frame,hud_panel,top_glyph,[reflect(horizontal),scale(2)]).

status_pip_count(current_frame,3).

turtle_program(left_boundary_bar,[paint_rect(1,1,52,4,gray)]).
turtle_program(green_structure,[paint_rect(9,33,1,9,green),paint_rect(10,33,7,1,green),paint_rect(10,41,7,1,green),paint_rect(17,33,1,9,green),paint_rect(18,35,8,5,green),paint_rect(26,15,5,40,green),paint_rect(31,15,10,15,green),paint_rect(31,35,15,20,green),paint_rect(41,20,5,5,green),paint_rect(46,20,5,15,green),paint_rect(46,40,5,15,green),paint_rect(10,34,7,7,gray)]).
turtle_program(central_hole,[paint_rect(31,30,10,5,yellow),paint_rect(41,25,5,10,yellow)]).
turtle_program(top_glyph,[paint_rect(12,36,1,3,dark_red),paint_rect(13,38,2,1,dark_red),paint_rect(14,36,1,1,dark_red)]).
turtle_program(base_glyph,[paint_rect(46,35,2,5,gray),paint_rect(48,35,3,5,dark_red)]).
turtle_program(player_cursor,[paint_rect(32,22,1,1,black),paint_rect(33,22,1,2,black),paint_rect(33,21,1,1,blue),paint_rect(34,22,1,1,blue)]).
turtle_program(hud_panel,[paint_rect(54,2,10,10,gray),paint_rect(56,4,2,6,dark_red),paint_rect(58,4,4,2,dark_red),paint_rect(60,8,2,2,dark_red)]).
turtle_program(status_track,[paint_rect(61,13,4,52,gray),paint_rect(62,14,2,42,dark_gray)]).
turtle_program(status_pips,[paint_rect(62,57,2,2,cyan),paint_rect(62,60,2,2,cyan),paint_rect(62,63,2,2,cyan)]).
