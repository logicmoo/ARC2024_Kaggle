previous_object(background_yellow).
previous_object(left_wall).
previous_object(green_terrain).
previous_object(top_panel).
previous_object(top_glyph).
previous_object(player_blue).
previous_object(player_black).
previous_object(door_cap).
previous_object(door_body).
previous_object(lower_icon_panel).
previous_object(lower_glyph).
previous_object(hud_panel).
previous_object(hud_green_marker).
previous_object(hud_dark_bar).
previous_object(hud_blue_slot_1).
previous_object(hud_blue_slot_2).
previous_object(hud_blue_slot_3).

current_object(background_1).
current_object(left_wall_1).
current_object(structure_1).
current_object(chamber_1).
current_object(chamber_glyph_1).
current_object(player_1).
current_object(portal_cap_1).
current_object(portal_1).
current_object(control_panel_1).
current_object(control_glyph_1).
current_object(status_panel_1).
current_object(status_green_1).
current_object(status_bar_1).
current_object(status_slot_1).
current_object(status_slot_2).
current_object(status_slot_3).

observed(object_correspondence(background_yellow, background_1)).
observed(object_correspondence(left_wall, left_wall_1)).
observed(object_correspondence(green_terrain, structure_1)).
observed(object_correspondence(top_panel, chamber_1)).
observed(object_correspondence(top_glyph, chamber_glyph_1)).
observed(object_correspondence(player_blue, player_1)).
observed(object_correspondence(player_black, player_1)).
observed(object_correspondence(door_cap, portal_cap_1)).
observed(object_correspondence(door_body, portal_1)).
observed(object_correspondence(lower_icon_panel, control_panel_1)).
observed(object_correspondence(lower_glyph, control_glyph_1)).
observed(object_correspondence(hud_panel, status_panel_1)).
observed(object_correspondence(hud_green_marker, status_green_1)).
observed(object_correspondence(hud_dark_bar, status_bar_1)).
observed(object_correspondence(hud_blue_slot_1, status_slot_1)).
observed(object_correspondence(hud_blue_slot_2, status_slot_2)).
observed(object_correspondence(hud_blue_slot_3, status_slot_3)).

object_correspondence(Previous, Current) :-
    observed(object_correspondence(Previous, Current)).

added_object(Current) :-
    current_object(Current),
    \+ object_correspondence(_, Current).

removed_object(Previous) :-
    previous_object(Previous),
    \+ object_correspondence(Previous, _).

observed(unchanged_object(background_yellow, background_1)).
observed(unchanged_object(left_wall, left_wall_1)).
observed(unchanged_object(top_panel, chamber_1)).
observed(unchanged_object(lower_icon_panel, control_panel_1)).
observed(unchanged_object(hud_panel, status_panel_1)).
observed(unchanged_object(hud_blue_slot_1, status_slot_1)).
observed(unchanged_object(hud_blue_slot_2, status_slot_2)).
observed(unchanged_object(hud_blue_slot_3, status_slot_3)).

unchanged_object(Previous, Current) :-
    observed(unchanged_object(Previous, Current)).

observed(unchanged_component(player_black, player_1, black)).
observed(unchanged_component(player_blue, player_1, blue)).
observed(representation_change([player_black, player_blue], player_1,
                               merged_multicolor_object)).

observed(changed_object(green_terrain, structure_1,
                        added_region(bbox(290,450,339,499)))).
observed(changed_object(green_terrain, structure_1,
                        component_decomposition_changed)).
observed(changed_object(door_cap, portal_cap_1,
                        displacement(-50,0))).
observed(changed_object(door_body, portal_1,
                        displacement(-50,0))).
observed(changed_object(hud_green_marker, status_green_1,
                        bbox_change(bbox(130,610,139,629),
                                    bbox(130,610,149,629)))).
observed(changed_object(hud_dark_bar, status_bar_1,
                        bbox_change(bbox(140,610,549,629),
                                    bbox(150,610,549,629)))).
observed(changed_object(top_glyph, chamber_glyph_1,
                        palette_value_change(maroon))).
observed(changed_object(door_body, portal_1,
                        palette_value_change(maroon))).
