turtle_patch(action5, action6, action('ACTION1', {}),
    [ patch(bottom_center_gate,
          [ penup,
            set_pos(19,40), setcolor(light_gray), pendown, fill_rect(5,2),
            penup,
            set_pos(19,42), setcolor(burgundy), pendown, fill_rect(5,3)
          ]),
      patch(fortress_lower_bridge,
          [ penup,
            set_pos(19,45), setcolor(green), pendown, fill_rect(5,5)
          ]),
      patch(green_status_block,
          [ penup,
            set_pos(17,61), setcolor(green), pendown, fill_rect(1,2)
          ])
    ]).
