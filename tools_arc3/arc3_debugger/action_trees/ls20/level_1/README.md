# `ls20` level `1` — Initial state

## Navigation

**Level start**

### Actions

[`LEFT`](LEFT/README.md) · [`UP`](UP/README.md)

---

- **Full game ID:** `ls20`
- **State:** `NOT_FINISHED`
- **Image hash:** `9c879087889c0ade`
- **Incoming action:** `initial`

## Image

![ARC3 state](image.png)

## Files

- [image.png](image.png)
- [state.json](state.json)
- [object_registry.pl](object_registry.pl) — shared level registry (24 canonical identities)
- [objects.pl](objects.pl)
- [rules.pl](rules.pl)
- [turtle_from_image.pl](turtle_from_image.pl)

## Embedded files

<details>
<summary><code>state.json</code></summary>

````json
{
  "state": "NOT_FINISHED",
  "level": "1",
  "level_source": "default",
  "next_level_expected": null,
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
    "guid": "dd7c8ad1-3442-407d-a2b3-f24587a00d9e",
    "full_reset": true,
    "available_actions": [
      1,
      2,
      3,
      4
    ]
  },
  "step_count": 0,
  "game_id": "ls20",
  "game_directory": "ls20",
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
% Names are created once and reused from the beginning to the end.

object_identity(black_player_head, player_component, 'black upper portion of the player marker').
object_identity(blue_black_player, player, 'small blue and black player marker').
object_identity(blue_player_tail, player_component, 'blue lower-left portion of the player marker').
object_identity(bottom_center_gate, compound_block, 'two-color gate embedded in the bottom of the green structure').
object_identity(bottom_dark_status_bar, bar, 'dark horizontal bar inside the bottom status panel').
object_identity(bottom_status_panel, interface_bar, 'long gray status panel along the bottom edge').
object_identity(gray_gate_cap, rectangle, 'gray upper cap of the bottom-center gate').
object_identity(gray_upper_chamber_interior, chamber, 'gray interior of the upper chamber').
object_identity(green_chamber_stem, vertical_bar, 'green vertical stem connecting the upper chamber to the main platform').
object_identity(green_main_platform, platform, 'broad central green platform').
object_identity(green_maze_structure, compound_structure, 'large green maze-like structure').
object_identity(green_upper_chamber_frame, enclosure, 'green frame around the upper chamber').
object_identity(left_cyan_status_cell, indicator, 'left cyan status cell').
object_identity(left_gray_border, border, 'left vertical gray boundary').
object_identity(lower_left_control_panel, panel, 'gray control panel at the lower left').
object_identity(lower_left_red_hook_glyph, glyph, 'large dark red hooked symbol on the lower-left panel').
object_identity(lower_left_red_square, glyph_component, 'small detached dark red square on the lower-left panel').
object_identity(middle_cyan_status_cell, indicator, 'middle cyan status cell').
object_identity(red_gate_base, rectangle, 'dark red lower block of the bottom-center gate').
object_identity(right_cyan_status_cell, indicator, 'right cyan status cell at the image edge').
object_identity(upper_red_hook_glyph, glyph, 'dark red hooked symbol in the upper chamber').
object_identity(upper_red_square, glyph_component, 'small detached dark red square in the upper chamber').
object_identity(yellow_inner_cavity, hole, 'yellow stepped cavity enclosed within the green structure').
object_identity(yellow_playfield, background, 'yellow playfield background').
````

[Open `object_registry.pl`](object_registry.pl)

</details>

<details>
<summary><code>objects.pl</code></summary>

````prolog
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.

