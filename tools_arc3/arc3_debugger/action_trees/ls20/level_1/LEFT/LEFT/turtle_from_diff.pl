turtle_patch('ACTION3',
    [ set_palette(maroon, rgb(133,20,75)),
      translate(bottom_center_gate, -5, 0),
      draw_on(green_maze_structure,
          [penup, set_pos(29,45), setcolor(green), pendown,
           fill_rect(5,5), penup]),
      draw_on(bottom_status_panel,
          [penup, set_pos(14,61), setcolor(green), pendown,
           fill_rect(1,2), penup])
    ]).
