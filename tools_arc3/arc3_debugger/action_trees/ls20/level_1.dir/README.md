# `ls20` level `1` — Initial state

## Navigation

**Level start**

### Actions

[`LEFT`](LEFT/README.md) · [`UP`](UP/README.md)

---

- **Full game ID:** `ls20-9607627b`
- **State:** `NOT_FINISHED`
- **Image hash:** `9c879087889c0ade`
- **Incoming action:** `initial`

## Image

![ARC3 state](image.png)

## Files

- [image.png](image.png)
- [state.json](state.json)
- [object_registry.pl](object_registry.pl) — shared level registry (10 canonical identities)
- [objects.pl](objects.pl)
- [rules.pl](rules.pl)
- [turtle_from_image.pl](turtle_from_image.pl)

## Embedded files

<details>
<summary><code>state.json</code></summary>

````json
{
  "state": "NOT_FINISHED",
  "observation": {
    "game_id": "ls20-9607627b",
    "state": "NOT_FINISHED",
    "levels_completed": 0,
    "win_levels": 7,
    "action_input": {
      "id": "RESET",
      "data": {},
      "reasoning": null
    },
    "guid": "3758e2ba-d1de-4e0a-b087-a75755f5f5c6",
    "full_reset": true,
    "available_actions": [
      1,
      2,
      3,
      4
    ]
  },
  "step_count": 0,
  "game_id": "ls20-9607627b",
  "game_directory": "ls20",
  "level": "1",
  "image_hash": "9c879087889c0ade",
  "incoming_action": null,
  "action_directory": null,
  "action_data": {},
  "parent_node": null,
  "action_path": []
}
````

[Open `state.json`](state.json)

</details>

<details>
<summary><code>object_registry.pl</code></summary>

````prolog
% Canonical friendly object identities for this entire ARC3 level.
% Names are stable across every action-tree branch.

object_identity(base_glyph, compound_object, 'gray and dark red base glyph').
object_identity(central_hole, hole, 'yellow central opening').
object_identity(green_structure, compound_object, 'green branching enclosure').
object_identity(hud_panel, interface_object, 'lower-left status panel').
object_identity(left_boundary_bar, bar, 'gray left boundary bar').
object_identity(player_cursor, compound_object, 'black and blue cursor').
object_identity(status_marker, interface_object, 'green status marker').
object_identity(status_pips, interface_object, 'three cyan status pips').
object_identity(status_track, interface_object, 'bottom status track').
object_identity(top_glyph, glyph, 'dark red top glyph').
````

[Open `object_registry.pl`](object_registry.pl)

</details>

<details>
<summary><code>objects.pl</code></summary>

````prolog
% Canonical identities are loaded from the level registry.
:- ensure_loaded('object_registry.pl').

% State-specific facts for this action-tree node.
arc3_state(root).
grid_size(64,64).
coordinate_system(logical_grid,zero_based_columns_and_rows).
geometry_format(rect_col_row_width_height).

palette_color(black,rgb(0,0,0)).
palette_color(blue,rgb(0,116,217)).
palette_color(green,rgb(46,204,64)).
palette_color(yellow,rgb(255,220,0)).
palette_color(gray,rgb(170,170,170)).
palette_color(dark_gray,rgb(102,102,102)).
palette_color(cyan,rgb(127,219,255)).
palette_color(dark_red,rgb(135,12,37)).
background_color(yellow).

object_present(left_boundary_bar).
object_present(green_structure).
object_present(central_hole).
object_present(top_glyph).
object_present(player_cursor).
object_present(base_glyph).
object_present(hud_panel).
object_present(status_track).
object_present(status_pips).
object_absent(status_marker).

object_bbox(left_boundary_bar,bbox(0,0,3,51)).
object_bbox(green_structure,bbox(14,8,53,49)).
object_bbox(central_hole,bbox(24,30,33,44)).
object_bbox(top_glyph,bbox(35,11,37,13)).
object_bbox(player_cursor,bbox(20,31,22,33)).
object_bbox(base_glyph,bbox(34,45,38,49)).
object_bbox(hud_panel,bbox(1,53,10,62)).
object_bbox(status_track,bbox(12,60,63,63)).
object_bbox(status_pips,bbox(56,61,63,62)).

