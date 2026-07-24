:- discontiguous object/2.
:- discontiguous bbox/5.
:- discontiguous color/2.
:- discontiguous geometry/2.
:- discontiguous turtle_program/2.

canvas_size(640,640).
coordinate_system(pixel,origin_top_left,x_right,y_down).
bbox_convention(half_open).
turtle_cell_units(pixels).
turtle_set_cell_semantics(filled_rectangle_from_current_position).

color_rgb(yellow,255,220,0).
color_rgb(green,46,204,64).
color_rgb(gray,170,170,170).
color_rgb(dark_gray,102,102,102).
color_rgb(burgundy,133,20,75).
color_rgb(black,0,0,0).
color_rgb(navy,0,31,63).
color_rgb(blue,0,116,217).
color_rgb(light_blue,127,219,255).

object(background,background).
bbox(background,0,0,640,640).
color(background,yellow).
geometry(background,rectangle(0,0,640,640)).
render_order(background,0).
turtle_program(background,
 [penup,setcolor(yellow),set_pos(0,0),pendown,set_cell(640,640),penup]).

object(left_sidebar,solid_rectangle).
bbox(left_sidebar,0,0,40,520).
color(left_sidebar,gray).
geometry(left_sidebar,rectangle(0,0,40,520)).
render_order(left_sidebar,10).
turtle_program(left_sidebar,
 [penup,setcolor(gray),set_pos(0,0),pendown,set_cell(40,520),penup]).

object(main_green_structure,connected_rectilinear_region).
bbox(main_green_structure,140,80,400,420).
color(main_green_structure,green).
geometry(main_green_structure,
 rect_union([
  rectangle(320,80,90,90),
  rectangle(340,160,50,90),
  rectangle(140,250,400,50),
  rectangle(140,300,150,100),
  rectangle(340,300,200,150),
  rectangle(190,400,50,50),
  rectangle(240,450,300,50)
 ])).
property(main_green_structure,connected).
property(main_green_structure,orthogonal).
property(main_green_structure,bridge_and_chamber_shape).
render_order(main_green_structure,20).
turtle_program(main_green_structure,
 [penup,setcolor(green),
  set_pos(320,80),pendown,set_cell(90,90),
  penup,set_pos(340,160),pendown,set_cell(50,90),
  penup,set_pos(140,250),pendown,set_cell(400,50),
  penup,set_pos(140,300),pendown,set_cell(150,100),
  penup,set_pos(340,300),pendown,set_cell(200,150),
  penup,set_pos(190,400),pendown,set_cell(50,50),
  penup,set_pos(240,450),pendown,set_cell(300,50),
  penup]).

object(top_panel,solid_rectangle).
bbox(top_panel,330,90,70,70).
color(top_panel,gray).
geometry(top_panel,rectangle(330,90,70,70)).
property(top_panel,square).
contained_by(top_panel,main_green_structure).
surrounded_by(top_panel,main_green_structure).
render_order(top_panel,30).
turtle_program(top_panel,
 [penup,setcolor(gray),set_pos(330,90),pendown,set_cell(70,70),penup]).

object(top_burgundy_glyph,rectilinear_glyph).
bbox(top_burgundy_glyph,350,110,30,30).
color(top_burgundy_glyph,burgundy).
geometry(top_burgundy_glyph,
 rect_union([
  rectangle(350,110,30,10),
  rectangle(370,120,10,20),
  rectangle(350,130,10,10)
 ])).
property(top_burgundy_glyph,three_segment_glyph).
contained_by(top_burgundy_glyph,top_panel).
render_order(top_burgundy_glyph,40).
turtle_program(top_burgundy_glyph,
 [penup,setcolor(burgundy),
  set_pos(350,110),pendown,set_cell(30,10),
  penup,set_pos(370,120),pendown,set_cell(10,20),
  penup,set_pos(350,130),pendown,set_cell(10,10),
  penup]).

