observed_rule(
    action3_gate_translation,
    transition(
        action3,
        moved(bottom_center_gate, point(34, 45), point(29, 45), vector(-5, 0))
    )
).

observed_rule(
    action3_gate_component_translation,
    transition(
        action3,
        synchronized_moves([
            moved(gate_gray_header, point(34, 45), point(29, 45), vector(-5, 0)),
            moved(gate_burgundy_panel, point(34, 47), point(29, 47), vector(-5, 0))
        ])
    )
).

observed_rule(
    action3_gate_configuration_preserved,
    transition(
        action3,
        preserves([
            state(bottom_center_gate, closed),
            geometry(bottom_center_gate, vertically_partitioned_rectangle),
            component_of(gate_gray_header, bottom_center_gate),
            component_of(gate_burgundy_panel, bottom_center_gate)
        ])
    )
).

observed_rule(
    action3_gate_notch_relocation,
    transition(
        action3,
        relocates_gate_notch(
            bottom_center_gate,
            box(34, 45, 5, 5),
            box(29, 45, 5, 5)
        )
    )
).

observed_rule(
    action3_fortress_repair,
    transition(
        action3,
        fills_vacated_gate_region(
            green_fortress,
            fortress_main_body,
            fortress_right_wing,
            box(34, 45, 5, 5)
        )
    )
).

observed_rule(
    action3_status_increment,
    transition(
        action3,
        adds(
            green_status_block,
            box(13, 61, 1, 2),
            [color(green), geometry(filled_rectangle)]
        )
    )
).

observed_rule(
    action3_player_invariance,
    transition(
        action3,
        preserves([
            bounding_box(blue_black_player, 20, 31, 3, 3),
            center(blue_black_player, 21, 32),
            state(blue_black_player, stationary)
        ])
    )
).

evidence_reference(
    action3_gate_translation,
    [
        differences_pl(moved_object(
            bottom_center_gate,
            point(34, 45),
            point(29, 45),
            vector(-5, 0)
        )),
        differences_pl(changed_object(
            bottom_center_gate,
            bounding_box,
            change(box(34, 45, 5, 5), box(29, 45, 5, 5))
        )),
        differences_pl(changed_object(
            bottom_center_gate,
            center,
            change(point(36, 47), point(31, 47))
        ))
    ]
).

evidence_reference(
    action3_gate_component_translation,
    [
        differences_pl(moved_object(
            gate_gray_header,
            point(34, 45),
            point(29, 45),
            vector(-5, 0)
        )),
        differences_pl(moved_object(
            gate_burgundy_panel,
            point(34, 47),
            point(29, 47),
            vector(-5, 0)
        )),
        current_objects_pl(component_of(gate_gray_header, bottom_center_gate)),
        current_objects_pl(component_of(gate_burgundy_panel, bottom_center_gate))
    ]
).

evidence_reference(
    action3_gate_configuration_preserved,
    [
        parent_objects_pl(state(bottom_center_gate, closed)),
        current_objects_pl(state(bottom_center_gate, closed)),
        parent_objects_pl(geometry(
            bottom_center_gate,
            vertically_partitioned_rectangle
        )),
        current_objects_pl(geometry(
            bottom_center_gate,
            vertically_partitioned_rectangle
        ))
    ]
).

evidence_reference(
    action3_gate_notch_relocation,
    [
        differences_pl(action_effect(
            action3,
            inferred_gate_notch_relocation(
                from(box(34, 45, 5, 5)),
                to(box(29, 45, 5, 5))
            )
        )),
        differences_pl(changed_object(
            fortress_lower_bridge,
            occupied_regions,
            change(
                [box(19, 45, 15, 5), box(39, 45, 15, 5)],
                [box(19, 45, 10, 5), box(34, 45, 20, 5)]
            )
        ))
    ]
).

evidence_reference(
    action3_fortress_repair,
    [
        differences_pl(changed_object(
            fortress_right_wing,
            geometry,
            change(filled_rectangle_with_gate_notch, filled_rectangle)
        )),
        differences_pl(changed_object(
            fortress_right_wing,
            occupied_regions,
            change(
                [box(34, 25, 20, 20), box(39, 45, 15, 5)],
                [box(34, 25, 20, 25)]
            )
        )),
        differences_pl(changed_object(
            green_fortress,
            occupied_regions,
            change(
                [box(19, 45, 15, 5), box(39, 45, 15, 5)],
                [box(19, 45, 10, 5), box(34, 45, 20, 5)]
            )
        ))
    ]
).

