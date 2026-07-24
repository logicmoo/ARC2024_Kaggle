:- discontiguous previous_object/1.
:- discontiguous current_object/1.
:- discontiguous correspondence/2.
:- discontiguous changed_object/3.
:- discontiguous unchanged_object/2.
:- discontiguous observation/1.
:- discontiguous hypothesis/2.

previous_object(background).
previous_object(left_sidebar).
previous_object(main_green_structure).
previous_object(top_panel).
previous_object(top_burgundy_glyph).
previous_object(avatar).
previous_object(avatar_black).
previous_object(avatar_navy).
previous_object(avatar_blue).
previous_object(lower_connector_gray).
previous_object(lower_connector_burgundy).
previous_object(lower_left_panel).
previous_object(lower_left_burgundy_glyph).
previous_object(status_tray).
previous_object(status_green_segment).
previous_object(status_dark_segment).
previous_object(status_blue_segment_1).
previous_object(status_blue_segment_2).
previous_object(status_blue_segment_3).

current_object(background).
current_object(left_sidebar).
current_object(main_structure).
current_object(upper_display).
current_object(upper_glyph).
current_object(avatar).
current_object(lower_barrier_gray).
current_object(lower_barrier_maroon).
current_object(lower_icon_panel).
current_object(lower_icon_glyph).
current_object(status_panel).
current_object(status_green).
current_object(status_dark).
current_object(status_light_1).
current_object(status_light_2).
current_object(status_light_3).

correspondence(background,background).
correspondence(left_sidebar,left_sidebar).
correspondence(main_green_structure,main_structure).
correspondence(top_panel,upper_display).
correspondence(top_burgundy_glyph,upper_glyph).
correspondence(avatar,avatar).
correspondence(lower_connector_gray,lower_barrier_gray).
correspondence(lower_connector_burgundy,lower_barrier_maroon).
correspondence(lower_left_panel,lower_icon_panel).
correspondence(lower_left_burgundy_glyph,lower_icon_glyph).
correspondence(status_tray,status_panel).
correspondence(status_green_segment,status_green).
correspondence(status_dark_segment,status_dark).
correspondence(status_blue_segment_1,status_light_1).
correspondence(status_blue_segment_2,status_light_2).
correspondence(status_blue_segment_3,status_light_3).

renamed_object(main_green_structure,main_structure).
renamed_object(top_panel,upper_display).
renamed_object(top_burgundy_glyph,upper_glyph).
renamed_object(lower_connector_gray,lower_barrier_gray).
renamed_object(lower_connector_burgundy,lower_barrier_maroon).
renamed_object(lower_left_panel,lower_icon_panel).
renamed_object(lower_left_burgundy_glyph,lower_icon_glyph).
renamed_object(status_tray,status_panel).
renamed_object(status_green_segment,status_green).
renamed_object(status_dark_segment,status_dark).
renamed_object(status_blue_segment_1,status_light_1).
renamed_object(status_blue_segment_2,status_light_2).
renamed_object(status_blue_segment_3,status_light_3).

representation_merged_into(avatar_black,avatar).
representation_merged_into(avatar_navy,avatar).
representation_merged_into(avatar_blue,avatar).

color_alias(burgundy,maroon).
same_rgb_color(burgundy,maroon,rgb(133,20,75)).

bbox_convention_change(half_open_xywh,inclusive_xyxy).

normalized_bbox(previous,background,0,0,640,640).
normalized_bbox(current,background,0,0,640,640).
normalized_bbox(previous,left_sidebar,0,0,40,520).
normalized_bbox(current,left_sidebar,0,0,40,520).
normalized_bbox(previous,main_green_structure,140,80,540,500).
normalized_bbox(current,main_structure,140,80,540,500).
normalized_bbox(previous,top_panel,330,90,400,160).
normalized_bbox(current,upper_display,330,90,400,160).
normalized_bbox(previous,top_burgundy_glyph,350,110,380,140).
normalized_bbox(current,upper_glyph,350,110,380,140).
normalized_bbox(previous,avatar,200,310,230,340).
normalized_bbox(current,avatar,200,310,230,340).
normalized_bbox(previous,lower_connector_gray,190,450,240,470).
normalized_bbox(current,lower_barrier_gray,190,400,240,420).
normalized_bbox(previous,lower_connector_burgundy,190,470,240,500).
normalized_bbox(current,lower_barrier_maroon,190,420,240,450).
normalized_bbox(previous,lower_left_panel,10,530,110,630).
normalized_bbox(current,lower_icon_panel,10,530,110,630).
normalized_bbox(previous,lower_left_burgundy_glyph,30,550,90,610).
normalized_bbox(current,lower_icon_glyph,30,550,90,610).
normalized_bbox(previous,status_tray,120,600,640,640).
normalized_bbox(current,status_panel,120,600,640,640).
normalized_bbox(previous,status_green_segment,130,610,170,630).
normalized_bbox(current,status_green,130,610,180,630).
normalized_bbox(previous,status_dark_segment,170,610,550,630).
normalized_bbox(current,status_dark,180,610,550,630).
normalized_bbox(previous,status_blue_segment_1,560,610,580,630).
normalized_bbox(current,status_light_1,560,610,580,630).
normalized_bbox(previous,status_blue_segment_2,590,610,610,630).
normalized_bbox(current,status_light_2,590,610,610,630).
normalized_bbox(previous,status_blue_segment_3,620,610,640,630).
normalized_bbox(current,status_light_3,620,610,640,630).

