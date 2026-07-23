# `ls20` level `1` — LEFT / LEFT / LEFT / LEFT / UP / UP

## Navigation

[Level start](../../../../../../README.md) · [Parent](../README.md)

### Actions

*No child actions recorded yet.*

---

- **Full game ID:** `ls20`
- **State:** `NOT_FINISHED`
- **Image hash:** `83c115d58c5a03cb`
- **Incoming action:** `ACTION1`

## Image

![ARC3 state](image.png)

## Files

- [image.png](image.png)
- [state.json](state.json)
- [object_registry.pl](../../../../../../object_registry.pl) — shared level registry (10 canonical identities)
- [differences.pl](differences.pl)
- [objects.pl](objects.pl)
- [rules.pl](rules.pl)
- [similarities.pl](similarities.pl)
- [turtle_from_diff.pl](turtle_from_diff.pl)
- [turtle_from_image.pl](turtle_from_image.pl)

## Embedded files

*Canonical identities are shared through [`object_registry.pl`](../../../../../../object_registry.pl) and are not repeated in every node.*

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
      "id": "ACTION1",
      "data": {},
      "reasoning": null
    },
    "guid": "8526a7db-5343-4b2f-ae65-cd125147c74c",
    "full_reset": false,
    "available_actions": [
      1,
      2,
      3,
      4
    ]
  },
  "step_count": 5,
  "game_id": "ls20",
  "game_directory": "ls20",
  "level": "1",
  "image_hash": "83c115d58c5a03cb",
  "incoming_action": "ACTION1",
  "action_directory": "UP",
  "action_data": {},
  "parent_node": "..",
  "action_path": [
    "LEFT",
    "LEFT",
    "LEFT",
    "LEFT",
    "UP",
    "UP"
  ]
}
````

[Open `state.json`](state.json)

</details>

<details>
<summary><code>differences.pl</code></summary>

````prolog
parent_state(previous).
current_state(current).

direct_change(base_glyph,translated(0,-5)).
parent_bbox(base_glyph,19,40,5,5).
current_bbox(base_glyph,19,35,5,5).
changed_cells(base_glyph,rectangle(19,35,5,5),added_current_appearance).
changed_cells(base_glyph,rectangle(19,40,5,5),restored_green_structure).

direct_change(status_marker,extended_right(1)).
parent_bbox(status_marker,13,61,5,2).
current_bbox(status_marker,13,61,6,2).
changed_cells(status_marker,rectangle(18,61,1,2),dark_gray_to_green).

unchanged(green_structure).
unchanged(central_hole).
unchanged(top_glyph).
unchanged(player_cursor).
unchanged(hud_panel).
unchanged(left_boundary_bar).
unchanged(status_track).
unchanged(status_pips).
````

[Open `differences.pl`](differences.pl)

</details>

<details>
<summary><code>objects.pl</code></summary>

````prolog
% Canonical identities are loaded from the level registry.
:- ensure_loaded('../../../../../../object_registry.pl').

% State-specific facts for this action-tree node.
state(current).
canvas_size(64,64).
background_color(yellow).

object(green_structure,compound_object).
object_bbox(green_structure,14,9,40,41).
object_part(green_structure,rectangle(14,25,40,25,green)).
object_part(green_structure,rectangle(33,9,8,8,green)).
object_part(green_structure,rectangle(34,17,5,8,green)).
object_part(green_structure,rectangle(34,10,6,6,gray)).
contains(green_structure,central_hole).

object(central_hole,hole).
object_bbox(central_hole,29,30,5,15).
object_part(central_hole,rectangle(29,30,5,15,yellow)).

object(top_glyph,glyph).
object_bbox(top_glyph,35,11,3,3).
object_cells(top_glyph,[cell(35,11),cell(36,11),cell(37,11),cell(35,12),cell(37,12),cell(37,13)]).
color(top_glyph,dark_red).
contained_in(top_glyph,green_structure).

object(player_cursor,compound_object).
object_bbox(player_cursor,20,31,2,3).
object_part(player_cursor,rectangle(21,31,1,2,black)).
object_part(player_cursor,rectangle(20,33,2,1,blue)).
contained_in(player_cursor,green_structure).

object(base_glyph,compound_object).
object_bbox(base_glyph,19,35,5,5).
object_part(base_glyph,rectangle(19,35,5,2,gray)).
object_part(base_glyph,rectangle(19,37,5,3,dark_red)).
contained_in(base_glyph,green_structure).

object(hud_panel,interface_object).
object_bbox(hud_panel,1,53,10,10).
object_part(hud_panel,rectangle(1,53,10,10,gray)).

object(left_boundary_bar,bar).
object_bbox(left_boundary_bar,3,55,6,6).
object_part(left_boundary_bar,rectangle(3,55,6,2,dark_red)).
object_part(left_boundary_bar,rectangle(3,57,2,4,dark_red)).
object_part(left_boundary_bar,rectangle(7,59,2,2,dark_red)).
contained_in(left_boundary_bar,hud_panel).

object(status_track,interface_object).
object_bbox(status_track,13,61,42,2).
object_part(status_track,rectangle(13,61,42,2,dark_gray)).

object(status_marker,interface_object).
object_bbox(status_marker,13,61,6,2).
object_part(status_marker,rectangle(13,61,6,2,green)).
contained_in(status_marker,status_track).

