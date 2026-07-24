evidence_reference(ev_action6_action7, transition(action6, action7, action('ACTION1', {}))).
evidence_reference(ev_gate_move_action7,
    moved_object(bottom_center_gate,
                 point(19, 40),
                 point(19, 35),
                 delta(0, -5))).
evidence_reference(ev_gate_header_move_action7,
    moved_object(gate_gray_header,
                 point(19, 40),
                 point(19, 35),
                 delta(0, -5))).
evidence_reference(ev_gate_panel_move_action7,
    moved_object(gate_burgundy_panel,
                 point(19, 42),
                 point(19, 37),
                 delta(0, -5))).
evidence_reference(ev_status_growth_action7,
    resized_object(green_status_block, size(5, 2), size(6, 2))).
evidence_reference(ev_status_track_shrink_action7,
    resized_object(bottom_status_track, size(37, 2), size(36, 2))).
evidence_reference(ev_status_boundary_action7,
    synchronized_boundary_shift(
        boundary_shifted(green_status_block, right_edge, from(18), to(19)),
        boundary_shifted(bottom_status_track, left_edge, from(18), to(19)))).
evidence_reference(ev_gate_relation_changes_action7,
    relation_changes(
        [added_relation(embedded_in(bottom_center_gate, fortress_left_wing)),
         added_relation(overlays(bottom_center_gate, fortress_left_wing))],
        [removed_relation(adjacent(fortress_lower_bridge,
                                   bottom_center_gate))])).
evidence_reference(ev_no_creation_action7,
    no_added_or_removed_objects(action6, action7)).
evidence_reference(ev_unchanged_player_action7,
    unchanged_object(blue_black_player, appearance_and_extent)).
evidence_reference(ev_action6_prior_pattern,
    prior_state_indicators(
        action6,
        action('ACTION1', {}),
        [gate_moved_up, status_progress_increased])).
evidence_reference(ev_current_gate_geometry,
    current_geometry(
        bottom_center_gate,
        bounding_box(19, 35, 5, 5))).
evidence_reference(ev_current_player_geometry,
    current_geometry(
        blue_black_player,
        bounding_box(20, 31, 3, 3))).
evidence_reference(ev_next_nominal_overlap,
    nominal_destination_overlap(
        bottom_center_gate,
        blue_black_player,
        gate_destination_box(19, 30, 5, 5),
        player_box(20, 31, 3, 3))).

observed_rule(action1_raises_gate_five_pixels,
    rule(
        scope(transition(action6, action7)),
        trigger(action('ACTION1', {})),
        preconditions([
            bounding_box(bottom_center_gate, 19, 40, 5, 5)
        ]),
        effects([
            translate(bottom_center_gate, delta(0, -5)),
            set_bounding_box(bottom_center_gate, 19, 35, 5, 5),
            add_state(bottom_center_gate, raised_again)
        ]),
        evidence([
            ev_action6_action7,
            ev_gate_move_action7
        ])
    )).

observed_rule(action1_translates_gate_components_rigidly,
    rule(
        scope(transition(action6, action7)),
        trigger(action('ACTION1', {})),
        effects([
            translate(gate_gray_header, delta(0, -5)),
            translate(gate_burgundy_panel, delta(0, -5)),
            preserve_component_of(gate_gray_header, bottom_center_gate),
            preserve_component_of(gate_burgundy_panel, bottom_center_gate)
        ]),
        evidence([
            ev_gate_move_action7,
            ev_gate_header_move_action7,
            ev_gate_panel_move_action7
        ])
    )).

observed_rule(action1_advances_status_by_one_cell,
    rule(
        scope(transition(action6, action7)),
        trigger(action('ACTION1', {})),
        effects([
            extend_right(green_status_block, cells(1)),
            contract_left(bottom_status_track, cells(1)),
            preserve_right_edge(bottom_status_track, 55),
            preserve_adjacency(green_status_block, bottom_status_track)
        ]),
        evidence([
            ev_status_growth_action7,
            ev_status_track_shrink_action7,
            ev_status_boundary_action7
        ])
    )).

observed_rule(gate_motion_updates_spatial_relations,
    rule(
        scope(transition(action6, action7)),
        trigger(translate(bottom_center_gate, delta(0, -5))),
        effects([
            add_relation(embedded_in(bottom_center_gate,
                                     fortress_left_wing)),
            add_relation(overlays(bottom_center_gate,
                                  fortress_left_wing)),
            remove_relation(adjacent(fortress_lower_bridge,
                                     bottom_center_gate))
        ]),
        evidence([
            ev_gate_move_action7,
            ev_gate_relation_changes_action7
        ])
    )).

