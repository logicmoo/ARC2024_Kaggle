observation(object_correspondence(canvas, canvas)).
observation(object_correspondence(background, background)).
observation(object_correspondence(left_gray_strip, left_sidebar)).
observation(object_correspondence(main_structure, main_green_structure)).
observation(object_correspondence(top_panel, portal_panel)).
observation(object_correspondence(top_glyph, portal_glyph)).
observation(object_correspondence(player_marker, player)).
observation(object_correspondence(player_black_part, player_black_part)).
observation(object_correspondence(player_blue_part, player_blue_part)).
observation(object_correspondence(goal_marker, goal)).
observation(object_correspondence(goal_gray_part, goal_gray_part)).
observation(object_correspondence(goal_maroon_part, goal_burgundy_part)).
observation(object_correspondence(lower_left_panel, lower_left_panel)).
observation(object_correspondence(lower_left_glyph, lower_left_glyph)).
observation(object_correspondence(bottom_toolbar, status_tray)).
observation(object_correspondence(toolbar_green_indicator, status_green_segment)).
observation(object_correspondence(toolbar_dark_track, status_dark_segment)).
observation(object_correspondence(toolbar_cyan_1, status_blue_segment_1)).
observation(object_correspondence(toolbar_cyan_2, status_blue_segment_2)).
observation(object_correspondence(toolbar_cyan_3, status_blue_segment_3)).

observation(renamed_object(left_gray_strip, left_sidebar)).
observation(renamed_object(main_structure, main_green_structure)).
observation(renamed_object(top_panel, portal_panel)).
observation(renamed_object(top_glyph, portal_glyph)).
observation(renamed_object(player_marker, player)).
observation(renamed_object(goal_marker, goal)).
observation(renamed_object(goal_maroon_part, goal_burgundy_part)).
observation(renamed_object(bottom_toolbar, status_tray)).
observation(renamed_object(toolbar_green_indicator, status_green_segment)).
observation(renamed_object(toolbar_dark_track, status_dark_segment)).
observation(renamed_object(toolbar_cyan_1, status_blue_segment_1)).
observation(renamed_object(toolbar_cyan_2, status_blue_segment_2)).
observation(renamed_object(toolbar_cyan_3, status_blue_segment_3)).

observation(removed_object(inner_cavity)).
observation(no_added_objects).

observation(moved_object(goal_marker, goal,
                         bbox(340,400,50,50),
                         bbox(340,450,50,50))).
observation(moved_object(goal_gray_part, goal_gray_part,
                         bbox(340,400,50,20),
                         bbox(340,450,50,20))).
observation(moved_object(goal_maroon_part, goal_burgundy_part,
                         bbox(340,420,50,30),
                         bbox(340,470,50,30))).

observation(displacement(goal, 0, 50)).
observation(displacement(goal_gray_part, 0, 50)).
observation(displacement(goal_burgundy_part, 0, 50)).

observation(recolored_object(portal_glyph, maroon, burgundy)).
observation(recolored_object(goal_burgundy_part, maroon, burgundy)).
observation(recolored_object(lower_left_glyph, maroon, burgundy)).

observation(color_value_change(maroon,
                               rgb(135,12,37),
                               rgb(128,0,32))).
observation(color_value_change(maroon, '#870c25', '#800020')).
observation(color_alias(cyan, light_blue, '#7fdbff')).

observation(resized_object(status_green_segment,
                           size(10,20),
                           size(20,20))).
observation(resized_object(status_dark_segment,
                           size(410,20),
                           size(400,20))).

observation(bbox_change(toolbar_green_indicator, status_green_segment,
                        bbox(130,610,10,20),
                        bbox(130,610,20,20))).
observation(bbox_change(toolbar_dark_track, status_dark_segment,
                        bbox(140,610,410,20),
                        bbox(150,610,400,20))).

observation(changed_object(goal_marker, goal,
                           [moved(delta(0,50))])).
observation(changed_object(goal_gray_part, goal_gray_part,
                           [moved(delta(0,50))])).
observation(changed_object(goal_maroon_part, goal_burgundy_part,
                           [moved(delta(0,50)),
                            recolored(maroon,burgundy)])).
observation(changed_object(top_glyph, portal_glyph,
                           [recolored(maroon,burgundy),
                            connectivity_descriptor(disconnected,connected)])).
observation(changed_object(lower_left_glyph, lower_left_glyph,
                           [recolored(maroon,burgundy),
                            connectivity_descriptor(disconnected,connected)])).
observation(changed_object(toolbar_green_indicator, status_green_segment,
                           [resized(size(10,20),size(20,20)),
                            right_edge_shifted(10)])).
observation(changed_object(toolbar_dark_track, status_dark_segment,
                           [left_edge_shifted(10),
                            resized(size(410,20),size(400,20))])).
observation(changed_object(main_structure, main_green_structure,
                           [geometry_decomposition_changed,
                            underlay_model_changed])).
observation(changed_object(inner_cavity, none,
                           [explicit_object_removed,
                            cavity_remains_visually_implicit])).