object(avatar,composite_sprite).
bbox(avatar,200,310,30,30).
geometry(avatar,
 composite([avatar_black,avatar_navy,avatar_blue])).
contained_by(avatar,main_green_structure).
property(avatar,four_cell_sprite).

object(avatar_black,rectilinear_patch).
bbox(avatar_black,210,310,20,20).
color(avatar_black,black).
geometry(avatar_black,
 rect_union([
  rectangle(210,310,10,10),
  rectangle(210,320,20,10)
 ])).
part_of(avatar_black,avatar).
render_order(avatar_black,50).
turtle_program(avatar_black,
 [penup,setcolor(black),
  set_pos(210,310),pendown,set_cell(10,10),
  penup,set_pos(210,320),pendown,set_cell(20,10),
  penup]).

object(avatar_navy,solid_rectangle).
bbox(avatar_navy,200,320,10,10).
color(avatar_navy,navy).
geometry(avatar_navy,rectangle(200,320,10,10)).
part_of(avatar_navy,avatar).
adjacent(avatar_navy,avatar_black,right).
render_order(avatar_navy,51).
turtle_program(avatar_navy,
 [penup,setcolor(navy),set_pos(200,320),pendown,set_cell(10,10),penup]).

object(avatar_blue,solid_rectangle).
bbox(avatar_blue,210,330,10,10).
color(avatar_blue,blue).
geometry(avatar_blue,rectangle(210,330,10,10)).
part_of(avatar_blue,avatar).
adjacent(avatar_blue,avatar_black,above).
render_order(avatar_blue,52).
turtle_program(avatar_blue,
 [penup,setcolor(blue),set_pos(210,330),pendown,set_cell(10,10),penup]).

object(lower_connector_gray,solid_rectangle).
bbox(lower_connector_gray,190,450,50,20).
color(lower_connector_gray,gray).
geometry(lower_connector_gray,rectangle(190,450,50,20)).
property(lower_connector_gray,terminal_cap).
adjacent(lower_connector_gray,main_green_structure,above).
adjacent(lower_connector_gray,main_green_structure,right).
render_order(lower_connector_gray,60).
turtle_program(lower_connector_gray,
 [penup,setcolor(gray),set_pos(190,450),pendown,set_cell(50,20),penup]).

object(lower_connector_burgundy,solid_rectangle).
bbox(lower_connector_burgundy,190,470,50,30).
color(lower_connector_burgundy,burgundy).
geometry(lower_connector_burgundy,rectangle(190,470,50,30)).
property(lower_connector_burgundy,terminal_block).
adjacent(lower_connector_burgundy,lower_connector_gray,above).
adjacent(lower_connector_burgundy,main_green_structure,right).
render_order(lower_connector_burgundy,61).
turtle_program(lower_connector_burgundy,
 [penup,setcolor(burgundy),set_pos(190,470),pendown,set_cell(50,30),penup]).

object(lower_left_panel,solid_rectangle).
bbox(lower_left_panel,10,530,100,100).
color(lower_left_panel,gray).
geometry(lower_left_panel,rectangle(10,530,100,100)).
property(lower_left_panel,square).
render_order(lower_left_panel,70).
turtle_program(lower_left_panel,
 [penup,setcolor(gray),set_pos(10,530),pendown,set_cell(100,100),penup]).

object(lower_left_burgundy_glyph,rectilinear_glyph).
bbox(lower_left_burgundy_glyph,30,550,60,60).
color(lower_left_burgundy_glyph,burgundy).
geometry(lower_left_burgundy_glyph,
 rect_union([
  rectangle(30,550,60,20),
  rectangle(30,570,20,40),
  rectangle(70,590,20,20)
 ])).