object_identity(black_player_head, player_component, 'black upper portion of the player marker').
object_identity(blue_black_player, player, 'small blue and black player marker').
object_identity(blue_player_tail, player_component, 'blue lower-left portion of the player marker').
object_identity(bottom_center_gate, compound_block, 'two-color gate embedded in the bottom of the green structure').
object_identity(bottom_dark_status_bar, bar, 'dark horizontal bar inside the bottom status panel').
object_identity(bottom_status_panel, interface_bar, 'long gray status panel along the bottom edge').
object_identity(gray_gate_cap, rectangle, 'gray upper cap of the bottom-center gate').
object_identity(gray_upper_chamber_interior, chamber, 'gray interior of the upper chamber').
object_identity(green_chamber_stem, vertical_bar, 'green vertical stem connecting the upper chamber to the main platform').
object_identity(green_main_platform, platform, 'broad central green platform').
object_identity(green_maze_structure, compound_structure, 'large green maze-like structure').
object_identity(green_upper_chamber_frame, enclosure, 'green frame around the upper chamber').
object_identity(left_cyan_status_cell, indicator, 'left cyan status cell').
object_identity(left_gray_border, border, 'left vertical gray boundary').
object_identity(lower_left_control_panel, panel, 'gray control panel at the lower left').
object_identity(lower_left_red_hook_glyph, glyph, 'large dark red hooked symbol on the lower-left panel').
object_identity(lower_left_red_square, glyph_component, 'small detached dark red square on the lower-left panel').
object_identity(middle_cyan_status_cell, indicator, 'middle cyan status cell').
object_identity(red_gate_base, rectangle, 'dark red lower block of the bottom-center gate').
object_identity(right_cyan_status_cell, indicator, 'right cyan status cell at the image edge').
object_identity(upper_red_hook_glyph, glyph, 'dark red hooked symbol in the upper chamber').
object_identity(upper_red_square, glyph_component, 'small detached dark red square in the upper chamber').
object_identity(yellow_inner_cavity, hole, 'yellow stepped cavity enclosed within the green structure').
object_identity(yellow_playfield, background, 'yellow playfield background').

% State-specific object facts generated for this node.
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.


% State-specific object facts generated for this node.
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.


% State-specific object facts generated for this node.
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.


% State-specific object facts generated for this node.
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.


% State-specific object facts generated for this node.
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.


% State-specific object facts generated for this node.
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.


% State-specific object facts generated for this node.
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.


% State-specific object facts generated for this node.
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.


% State-specific object facts generated for this node.
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.


% State-specific object facts generated for this node.
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.


% State-specific object facts generated for this node.
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.


% State-specific object facts generated for this node.
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.


% State-specific object facts generated for this node.
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.


% State-specific object facts generated for this node.
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.


% State-specific object facts generated for this node.
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.


% State-specific object facts generated for this node.
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.


% State-specific object facts generated for this node.
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.


% State-specific object facts generated for this node.
% Canonical friendly object identities for this entire ARC3 level.
% Names are created once and reused from the beginning to the end.


% State-specific object facts generated for this node.
image_size(640, 640).
coordinate_system(pixel, origin_top_left, x_right, y_down).
grid_size(64, 64).
cell_size(10, 10).

color(yellow, '#ffdc00').
color(light_gray, '#b3b3b3').
color(green, '#2ecc40').
color(maroon, '#870c25').
color(blue, '#0074d9').
color(black, '#000000').
color(dark_gray, '#606060').
color(light_blue, '#7fdbff').

visible_object(background_yellow).
visible_object(left_gray_strip).
visible_object(main_green_structure).
visible_object(top_gray_inset).
visible_object(top_maroon_glyph).
visible_object(player_black).
visible_object(player_blue).
visible_object(lower_gray_gate).
visible_object(lower_maroon_gate).
visible_object(lower_left_gray_card).
visible_object(lower_left_maroon_glyph).
visible_object(bottom_control_panel).
visible_object(bottom_dark_slot).
visible_object(bottom_button_1).
visible_object(bottom_button_2).
visible_object(bottom_button_3).

object_type(background_yellow, background).
object_type(left_gray_strip, sidebar).
object_type(main_green_structure, connected_platform).
object_type(top_gray_inset, inset_panel).
object_type(top_maroon_glyph, glyph).
object_type(player_black, avatar_component).
object_type(player_blue, avatar_component).
object_type(lower_gray_gate, gate_component).
object_type(lower_maroon_gate, gate_component).
object_type(lower_left_gray_card, card).
object_type(lower_left_maroon_glyph, glyph).
object_type(bottom_control_panel, control_panel).
object_type(bottom_dark_slot, display_slot).
object_type(bottom_button_1, button).
object_type(bottom_button_2, button).
object_type(bottom_button_3, button).

bbox(background_yellow, 0, 0, 640, 640).
bbox(left_gray_strip, 0, 0, 40, 520).
bbox(main_green_structure, 140, 80, 400, 420).
bbox(top_gray_inset, 330, 90, 70, 70).
bbox(top_maroon_glyph, 350, 110, 30, 30).
bbox(player_black, 210, 310, 20, 20).
bbox(player_blue, 200, 320, 20, 20).
bbox(lower_gray_gate, 340, 450, 50, 20).
bbox(lower_maroon_gate, 340, 470, 50, 30).
bbox(lower_left_gray_card, 10, 530, 100, 100).
bbox(lower_left_maroon_glyph, 30, 550, 60, 60).
bbox(bottom_control_panel, 120, 600, 520, 40).
bbox(bottom_dark_slot, 130, 610, 420, 20).
bbox(bottom_button_1, 560, 610, 20, 20).
bbox(bottom_button_2, 590, 610, 20, 20).
bbox(bottom_button_3, 620, 610, 20, 20).

