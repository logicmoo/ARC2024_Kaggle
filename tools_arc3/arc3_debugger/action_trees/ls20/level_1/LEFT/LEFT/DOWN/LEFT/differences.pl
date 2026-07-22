% Observed differences from action4 to action5.

added_object(green_status_block).

% No previously visible canonical object disappeared.
removed_object(_Object) :-
    fail.

% No surviving object changed its canonical color.
recolored_object(_Object, _OldColor, _NewColor) :-
    fail.

moved_object(bottom_center_gate,
             position(24, 45),
             position(19, 45),
             delta(-5, 0)).
moved_object(gate_gray_header,
             position(24, 45),
             position(19, 45),
             delta(-5, 0)).
moved_object(gate_burgundy_panel,
             position(24, 47),
             position(19, 47),
             delta(-5, 0)).

resized_object(fortress_lower_bridge,
               size(35, 5),
               size(30, 5)).
resized_object(bottom_status_track,
               size(42, 2),
               size(38, 2)).

changed_object(bottom_center_gate,
               bounding_box,
               change(box(24, 45, 5, 5),
                      box(19, 45, 5, 5))).
changed_object(bottom_center_gate,
               center,
               change(point(26, 47),
                      point(21, 47))).
changed_object(bottom_center_gate,
               shift_state,
               change(shifted_left,
                      shifted_far_left)).

changed_object(gate_gray_header,
               bounding_box,
               change(box(24, 45, 5, 2),
                      box(19, 45, 5, 2))).
changed_object(gate_burgundy_panel,
               bounding_box,
               change(box(24, 47, 5, 3),
                      box(19, 47, 5, 3))).

changed_object(fortress_lower_bridge,
               bounding_box,
               change(box(19, 45, 35, 5),
                      box(24, 45, 30, 5))).
changed_object(fortress_lower_bridge,
               geometry,
               change(gate_interrupted_horizontal_bar,
                      filled_horizontal_bar)).
changed_object(fortress_lower_bridge,
               component_boxes,
               change([box(19, 45, 5, 5),
                       box(29, 45, 25, 5)],
                      [box(24, 45, 30, 5)])).

changed_object(fortress_main_body,
               component_boxes,
               change([box(14, 25, 40, 5),
                       box(14, 30, 15, 10),
                       box(34, 30, 20, 20),
                       box(19, 40, 5, 10),
                       box(29, 45, 5, 5)],
                      [box(14, 25, 40, 5),
                       box(14, 30, 15, 10),
                       box(34, 30, 20, 20),
                       box(19, 40, 5, 5),
                       box(24, 45, 30, 5)])).
changed_object(green_fortress,
               occupied_shape,
               change(gate_gap_at_x_24_to_28,
                      gate_gap_at_x_19_to_23)).

changed_object(bottom_status_track,
               bounding_box,
               change(box(13, 61, 42, 2),
                      box(17, 61, 38, 2))).
changed_object(bottom_status_track,
               left_edge,
               change(13, 17)).
changed_object(bottom_status_panel,
               status_progress,
               change(no_green_block,
                      green_block_lit)).

relation_added(component_of(green_status_block, bottom_status_panel)).
relation_added(contains(bottom_status_panel, green_status_block)).
relation_added(overlays(green_status_block, bottom_status_panel)).
relation_added(adjacent(green_status_block, bottom_status_track)).
relation_added(left_of(green_status_block, bottom_status_track)).
relation_added(left_of(bottom_status_track, cyan_status_blocks)).
relation_added(left_of(bottom_center_gate, fortress_lower_bridge)).
relation_added(embedded_in(bottom_center_gate, green_fortress)).

relation_removed(embedded_in(bottom_center_gate, fortress_lower_bridge)).

observed_region_transition(
    rect(19, 45, 5, 5),
    green_fortress_cells,
    bottom_center_gate_cells).
observed_region_transition(
    rect(24, 45, 5, 5),
    bottom_center_gate_cells,
    green_fortress_cells).
observed_region_transition(
    rect(13, 61, 4, 2),
    bottom_status_track_cells,
    green_status_block_cells).

unchanged_object(yellow_playfield, intrinsic_visual_properties).
unchanged_object(left_boundary_wall, intrinsic_visual_properties).
unchanged_object(fortress_left_wing, intrinsic_visual_properties).
unchanged_object(fortress_right_wing, intrinsic_visual_properties).
unchanged_object(fortress_upper_stem, intrinsic_visual_properties).
unchanged_object(fortress_inner_courtyard, intrinsic_visual_properties).
unchanged_object(upper_chamber_frame, intrinsic_visual_properties).
unchanged_object(upper_chamber_interior, intrinsic_visual_properties).
unchanged_object(upper_burgundy_glyph, intrinsic_visual_properties).
unchanged_object(blue_black_player, intrinsic_visual_properties).
unchanged_object(player_black_core, intrinsic_visual_properties).
unchanged_object(player_blue_tail, intrinsic_visual_properties).
unchanged_object(lower_left_symbol_card, intrinsic_visual_properties).
unchanged_object(lower_left_burgundy_glyph, intrinsic_visual_properties).
unchanged_object(bottom_status_panel, bounding_box_and_color).
unchanged_object(cyan_status_blocks, intrinsic_visual_properties).

action_effect(
    action('ACTION3', {}),
    observed_transition(moved(bottom_center_gate, delta(-5, 0)))).
action_effect(
    action('ACTION3', {}),
    observed_transition(added(green_status_block))).
action_effect(
    action('ACTION3', {}),
    observed_transition(resized(bottom_status_track,
                                size(42, 2),
                                size(38, 2)))).
action_effect(
    action('ACTION3', {}),
    observed_transition(advanced(bottom_status_panel,
                                 status_progress))).

observation(gate_translation(bottom_center_gate, delta(-5, 0))).
observation(status_block_appearance(green_status_block)).
observation(player_remained_stationary(blue_black_player)).
observation(cyan_status_remained_three_lit_blocks(cyan_status_blocks)).

hypothesis(action3_advances_gate_leftward_by_one_five_cell_step).
hypothesis(action3_increments_status_progress).
hypothesis(green_status_block_records_successful_action_progress).