object_component(left_boundary_bar,bar,gray,rect(0,0,4,52)).
object_component(green_structure,top_green_shell,green,union([rect(32,8,9,1),rect(32,16,9,1),rect(32,9,1,7),rect(40,9,1,7)])).
object_component(green_structure,top_chamber_fill,gray,rect(33,9,7,7)).
object_component(green_structure,stem,green,rect(34,17,5,8)).
object_component(green_structure,upper_body,green,rect(14,25,40,5)).
object_component(green_structure,middle_left_branch,green,rect(14,30,15,10)).
object_component(green_structure,middle_right_body,green,rect(34,30,20,15)).
object_component(green_structure,lower_left_branch,green,rect(19,40,5,5)).
object_component(green_structure,lower_body_silhouette,green,rect(19,45,35,5)).
object_component(central_hole,opening,yellow,union([rect(29,30,5,10),rect(24,40,10,5)])).
object_component(top_glyph,dark_red_cells,dark_red,cells([cell(35,11),cell(36,11),cell(37,11),cell(37,12),cell(35,13),cell(37,13)])).
object_component(player_cursor,blue_cells,blue,cells([cell(20,32),cell(21,33)])).
object_component(player_cursor,black_cells,black,cells([cell(21,31),cell(21,32),cell(22,32)])).
object_component(base_glyph,gray_cap,gray,rect(34,45,5,2)).
object_component(base_glyph,dark_red_base,dark_red,rect(34,47,5,3)).
object_component(hud_panel,panel,gray,rect(1,53,10,10)).
object_component(hud_panel,dark_red_icon,dark_red,union([rect(3,55,6,2),rect(3,57,2,4),rect(7,59,2,2)])).
object_component(status_track,track_base,gray,rect(12,60,52,4)).
object_component(status_track,dark_inner_bar,dark_gray,rect(13,61,42,2)).
object_component(status_pips,pip_1,cyan,rect(56,61,2,2)).
object_component(status_pips,pip_2,cyan,rect(59,61,2,2)).
object_component(status_pips,pip_3,cyan,rect(62,61,2,2)).

object_relation(central_hole,enclosed_by,green_structure).
object_relation(top_glyph,inside,green_structure).
object_relation(base_glyph,embedded_in,green_structure).
object_relation(player_cursor,overlays,green_structure).
object_relation(status_pips,inside,status_track).
object_occluded_by(green_structure,player_cursor).
object_occluded_by(green_structure,base_glyph).

object_count(status_pips,3).
center_column(top_glyph,36).
center_column(base_glyph,36).
center_column(green_structure_stem,36).

turtle_program(left_boundary_bar,[fill_rect(gray,0,0,4,52)]).
turtle_program(green_structure,[fill_rect(green,32,8,9,1),fill_rect(green,32,16,9,1),fill_rect(green,32,9,1,7),fill_rect(green,40,9,1,7),fill_rect(gray,33,9,7,7),fill_rect(green,34,17,5,8),fill_rect(green,14,25,40,5),fill_rect(green,14,30,15,10),fill_rect(green,34,30,20,15),fill_rect(green,19,40,5,5),fill_rect(green,19,45,35,5)]).
turtle_program(central_hole,[fill_rect(yellow,29,30,5,10),fill_rect(yellow,24,40,10,5)]).
turtle_program(top_glyph,[fill_cells(dark_red,[cell(35,11),cell(36,11),cell(37,11),cell(37,12),cell(35,13),cell(37,13)])]).
turtle_program(player_cursor,[fill_cells(blue,[cell(20,32),cell(21,33)]),fill_cells(black,[cell(21,31),cell(21,32),cell(22,32)])]).
turtle_program(base_glyph,[fill_rect(gray,34,45,5,2),fill_rect(dark_red,34,47,5,3)]).
turtle_program(hud_panel,[fill_rect(gray,1,53,10,10),fill_rect(dark_red,3,55,6,2),fill_rect(dark_red,3,57,2,4),fill_rect(dark_red,7,59,2,2)]).
turtle_program(status_track,[fill_rect(gray,12,60,52,4),fill_rect(dark_gray,13,61,42,2)]).
turtle_program(status_pips,[fill_rect(cyan,56,61,2,2),fill_rect(cyan,59,61,2,2),fill_rect(cyan,62,61,2,2)]).
turtle_program(status_marker,[]).
````