object_color(background_yellow, yellow).
object_color(left_gray_strip, light_gray).
object_color(main_green_structure, green).
object_color(top_gray_inset, light_gray).
object_color(top_maroon_glyph, maroon).
object_color(player;

_black, black).
object_color(player_blue, blue).
object_color(lower_gray_gate, light_gray).
object_color(lower_maroon_gate, maroon).
object_color(lower_left_gray_card, light_gray).
object_color(lower_left_maroon_glyph, maroon).
object_color(bottom_control_panel, light_gray).
object_color(bottom_dark_slot, dark_gray).
object_color(bottom_button_1, light_blue).
object_color(bottom_button_2, light_blue).
object_color(bottom_button_3, light_blue).

geometry(background_yellow, rectangle(0, 0, 640, 640)).
geometry(left_gray_strip, rectangle(0, 0, 40, 520)).
geometry(main_green_structure,
    union([
        rectangle(320, 80, 90, 90),
        rectangle(340, 160, 50, 90),
        rectangle(140, 250, 400, 50),
        rectangle(140, 300, 150, 100),
        rectangle(340, 300, 200, 150),
        rectangle(190, 400, 50, 100),
        rectangle(190, 450, 350, 50)
    ])).
geometry(top_gray_inset, rectangle(330, 90, 70, 70)).
geometry(top_maroon_glyph,
    union([
        rectangle(350, 110, 30, 10),
        rectangle(370, 120, 10, 20),
        rectangle(350, 130, 10, 10)
    ])).
geometry(player_black,
    union([
        rectangle(210, 310, 10, 20),
        rectangle(220, 320, 10, 10)
    ])).
geometry(player_blue,
    union([
        rectangle(200, 320, 10, 10),
        rectangle(210, 330, 10, 10)
    ])).
geometry(lower_gray_gate, rectangle(340, 450, 50, 20)).
geometry(lower_maroon_gate, rectangle(340, 470, 50, 30)).
geometry(lower_left_gray_card, rectangle(10, 530, 100, 100)).
geometry(lower_left_maroon_glyph,
    union([
        rectangle(30, 550, 60, 20),
        rectangle(30, 570, 20, 40),
        rectangle(70, 590, 20, 20)
    ])).
geometry(bottom_control_panel, rectangle(120, 600, 520, 40)).
geometry(bottom_dark_slot, rectangle(130, 610, 420, 20)).
geometry(bottom_button_1, rectangle(560, 610, 20, 20)).
geometry(bottom_button_2, rectangle(590, 610, 20, 20)).
geometry(bottom_button_3, rectangle(620, 610, 20, 20)).

aligned_to_grid(background_yellow, 10).
aligned_to_grid(left_gray_strip, 10).
aligned_to_grid(main_green_structure, 10).
aligned_to_grid(top_gray_inset, 10).
aligned_to_grid(top_maroon_glyph, 10).
aligned_to_grid(player_black, 10).
aligned_to_grid(player_blue, 10).
aligned_to_grid(lower_gray_gate, 10).
aligned_to_grid(lower_maroon_gate, 10).
aligned_to_grid(lower_left_gray_card, 10).
aligned_to_grid(lower_left_maroon_glyph, 10).
aligned_to_grid(bottom_control_panel, 10).
aligned_to_grid(bottom_vdark_slot, 10).
aligned_to_grid(bottom_button_1, 10).
aligned_to_grid(bottom_button_2, 10).
aligned_to_grid(bottom_button_3, 10).

connected(main_green_structure).
connected(player_black).
connected(player_blue).
connected(lower_gray_gate).
connected(lower_maroon_gate).
connected(lower_left_gray_card).
connected(bottom_control_panel).
connected(bottom_dark_slot).
connected(bottom_button_1).
connected(bottom_button_2).
connected(bottom_button_3).
disconnected_components(top_maroon_glyph, 2).
disconnected_components(lower_left_maroon_glyph, 2).