object(status_pips,interface_object).
object_bbox(status_pips,56,61,8,2).
object_part(status_pips,rectangle(56,61,2,2,cyan)).
object_part(status_pips,rectangle(59,61,2,2,cyan)).
object_part(status_pips,rectangle(62,61,2,2,cyan)).

turtle_program(green_structure,[fill_rect(14,25,40,25,green),fill_rect(33,9,8,8,green),fill_rect(34,17,5,8,green),fill_rect(34,10,6,6,gray),fill_rect(29,30,5,15,yellow)]).
turtle_program(top_glyph,[fill_cells([cell(35,11),cell(36,11),cell(37,11),cell(35,12),cell(37,12),cell(37,13)],dark_red)]).
turtle_program(player_cursor,[fill_rect(21,31,1,2,black),fill_rect(20,33,2,1,blue)]).
turtle_program(base_glyph,[fill_rect(19,35,5,2,gray),fill_rect(19,37,5,3,dark_red)]).
turtle_program(hud_panel,[fill_rect(1,53,10,10,gray)]).
turtle_program(left_boundary_bar,[fill_rect(3,55,6,2,dark_red),fill_rect(3,57,2,4,dark_red),fill_rect(7,59,2,2,dark_red)]).
turtle_program(status_track,[fill_rect(13,61,42,2,dark_gray)]).
turtle_program(status_marker,[fill_rect(13,61,6,2,green)]).
turtle_program(status_pips,[fill_rect(56,61,2,2,cyan),fill_rect(59,61,2,2,cyan),fill_rect(62,61,2,2,cyan)]).
````

[Open `objects.pl`](objects.pl)

</details>

<details>
<summary><code>rules.pl</code></summary>

````prolog
observed_rule(action1_moves_base_glyph_up,five_rows).
observed_rule(action1_advances_status_marker,one_column).

hypothetical_rule(base_glyph_motion,toward_player_cursor,action1).
hypothetical_rule(status_track_progress,one_column_per_action,action1).

evidence(action1_moves_base_glyph_up,parent_bbox(19,40,5,5),current_bbox(19,35,5,5)).
evidence(action1_moves_base_glyph_up,shape_preserved,true).
evidence(action1_advances_status_marker,parent_width(5),current_width(6)).
evidence(base_glyph_motion,current_relative_position,below_player_cursor).
evidence(status_track_progress,new_green_cells,rectangle(18,61,1,2)).

supported_by(action1_moves_base_glyph_up,base_glyph_translation_evidence).
supported_by(action1_advances_status_marker,status_marker_extension_evidence).
supported_by(base_glyph_motion,reduced_vertical_distance_to_player_cursor).
supported_by(status_track_progress,single_rightward_extension).

contradicted_by(action1_moves_base_glyph_up,none).
contradicted_by(action1_advances_status_marker,none).
contradicted_by(base_glyph_motion,insufficient_multiple_step_evidence).
contradicted_by(status_track_progress,insufficient_multiple_action_evidence).
````

[Open `rules.pl`](rules.pl)

</details>

<details>
<summary><code>similarities.pl</code></summary>

````prolog
correspondence(parent,base_glyph,current,base_glyph,translated(0,-5)).
correspondence(parent,status_marker,current,status_marker,right_extended(1)).
correspondence(parent,green_structure,current,green_structure,unchanged).
correspondence(parent,central_hole,current,central_hole,unchanged).
correspondence(parent,top_glyph,current,top_glyph,unchanged).
correspondence(parent,player_cursor,current,player_cursor,unchanged).
correspondence(parent,hud_panel,current,hud_panel,unchanged).
correspondence(parent,left_boundary_bar,current,left_boundary_bar,unchanged).
correspondence(parent,status_track,current,status_track,unchanged).
correspondence(parent,status_pips,current,status_pips,unchanged).

same_shape(parent,base_glyph,current,base_glyph).
same_colors(parent,base_glyph,current,base_glyph).
same_position(parent,player_cursor,current,player_cursor).
````

[Open `similarities.pl`](similarities.pl)

</details>

<details>
<summary><code>turtle_from_diff.pl</code></summary>

````prolog
turtle_program(parent_to_current,[fill_rect(19,40,5,5,green),fill_rect(19,35,5,2,gray),fill_rect(19,37,5,3,dark_red),fill_rect(18,61,1,2,green)]).
````

[Open `turtle_from_diff.pl`](turtle_from_diff.pl)

</details>

<details>
<summary><code>turtle_from_image.pl</code></summary>

````prolog
turtle_program(current_frame,[fill_rect(0,0,64,64,yellow),fill_rect(14,25,40,25,green),fill_rect(33,9,8,8,green),fill_rect(34,17,5,8,green),fill_rect(34,10,6,6,gray),fill_rect(29,30,5,15,yellow),fill_cells([cell(35,11),cell(36,11),cell(37,11),cell(35,12),cell(37,12),cell(37,13)],dark_red),fill_rect(21,31,1,2,black),fill_rect(20,33,2,1,blue),fill_rect(19,35,5,2,gray),fill_rect(19,37,5,3,dark_red),fill_rect(1,53,10,10,gray),fill_rect(3,55,6,2,dark_red),fill_rect(3,57,2,4,dark_red),fill_rect(7,59,2,2,dark_red),fill_rect(13,61,42,2,dark_gray),fill_rect(13,61,6,2,green),fill_rect(56,61,2,2,cyan),fill_rect(59,61,2,2,cyan),fill_rect(62,61,2,2,cyan)]).
````

[Open `turtle_from_image.pl`](turtle_from_image.pl)

</details>
