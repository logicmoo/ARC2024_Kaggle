turtle_patch(action11, action12, action('ACTION4', {}),
    [turtle_op(reveal, bottom_center_gate, over(fortress_main_body),
         [penup, set_pos(29,25), setcolor(green), pendown, fill_rect(5,5)]),
     turtle_op(redraw, bottom_center_gate,
         components([gate_gray_header, gate_burgundy_panel]),
         [penup, set_pos(34,25), setcolor(light_gray), pendown, fill_rect(5,2),
          penup, set_pos(34,27), setcolor(burgundy), pendown, fill_rect(5,3)]),
     turtle_op(reveal, player_blue_tail, over(fortress_left_wing),
         [penup, set_pos(20,31), setcolor(green), pendown, set_cell]),
     turtle_op(transfer_column, bottom_status_track, to(green_status_block),
         [penup, set_pos(22,61), setcolor(green), pendown, fill_rect(1,2)])
    ]).