contains(background_yellow, main_green_structure).
contains(background_yellow, lower_left_gray_card).
contains(background_yellow, bottom_control_panel).
contains(main_green_structure, top_gray_inset).
contains(main_green_structure, player_black).
contains(main_green_structure, player_blue).
contains(main_green_structure, lower_gray_gate).
contains(main_green_structure, lower_maroon_gate).
contains(top_gray_inset, top_maroon_glyph).
contains(lower_left_gray_card, lower_left_maroon_glyph).
contains(bottom_control_panel, bottom_dark_slot).
contains(bottom_control_panel, bottom_button_1).
contains(bottom_control_panel, bottom_button_2).
contains(bottom_control_panel, bottom_button_3).

overlays(left_gray_strip, background_yellow).
overlays(main_green_structure, background_yellow).
overlays(top_gray_inset, main_green_structure).
overlays(top_maroon_glyph, top_gray_inset).
overlays(player_black, main_green_structure).
overlays(player_blue, main_green_structure).
overlays(lower_gray_gate, main_green_structure).
overlays(lower_maroon_gate, main_green_structure).
overlays(lower_left_gray_card, background_yellow).
overlays(lower_left_maroon_glyph, lower_left_gray_card).
overlays(bottom_control_panel, background_yellow).
overlays(bottom_dark_slot, bottom_control_panel).
overlays(bottom_button_1, bottom_control_panel).
overlays(bottom_button_2, bottom_control_panel).
overlays(bottom_button_3, bottom_control_panel).

adjacent(left_gray_strip, background_yadosellow, edge).
adjacent(main_green_structure, background_yellow, edge).
adjacent(main_green_structure, top_gray_inset, edge).
adjacent(main_green_structure, lower_gray_gate, edge).
adjacent(main_green_structure, lower_maroon_gate, edge).
adjacent(player_black, player_blue, edge).
adjacent(lower_gray_gate, lower_maroon_gate, edge).
adjacent(lower_maroon_gate, background_yellow, edge).
adjacent(lower_left_gray_card, background_yellow, edge).
adjacent(bottom_control_panel, background_yellow, edge).

composite_object(player_avatar, [player_black, player_blue]).
composite_object(lower_gate, [lower_gray_gate, lower_maroon_gate]).
composite_object(top_marker, [top_gray_inset, top_maroon_glyph]).
composite_object(lower_left_marker, [lower_left_gray_card, lower_left_maroon_glyph]).
composite_object(bottom_ui,
    [bottom_control_panel, bottom_dark_slot, bottom_button_1,
     bottom_button_2, bottom_button_3]).

z_order(background_yellow, 0).
z_order(left_gray_strip, 1).
z_order(main_green_structure, 2).
z_order(top_gray_inset, 3).
z_order(top_maroon_glyph, 4).
z_order(player_black, 4).
z_order(player_blue, 4).
z_order(lower_gray_gate, 4).
z_order(lower_maroon_gate, 4).
z_order(lower_left_gray_card, 5).
z_order(lower_left_maroon_glyph, 6).
z_order(bottom_control_panel, 5).
z_order(bottom_dark_slot, 6).
z_order(bottom_button_1, 6).
z_order(bottom_button_2, 6).
z_order(bottom_button_3, 6).

turtle_program(background_yellow,
    [penup, set_pos(0,0), setcolor(yellow), pendown,
     fill_rect(640,640), penup]).

turtle_program(left_gray_strip,
    [penup, set_pos(0,0), setcolor(light_gray), pendown,
     fill_rect(40,520), penup]).

turtle_program(main_green_structure,
    [penup, setcolor(green),
     set_pos(320,80), pendown, fill_rect(90,90), penup,
     set_pos(340,160), pendown, fill_rect(50,90), penup,
     set_pos(140,250), pendown, fill_rect(400,50), penup,
     set_pos(140,300), pendown, fill_rect(150,100), penup,
     set_pos(340,300), pendown, fill_rect(200,150), penup,
     set_pos(190,400), pendown, fill_rect(50,100), penup,
     set_pos(190,450), pendown, fill_rect(350,50), penup]).

turtle_program(top_gray_inset,
    [penup, set_pos(330,90), setcolor(light_gray), pendown,
     fill_rect(70,70), penup]).

turtle_program(top_maroon_glyph,
    [penup, setcolor(maroon),
     set_pos(350,110), pendown, fill_rect(30,10), penup,
     set_pos(370,120), pendown, fill_rect(10,20), penup,
     set_pos(350,130), pendown, fill_rect(10,10), penup]).

turtle_program(player_black,
    [penup, setcolor(black),
     set_pos(210,310), pendown, fill_rect(10,20), penup,
     set_pos(220,320), pendown, fill_rect(10,10), penup]).