unchanged_object(background,background).
unchanged_object(left_sidebar,left_sidebar).
unchanged_object(top_panel,upper_display).
unchanged_object(top_burgundy_glyph,upper_glyph).
unchanged_object(lower_left_panel,lower_icon_panel).
unchanged_object(lower_left_burgundy_glyph,lower_icon_glyph).
unchanged_object(status_tray,status_panel).
unchanged_object(status_blue_segment_1,status_light_1).
unchanged_object(status_blue_segment_2,status_light_2).
unchanged_object(status_blue_segment_3,status_light_3).

moved_object(lower_connector_gray,lower_barrier_gray,0,-50).
moved_object(lower_connector_burgundy,lower_barrier_maroon,0,-50).

recolored_object(avatar_navy,navy,blue).

resized_object(status_green_segment,size(40,20),size(50,20)).
resized_object(status_dark_segment,size(380,20),size(370,20)).

changed_object(
    main_green_structure,
    main_structure,
    relocated_region(rectangle(190,400,50,50),
                     rectangle(190,450,50,50))
).

changed_object(
    lower_connector_gray,
    lower_barrier_gray,
    bbox_change(box(190,450,240,470),
                box(190,400,240,420))
).

changed_object(
    lower_connector_burgundy,
    lower_barrier_maroon,
    bbox_change(box(190,470,240,500),
                box(190,420,240,450))
).

changed_object(
    avatar,
    avatar,
    cell_color_change(cell(20,32),navy,blue)
).

changed_object(
    status_green_segment,
    status_green,
    rectangle_change(rectangle(130,610,40,20),
                     rectangle(130,610,50,20))
).

changed_object(
    status_dark_segment,
    status_dark,
    rectangle_change(rectangle(170,610,380,20),
                     rectangle(180,610,370,20))
).

preserved_bbox(main_green_structure,main_structure).
preserved_bbox(avatar,avatar).
preserved_bbox(status_tray,status_panel).

preserved_right_edge(status_dark_segment,status_dark,550).
shared_boundary_change(status_green_segment,status_dark_segment,170,180).

added_green_region(rectangle(190,450,50,50)).
added_green_region(rectangle(170,610,10,20)).
removed_green_region(rectangle(190,400,50,50)).

added_maroon_region(rectangle(190,420,50,30)).
removed_maroon_region(rectangle(190,470,50,30)).

added_gray_region(rectangle(190,400,50,20)).
removed_gray_region(rectangle(190,450,50,20)).

removed_navy_region(rectangle(200,320,10,10)).
added_blue_region(rectangle(200,320,10,10)).

removed_dark_gray_region(rectangle(170,610,10,20)).

added_object(Object) :-
    current_object(Object),
    \+ correspondence(_,Object),
    \+ representation_merged_into(_,Object).

removed_object(Object) :-
    previous_object(Object),
    \+ correspondence(Object,_),
    \+ representation_merged_into(Object,_).

observation(moved_object(lower_connector_gray,lower_barrier_gray,0,-50)).
observation(moved_object(lower_connector_burgundy,lower_barrier_maroon,0,-50)).
observation(recolored_object(avatar_navy,navy,blue)).
observation(resized_object(status_green_segment,size(40,20),size(50,20))).
observation(resized_object(status_dark_segment,size(380,20),size(370,20))).
observation(added_green_region(rectangle(190,450,50,50))).
observation(removed_green_region(rectangle(190,400,50,50))).
observation(shared_boundary_change(status_green_segment,status_dark_segment,170,180)).
observation(no_semantic_object_addition).
observation(no_semantic_object_removal).

hypothesis(
    action_effect(barrier_toggle,
                  translated(barrier_pair,delta(0,-50))),
    high
).

hypothesis(
    action_effect(barrier_toggle,
                  exchanged_occupancy(
                      rectangle(190,400,50,50),
                      green_floor,
                      barrier_pair)),
    high
).

hypothesis(
    action_effect(player_action,
                  progress_increment(cells(1))),
    medium
).

hypothesis(
    action_effect(player_action,
                  status_boundary_shift(10)),
    medium
).

hypothesis(
    action_effect(player_action,
                  avatar_palette_normalization(navy,blue)),
    low
).

action_effect(Action,Effect) :-
    hypothesis(action_effect(Action,Effect),_).
