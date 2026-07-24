object_match(previous_background, current_background,
    match_info(1.0, [same_color(yellow), same_extent, unchanged])).

object_match(previous_left_wall, current_left_wall,
    match_info(1.0, [same_color(light_gray), same_bbox(0, 0, 39, 519), same_shape])).

object_match(previous_green_structure, current_green_structure,
    match_info(0.99, [same_color(green), same_position, same_shape, locally_occluded_by_moved_gate])).

object_match(previous_avatar, current_avatar,
    match_info(1.0, [same_colors([blue, black]), same_bbox(200, 310, 229, 339), same_shape, same_position])).

object_match(previous_top_panel, current_top_panel,
    match_info(1.0, [same_colors([light_gray, maroon]), same_bbox(330, 90, 399, 159), same_shape, same_position])).

object_match(previous_lower_left_panel, current_lower_left_panel,
    match_info(1.0, [same_colors([light_gray, maroon]), same_bbox(10, 530, 109, 629), same_shape, same_position])).

object_match(previous_gate, current_gate,
    match_info(1.0, [same_colors([light_gray, maroon]), same_size(50, 50), same_shape, displacement(-50, 0), moved_left])).

object_match(previous_bottom_panel, current_bottom_panel,
    match_info(0.99, [same_color(light_gray), same_bbox(120, 600, 639, 639), same_shape, same_position])).

object_match(previous_bottom_dark_track, current_bottom_dark_track,
    match_info(0.97, [same_color(dark_gray), same_vertical_extent(610, 629), shared_right_edge(549), shortened_from_left_by(10)])).

object_match(previous_cyan_indicator_1, current_cyan_indicator_1,
    match_info(1.0, [same_color(cyan), same_bbox(560, 610, 579, 629), same_shape, same_position])).

object_match(previous_cyan_indicator_2, current_cyan_indicator_2,
    match_info(1.0, [same_color(cyan), same_bbox(590, 610, 609, 629), same_shape, same_position])).

object_match(previous_cyan_indicator_3, current_cyan_indicator_3,
    match_info(1.0, [same_color(cyan), same_bbox(620, 610, 639, 629), same_shape, same_position])).

unmatched_objects(previous, []).

unmatched_object(current, bottom_green_progress_segment,
    unmatched_info(0.99, [new_object, color(green), bbox(130, 610, 139, 629), replaces_leftmost_part_of_dark_track])).
