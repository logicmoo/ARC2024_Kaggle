observed_rule(
    action2_visual_noop_at_action3,
    rule(
        transition(action3, action4, action('ACTION2', {})),
        observable_effect(no_observable_visual_change),
        evidence([
            ref('differences.pl', transition(action3, action4)),
            ref('differences.pl', transition_action(action3, action4, action('ACTION2', {}))),
            ref('differences.pl', observation(action4, visually_unchanged_from(action3))),
            ref('differences.pl', action_effect(action('ACTION2', {}), no_observable_visual_change))
        ])
    )
).

observed_rule(
    action2_preserves_visible_configuration_at_action3,
    rule(
        transition(action3, action4, action('ACTION2', {})),
        preserves([
            blue_black_player,
            player_black_core,
            player_blue_tail,
            bottom_center_gate,
            gate_gray_header,
            gate_burgundy_panel,
            green_fortress,
            fortress_inner_courtyard,
            upper_burgundy_glyph,
            lower_left_symbol_card,
            lower_left_burgundy_glyph,
            bottom_status_panel,
            bottom_status_track,
            cyan_status_blocks
        ]),
        evidence([
            ref('differences.pl', observation(action4, no_added_objects)),
            ref('differences.pl', observation(action4, no_removed_objects)),
            ref('differences.pl', observation(action4, no_changed_objects)),
            ref('differences.pl', unchanged_object(blue_black_player, all_observed_properties)),
            ref('differences.pl', unchanged_object(bottom_center_gate, all_observed_properties)),
            ref('differences.pl', unchanged_object(bottom_status_panel, all_observed_properties)),
            ref('objects.pl', state(action4, visually_unchanged))
        ])
    )
).

hypothetical_rule(
    repeat_action2_is_visual_noop_in_same_configuration,
    medium_confidence,
    rule(
        conditions([
            action(action('ACTION2', {})),
            same_observed_configuration_as(action3),
            state(blue_black_player, stationary),
            state(bottom_center_gate, closed),
            state(bottom_center_gate, shifted_left),
            state(cyan_status_blocks, three_lit_blocks)
        ]),
        predicted_effects([
            observable_effect(no_observable_visual_change),
            remains_at(blue_black_player, 20, 31, 3, 3),
            remains_at(bottom_center_gate, 24, 45, 5, 5),
            remains_state(bottom_center_gate, closed),
            remains_state(cyan_status_blocks, three_lit_blocks)
        ]),
        evidence([
            ref('differences.pl', action_effect(action('ACTION2', {}), no_observable_visual_change)),
            ref('objects.pl', bounding_box(blue_black_player, 20, 31, 3, 3)),
            ref('objects.pl', bounding_box(bottom_center_gate, 24, 45, 5, 5)),
            ref('objects.pl', state(bottom_center_gate, closed)),
            ref('objects.pl', state(bottom_center_gate, shifted_left)),
            limitation(single_observed_action2_transition)
        ])
    )
).

hypothetical_rule(
    action2_is_contextually_inapplicable_at_current_player_pose,
    low_confidence,
    rule(
        conditions([
            action(action('ACTION2', {})),
            center(blue_black_player, 21, 32),
            overlays(blue_black_player, fortress_left_wing),
            state(blue_black_player, stationary)
        ]),
        predicted_effects([
            rejected_or_blocked_without_visible_change,
            remains_stationary(blue_black_player)
        ]),
        evidence([
            ref('objects.pl', center(blue_black_player, 21, 32)),
            ref('objects.pl', overlays(blue_black_player, fortress_left_wing)),
            ref('objects.pl', state(blue_black_player, stationary)),
            ref('differences.pl', unchanged_object(blue_black_player, all_observed_properties)),
            ref('differences.pl', observation(action4, visually_unchanged_from(action3))),
            limitation(action2_semantics_not_identified),
            alternative(hidden_or_delayed_state_change_not_excluded)
        ])
    )
).
