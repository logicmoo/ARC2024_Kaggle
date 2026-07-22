state(previous).
state(current).

coordinate_units(previous, pixel).
coordinate_units(current, grid).
bbox_convention(previous, origin_width_height).
bbox_convention(current, inclusive_corners).
render_scale(current, 10).

object_correspondence(background_yellow, background_yellow, exact).
object_correspondence(left_gray_strip, left_wall, exact).
object_correspondence(main_green_structure, green_terrain, structural).
object_correspondence(top_gray_inset, top_panel, exact).
object_correspondence(top_maroon_glyph, top_glyph, exact).
object_correspondence(player_black, player_black, exact).
object_correspondence(player_blue, player_blue, exact).
object_correspondence(lower_gray_gate, door_cap, exact).
object_correspondence(lower_maroon_gate, door_body, exact).
object_correspondence(lower_left_gray_card, lower_icon_panel, exact).
object_correspondence(lower_left_maroon_glyph, lower_glyph, exact).
object_correspondence(bottom_control_panel, hud_panel, exact).
object_correspondence(bottom_dark_slot, hud_dark_bar, partial).
object_correspondence(bottom_button_1, hud_blue_slot_1, exact).
object_correspondence(bottom_button_2, hud_blue_slot_2, exact).
object_correspondence(bottom_button_3, hud_blue_slot_3, exact).

renamed_object(left_gray_strip, left_wall).
renamed_object(main_green_structure, green_terrain).
renamed_object(top_gray_inset, top_panel).
renamed_object(top_maroon_glyph, top_glyph).
renamed_object(lower_gray_gate, door_cap).
renamed_object(lower_maroon_gate, door_body).
renamed_object(lower_left_gray_card, lower_icon_panel).
renamed_object(lower_left_maroon_glyph, lower_glyph).
renamed_object(bottom_control_panel, hud_panel).
renamed_object(bottom_dark_slot, hud_dark_bar).
renamed_object(bottom_button_1, hud_blue_slot_1).
renamed_object(bottom_button_2, hud_blue_slot_2).
renamed_object(bottom_button_3, hud_blue_slot_3).

retagged_object(left_gray_strip, sidebar, boundary).
retagged_object(main_green_structure, connected_platform, connected_terrain).
retagged_object(top_maroon_glyph, glyph, symbol).
retagged_object(player_black, avatar_component, player_component).
retagged_object(player_blue, avatar_component, player_component).
retagged_object(lower_gray_gate, gate_component, portal_component).
retagged_object(lower_maroon_gate, gate_component, portal_component).
retagged_object(lower_left_gray_card, card, inset_panel).
retagged_object(lower_left_maroon_glyph, glyph, symbol).
retagged_object(bottom_control_panel, control_panel, user_interface_panel).
retagged_object(bottom_dark_slot, display_slot, status_bar).
retagged_object(bottom_button_1, button, status_slot).
retagged_object(bottom_button_2, button, status_slot).
retagged_object(bottom_button_3, button, status_slot).

added_object(hud_green_marker).

removed_object(Object) :-
    observation(object_removed(Object)).

changed_object(lower_gray_gate, door_cap,
    [renamed(lower_gray_gate, door_cap),
     retagged(gate_component, portal_component),
     position_changed(pixel_bbox(340,450,50,20),
                      pixel_bbox(290,450,50,20))]).

changed_object(lower_maroon_gate, door_body,
    [renamed(lower_maroon_gate, door_body),
     retagged(gate_component, portal_component),
     position_changed(pixel_bbox(340,470,50,30),
                      pixel_bbox(290,470,50,30))]).

changed_object(main_green_structure, green_terrain,
    [renamed(main_green_structure, green_terrain),
     retagged(connected_platform, connected_terrain),
     visible_geometry_changed,
     vacated_portal_region_filled_green,
     destination_portal_region_occluded]).

changed_object(bottom_dark_slot, hud_dark_bar,
    [renamed(bottom_dark_slot, hud_dark_bar),
     retagged(display_slot, status_bar),
     left_edge_changed(130,140),
     width_changed(420,410),
     leading_region_recolored(dark_gray,green)]).

moved_object(lower_gray_gate, door_cap,
    position(340,450), position(290,450)).
moved_object(lower_maroon_gate, door_body,
    position(340,470), position(290,470)).

movement_delta(lower_gray_gate, door_cap, -50, 0).
movement_delta(lower_maroon_gate, door_body, -50, 0).
movement_delta_grid(lower_gray_gate, door_cap, -5, 0).
movement_delta_grid(lower_maroon_gate, door_body, -5, 0).

resized_object(bottom_dark_slot, hud_dark_bar,
    size(420,20), size(410,20)).

recolored_object(hud_green_marker, dark_gray, green).

recolored_region(
    pixel_rect(130,610,10,20),
    dark_gray,
    green).

