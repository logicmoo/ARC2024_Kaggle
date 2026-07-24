turtle_patch(action8, action9,
    [paint(fortress_left_wing,
        [penup, set_pos(19,30), setcolor(green), pendown, fill_rect(5,5)]),
     paint(bottom_center_gate,
        [penup, set_pos(19,25), setcolor(light_gray), pendown, fill_rect(5,2),
         penup, set_pos(19,27), setcolor(burgundy), pendown, fill_rect(5,3)]),
     paint(blue_black_player,
        [penup, set_pos(20,31), setcolor(blue), pendown, fill_rect(1,2),
         penup, set_pos(21,33), pendown, set_cell,
         penup, set_pos(21,31), setcolor(black), pendown, fill_rect(2,2)]),
     paint(green_status_block,
        [penup, set_pos(19,61), setcolor(green), pendown, fill_rect(1,2)])
    ]).