property(lower_left_burgundy_glyph,three_segment_glyph).
contained_by(lower_left_burgundy_glyph,lower_left_panel).
render_order(lower_left_burgundy_glyph,80).
turtle_program(lower_left_burgundy_glyph,
 [penup,setcolor(burgundy),
  set_pos(30,550),pendown,set_cell(60,20),
  penup,set_pos(30,570),pendown,set_cell(20,40),
  penup,set_pos(70,590),pendown,set_cell(20,20),
  penup]).

object(status_tray,solid_rectangle).
bbox(status_tray,120,600,520,40).
color(status_tray,gray).
geometry(status_tray,rectangle(120,600,520,40)).
property(status_tray,horizontal_ui_container).
render_order(status_tray,90).
turtle_program(status_tray,
 [penup,setcolor(gray),set_pos(120,600),pendown,set_cell(520,40),penup]).

object(status_green_segment,solid_rectangle).
bbox(status_green_segment,130,610,40,20).
color(status_green_segment,green).
geometry(status_green_segment,rectangle(130,610,40,20)).
contained_by(status_green_segment,status_tray).
render_order(status_green_segment,100).
turtle_program(status_green_segment,
 [penup,setcolor(green),set_pos(130,610),pendown,set_cell(40,20),penup]).

object(status_dark_segment,solid_rectangle).
bbox(status_dark_segment,170,610,380,20).
color(status_dark_segment,dark_gray).
geometry(status_dark_segment,rectangle(170,610,380,20)).
contained_by(status_dark_segment,status_tray).
adjacent(status_dark_segment,status_green_segment,left).
render_order(status_dark_segment,101).
turtle_program(status_dark_segment,
 [penup,setcolor(dark_gray),set_pos(170,610),pendown,set_cell(380,20),penup]).

object(status_blue_segment_1,solid_rectangle).
bbox(status_blue_segment_1,560,610,20,20).
color(status_blue_segment_1,light_blue).
geometry(status_blue_segment_1,rectangle(560,610,20,20)).
contained_by(status_blue_segment_1,status_tray).
render_order(status_blue_segment_1,102).
turtle_program(status_blue_segment_1,
 [penup,setcolor(light_blue),set_pos(560,610),pendown,set_cell(20,20),penup]).

object(status_blue_segment_2,solid_rectangle).
bbox(status_blue_segment_2,590,610,20,20).
color(status_blue_segment_2,light_blue).
geometry(status_blue_segment_2,rectangle(590,610,20,20)).
contained_by(status_blue_segment_2,status_tray).
render_order(status_blue_segment_2,103).
turtle_program(status_blue_segment_2,
 [penup,setcolor(light_blue),set_pos(590,610),pendown,set_cell(20,20),penup]).

object(status_blue_segment_3,solid_rectangle).
bbox(status_blue_segment_3,620,610,20,20).
color(status_blue_segment_3,light_blue).
geometry(status_blue_segment_3,rectangle(620,610,20,20)).
contained_by(status_blue_segment_3,status_tray).
property(status_blue_segment_3,clipped_at_right_canvas_edge).
render_order(status_blue_segment_3,104).
turtle_program(status_blue_segment_3,
 [penup,setcolor(light_blue),set_pos(620,610),pendown,set_cell(20,20),penup]).

gap(status_dark_segment,status_blue_segment_1,10).
gap(status_blue_segment_1,status_blue_segment_2,10).
gap(status_blue_segment_2,status_blue_segment_3,10).

aligned_horizontal(status_green_segment,status_dark_segment).
aligned_horizontal(status_dark_segment,status_blue_segment_1).
aligned_horizontal(status_blue_segment_1,status_blue_segment_2).
aligned_horizontal(status_blue_segment_2,status_blue_segment_3).

same_color(main_green_structure,status_green_segment).
same_color(top_burgundy_glyph,lower_connector_burgundy).
same_color(top_burgundy_glyph,lower_left_burgundy_glyph).
same_color(top_panel,lower_connector_gray).
same_color(top_panel,lower_left_panel).
same_color(top_panel,status_tray).