region_replaced(
    grid_rect(29,45,5,2),
    green,
    light_gray).
region_replaced(
    grid_rect(29,47,5,3),
    green,
    maroon).
region_replaced(
    grid_rect(34,45,5,2),
    light_gray,
    green).
region_replaced(
    grid_rect(34,47,5,3),
    maroon,
    green).
region_replaced(
    grid_rect(13,61,1,2),
    dark_gray,
    green).

unchanged_object(background_yellow, background_yellow).
unchanged_object(left_gray_strip, left_wall).
unchanged_object(top_gray_inset, top_panel).
unchanged_object(top_maroon_glyph, top_glyph).
unchanged_object(player_black, player_black).
unchanged_object(player_blue, player_blue).
unchanged_object(lower_left_gray_card, lower_icon_panel).
unchanged_object(lower_left_maroon_glyph, lower_glyph).
unchanged_object(bottom_control_panel, hud_panel).
unchanged_object(bottom_button_1, hud_blue_slot_1).
unchanged_object(bottom_button_2, hud_blue_slot_2).
unchanged_object(bottom_button_3, hud_blue_slot_3).

unchanged_property(background_yellow, color(yellow)).
unchanged_property(left_gray_strip, color(light_gray)).
unchanged_property(main_green_structure, color(green)).
unchanged_property(top_gray_inset, color(light_gray)).
unchanged_property(top_maroon_glyph, color(maroon)).
unchanged_property(player_black, color(black)).
unchanged_property(player_blue, color(blue)).
unchanged_property(lower_gray_gate, color(light_gray)).
unchanged_property(lower_maroon_gate, color(maroon)).
unchanged_property(lower_left_gray_card, color(light_gray)).
unchanged_property(lower_left_maroon_glyph, color(maroon)).
unchanged_property(bottom_control_panel, color(light_gray)).
unchanged_property(bottom_button_1, color(light_blue)).
unchanged_property(bottom_button_2, color(light_blue)).
unchanged_property(bottom_button_3, color(light_blue)).

unchanged_property(player_black,
    pixel_bbox(210,310,20,20)).
unchanged_property(player_blue,
    pixel_bbox(200,320,20,20)).
unchanged_property(top_gray_inset,
    pixel_bbox(330,90,70,70)).
unchanged_property(top_maroon_glyph,
    pixel_bbox(350,110,30,30)).
unchanged_property(lower_left_gray_card,
    pixel_bbox(10,530,100,100)).
unchanged_property(lower_left_maroon_glyph,
    pixel_bbox(30,550,60,60)).
unchanged_property(bottom_control_panel,
    pixel_bbox(120,600,520,40)).

composite_correspondence(player_avatar,
    [player_black,player_blue],
    [player_black,player_blue]).
composite_correspondence(lower_gate,
    [lower_gray_gate,lower_maroon_gate],
    [door_cap,door_body]).
composite_correspondence(top_marker,
    [top_gray_inset,top_maroon_glyph],
    [top_panel,top_glyph]).
composite_correspondence(lower_left_marker,
    [lower_left_gray_card,lower_left_maroon_glyph],
    [lower_icon_panel,lower_glyph]).
composite_correspondence(bottom_ui,
    [bottom_control_panel,bottom_dark_slot,
     bottom_button_1,bottom_button_2,bottom_button_3],
    [hud_panel,hud_green_marker,hud_dark_bar,
     hud_blue_slot_1,hud_blue_slot_2,hud_blue_slot_3]).

observation(added_object(hud_green_marker)).
observation(moved_object(lower_gray_gate, door_cap,
    position(340,450), position(290,450))).
observation(moved_object(lower_maroon_gate, door_body,
    position(340,470), position(290,470))).
observation(resized_object(bottom_dark_slot, hud_dark_bar,
    size(420,20), size(410,20))).
observation(recolored_region(
    pixel_rect(130,610,10,20), dark_gray, green)).
observation(portal_shift(left,5,grid_cells)).
observation(no_avatar_motion).
observation(no_marker_motion).
observation(no_button_change).

hypothesis(action_effect(unknown_action,
    move(lower_gate,left,5,grid_cells)), high).
hypothesis(action_effect(unknown_action,
    expose_terrain_at(grid_rect(34,45,5,5))), high).
hypothesis(action_effect(unknown_action,
    cover_terrain_at(grid_rect(29,45,5,5))), high).
hypothesis(action_effect(unknown_action,
    activate_status_marker(hud_green_marker)), medium).
hypothesis(action_effect(unknown_action,
    advance_portal_or_progress_state), medium).

action_effect(Action, Effect) :-
    hypothesis(action_effect(Action, Effect), _).

observed_difference(Difference) :-
    observation(Difference).

hypothesized_difference(Difference, Confidence) :-
    hypothesis(Difference, Confidence).
