:- discontiguous changed_object/3.
:- discontiguous unchanged_object/2.
:- discontiguous moved_object/4.
:- discontiguous recolored_object/3.
:- discontiguous resized_object/3.
:- discontiguous action_effect/2.

state(previous).
state(current).

comparison_basis(rendered_state_and_object_descriptions).

added_object(Object) :-
    observed_added_object(Object).

removed_object(Object) :-
    observed_removed_object(Object).

observed_added_object(_) :-
    fail.

observed_removed_object(_) :-
    fail.

observation(no_wholly_new_rendered_object).
observation(no_wholly_removed_rendered_object).

object_correspondence(background,background,exact).
object_correspondence(left_sidebar,left_sidebar,exact).
object_correspondence(main_green_structure,main_green_structure,modified).
object_correspondence(main_cutout,implicit_main_cutout,exact_visible_region).
object_correspondence(top_terminal_panel,top_panel,renamed).
object_correspondence(top_terminal_glyph,top_burgundy_glyph,renamed).
object_correspondence(player,avatar,modified).
object_correspondence(player_black,avatar_black,modified).
object_correspondence(player_blue,avatar_blue,split_and_recolored).
object_correspondence(lower_terminal_cap,lower_connector_gray,moved_and_renamed).
object_correspondence(lower_terminal_core,lower_connector_burgundy,moved_and_renamed).
object_correspondence(lower_terminal,lower_connector,moved_and_renamed).
object_correspondence(lower_left_panel,lower_left_panel,exact).
object_correspondence(lower_left_glyph,lower_left_burgundy_glyph,renamed).
object_correspondence(bottom_toolbar,status_tray,renamed).
object_correspondence(toolbar_green_segment,status_green_segment,resized).
object_correspondence(toolbar_dark_segment,status_dark_segment,moved_and_resized).
object_correspondence(toolbar_blue_slot_1,status_blue_segment_1,renamed).
object_correspondence(toolbar_blue_slot_2,status_blue_segment_2,renamed).
object_correspondence(toolbar_blue_slot_3,status_blue_segment_3,renamed).

renamed_object(top_terminal_panel,top_panel).
renamed_object(top_terminal_glyph,top_burgundy_glyph).
renamed_object(player,avatar).
renamed_object(player_black,avatar_black).
renamed_object(lower_terminal_cap,lower_connector_gray).
renamed_object(lower_terminal_core,lower_connector_burgundy).
renamed_object(lower_terminal,lower_connector).
renamed_object(lower_left_glyph,lower_left_burgundy_glyph).
renamed_object(bottom_toolbar,status_tray).
renamed_object(toolbar_green_segment,status_green_segment).
renamed_object(toolbar_dark_segment,status_dark_segment).
renamed_object(toolbar_blue_slot_1,status_blue_segment_1).
renamed_object(toolbar_blue_slot_2,status_blue_segment_2).
renamed_object(toolbar_blue_slot_3,status_blue_segment_3).

color_alias(light_gray,gray).
color_alias(maroon,burgundy).

unchanged_object(background,background).
unchanged_object(left_sidebar,left_sidebar).
unchanged_object(main_cutout,implicit_main_cutout).
unchanged_object(top_terminal_panel,top_panel).
unchanged_object(top_terminal_glyph,top_burgundy_glyph).
unchanged_object(lower_left_panel,lower_left_panel).
unchanged_object(lower_left_glyph,lower_left_burgundy_glyph).
unchanged_object(bottom_toolbar,status_tray).
unchanged_object(toolbar_blue_slot_1,status_blue_segment_1).
unchanged_object(toolbar_blue_slot_2,status_blue_segment_2).
unchanged_object(toolbar_blue_slot_3,status_blue_segment_3).

unchanged_bbox(background,bbox(0,0,640,640)).
unchanged_bbox(left_sidebar,bbox(0,0,40,520)).
unchanged_bbox(main_green_structure,bbox(140,80,400,420)).
unchanged_bbox(main_cutout,bbox(240,300,100,150)).
unchanged_bbox(top_terminal_panel,bbox(330,90,70,70)).
unchanged_bbox(top_terminal_glyph,bbox(350,110,30,30)).
unchanged_bbox(player,bbox(200,310,30,30)).
unchanged_bbox(player_black,bbox(210,310,20,20)).
unchanged_bbox(lower_left_panel,bbox(10,530,100,100)).
unchanged_bbox(lower_left_glyph,bbox(30,550,60,60)).
unchanged_bbox(bottom_toolbar,bbox(120,600,520,40)).
unchanged_bbox(toolbar_blue_slot_1,bbox(560,610,20,20)).
unchanged_bbox(toolbar_blue_slot_2,bbox(590,610,20,20)).
unchanged_bbox(toolbar_blue_slot_3,bbox(620,610,20,20)).

changed_object(main_green_structure,main_green_structure,
    geometry_changed([
        removed_rectangle(rectangle(190,450,50,50)),
        added_rectangle(rectangle(240,450,50,50))
    ])).

changed_object(player,avatar,
    component_colors_changed([black,blue],[black,navy,blue])).

changed_object(player_black,avatar_black,
    geometry_changed([
        removed_rectangle(rectangle(220,310,10,10))
    ])).

changed_object(player_blue,avatar_blue,
    split([
        retained_blue_part(avatar_blue,rectangle(210,330,10,10)),
        recolored_part(avatar_navy,rectangle(200,320,10,10),blue,navy)
    ])).

changed_object(lower_terminal_cap,lower_connector_gray,
    translated(delta(-50,0))).

