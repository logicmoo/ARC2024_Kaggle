:- ensure_loaded('../object_registry.pl').

object_identity(green_status_block, status_indicator,
    'Single green progress block at the left end of the bottom status track').

turtle_patch(action3,
    [ redraw(green_fortress,
          [penup, set_pos(34,45), setcolor(green),
           pendown, fill_rect(5,5)]),
      redraw(bottom_center_gate,
          [penup, set_pos(29,45), setcolor(light_gray),
           pendown, fill_rect(5,2),
           penup, set_pos(29,47), setcolor(burgundy),
           pendown, fill_rect(5,3)]),
      draw(green_status_block,
          [penup, set_pos(13,61), setcolor(green),
           pendown, fill_rect(1,2)])
    ]).
