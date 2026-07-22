object_match(previous(background_yellow), current(background_yellow), match(1.00, [same_color(yellow), same_extent, unchanged])).
object_match(previous(left_gray_border), current(left_gray_border), match(1.00, [same_color(gray), same_position, same_shape, unchanged])).
object_match(previous(main_green_structure), current(main_green_structure), match(0.98, [same_color(green), same_position, same_overall_shape, local_occlusion_change_due_to_moved_block])).
object_match(previous(top_gray_panel), current(top_gray_panel), match(1.00, [same_color(gray), same_position, same_dimensions, unchanged])).
object_match(previous(top_maroon_glyph), current(top_maroon_glyph), match(1.00, [same_color(maroon), same_position, same_shape, unchanged])).
object_match(previous(left_black_blue_marker), current(left_black_blue_marker), match(1.00, [same_colors([black,blue]), same_position, same_shape, unchanged])).
object_match(previous(lower_left_gray_panel), current(lower_left_gray_panel), match(1.00, [same_color(gray), same_position, same_dimensions, unchanged])).
object_match(previous(lower_left_maroon_glyph), current(lower_left_maroon_glyph), match(1.00, [same_color(maroon), same_position, same_shape, unchanged])).
object_match(previous(maroon_gray_block), current(maroon_gray_block), match(1.00, [same_colors([gray,maroon]), same_dimensions, same_orientation, translation(-50,0)])).
object_match(previous(bottom_status_bar), current(bottom_status_bar), match(0.99, [same_position, same_dimensions, same_gray_track, same_cyan_cells])).
object_match(previous(bottom_green_indicator), current(bottom_green_indicator), match(0.92, [same_color(green), same_left_anchor, increased_width])).

unmatched_objects(previous, []).
unmatched_objects(current, []).