[Open `objects.pl`](objects.pl)

</details>

<details>
<summary><code>rules.pl</code></summary>

````prolog
:- dynamic observed_rule/2.
:- dynamic hypothetical_rule/3.
:- dynamic evidence/3.
:- dynamic supported_by/2.
:- dynamic contradicted_by/2.

observed_rule(hole_is_enclosed,encloses(green_structure,central_hole)).
observed_rule(glyphs_share_center_column,aligned_center_column([top_glyph,base_glyph],36)).
observed_rule(stem_connects_aligned_glyphs,centered_on(green_structure_stem,36)).
observed_rule(cursor_is_on_structure,overlays(player_cursor,green_structure)).
observed_rule(status_has_three_pips,count(status_pips,3)).

evidence(hole_boundary_current,current_frame,boundary_is_green(central_hole,green_structure)).
evidence(glyph_alignment_current,current_frame,centers([top_glyph-36,base_glyph-36])).
evidence(stem_alignment_current,current_frame,center_column(green_structure_stem,36)).
evidence(cursor_overlap_current,current_frame,cursor_cells_within_structure_silhouette).
evidence(pip_count_current,current_frame,three_disjoint_cyan_rectangles).

supported_by(hole_is_enclosed,hole_boundary_current).
supported_by(glyphs_share_center_column,glyph_alignment_current).
supported_by(stem_connects_aligned_glyphs,stem_alignment_current).
supported_by(cursor_is_on_structure,cursor_overlap_current).
supported_by(status_has_three_pips,pip_count_current).
````

[Open `rules.pl`](rules.pl)

</details>

<details>
<summary><code>turtle_from_image.pl</code></summary>

````prolog
turtle_from_image(current_frame,Program) :-
    turtle_program(current_frame_from_image,Program).

turtle_program(current_frame_from_image,[
    clear(yellow),
    fill_rect(gray,0,0,4,52),
    fill_rect(green,32,8,9,1),
    fill_rect(green,32,16,9,1),
    fill_rect(green,32,9,1,7),
    fill_rect(green,40,9,1,7),
    fill_rect(gray,33,9,7,7),
    fill_rect(green,34,17,5,8),
    fill_rect(green,14,25,40,5),
    fill_rect(green,14,30,15,10),
    fill_rect(green,34,30,20,15),
    fill_rect(green,19,40,5,5),
    fill_rect(green,19,45,35,5),
    fill_rect(yellow,29,30,5,10),
    fill_rect(yellow,24,40,10,5),
    fill_cells(dark_red,[cell(35,11),cell(36,11),cell(37,11),cell(37,12),cell(35,13),cell(37,13)]),
    fill_cells(blue,[cell(20,32),cell(21,33)]),
    fill_cells(black,[cell(21,31),cell(21,32),cell(22,32)]),
    fill_rect(gray,34,45,5,2),
    fill_rect(dark_red,34,47,5,3),
    fill_rect(gray,1,53,10,10),
    fill_rect(dark_red,3,55,6,2),
    fill_rect(dark_red,3,57,2,4),
    fill_rect(dark_red,7,59,2,2),
    fill_rect(gray,12,60,52,4),
    fill_rect(dark_gray,13,61,42,2),
    fill_rect(cyan,56,61,2,2),
    fill_rect(cyan,59,61,2,2),
    fill_rect(cyan,62,61,2,2)
]).
````

[Open `turtle_from_image.pl`](turtle_from_image.pl)

</details>