observation(unchanged_object(canvas, canvas)).
observation(unchanged_object(background, background)).
observation(unchanged_object(left_gray_strip, left_sidebar)).
observation(unchanged_object(top_panel, portal_panel)).
observation(unchanged_object(player_marker, player)).
observation(unchanged_object(player_black_part, player_black_part)).
observation(unchanged_object(player_blue_part, player_blue_part)).
observation(unchanged_object(lower_left_panel, lower_left_panel)).
observation(unchanged_object(bottom_toolbar, status_tray)).
observation(unchanged_object(toolbar_cyan_1, status_blue_segment_1)).
observation(unchanged_object(toolbar_cyan_2, status_blue_segment_2)).
observation(unchanged_object(toolbar_cyan_3, status_blue_segment_3)).

observation(unchanged_geometry(top_glyph, portal_glyph)).
observation(unchanged_geometry(player_marker, player)).
observation(unchanged_geometry(player_black_part, player_black_part)).
observation(unchanged_geometry(player_blue_part, player_blue_part)).
observation(unchanged_geometry(lower_left_glyph, lower_left_glyph)).
observation(unchanged_geometry(bottom_toolbar, status_tray)).
observation(unchanged_geometry(toolbar_cyan_1, status_blue_segment_1)).
observation(unchanged_geometry(toolbar_cyan_2, status_blue_segment_2)).
observation(unchanged_geometry(toolbar_cyan_3, status_blue_segment_3)).

observation(region_exposed_by_motion(goal,
                                     rectangle(340,400,50,50),
                                     green)).
observation(region_covered_by_motion(goal,
                                     rectangle(340,450,50,50),
                                     [gray,burgundy])).

observation(action_effect(observed_transition,
                          move(goal,delta(0,50)))).
observation(action_effect(observed_transition,
                          expose(rectangle(340,400,50,50),green))).
observation(action_effect(observed_transition,
                          cover(rectangle(340,450,50,50),
                                vertically_split(gray,burgundy)))).
observation(action_effect(observed_transition,
                          expand(status_green_segment,right,10))).
observation(action_effect(observed_transition,
                          contract(status_dark_segment,left,10))).

observation(representation_change(bbox_format,
                                  x_y_width_height,
                                  inclusive_corners)).
observation(representation_change(turtle_fill_instruction,
                                  set_cell,
                                  fill_rect)).
observation(representation_change(layer_predicate,
                                  layer,
                                  z_order)).
observation(representation_change(color_name, cyan, light_blue)).
observation(representation_change(color_name, maroon, burgundy)).

observation(descriptor_conflict(portal_glyph,
                                current_connected_claim,
                                geometry_has_two_components)).
observation(descriptor_conflict(lower_left_glyph,
                                current_connected_claim,
                                geometry_has_two_components)).

hypothesis(action_effect(previous_action,
                         advance_goal_down_one_goal_height)).
hypothesis(action_effect(previous_action,
                         increment_status_progress_by_one_ten_pixel_unit)).
hypothesis(coupled_change(goal_motion,
                          status_progress_increment)).
hypothesis(representation_only_change(main_structure,
                                      geometry_decomposition_changed)).
hypothesis(representation_only_removal(inner_cavity)).
hypothesis(extraction_error(portal_glyph, connected)).
hypothesis(extraction_error(lower_left_glyph, connected)).
hypothesis(color_change_may_include_palette_normalization(
               maroon, burgundy)).

object_correspondence(Previous, Current) :-
    observation(object_correspondence(Previous, Current)).

renamed_object(Previous, Current) :-
    observation(renamed_object(Previous, Current)).

added_object(Object) :-
    observation(added_object(Object)).

removed_object(Object) :-
    observation(removed_object(Object)).

changed_object(Previous, Current, Changes) :-
    observation(changed_object(Previous, Current, Changes)).

moved_object(Previous, Current, From, To) :-
    observation(moved_object(Previous, Current, From, To)).

recolored_object(Object, PreviousColor, CurrentColor) :-
    observation(recolored_object(Object, PreviousColor, CurrentColor)).

resized_object(Object, PreviousSize, CurrentSize) :-
    observation(resized_object(Object, PreviousSize, CurrentSize)).

unchanged_object(Previous, Current) :-
    observation(unchanged_object(Previous, Current)).

unchanged_geometry(Previous, Current) :-
    observation(unchanged_geometry(Previous, Current)).

action_effect(Action, Effect) :-
    observation(action_effect(Action, Effect)).
action_effect(Action, Effect) :-
    hypothesis(action_effect(Action, Effect)).

observed_action_effect(Action, Effect) :-
    observation(action_effect(Action, Effect)).

hypothesized_action_effect(Action, Effect) :-
    hypothesis(action_effect(Action, Effect)).

difference_status(Term, observed) :-
    observation(Term).
difference_status(Term, hypothesized) :-
    hypothesis(Term).

pure_translation(Previous, Current, DX, DY) :-
    moved_object(Previous, Current,
                 bbox(X1,Y1,W,H),
                 bbox(X2,Y2,W,H)),
    DX is X2-X1,
    DY is Y2-Y1.

substantive_change(Previous, Current) :-
    changed_object(Previous, Current, _).

representation_only_change(Previous, Current) :-
    hypothesis(representation_only_change(
        Previous, geometry_decomposition_changed)),
    object_correspondence(Previous, Current).
