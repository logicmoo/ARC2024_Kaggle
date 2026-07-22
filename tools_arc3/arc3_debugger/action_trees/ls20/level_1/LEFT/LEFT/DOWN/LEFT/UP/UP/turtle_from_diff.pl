transition(action6, action7, action('ACTION1', {})).

turtle_patch(action6, action7, green_fortress,
    [penup, set_pos(19,40), setcolor(green), pendown, fill_rect(5,5)]).

turtle_patch(action6, action7, bottom_center_gate,
    [penup, set_pos(19,35), setcolor(light_gray), pendown, fill_rect(5,2),
     penup, set_pos(19,37), setcolor(burgundy), pendown, fill_rect(5,3)]).

turtle_patch(action6, action7, green_status_block,
    [penup, set_pos(18,61), setcolor(green), pendown, fill_rect(1,2)]).