changed_object(lower_terminal_core,lower_connector_burgundy,
    translated(delta(-50,0))).

changed_object(lower_terminal,lower_connector,
    translated(delta(-50,0))).

changed_object(toolbar_green_segment,status_green_segment,
    bbox_changed(bbox(130,610,30,20),bbox(130,610,40,20))).

changed_object(toolbar_dark_segment,status_dark_segment,
    bbox_changed(bbox(160,610,390,20),bbox(170,610,380,20))).

moved_object(lower_terminal_cap,lower_connector_gray,
    bbox(240,450,50,20),bbox(190,450,50,20)).

moved_object(lower_terminal_core,lower_connector_burgundy,
    bbox(240,470,50,30),bbox(190,470,50,30)).

moved_object(lower_terminal,lower_connector,
    bbox(240,450,50,50),bbox(190,450,50,50)).

moved_object(toolbar_dark_segment,status_dark_segment,
    bbox(160,610,390,20),bbox(170,610,380,20)).

movement_delta(lower_terminal_cap,lower_connector_gray,-50,0).
movement_delta(lower_terminal_core,lower_connector_burgundy,-50,0).
movement_delta(lower_terminal,lower_connector,-50,0).
movement_delta(toolbar_dark_segment,status_dark_segment,10,0).

recolored_object(player_blue_part_at_200_320,blue,navy).
recolored_region(rectangle(200,320,10,10),blue,navy).

resized_object(toolbar_green_segment,
    size(30,20),size(40,20)).

resized_object(toolbar_dark_segment,
    size(390,20),size(380,20)).

shape_changed(player_black,
    rectangle(210,310,20,20),
    rect_union([
        rectangle(210,310,10,10),
        rectangle(210,320,20,10)
    ])).

shape_area_change(player_black,400,300,-100).

split_object(player_blue,[avatar_navy,avatar_blue]).
split_component(player_blue,avatar_navy,rectangle(200,320,10,10)).
split_component(player_blue,avatar_blue,rectangle(210,330,10,10)).

representation_change(main_cutout,
    explicit_object,
    implicit_yellow_negative_space).

representation_change(light_gray,gray,color_name_only).
representation_change(maroon,burgundy,color_name_only).
representation_change(union_rectangles,rect_union,geometry_notation_only).
representation_change(fill_rect,set_cell,turtle_notation_only).

pixel_transfer(rectangle(190,450,50,20),green,gray).
pixel_transfer(rectangle(190,470,50,30),green,burgundy).
pixel_transfer(rectangle(240,450,50,20),gray,green).
pixel_transfer(rectangle(240,470,50,30),burgundy,green).
pixel_transfer(rectangle(160,610,10,20),dark_gray,green).
pixel_transfer(rectangle(220,310,10,10),black,green).
pixel_transfer(rectangle(200,320,10,10),blue,navy).

unchanged_region(main_cutout,
    rect_union([
        rectangle(290,300,50,150),
        rectangle(240,400,50,50)
    ])).

unchanged_region(top_terminal_panel,rectangle(330,90,70,70)).
unchanged_region(top_terminal_glyph,
    rect_union([
        rectangle(350,110,30,10),
        rectangle(370,120,10,20),
        rectangle(350,130,10,10)
    ])).

unchanged_region(lower_left_glyph,
    rect_union([
        rectangle(30,550,60,20),
        rectangle(30,570,20,40),
        rectangle(70,590,20,20)
    ])).

action_effect(observed_transition,
    moved(lower_terminal,bbox(240,450,50,50),bbox(190,450,50,50))).

action_effect(observed_transition,
    recolored(rectangle(200,320,10,10),blue,navy)).

action_effect(observed_transition,
    removed_color_region(rectangle(220,310,10,10),black)).

action_effect(observed_transition,
    expanded(status_green_segment,10,pixels)).

action_effect(observed_transition,
    contracted(status_dark_segment,10,pixels)).

action_effect(observed_transition,
    preserved(main_cutout)).

hypothesis(triggered_action,moved_lower_terminal_left_by_50).
hypothesis(status_change,green_progress_increased_by_10).
hypothesis(status_change,dark_remaining_length_decreased_by_10).
hypothesis(avatar_state_change,blue_cell_became_navy).
hypothesis(avatar_state_change,black_patch_lost_one_cell).

hypothesized_action_effect(move_left,
    moved(lower_terminal,delta(-50,0))).

hypothesized_action_effect(success_or_progress,
    toolbar_transfer(rectangle(160,610,10,20),dark_gray,green)).

evidence(moved_lower_terminal_left_by_50,
    exact_translation_of_both_terminal_components).

evidence(green_progress_increased_by_10,
    shared_boundary_shifted_from_x(160) to x(170)).

evidence(avatar_state_change,
    localized_color_and_shape_change_without_bbox_movement).

observed_difference(Difference) :-
    changed_object(_,_,Difference).

observed_difference(movement(Old,New,From,To)) :-
    moved_object(Old,New,From,To).

observed_difference(recolor(Object,OldColor,NewColor)) :-
    recolored_object(Object,OldColor,NewColor).

observed_difference(resize(Object,OldSize,NewSize)) :-
    resized_object(Object,OldSize,NewSize).

hypothetical_difference(Hypothesis) :-
    hypothesis(_,Hypothesis).

pure_rename(Old,New) :-
    renamed_object(Old,New),
    unchanged_object(Old,New).

translated_by(Old,New,DX,DY) :-
    moved_object(Old,New,bbox(X1,Y1,W,H),bbox(X2,Y2,W,H)),
    DX is X2-X1,
    DY is Y2-Y1.