turtle_program(player_blue,
    [penup, setcolor(blue),
     set_pos(200,320), pendown, fill_rect(10,10), penup,
     set_pos(210,330), pendown, fill_rect(10,10), penup]).

turtle_program(lower_gray_gate,
    [penup, set_pos(340,450), setcolor(light_gray), pendown,
     fill_rect(50,20), penup]).

turtle_program(lower_maroon_gate,
    [penup, set_pos(340,470), setcolor(maroon), pendown,
     fill_rect(50,30), penup]).

turtle_program(lower_left_gray_card,
    [penup, set_pos(10,530), setcolor(light_gray), pendown,
     fill_rect(100,100), penup]).

turtle_program(lower_left_maroon_glyph,
    [penup, setcolor(maroon),
     set_pos(30,550), pendown, fill_rect(60,20), penup,
     set_pos(30,570), pendown, fill_rect(20,40), penup,
     set_pos(70,590), pendown, fill_rect(20,20), penup]).

turtle_program(bottom_control_panel,
    [penup, set_pos(120,600), setcolor(light_gray), pendown,
     fill_rect(520,40), penup]).

turtle_program(bottom_dark_slot,
    [penup, set_pos(130,610), setcolor(dark_gray), pendown,
     fill_rect(420,20), penup]).

turtle_program(bottom_button_1,
    [penup, set_pos(560,610), setcolor(light_blue), pendown,
     fill_rect(20,20), penup]).

turtle_program(bottom_button_2,
    [penup, set_pos(590,610), setcolor(light_blue), pendown,
     fill_rect(20,20), penup]).

turtle_program(bottom_button_3,
    [penup, set_pos(620,610), setcolor(light_blue), pendown,
     fill_rect(20,20), penup]).
````

[Open `objects.pl`](objects.pl)

</details>

<details>
<summary><code>rules.pl</code></summary>

````prolog
evidence(ev_initial_action,
         action_history,
         action(initial, empty_payload)).

evidence(ev_no_successor_difference,
         differences_pl,
         no_post_action_difference_available(initial)).

evidence(ev_player_components,
         objects_pl,
         composite(blue_black_player,
                   [black_player_head, blue_player_tail])).

evidence(ev_player_component_geometry,
         objects_pl,
         [geometry(black_player_head,
                   union([rectangle(210,310,10,20),
                          rectangle(220,320,10,10)])),
          geometry(blue_player_tail,
                   union([rectangle(200,320,10,10),
                          rectangle(210,330,10,10)]))]).

evidence(ev_player_on_structure,
         objects_pl,
         [contains(green_maze_structure, black_player_head),
          contains(green_maze_structure, blue_player_tail)]).

evidence(ev_grid_scale,
         objects_pl,
         [grid_size(64,64),
          cell_size(10,10),
          aligned_to_grid(blue_black_player,10)]).

evidence(ev_structure_geometry,
         objects_pl,
         [object_type(green_maze_structure, compound_structure),
          object_type(green_main_platform, platform),
          object_type(green_chamber_stem, vertical_bar),
          object_type(green_upper_chamber_frame, enclosure)]).

evidence(ev_cavity_geometry,
         objects_pl,
         [object_type(yellow_inner_cavity,hole),
          enclosed_by(yellow_inner_cavity,green_maze_structure)]).

evidence(ev_gate_geometry,
         objects_pl,
         [composite(bottom_center_gate,
                    [gray_gate_cap,red_gate_base]),
          embedded_in(bottom_center_gate,green_maze_structure)]).

evidence(ev_upper_marker,
         objects_pl,
         [contains(gray_upper_chamber_interior,upper_red_hook_glyph),
          contains(gray_upper_chamber_interior,upper_red_square)]).

evidence(ev_matching_red_markers,
         objects_pl,
         [same_color(upper_red_hook_glyph,lower_left_red_hook_glyph),
          same_color(upper_red_square,lower_left_red_square)]).

evidence(ev_status_panel,
         objects_pl,
         [contains(bottom_status_panel,bottom_dark_status_bar),
          contains(bottom_status_panel,left_cyan_status_cell),
          contains(bottom_status_panel,middle_cyan_status_cell),
          contains(bottom_status_panel,right_cyan_status_cell)]).

observed_rule(initial_sample_only,
              rule(
                  transition_observation_count(0),
                  evidence_refs([ev_initial_action,
                                 ev_no_successor_difference]))).

