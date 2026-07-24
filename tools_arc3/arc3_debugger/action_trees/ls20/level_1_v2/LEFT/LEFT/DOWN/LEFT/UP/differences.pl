% differences.pl
% Observed transition: action5 --ACTION1--> action6.

added_object(_) :-
    fail.

removed_object(_) :-
    fail.

recolored_object(_, _, _) :-
    fail.

moved_object(bottom_center_gate,
             box(19,45,5,5),
             box(19,40,5,5),
             delta(0,-5)).
moved_object(gate_gray_header,
             box(19,45,5,2),
             box(19,40,5,2),
             delta(0,-5)).
moved_object(gate_burgundy_panel,
             box(19,47,5,3),
             box(19,42,5,3),
             delta(0,-5)).

resized_object(fortress_lower_bridge,
               size(30,5),
               size(35,5)).
resized_object(green_status_block,
               size(4,2),
               size(5,2)).
resized_object(bottom_status_track,
               size(38,2),
               size(37,2)).

changed_object(bottom_center_gate,
               bounding_box,
               change(box(19,45,5,5), box(19,40,5,5))).
changed_object(bottom_center_gate,
               center,
               change(point(21,47), point(21,42))).
changed_object(bottom_center_gate,
               state,
               added(raised)).

changed_object(gate_gray_header,
               bounding_box,
               change(box(19,45,5,2), box(19,40,5,2))).
changed_object(gate_burgundy_panel,
               bounding_box,
               change(box(19,47,5,3), box(19,42,5,3))).

changed_object(fortress_lower_bridge,
               bounding_box,
               change(box(24,45,30,5), box(19,45,35,5))).
changed_object(fortress_lower_bridge,
               component_box,
               change(box(24,45,30,5), box(19,45,35,5))).

changed_object(fortress_main_body,
               component_boxes,
               change(
                   [box(14,25,40,5),
                    box(14,30,15,10),
                    box(34,30,20,20),
                    box(19,40,5,5),
                    box(24,45,30,5)],
                   [box(14,25,40,5),
                    box(14,30,15,10),
                    box(34,30,20,20),
                    box(19,45,35,5)])).
changed_object(fortress_main_body,
               occupied_region,
               extended_into(box(19,45,5,5))).
changed_object(green_fortress,
               occupied_region,
               extended_into(box(19,45,5,5))).

changed_object(green_status_block,
               bounding_box,
               change(box(13,61,4,2), box(13,61,5,2))).
changed_object(green_status_block,
               occupied_region,
               extended_into(box(17,61,1,2))).

changed_object(bottom_status_track,
               bounding_box,
               change(box(17,61,38,2), box(18,61,37,2))).
changed_object(bottom_status_track,
               occupied_region,
               removed_from(box(17,61,1,2))).
changed_object(bottom_status_track,
               center,
               added(point(36,62))).

changed_object(lower_left_symbol_card,
               center_annotation,
               change(point(5,57), point(5,58))).

relation_removed(left_of(bottom_center_gate, fortress_lower_bridge)).
relation_added(left_of(bottom_center_gate, fortress_inner_courtyard)).
relation_added(above(upper_chamber_frame, blue_black_player)).
relation_added(above(blue_black_player, bottom_center_gate)).
relation_added(above(bottom_center_gate, fortress_lower_bridge)).
relation_added(below(fortress_lower_bridge, bottom_center_gate)).

unchanged_object(yellow_playfield, intrinsic_visual_form).
unchanged_object(left_boundary_wall, intrinsic_visual_form).
unchanged_object(fortress_left_wing, intrinsic_visual_form).
unchanged_object(fortress_right_wing, intrinsic_visual_form).
unchanged_object(fortress_upper_stem, intrinsic_visual_form).
unchanged_object(fortress_inner_courtyard, intrinsic_visual_form).
unchanged_object(upper_chamber_frame, intrinsic_visual_form).
unchanged_object(upper_chamber_interior, intrinsic_visual_form).
unchanged_object(upper_burgundy_glyph, intrinsic_visual_form).
unchanged_object(blue_black_player, intrinsic_visual_form).
unchanged_object(player_black_core, intrinsic_visual_form).
unchanged_object(player_blue_tail, intrinsic_visual_form).
unchanged_object(lower_left_symbol_card, observed_pixels_and_bounding_box).
unchanged_object(lower_left_burgundy_glyph, intrinsic_visual_form).
unchanged_object(bottom_status_panel, intrinsic_visual_form).
unchanged_object(cyan_status_blocks, intrinsic_visual_form).

unchanged_color(yellow_playfield, yellow).
unchanged_color(left_boundary_wall, light_gray).
unchanged_color(green_fortress, green).
unchanged_color(fortress_main_body, green).
unchanged_color(fortress_left_wing, green).
unchanged_color(fortress_right_wing, green).
unchanged_color(fortress_lower_bridge, green).
unchanged_color(fortress_upper_stem, green).
unchanged_color(fortress_inner_courtyard, yellow).
unchanged_color(upper_chamber_frame, green).
unchanged_color(upper_chamber_interior, light_gray).
unchanged_color(upper_burgundy_glyph, burgundy).
unchanged_color(blue_black_player, [blue,black]).
unchanged_color(player_black_core, black).
unchanged_color(player_blue_tail, blue).
unchanged_color(bottom_center_gate, [light_gray,burgundy]).
unchanged_color(gate_gray_header, light_gray).
unchanged_color(gate_burgundy_panel, burgundy).
unchanged_color(lower_left_symbol_card, light_gray).
unchanged_color(lower_left_burgundy_glyph, burgundy).
unchanged_color(bottom_status_panel, light_gray).
unchanged_color(bottom_status_track, dark_gray).
unchanged_color(green_status_block, green).
unchanged_color(cyan_status_blocks, cyan).

observed_transition(action5, action6, action('ACTION1', {})).

action_effect(action('ACTION1', {}),
              observed(moved_up(bottom_center_gate, 5))).
action_effect(action('ACTION1', {}),
              observed(moved_up(gate_gray_header, 5))).
action_effect(action('ACTION1', {}),
              observed(moved_up(gate_burgundy_panel, 5))).
action_effect(action('ACTION1', {}),
              observed(extended_left(fortress_lower_bridge, 5))).
action_effect(action('ACTION1', {}),
              observed(increased_width(green_status_block, 1))).
action_effect(action('ACTION1', {}),
              observed(decreased_width_from_left(bottom_status_track, 1))).

hypothesized_action_effect(action('ACTION1', {}),
                           raises(bottom_center_gate)).
hypothesized_action_effect(action('ACTION1', {}),
                           advances(bottom_status_panel)).
hypothesized_action_effect(action('ACTION1', {}),
                           fills_vacated_gate_area_with(fortress_lower_bridge)).
