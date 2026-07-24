% Canonical identities are loaded from the level registry.
:- ensure_loaded('../object_registry.pl').

% State-specific facts for this action-tree node.
canvas_size(512,512).
background_color('#FFD700').
object(green_structure,compound_object,green).
geometry(green_structure,union([rect(264,72,64,64),rect(272,136,40,64),rect(112,200,320,40),rect(112,240,120,80),rect(272,240,160,120),rect(152,320,80,80),rect(152,360,280,40)])).
sub_object(green_structure,central_hole).
object(central_hole,hole,yellow).
geometry(central_hole,union([rect(232,240,40,120),rect(112,320,40,80)])).
object(top_glyph,glyph,dark_red).
geometry(top_glyph,union([rect(280,88,24,16),rect(296,104,8,8)])).
inside(top_glyph,green_structure).
object(player_cursor,compound_object,multicolor).
geometry(player_cursor,union([rect(168,248,8,16),rect(160,264,16,8)])).
color_part(player_cursor,black,rect(168,248,8,16)).
color_part(player_cursor,blue,rect(160,264,16,8)).
inside(player_cursor,green_structure).
object(base_glyph,compound_object,multicolor).
geometry(base_glyph,rect(232,360,40,40)).
color_part(base_glyph,light_gray,rect(232,360,40,16)).
color_part(base_glyph,dark_red,rect(232,376,40,24)).
inside(base_glyph,green_structure).
object(hud_panel,interface_object,multicolor).
geometry(hud_panel,rect(8,424,80,80)).
color_part(hud_panel,light_gray,rect(8,424,80,80)).
color_part(hud_panel,dark_red,union([rect(24,440,48,16),rect(24,456,16,32),rect(40,456,24,16),rect(56,472,16,16)])).
object(status_track,interface_object,dark_gray).
geometry(status_track,rect(112,488,328,16)).
object(status_marker,interface_object,green).
geometry(status_marker,rect(104,488,8,16)).
object(status_pips,interface_object,cyan).
geometry(status_pips,union([rect(448,488,16,16),rect(472,488,16,16),rect(496,488,16,16)])).
turtle_program(green_structure,[fill('#2ECC40'),rect(264,72,64,64),rect(272,136,40,64),rect(112,200,320,40),rect(112,240,120,80),rect(272,240,160,120),rect(152,320,80,80),rect(152,360,280,40)]).
turtle_program(top_glyph,[fill('#800020'),rect(280,88,24,16),rect(296,104,8,8)]).
turtle_program(player_cursor,[fill('#000000'),rect(168,248,8,16),fill('#0074D9'),rect(160,264,16,8)]).
turtle_program(base_glyph,[fill('#C0C0C0'),rect(232,360,40,16),fill('#800020'),rect(232,376,40,24)]).
turtle_program(status_marker,[fill('#2ECC40'),rect(104,488,8,16)]).