observed_rule(player_composition,
              rule(
                  composed_of(blue_black_player,
                              [black_player_head,blue_player_tail]),
                  evidence_refs([ev_player_components,
                                 ev_player_component_geometry]))).

observed_rule(player_components_move_as_one_identity,
              rule(
                  rigid_components(blue_black_player,
                                   [black_player_head,blue_player_tail]),
                  evidence_refs([ev_player_components,
                                 ev_player_component_geometry]))).

observed_rule(grid_alignment,
              rule(
                  nominal_step_size(blue_black_player,10,10),
                  evidence_refs([ev_grid_scale]))).

observed_rule(current_player_region,
              rule(
                  currently_supported_by(blue_black_player,
                                         green_maze_structure),
                  evidence_refs([ev_player_on_structure]))).

observed_rule(gate_composition,
              rule(
                  composed_of(bottom_center_gate,
                              [gray_gate_cap,red_gate_base]),
                  evidence_refs([ev_gate_geometry]))).

observed_rule(no_empirical_action_effect_yet,
              rule(
                  insufficient_evidence_for_deterministic_transition,
                  evidence_refs([ev_initial_action,
                                 ev_no_successor_difference]))).

hypothetical_rule(grid_step_player_motion,
                  rule(
                      candidate_transition(
                          State0,
                          directional_input(Direction),
                          State1),
                      conditions([
                          direction_delta(Direction,DX,DY),
                          member(Direction,[up,down,left,right]),
                          member(pair(DX,DY),
                                 [pair(0,-10),pair(0,10),
                                  pair(-10,0),pair(10,0)]),
                          translates(blue_black_player,DX,DY),
                          translates(black_player_head,DX,DY),
                          translates(blue_player_tail,DX,DY),
                          destination_supported(State0,
                                                blue_black_player,
                                                green_maze_structure),
                          destination_unblocked(State0,
                                                blue_black_player),
                          preserves_relative_geometry(
                              [black_player_head,blue_player_tail]),
                          State1=translated_state(State0,
                                                  blue_black_player,
                                                  DX,DY)
                      ])),
                  evidence_refs(
                      [ev_grid_scale,
                       ev_player_components,
                       ev_player_component_geometry,
                       ev_player_on_structure],
                      confidence(medium_low),
                      caveat(no_directional_action_has_been_observed))).

hypothetical_rule(block_motion_into_yellow_cavity,
                  rule(
                      candidate_transition(
                          State0,
                          directional_input(Direction),
                          State0),
                      conditions([
                          proposed_destination(Direction,
                                               blue_black_player,
                                               Destination),
                          overlaps(Destination,yellow_inner_cavity)
                      ])),
                  evidence_refs(
                      [ev_cavity_geometry,
                       ev_player_on_structure,
                       ev_grid_scale],
                      confidence(low),
                      caveat(collision_behavior_is_unobserved))).

hypothetical_rule(block_motion_off_navigable_structure,
                  rule(
                      candidate_transition(
                          State0,
                          directional_input(Direction),
                          State0),
                      conditions([
                          proposed_destination(Direction,
                                               blue_black_player,
                                               Destination),
                          outside(Destination,green_maze_structure),
                          not_entering(Destination,
                                       gray_upper_chamber_interior),
                          not_passing_through(Destination,
                                              bottom_center_gate)
                      ])),
                  evidence_refs(
                      [ev_structure_geometry,
                       ev_player_on_structure,
                       ev_grid_scale],
                      confidence(low),
                      caveat(navigable_colors_are_not_empirically_confirmed))).

hypothetical_rule(closed_gate_blocks_player,
                  rule(
                      candidate_transition(
                          State0,
                          directional_input(Direction),
                          State0),
                      conditions([
                          gate_state(State0,bottom_center_gate,closed),
                          proposed_destination(Direction,
                                               blue_black_player,
                                               Destination),
                          overlaps(Destination,bottom_center_gate)
                      ])),
                  evidence_refs(
                      [ev_gate_geometry,
                       ev_grid_scale],
                      confidence(low),
                      caveat(gate_state_and_collision_effect_are_unobserved))).

hypothetical_rule(upper_marker_contact_may_trigger_event,
                  rule(
                      candidate_transition(
                          State0,
                          contact(blue_black_player,
                                  upper_red_hook_glyph),
                          State1),
                      conditions([
                          enters(blue_black_player,
                                 gray_upper_chamber_interior),
                          contacts(blue_black_player,
                                   upper_red_hook_glyph),
                          possible_effect(
                              State1,
                              one_of([
                                  gate_state_change(bottom_center_gate),
                                  status_change(bottom_status_panel),
                                  no_change
                              ]))
                      ])),
                  evidence_refs(
                      [ev_upper_marker,
                       ev_matching_red_markers,
                       ev_gate_geometry,
                       ev_status_panel],
                      confidence(very_low),
                      caveat(no_contact_or_trigger_transition_has_been_observed))).

