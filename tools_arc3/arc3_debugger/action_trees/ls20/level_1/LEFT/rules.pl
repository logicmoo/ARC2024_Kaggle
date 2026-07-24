action_path(['ACTION3']).

evidence_reference(e_action3,
    action_history,
    incoming_action('ACTION3', empty_parameters)).

evidence_reference(e_gate_shift,
    differences_pl,
    movement(bottom_center_gate, grid_delta(-5, 0))).

evidence_reference(e_gate_components_shift,
    differences_pl,
    rigid_component_movement(
        [gray_gate_cap, red_gate_base],
        grid_delta(-5, 0))).

evidence_reference(e_gate_current_position,
    objects_pl,
    component_regions(
        gray_gate_cap, grid_rect(29, 45, 5, 2),
        red_gate_base, grid_rect(29, 47, 5, 3))).

evidence_reference(e_terrain_replacement,
    differences_pl,
    terrain_replacement(
        green_maze_structure,
        covered_region(grid_rect(29, 45, 5, 5)),
        restored_region(grid_rect(34, 45, 5, 5)))).

evidence_reference(e_status_advance,
    differences_pl,
    status_advance(
        bottom_dark_status_bar,
        recolored_region(grid_rect(13, 61, 1, 2),
                         dark_gray, green),
        left_edge_delta(1))).

evidence_reference(e_player_stationary,
    differences_pl,
    unchanged_objects(
        [blue_black_player, black_player_head, blue_player_tail])).

evidence_reference(e_markers_stationary,
    differences_pl,
    unchanged_objects(
        [gray_upper_chamber_interior,
         upper_red_hook_glyph,
         upper_red_square,
         lower_left_control_panel,
         lower_left_red_hook_glyph,
         lower_left_red_square])).

evidence_reference(e_status_cells_stationary,
    differences_pl,
    unchanged_objects(
        [left_cyan_status_cell,
         middle_cyan_status_cell,
         right_cyan_status_cell])).

observed_rule('ACTION3',
    transition(
        bottom_center_gate,
        rigid_translate(grid_delta(-5, 0)),
        evidence([e_action3, e_gate_shift, e_gate_components_shift]))).

observed_rule('ACTION3',
    transition(
        gray_gate_cap,
        move(grid_rect(34, 45, 5, 2),
             grid_rect(29, 45, 5, 2)),
        evidence([e_gate_shift, e_gate_current_position]))).

observed_rule('ACTION3',
    transition(
        red_gate_base,
        move(grid_rect(34, 47, 5, 3),
             grid_rect(29, 47, 5, 3)),
        evidence([e_gate_shift, e_gate_current_position]))).

observed_rule('ACTION3',
    transition(
        green_maze_structure,
        replace_regions(
            [paint(grid_rect(29, 45, 5, 2), light_gray),
             paint(grid_rect(29, 47, 5, 3), maroon),
             paint(grid_rect(34, 45, 5, 5), green)]),
        evidence([e_terrain_replacement]))).

observed_rule('ACTION3',
    transition(
        bottom_dark_status_bar,
        advance_progress_from_left(
            grid_rect(13, 61, 1, 2),
            dark_gray,
            green),
        evidence([e_status_advance]))).

observed_rule('ACTION3',
    invariant(
        [blue_black_player, black_player_head, blue_player_tail],
        no_motion,
        evidence([e_player_stationary]))).

observed_rule('ACTION3',
    invariant(
        [gray_upper_chamber_interior,
         upper_red_hook_glyph,
         upper_red_square,
         lower_left_control_panel,
         lower_left_red_hook_glyph,
         lower_left_red_square],
        no_motion,
        evidence([e_markers_stationary]))).

observed_rule('ACTION3',
    invariant(
        [left_cyan_status_cell,
         middle_cyan_status_cell,
         right_cyan_status_cell],
        no_visual_change,
        evidence([e_status_cells_stationary]))).

hypothetical_rule('ACTION3',
    guarded_transition(
        conditions(
            [current_region(bottom_center_gate,
                            grid_rect(29, 45, 5, 5)),
             destination_region_is_green(
                            grid_rect(24, 45, 5, 5))]),
        effects(
            [move(bottom_center_gate,
                  grid_rect(29, 45, 5, 5),
                  grid_rect(24, 45, 5, 5)),
             move(gray_gate_cap,
                  grid_rect(29, 45, 5, 2),
                  grid_rect(24, 45, 5, 2)),
             move(red_gate_base,
                  grid_rect(29, 47, 5, 3),
                  grid_rect(24, 47, 5, 3)),
             paint(green_maze_structure,
                   grid_rect(29, 45, 5, 5),
                   green)]),
        evidence([e_gate_shift,
                  e_gate_components_shift,
                  e_terrain_replacement,
                  e_gate_current_position])),
    medium).

hypothetical_rule('ACTION3',
    guarded_transition(
        conditions(
            [successful_transition(bottom_center_gate,
                                   grid_delta(-5, 0)),
             current_dark_leading_region(
                 bottom_dark_status_bar,
                 grid_rect(14, 61, 1, 2))]),
        effects(
            [recolor_region(bottom_dark_status_bar,
                            grid_rect(14, 61, 1, 2),
                            dark_gray,
                            green),
             advance_left_edge(bottom_dark_status_bar, 1)]),
        evidence([e_gate_shift, e_status_advance])),
    medium).

hypothetical_rule('ACTION3',
    invariant(
        [blue_black_player, black_player_head, blue_player_tail],
        no_motion_unless_gate_interaction_occurs,
        evidence([e_player_stationary])),
    medium).

hypothetical_rule('ACTION3',
    invariant(
        [left_cyan_status_cell,
         middle_cyan_status_cell,
         right_cyan_status_cell],
        unchanged_during_gate_progress,
        evidence([e_status_cells_stationary, e_status_advance])),
    medium_low).

hypothetical_rule('ACTION3',
    interpretation(
        advances_portal_and_progress_state(
            bottom_center_gate,
            bottom_dark_status_bar),
        evidence([e_gate_shift, e_terrain_replacement, e_status_advance])),
    medium).
