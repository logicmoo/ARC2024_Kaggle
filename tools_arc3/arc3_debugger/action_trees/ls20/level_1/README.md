# `ls20` level `1` — Initial state

## Navigation

**Level start**

### Actions

[`LEFT`](LEFT/README.md)

---

- **Full game ID:** `ls20`
- **State:** `NOT_FINISHED`
- **Image hash:** `9c879087889c0ade`
- **Incoming action:** `initial`

## Image

![ARC3 state](image.png)

## Files

- [state.json](state.json)
- [object_registry.pl](object_registry.pl)
- [objects.pl](objects.pl)

## `objects.pl`

```prolog
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
```