hypothetical_rule(non_player_objects_remain_fixed_during_plain_motion,
                  rule(
                      invariant_under(
                          directional_input(_),
                          [green_maze_structure,
                           green_main_platform,
                           green_chamber_stem,
                           green_upper_chamber_frame,
                           gray_upper_chamber_interior,
                           yellow_inner_cavity,
                           bottom_center_gate,
                           gray_gate_cap,
                           red_gate_base,
                           upper_red_hook_glyph,
                           upper_red_square,
                           lower_left_control_panel,
                           lower_left_red_hook_glyph,
                           lower_left_red_square,
                           bottom_status_panel,
                           bottom_dark_status_bar,
                           left_cyan_status_cell,
                           middle_cyan_status_cell,
                           right_cyan_status_cell,
                           left_gray_border,
                           yellow_playfield])),
                  evidence_refs(
                      [ev_initial_action,
                       ev_structure_geometry,
                       ev_gate_geometry,
                       ev_status_panel],
                      confidence(low),
                      caveat(no_noninitial_transition_has_been_observed))).
````

[Open `rules.pl`](rules.pl)

</details>

<details>
<summary><code>turtle_from_image.pl</code></summary>

````prolog
object_identity(black_player_head, player_component, 'black upper portion of the player marker').
object_identity(blue_black_player, player, 'small blue and black player marker').
object_identity(blue_player_tail, player_component, 'blue lower-left portion of the player marker').
object_identity(bottom_center_gate, compound_block, 'two-color gate embedded in the bottom of the green structure').
object_identity(bottom_dark_status_bar, bar, 'dark horizontal bar inside the bottom status panel').
object_identity(bottom_status_panel, interface_bar, 'long gray status panel along the bottom edge').
object_identity(gray_gate_cap, rectangle, 'gray upper cap of the bottom-center gate').
object_identity(gray_upper_chamber_interior, chamber, 'gray interior of the upper chamber').
object_identity(green_chamber_stem, vertical_bar, 'green vertical stem connecting the upper chamber to the main platform').
object_identity(green_main_platform, platform, 'broad central green platform').
object_identity(green_maze_structure, compound_structure, 'large green maze-like structure').
object_identity(green_upper_chamber_frame, enclosure, 'green frame around the upper chamber').
object_identity(left_cyan_status_cell, indicator, 'left cyan status cell').
object_identity(left_gray_border, border, 'left vertical gray boundary').
object_identity(lower_left_control_panel, panel, 'gray control panel at the lower left').
object_identity(lower_left_red_hook_glyph, glyph, 'large dark red hooked symbol on the lower-left panel').
object_identity(lower_left_red_square, glyph_component, 'small detached dark red square on the lower-left panel').
object_identity(middle_cyan_status_cell, indicator, 'middle cyan status cell').
object_identity(red_gate_base, rectangle, 'dark red lower block of the bottom-center gate').
object_identity(right_cyan_status_cell, indicator, 'right cyan status cell at the image edge').
object_identity(upper_red_hook_glyph, glyph, 'dark red hooked symbol in the upper chamber').
object_identity(upper_red_square, glyph_component, 'small detached dark red square in the upper chamber').
object_identity(yellow_inner_cavity, hole, 'yellow stepped cavity enclosed within the green structure').
object_identity(yellow_playfield, background, 'yellow playfield background').

image_size(640, 640).
coordinate_system(pixel, origin_top_left, x_right, y_down).
grid_size(64, 64).
cell_size(10, 10).

color(yellow, '#ffdc00').
color(light_gray, '#b3b3b3').
color(green, '#2ecc40').
color(maroon, '#870c25').
color(blue, '#0074d9').
color(black, '#000000').
color(dark_gray, '#606060').
color(light_blue, '#7fdbff').

composite_object(green_maze_structure,
    [green_upper_chamber_frame, green_chamber_stem, green_main_platform]).
composite_object(blue_black_player,
    [black_player_head, blue_player_tail]).
composite_object(bottom_center_gate,
    [gray_gate_cap, red_gate_base]).

turtle_program(yellow_playfield,
    [penup,
     set_pos(0, 0),
     setcolor(yellow),
     pendown,
     fill_rect(640, 640),
     penup]).