observed(changed_object(lower_glyph, control_glyph_1,
                        palette_value_change(maroon))).

changed_object(Previous, Current, Change) :-
    observed(changed_object(Previous, Current, Change)).

observed(moved_object(door_cap, portal_cap_1, -50, 0)).
observed(moved_object(door_body, portal_1, -50, 0)).

moved_object(Previous, Current, DeltaX, DeltaY) :-
    observed(moved_object(Previous, Current, DeltaX, DeltaY)).

observed(resized_object(hud_green_marker, status_green_1,
                        size_change(size(10,20), size(20,20)))).
observed(resized_object(hud_dark_bar, status_bar_1,
                        size_change(size(410,20), size(400,20)))).

resized_object(Previous, Current, Change) :-
    observed(resized_object(Previous, Current, Change)).

observed(recolored_object(top_glyph, chamber_glyph_1,
                          color_change(rgb(135,12,45),
                                       rgb(133,20,75)))).
observed(recolored_object(door_body, portal_1,
                          color_change(rgb(135,12,45),
                                       rgb(133,20,75)))).
observed(recolored_object(lower_glyph, control_glyph_1,
                          color_change(rgb(135,12,45),
                                       rgb(133,20,75)))).

recolored_object(Previous, Current, Change) :-
    observed(recolored_object(Previous, Current, Change)).

observed(palette_change(maroon,
                        rgb(135,12,45),
                        rgb(133,20,75))).

observed(palette_alias(light_gray, gray, rgb(170,170,170))).
observed(palette_alias(light_blue, cyan, rgb(127,219,255))).

observed(bbox_transition(door_cap,
                         bbox(290,450,339,469),
                         portal_cap_1,
                         bbox(240,450,289,469))).
observed(bbox_transition(door_body,
                         bbox(290,470,339,499),
                         portal_1,
                         bbox(240,470,289,499))).
observed(bbox_transition(hud_green_marker,
                         bbox(130,610,139,629),
                         status_green_1,
                         bbox(130,610,149,629))).
observed(bbox_transition(hud_dark_bar,
                         bbox(140,610,549,629),
                         status_bar_1,
                         bbox(150,610,549,629))).

observed(pixel_region_change(bbox(240,450,289,469),
                             green,
                             gray)).
observed(pixel_region_change(bbox(240,470,289,499),
                             green,
                             maroon)).
observed(pixel_region_change(bbox(290,450,339,469),
                             gray,
                             green)).
observed(pixel_region_change(bbox(290,470,339,499),
                             maroon,
                             green)).
observed(pixel_region_change(bbox(140,610,149,629),
                             dark_gray,
                             green)).

observed(action_effect(state_transition,
                       portal_pair_displaced(-50,0))).
observed(action_effect(state_transition,
                       status_boundary_shifted(10))).
observed(action_effect(state_transition,
                       green_structure_extended(bbox(290,450,339,499)))).

action_effect(Action, Effect) :-
    observed(action_effect(Action, Effect)).
action_effect(Action, Effect) :-
    hypothesis(action_effect(Action, Effect), _).

hypothesis(action_effect(unknown_action,
                         move_portal_left(one_portal_width)),
           confidence(high)).
hypothesis(action_effect(unknown_action,
                         increase_green_status_by(one_cell)),
           confidence(medium)).
hypothesis(linked_changes(portal_pair_displaced(-50,0),
                          status_boundary_shifted(10)),
           confidence(low)).
hypothesis(terrain_update_fills_previous_portal_location,
                           bbox(290,450,339,499)),
           confidence(high)).

change_kind(Previous, Current, moved) :-
    moved_object(Previous, Current, _, _).
change_kind(Previous, Current, resized) :-
    resized_object(Previous, Current, _).
change_kind(Previous, Current, recolored) :-
    recolored_object(Previous, Current, _).
change_kind(Previous, Current, representation_only) :-
    object_correspondence(Previous, Current),
    unchanged_object(Previous, Current).

physically_added_object(Object) :-
    added_object(Object).

physically_removed_object(Object) :-
    removed_object(Object).
