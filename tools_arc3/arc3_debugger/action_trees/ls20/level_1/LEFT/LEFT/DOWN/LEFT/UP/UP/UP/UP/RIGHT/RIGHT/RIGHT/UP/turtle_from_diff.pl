turtle_patch(action12, action13, action('ACTION1', {}),
    [patch_object(fortress_main_body,
        [penup, set_pos(34,25), setcolor(green), pendown, fill_rect(5,5)]),
     patch_object(gate_gray_header,
        [penup, set_pos(34,20), setcolor(light_gray), pendown, fill_rect(5,2)]),
     patch_object(gate_burgundy_panel,
        [penup, set_pos(34,22), setcolor(burgundy), pendown, fill_rect(5,3)]),
     patch_object(green_status_block,
        [penup, set_pos(23,61), setcolor(green), pendown, fill_rect(1,2)])
    ]).