observed_rule(action1_preserves_object_registry_and_player,
    rule(
        scope(transition(action6, action7)),
        trigger(action('ACTION1', {})),
        effects([
            preserve_object_identities,
            preserve_visibility_set,
            preserve_appearance(blue_black_player),
            preserve_position(blue_black_player),
            create_no_objects,
            remove_no_objects,
            recolor_no_objects
        ]),
        evidence([
            ev_no_creation_action7,
            ev_unchanged_player_action7
        ])
    )).

hypothetical_rule(action1_repeats_gate_raise_when_destination_is_clear,
    rule(
        confidence(moderate),
        trigger(action('ACTION1', {})),
        preconditions([
            current_state(action7),
            destination_clear(
                bottom_center_gate,
                delta(0, -5),
                [blue_black_player])
        ]),
        predicted_effects([
            translate(bottom_center_gate, delta(0, -5)),
            translate(gate_gray_header, delta(0, -5)),
            translate(gate_burgundy_panel, delta(0, -5))
        ])
    ),
    [ev_action6_prior_pattern,
     ev_action6_action7,
     ev_gate_move_action7,
     ev_gate_header_move_action7,
     ev_gate_panel_move_action7]).

hypothetical_rule(action1_continues_status_progress,
    rule(
        confidence(moderate),
        trigger(action('ACTION1', {})),
        preconditions([
            current_state(action7),
            status_capacity_remaining(
                green_status_block,
                bottom_status_track,
                cells_at_least(1))
        ]),
        predicted_effects([
            extend_right(green_status_block, cells(1)),
            contract_left(bottom_status_track, cells(1)),
            preserve_total_status_span
        ])
    ),
    [ev_action6_prior_pattern,
     ev_status_growth_action7,
     ev_status_track_shrink_action7,
     ev_status_boundary_action7]).

hypothetical_rule(action1_gate_motion_preserves_rigid_gate_structure,
    rule(
        confidence(high),
        trigger(translate(bottom_center_gate, delta(DX, DY))),
        preconditions([
            component_of(gate_gray_header, bottom_center_gate),
            component_of(gate_burgundy_panel, bottom_center_gate)
        ]),
        predicted_effects([
            translate(gate_gray_header, delta(DX, DY)),
            translate(gate_burgundy_panel, delta(DX, DY)),
            preserve_geometry(bottom_center_gate),
            preserve_colors(bottom_center_gate, [light_gray, burgundy])
        ])
    ),
    [ev_gate_move_action7,
     ev_gate_header_move_action7,
     ev_gate_panel_move_action7]).

hypothetical_rule(next_action1_may_lift_player_on_gate_contact,
    rule(
        confidence(low),
        trigger(action('ACTION1', {})),
        preconditions([
            current_state(action7),
            nominal_translation(bottom_center_gate, delta(0, -5)),
            destination_overlaps(bottom_center_gate, blue_black_player)
        ]),
        predicted_effects([
            translate(bottom_center_gate, delta(0, -5)),
            translate(gate_gray_header, delta(0, -5)),
            translate(gate_burgundy_panel, delta(0, -5)),
            translate(blue_black_player, delta(0, -5)),
            translate(player_black_core, delta(0, -5)),
            translate(player_blue_tail, delta(0, -5))
        ]),
        qualification(contact_response_not_yet_observed)
    ),
    [ev_current_gate_geometry,
     ev_current_player_geometry,
     ev_next_nominal_overlap,
     ev_gate_move_action7]).

hypothetical_rule(next_action1_may_block_gate_at_player,
    rule(
        confidence(low),
        trigger(action('ACTION1', {})),
        preconditions([
            current_state(action7),
            nominal_translation(bottom_center_gate, delta(0, -5)),
            destination_overlaps(bottom_center_gate, blue_black_player),
            player_is_non_displaceable
        ]),
        predicted_effects([
            preserve_position(bottom_center_gate),
            preserve_position(gate_gray_header),
            preserve_position(gate_burgundy_panel)
        ]),
        qualification(mutually_exclusive_with(
            next_action1_may_lift_player_on_gate_contact))
    ),
    [ev_current_gate_geometry,
     ev_current_player_geometry,
     ev_next_nominal_overlap,
     ev_unchanged_player_action7]).