turtle_program(left_gray_border,
    [penup,
     set_pos(0, 0),
     setcolor(light_gray),
     pendown,
     fill_rect(40, 520),
     penup]).

turtle_program(green_upper_chamber_frame,
    [penup,
     set_pos(320, 80),
     setcolor(green),
     pendown,
     fill_rect(90, 90),
     penup]).

turtle_program(green_chamber_stem,
    [penup,
     set_pos(340, 160),
     setcolor(green),
     pendown,
     fill_rect(50, 90),
     penup]).

turtle_program(green_main_platform,
    [penup,
     setcolor(green),
     set_pos(140, 250),
     pendown,
     fill_rect(400, 50),
     penup,
     set_pos(140, 300),
     pendown,
     fill_rect(150, 100),
     penup,
     set_pos(340, 300),
     pendown,
     fill_rect(200, 150),
     penup,
     set_pos(190, 400),
     pendown,
     fill_rect(50, 100),
     penup,
     set_pos(190, 450),
     pendown,
     fill_rect(350, 50),
     penup]).

turtle_program(yellow_inner_cavity,
    [penup,
     setcolor(yellow),
     set_pos(290, 300),
     pendown,
     fill_rect(50, 150),
     penup,
     set_pos(240, 400),
     pendown,
     fill_rect(50, 50),
     penup]).

turtle_program(gray_upper_chamber_interior,
    [penup,
     set_pos(330, 90),
     setcolor(light_gray),
     pendown,
     fill_rect(70, 70),
     penup]).

turtle_program(upper_red_hook_glyph,
    [penup,
     setcolor(maroon),
     set_pos(350, 110),
     pendown,
     fill_rect(30, 10),
     penup,
     set_pos(370, 120),
     pendown,
     fill_rect(10, 20),
     penup]).

turtle_program(upper_red_square,
    [penup,
     set_pos(350, 130),
     setcolor(maroon),
     pendown,
     fill_rect(10, 10),
     penup]).

turtle_program(black_player_head,
    [penup,
     setcolor(black),
     set_pos(210, 310),
     pendown,
     fill_rect(10, 20),
     penup,
     set_pos(220, 320),
     pendown,
     fill_rect(10, 10),
     penup]).

turtle_program(blue_player_tail,
    [penup,
     setcolor(blue),
     set_pos(200, 320),
     pendown,
     fill_rect(10, 10),
     penup,
     set_pos(210, 330),
     pendown,
     fill_rect(10, 10),
     penup]).

turtle_program(gray_gate_cap,
    [penup,
     set_pos(340, 450),
     setcolor(light_gray),
     pendown,
     fill_rect(50, 20),
     penup]).

turtle_program(red_gate_base,
    [penup,
     set_pos(340, 470),
     setcolor(maroon),
     pendown,
     fill_rect(50, 30),
     penup]).

turtle_program(lower_left_control_panel,
    [penup,
     set_pos(10, 530),
     setcolor(light_gray),
     pendown,
     fill_rect(100, 100),
     penup]).

turtle_program(lower_left_red_hook_glyph,
    [penup,
     setcolor(maroon),
     set_pos(30, 550),
     pendown,
     fill_rect(60, 20),
     penup,
     set_pos(30, 570),
     pendown,
     fill_rect(20, 40),
     penup]).

turtle_program(lower_left_red_square,
    [penup,
     set_pos(70, 590),
     setcolor(maroon),
     pendown,
     fill_rect(20, 20),
     penup]).

turtle_program(bottom_status_panel,
    [penup,
     set_pos(120, 600),
     setcolor(light_gray),
     pendown,
     fill_rect(520, 40),
     penup]).

turtle_program(bottom_dark_status_bar,
    [penup,
     set_pos(130, 610),
     setcolor(dark_gray),
     pendown,
     fill_rect(420, 20),
     penup]).

turtle_program(left_cyan_status_cell,
    [penup,
     set_pos(560, 610),
     setcolor(light_blue),
     pendown,
     fill_rect(20, 20),
     penup]).

turtle_program(middle_cyan_status_cell,
    [penup,
     set_pos(590, 610),
     setcolor(light_blue),
     pendown,
     fill_rect(20, 20),
     penup]).

turtle_program(right_cyan_status_cell,
    [penup,
     set_pos(620, 610),
     setcolor(light_blue),
     pendown,
     fill_rect(20, 20),
     penup]).
````

[Open `turtle_from_image.pl`](turtle_from_image.pl)

</details>
