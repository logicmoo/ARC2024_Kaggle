object_match(prev_yellow_background, curr_yellow_background, 1.0).
matching_evidence(prev_yellow_background, curr_yellow_background,
    [same_color(yellow), same_extent, same_surrounding_regions, unchanged_pixels]).

object_match(prev_left_gray_border, curr_left_gray_border, 1.0).
matching_evidence(prev_left_gray_border, curr_left_gray_border,
    [same_color(light_gray), same_position(left_edge), same_shape, unchanged_pixels]).

object_match(prev_main_green_structure, curr_main_green_structure, 1.0).
matching_evidence(prev_main_green_structure, curr_main_green_structure,
    [same_color(green), same_shape, same_position, same_size, unchanged_pixels]).

object_match(prev_top_gray_panel, curr_top_gray_panel, 1.0).
matching_evidence(prev_top_gray_panel, curr_top_gray_panel,
    [same_color(light_gray), same_rectangular_shape, same_position, enclosed_by(main_green_structure), unchanged_pixels]).

object_match(prev_top_maroon_symbol, curr_top_maroon_symbol, 1.0).
matching_evidence(prev_top_maroon_symbol, curr_top_maroon_symbol,
    [same_color(maroon), same_composite_shape, same_position, inside(top_gray_panel), unchanged_pixels]).

object_match(prev_center_black_blue_marker, curr_center_black_blue_marker, 1.0).
matching_evidence(prev_center_black_blue_marker, curr_center_black_blue_marker,
    [same_colors([black,blue]), same_shape, same_position, inside(main_green_structure), unchanged_pixels]).

object_match(prev_lower_gray_block, curr_lower_gray_block, 1.0).
matching_evidence(prev_lower_gray_block, curr_lower_gray_block,
    [same_color(light_gray), same_rectangular_shape, same_position, above(lower_maroon_block), unchanged_pixels]).

object_match(prev_lower_maroon_block, curr_lower_maroon_block, 1.0).
matching_evidence(prev_lower_maroon_block, curr_lower_maroon_block,
    [same_color(maroon), same_rectangular_shape, same_position, below(lower_gray_block), unchanged_pixels]).

object_match(prev_bottom_left_gray_panel, curr_bottom_left_gray_panel, 1.0).
matching_evidence(prev_bottom_left_gray_panel, curr_bottom_left_gray_panel,
    [same_color(light_gray), same_square_shape, same_position(bottom_left), unchanged_pixels]).

object_match(prev_bottom_left_maroon_symbol, curr_bottom_left_maroon_symbol, 1.0).
matching_evidence(prev_bottom_left_maroon_symbol, curr_bottom_left_maroon_symbol,
    [same_color(maroon), same_composite_shape, same_position, inside(bottom_left_gray_panel), unchanged_pixels]).

object_match(prev_bottom_status_panel, curr_bottom_status_panel, 1.0).
matching_evidence(prev_bottom_status_panel, curr_bottom_status_panel,
    [same_color(light_gray), same_horizontal_shape, same_position(bottom), unchanged_pixels]).

object_match(prev_bottom_dark_track, curr_bottom_dark_track, 1.0).
matching_evidence(prev_bottom_dark_track, curr_bottom_dark_track,
    [same_color(dark_gray), same_horizontal_shape, same_position, inside(bottom_status_panel), unchanged_pixels]).

object_match(prev_bottom_green_indicator, curr_bottom_green_indicator, 1.0).
matching_evidence(prev_bottom_green_indicator, curr_bottom_green_indicator,
    [same_color(green), same_rectangular_shape, same_position, adjacent_to(bottom_dark_track), unchanged_pixels]).

object_match(prev_bottom_cyan_indicator_1, curr_bottom_cyan_indicator_1, 1.0).
matching_evidence(prev_bottom_cyan_indicator_1, curr_bottom_cyan_indicator_1,
    [same_color(cyan), same_square_shape, same_position, unchanged_pixels]).

object_match(prev_bottom_cyan_indicator_2, curr_bottom_cyan_indicator_2, 1.0).
matching_evidence(prev_bottom_cyan_indicator_2, curr_bottom_cyan_indicator_2,
    [same_color(cyan), same_square_shape, same_position, unchanged_pixels]).

object_match(prev_bottom_cyan_indicator_3, curr_bottom_cyan_indicator_3, 1.0).
matching_evidence(prev_bottom_cyan_indicator_3, curr_bottom_cyan_indicator_3,
    [same_color(cyan), same_shape, same_position(right_edge), unchanged_pixels]).

unmatched_objects(previous, []).
unmatched_objects(current, []).
