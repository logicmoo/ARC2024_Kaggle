% Observed transition from action7 to action8.
state_transition(action7, action8, action('ACTION1', {})).

% No object identities were created or destroyed.
added_object(_) :-
    fail.

removed_object(_) :-
    fail.

% The gate and both of its canonical components moved five cells upward.
moved_object(bottom_center_gate, center(21, 37), center(21, 32), delta(0, -5)).
moved_object(gate_gray_header, bounding_box(19, 35, 5, 2),
                              bounding_box(19, 30, 5, 2),
                              delta(0, -5)).
moved_object(gate_burgundy_panel, bounding_box(19, 37, 5, 3),
                                  bounding_box(19, 32, 5, 3),
                                  delta(0, -5)).

changed_object(bottom_center_gate,
               bounding_box(19, 35, 5, 5),
               bounding_box(19, 30, 5, 5)).
changed_object(gate_gray_header,
               bounding_box(19, 35, 5, 2),
               bounding_box(19, 30, 5, 2)).
changed_object(gate_burgundy_panel,
               bounding_box(19, 37, 5, 3),
               bounding_box(19, 32, 5, 3)).

% The player identities persist but are fully hidden behind the raised gate.
changed_object(blue_black_player,
               visibility(visible),
               visibility(fully_occluded)).
changed_object(player_black_core,
               visibility(visible),
               visibility(fully_occluded)).
changed_object(player_blue_tail,
               visibility(visible),
               visibility(fully_occluded)).

occluded_object(blue_black_player, bottom_center_gate).
occluded_object(player_black_core, bottom_center_gate).
occluded_object(player_blue_tail, bottom_center_gate).

added_relation(overlays(bottom_center_gate, blue_black_player)).
added_relation(occluded_by(blue_black_player, bottom_center_gate)).
added_relation(occluded_by(player_black_core, bottom_center_gate)).
added_relation(occluded_by(player_blue_tail, bottom_center_gate)).

% Raster observation: the lower-left glyph is horizontally rearranged
% inside the same bounding box. The current objects.pl serialization does
% not encode this raster-visible geometry change.
changed_object(lower_left_burgundy_glyph,
               component_boxes([
                   box(3, 55, 6, 2),
                   box(3, 57, 2, 4),
                   box(7, 59, 2, 2)
               ]),
               component_boxes([
                   box(3, 55, 6, 2),
                   box(7, 57, 2, 4),
                   box(3, 59, 2, 2)
               ])).

observation_conflict(
    lower_left_burgundy_glyph,
    raster_observation(horizontal_mirror),
    current_objects_pl(component_boxes_unchanged)
).

% No color or outer-size changes were observed.
recolored_object(_, _, _) :-
    fail.

resized_object(_, _, _) :-
    fail.

unchanged_object(yellow_playfield, appearance_and_position).
unchanged_object(left_boundary_wall, appearance_and_position).
unchanged_object(green_fortress, semantic_structure_and_bounding_box).
unchanged_object(fortress_main_body, semantic_structure_and_bounding_box).
unchanged_object(fortress_left_wing, appearance_and_position).
unchanged_object(fortress_right_wing, appearance_and_position).
unchanged_object(fortress_lower_bridge, appearance_and_position).
unchanged_object(fortress_upper_stem, appearance_and_position).
unchanged_object(fortress_inner_courtyard, appearance_and_position).
unchanged_object(upper_chamber_frame, appearance_and_position).
unchanged_object(upper_chamber_interior, appearance_and_position).
unchanged_object(upper_burgundy_glyph, appearance_and_position).
unchanged_object(bottom_center_gate, size_colors_and_geometry).
unchanged_object(gate_gray_header, size_color_and_geometry).
unchanged_object(gate_burgundy_panel, size_color_and_geometry).
unchanged_object(lower_left_symbol_card, appearance_and_position).
unchanged_object(lower_left_burgundy_glyph, bounding_box_and_color).
unchanged_object(bottom_status_panel, appearance_and_position).
unchanged_object(bottom_status_track, appearance_and_position).
unchanged_object(green_status_block, appearance_and_position).
unchanged_object(cyan_status_blocks, appearance_and_position).
unchanged_object(blue_black_player, canonical_identity).
unchanged_object(player_black_core, canonical_identity).
unchanged_object(player_blue_tail, canonical_identity).

observed_action_effect(action('ACTION1', {}),
                       moved_up(bottom_center_gate, 5)).
observed_action_effect(action('ACTION1', {}),
                       fully_occluded(blue_black_player,
                                      bottom_center_gate)).
observed_action_effect(action('ACTION1', {}),
                       status_progress_unchanged).

action_effect(Action, Effect) :-
    observed_action_effect(Action, Effect).

% Hypotheses are separated from directly observed differences.
hypothesized_action_effect(
    action('ACTION1', {}),
    caused_occlusion(
        moved_up(bottom_center_gate, 5),
        blue_black_player
    )
).

hypothesized_action_effect(
    action('ACTION1', {}),
    transformed_glyph(lower_left_burgundy_glyph, horizontal_mirror)
).
