action_history([step(1, action('ACTION2', params([])))]).
current_action_path(['ACTION2']).

evidence_reference(
    action2_path_step,
    source(action_history, step(1, action('ACTION2', params([]))))
).

evidence_reference(
    dark_bar_left_edge_shift,
    source('differences.pl',
        changed(
            bottom_dark_status_bar,
            [moved(point(150,610), point(160,610)),
             resized(size(400,20), size(390,20))]
        ))
).

evidence_reference(
    one_cell_recolor,
    source('differences.pl',
        pixel_region_recolored(
            rectangle(150,610,10,20),
            dark_gray,
            green
        ))
).

evidence_reference(
    fixed_meter_extent,
    source('differences.pl',
        total_status_meter_extent_unchanged(
            interval(130,550),
            interval(130,550)
        ))
).

evidence_reference(
    player_stationary,
    source('differences.pl',
        unchanged(
            blue_black_player,
            bbox(200,310,30,30)
        ))
).

evidence_reference(
    terminals_stationary,
    source('differences.pl',
        unchanged([
            gray_upper_chamber_interior,
            upper_red_hook_glyph,
            upper_red_square,
            bottom_center_gate,
            gray_gate_cap,
            red_gate_base
        ]))
).

evidence_reference(
    scene_entity_set_preserved,
    source('differences.pl',
        conjunction([
            no_scene_object_added,
            no_scene_object_removed
        ]))
).

evidence_reference(
    canonical_meter_objects,
    source('object_registry.pl',
        registered([
            bottom_dark_status_bar,
            bottom_status_panel
        ]))
).

observed_rule(
    action2_advanced_status_boundary_one_cell,
    rule(
        when(path_step(1, action('ACTION2', params([])))),
        then([
            cell_scale(10),
            changed(
                bottom_dark_status_bar,
                from(bbox(150,610,400,20)),
                to(bbox(160,610,390,20))
            ),
            recolored(
                rectangle(150,610,10,20),
                from(dark_gray),
                to(green)
            ),
            meter_extent_preserved(interval(130,550))
        ]),
        evidence([
            action2_path_step,
            dark_bar_left_edge_shift,
            one_cell_recolor,
            fixed_meter_extent,
            canonical_meter_objects
        ])
    )
).

observed_rule(
    action2_did_not_move_player_or_terminals,
    rule(
        when(path_step(1, action('ACTION2', params([])))),
        then([
            unchanged(blue_black_player),
            unchanged(gray_upper_chamber_interior),
            unchanged(upper_red_hook_glyph),
            unchanged(upper_red_square),
            unchanged(bottom_center_gate),
            unchanged(gray_gate_cap),
            unchanged(red_gate_base)
        ]),
        evidence([
            player_stationary,
            terminals_stationary
        ])
    )
).

observed_rule(
    action2_preserved_scene_entity_set,
    rule(
        when(path_step(1, action('ACTION2', params([])))),
        then([
            no_scene_object_added,
            no_scene_object_removed
        ]),
        evidence([scene_entity_set_preserved])
    )
).

hypothetical_rule(
    action2_advances_status_meter_by_one_cell,
    transition_rule(
        confidence(medium),
        when([
            action('ACTION2', params([])),
            state(bottom_dark_status_bar, bbox(X,610,W,20)),
            W >= 10
        ]),
        then([
            X1 is X + 10,
            W1 is W - 10,
            next_state(bottom_dark_status_bar, bbox(X1,610,W1,20)),
            recolored(rectangle(X,610,10,20), dark_gray, green),
            preserve_total_meter_extent,
            preserve_scene_entity_set
        ])
    ),
    evidence([
        action2_path_step,
        dark_bar_left_edge_shift,
        one_cell_recolor,
        fixed_meter_extent,
        scene_entity_set_preserved
    ])
).

hypothetical_rule(
    action2_is_status_only_while_meter_has_capacity,
    transition_rule(
        confidence(medium_low),
        when([
            action('ACTION2', params([])),
            state(bottom_dark_status_bar, bbox(_,610,W,20)),
            W > 0
        ]),
        then([
            unchanged(blue_black_player),
            unchanged(gray_upper_chamber_interior),
            unchanged(upper_red_hook_glyph),
            unchanged(upper_red_square),
            unchanged(bottom_center_gate),
            unchanged(gray_gate_cap),
            unchanged(red_gate_base)
        ])
    ),
    evidence([
        player_stationary,
        terminals_stationary,
        scene_entity_set_preserved
    ])
).

hypothetical_rule(
    status_meter_saturates_when_dark_bar_is_empty,
    transition_rule(
        confidence(low),
        when([
            action('ACTION2', params([])),
            state(bottom_dark_status_bar, bbox(X,610,0,20))
        ]),
        then([
            next_state(bottom_dark_status_bar, bbox(X,610,0,20)),
            no_further_status_boundary_shift
        ])
    ),
    evidence([
        fixed_meter_extent,
        one_cell_recolor
    ])
).
