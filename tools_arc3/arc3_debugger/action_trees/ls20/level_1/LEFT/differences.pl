:- ensure_loaded('../object_registry.pl').

object_identity(green_status_block, status_indicator,
    'Single green progress block at the left end of the bottom status track').

added_object(green_status_block).

removed_object(_) :-
    fail.

moved_object(bottom_center_gate,
    point(34, 45), point(29, 45), vector(-5, 0)).
moved_object(gate_gray_header,
    point(34, 45), point(29, 45), vector(-5, 0)).
moved_object(gate_burgundy_panel,
    point(34, 47), point(29, 47), vector(-5, 0)).

changed_object(bottom_center_gate, bounding_box,
    change(box(34, 45, 5, 5), box(29, 45, 5, 5))).
changed_object(bottom_center_gate, center,
    change(point(36, 47), point(31, 47))).
changed_object(gate_gray_header, bounding_box,
    change(box(34, 45, 5, 2), box(29, 45, 5, 2))).
changed_object(gate_burgundy_panel, bounding_box,
    change(box(34, 47, 5, 3), box(29, 47, 5, 3))).

changed_object(fortress_right_wing, geometry,
    change(filled_rectangle_with_gate_notch, filled_rectangle)).
changed_object(fortress_right_wing, occupied_regions,
    change(
        [box(34, 25, 20, 20), box(39, 45, 15, 5)],
        [box(34, 25, 20, 25)]
    )).
changed_object(fortress_lower_bridge, occupied_regions,
    change(
        [box(19, 45, 15, 5), box(39, 45, 15, 5)],
        [box(19, 45, 10, 5), box(34, 45, 20, 5)]
    )).
changed_object(fortress_main_body, occupied_regions,
    change(
        [box(19, 45, 15, 5), box(39, 45, 15, 5)],
        [box(19, 45, 10, 5), box(34, 45, 20, 5)]
    )).
changed_object(green_fortress, occupied_regions,
    change(
        [box(19, 45, 15, 5), box(39, 45, 15, 5)],
        [box(19, 45, 10, 5), box(34, 45, 20, 5)]
    )).

resized_object(_, _, _) :-
    fail.

recolored_object(_, _, _) :-
    fail.

unchanged_object(yellow_playfield,
    [bounding_box, color, geometry]).
unchanged_object(left_boundary_wall,
    [bounding_box, color, geometry]).
unchanged_object(fortress_left_wing,
    [bounding_box, color, geometry]).
unchanged_object(fortress_upper_stem,
    [bounding_box, color, geometry]).
unchanged_object(fortress_inner_courtyard,
    [bounding_box, color, geometry]).
unchanged_object(upper_chamber_frame,
    [bounding_box, color, geometry]).
unchanged_object(upper_chamber_interior,
    [bounding_box, color, geometry]).
unchanged_object(upper_burgundy_glyph,
    [bounding_box, color, geometry]).
unchanged_object(blue_black_player,
    [bounding_box, colors, geometry, center, state]).
unchanged_object(player_black_core,
    [bounding_box, color, geometry]).
unchanged_object(player_blue_tail,
    [bounding_box, color, geometry]).
unchanged_object(lower_left_symbol_card,
    [bounding_box, color, geometry, center]).
unchanged_object(lower_left_burgundy_glyph,
    [bounding_box, color, geometry]).
unchanged_object(bottom_status_panel,
    [bounding_box, color, geometry, state]).
unchanged_object(bottom_status_track,
    [bounding_box, base_color, geometry]).
unchanged_object(cyan_status_blocks,
    [bounding_box, color, geometry, state]).

observation(green_status_block, visible_in_current_render).
observation(green_status_block, bounding_box(13, 61, 1, 2)).
observation(green_status_block, color(green)).
observation(green_status_block, geometry(filled_rectangle)).
observation(green_status_block, overlays(bottom_status_track)).
observation(green_status_block, contained_by(bottom_status_panel)).

hypothesis(green_status_block, status_progress_indicator).
hypothesis(action3, advances_bottom_status_by_one_block).

action_effect(action3,
    observed_movement(bottom_center_gate, vector(-5, 0))).
action_effect(action3,
    observed_movement(gate_gray_header, vector(-5, 0))).
action_effect(action3,
    observed_movement(gate_burgundy_panel, vector(-5, 0))).
action_effect(action3,
    observed_addition(green_status_block)).
action_effect(action3,
    inferred_gate_notch_relocation(
        from(box(34, 45, 5, 5)),
        to(box(29, 45, 5, 5))
    )).
