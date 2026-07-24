coordinate_units(previous, cells).
coordinate_units(current, pixels).
scale_factor(previous_to_current, 10).

normalized_canvas_size(previous, 640, 640).
normalized_canvas_size(current, 640, 640).

object_correspondence(background_yellow, background_yellow).
object_correspondence(left_wall, left_rail).
object_correspondence(arena_green, main_green).
object_correspondence(top_pad, top_panel_gray).
object_correspondence(top_glyph, top_glyph).
object_correspondence(door_lintel, body_panel_gray).
object_correspondence(door_maroon, body_indicator).
object_correspondence(inventory_card, control_panel).
object_correspondence(inventory_glyph, control_glyph).
object_correspondence(status_tray, status_panel).
object_correspondence(status_green_segment, meter_green).
object_correspondence(status_dark_segment, meter_dark).
object_correspondence(status_aqua_1, slot_blue_1).
object_correspondence(status_aqua_2, slot_blue_2).
object_correspondence(status_aqua_3, slot_blue_3).

added_object(_) :-
    fail.

removed_object(player_black).
removed_object(player_blue).
removed_object(arena_cavity).

unchanged_object(background_yellow, background_yellow).
unchanged_object(left_wall, left_rail).
unchanged_object(top_pad, top_panel_gray).
unchanged_object(top_glyph, top_glyph).
unchanged_object(inventory_card, control_panel).
unchanged_object(status_tray, status_panel).
unchanged_object(status_green_segment, meter_green).
unchanged_object(status_dark_segment, meter_dark).

changed_object(arena_green, main_green,
    [representation_changed,
     cavity_encoded_as_interior_hole,
     rendered_shape_preserved]).

changed_object(door_lintel, body_panel_gray,
    [moved(delta(0, -50)),
     geometry_resized(size(50, 20), size(50, 50)),
     visible_size_preserved(size(50, 20)),
     renamed]).

changed_object(door_maroon, body_indicator,
    [moved(delta(0, -50)),
     geometry_preserved,
     renamed]).

changed_object(inventory_glyph, control_glyph,
    [geometry_changed,
     horizontal_reflection,
     bounding_box_preserved,
     component_count_preserved]).

changed_object(status_aqua_1, slot_blue_1,
    [recolored(aqua, light_blue), renamed]).
changed_object(status_aqua_2, slot_blue_2,
    [recolored(aqua, light_blue), renamed]).
changed_object(status_aqua_3, slot_blue_3,
    [recolored(aqua, light_blue), renamed]).

moved_object(door_lintel, body_panel_gray,
    bbox(190, 350, 239, 369),
    bbox(190, 300, 239, 349)).
moved_object(door_maroon, body_indicator,
    bbox(190, 370, 239, 399),
    bbox(190, 320, 239, 349)).

movement_delta(door_lintel, body_panel_gray, 0, -50).
movement_delta(door_maroon, body_indicator, 0, -50).

resized_object(body_panel_gray, size(50, 20), size(50, 50)).

recolored_object(slot_blue_1, aqua, light_blue).
recolored_object(slot_blue_2, aqua, light_blue).
recolored_object(slot_blue_3, aqua, light_blue).

unchanged_geometry(background_yellow, background_yellow).
unchanged_geometry(left_wall, left_rail).
unchanged_geometry(top_pad, top_panel_gray).
unchanged_geometry(top_glyph, top_glyph).
unchanged_geometry(door_maroon, body_indicator).
unchanged_geometry(inventory_card, control_panel).
unchanged_geometry(status_tray, status_panel).
unchanged_geometry(status_green_segment, meter_green).
unchanged_geometry(status_dark_segment, meter_dark).
unchanged_geometry(status_aqua_1, slot_blue_1).
unchanged_geometry(status_aqua_2, slot_blue_2).
unchanged_geometry(status_aqua_3, slot_blue_3).

unchanged_bbox(inventory_glyph, control_glyph,
    bbox(30, 550, 89, 609)).
unchanged_component_count(inventory_glyph, control_glyph, 2).

absorbed_representation(arena_cavity, interior_hole(main_green)).
visual_feature_preserved(arena_cavity, yellow_background_visible_through(main_green)).
composite_correspondence(
    composite(door_lintel, door_maroon),
    composite(body_panel_gray, body_indicator)).

palette_change(green, rgb(46, 204, 64), rgb(45, 204, 62)).
palette_change(maroon, rgb(133, 20, 75), rgb(153, 9, 40)).
palette_change(aqua_to_light_blue,
    rgb(127, 219, 255),
    rgb(135, 206, 235)).

observation(no_added_objects).
observation(removed(player_black)).
observation(removed(player_blue)).
observation(identifier_removed(arena_cavity)).
observation(door_composite_shifted_up(50)).
observation(control_glyph_reflected_horizontally).
observation(cavity_visual_appearance_preserved).
observation(status_slots_symbolically_recolored(aqua, light_blue)).
observation(description_scale_changed(10)).
observation(canvas_pixel_extent_preserved(640, 640)).

hypothesis(
    action_effect(enter_or_activate_door,
        [avatar_disappeared,
         door_composite_moved_up(50),
         control_glyph_reoriented]),
    0.74).

hypothesis(
    action_effect(move(down),
        triggered(enter_or_activate_door)),
    0.58).

hypothesis(
    composite_avatar(player_black, player_blue),
    0.95).

hypothesis(
    palette_differences_are_description_or_rendering_variation,
    0.82).

action_effect(Action, Effect) :-
    hypothesis(action_effect(Action, Effect), _).

observed_difference(Difference) :-
    observation(Difference).

hypothesized_difference(Hypothesis, Confidence) :-
    hypothesis(Hypothesis, Confidence).