evidence_reference(
    action3_status_increment,
    [
        differences_pl(added_object(green_status_block)),
        differences_pl(observation(
            green_status_block,
            bounding_box(13, 61, 1, 2)
        )),
        differences_pl(observation(green_status_block, color(green))),
        differences_pl(observation(
            green_status_block,
            overlays(bottom_status_track)
        )),
        differences_pl(observation(
            green_status_block,
            contained_by(bottom_status_panel)
        )),
        differences_pl(action_effect(
            action3,
            observed_addition(green_status_block)
        ))
    ]
).

evidence_reference(
    action3_player_invariance,
    [
        differences_pl(unchanged_object(
            blue_black_player,
            [bounding_box, colors, geometry, center, state]
        )),
        parent_objects_pl(center(blue_black_player, 21, 32)),
        current_objects_pl(center(blue_black_player, 21, 32))
    ]
).

hypothetical_rule(
    action3_moves_closed_gate_left_one_grid_step,
    if_then(
        conditions([
            incoming_action(action3),
            state(bottom_center_gate, closed),
            legal_gate_destination(left, 5)
        ]),
        effects([
            translate(bottom_center_gate, vector(-5, 0)),
            translate(gate_gray_header, vector(-5, 0)),
            translate(gate_burgundy_panel, vector(-5, 0))
        ])
    ),
    [
        action3_gate_translation,
        action3_gate_component_translation,
        action3_gate_configuration_preserved
    ]
).

hypothetical_rule(
    gate_components_move_rigidly_with_bottom_center_gate,
    if_then(
        conditions([
            translate(bottom_center_gate, vector(DX, DY)),
            component_of(gate_gray_header, bottom_center_gate),
            component_of(gate_burgundy_panel, bottom_center_gate)
        ]),
        effects([
            translate(gate_gray_header, vector(DX, DY)),
            translate(gate_burgundy_panel, vector(DX, DY)),
            preserve_relative_layout(bottom_center_gate)
        ])
    ),
    [
        action3_gate_component_translation,
        action3_gate_configuration_preserved
    ]
).

hypothetical_rule(
    fortress_reforms_around_relocated_gate,
    if_then(
        conditions([
            relocate(bottom_center_gate, OldBox, NewBox),
            embedded_in(bottom_center_gate, fortress_main_body)
        ]),
        effects([
            restore_green_fortress_occupancy(OldBox),
            create_gate_notch(NewBox),
            preserve(embedded_in(bottom_center_gate, fortress_main_body))
        ])
    ),
    [
        action3_gate_notch_relocation,
        action3_fortress_repair
    ]
).

hypothetical_rule(
    action3_advances_bottom_status_from_left_to_right,
    if_then(
        conditions([
            incoming_action(action3),
            state(bottom_status_panel, active),
            available_status_cell(bottom_status_track, X, 61)
        ]),
        effects([
            add_status_cell(green_status_block, box(X, 61, 1, 2)),
            advance_progress(bottom_status_panel, 1)
        ])
    ),
    [
        action3_status_increment
    ]
).

hypothetical_rule(
    action3_does_not_directly_move_blue_black_player,
    if_then(
        conditions([
            incoming_action(action3),
            no_gate_player_contact(bottom_center_gate, blue_black_player)
        ]),
        effects([
            preserve_position(blue_black_player),
            preserve_position(player_black_core),
            preserve_position(player_blue_tail)
        ])
    ),
    [
        action3_player_invariance,
        action3_gate_translation
    ]
).

hypothetical_rule(
    repeated_action3_gate_motion_requires_free_space,
    if_then(
        conditions([
            incoming_action(action3),
            state(bottom_center_gate, closed),
            destination_region_free(bottom_center_gate, vector(-5, 0))
        ]),
        effects([
            translate(bottom_center_gate, vector(-5, 0)),
            increment_bottom_status_cautiously(1)
        ])
    ),
    [
        action3_gate_translation,
        action3_status_increment,
        action3_gate_notch_relocation
    ]
).
