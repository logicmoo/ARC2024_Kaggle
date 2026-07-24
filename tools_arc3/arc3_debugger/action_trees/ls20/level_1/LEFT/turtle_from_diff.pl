object_identity(green_status_marker, indicator,
    'green progress marker at the left end of the bottom status bar').

turtle_patch('ACTION3',
    [translate(bottom_center_gate,
         [gray_gate_cap, red_gate_base],
         -5, 0, grid_cells),
     split_left(bottom_dark_status_bar,
         green_status_marker, 1, grid_cell, green)]).
