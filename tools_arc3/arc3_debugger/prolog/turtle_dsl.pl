:- module(turtle_dsl, [
    execute_program/3,
    execute_instruction/3
]).

execute_program([], State, State).
execute_program([Instruction|Rest], State0, State) :-
    execute_instruction(Instruction, State0, State1),
    execute_program(Rest, State1, State).

execute_instruction(penup, State0, State) :-
    State = State0.put(pen, up).

execute_instruction(pendown, State0, State) :-
    State = State0.put(pen, down).

% Canonical pen-width instruction. Widths above four cells are deliberately
% rejected so generated ARC programs stay inspectable and line-oriented.
execute_instruction(pen_width(Width), State0, State) :-
    valid_pen_width(Width),
    State = State0.put(pen_width, Width).

% Compatibility aliases accepted by the interpreter. GPT output is instructed
% to emit pen_width/1.
execute_instruction(penwidth(Width), State0, State) :-
    execute_instruction(pen_width(Width), State0, State).
execute_instruction(set_pen_width(Width), State0, State) :-
    execute_instruction(pen_width(Width), State0, State).

execute_instruction(set_pos(X, Y), State0, State) :-
    integer(X),
    integer(Y),
    State = State0.put(_{turtle_x:X, turtle_y:Y}).

execute_instruction(setcolor(Color), State0, State) :-
    State = State0.put(color, Color).

execute_instruction(rot(Degrees), State0, State) :-
    number(Degrees),
    rotate_direction(State0.direction, Degrees, Direction),
    State = State0.put(direction, Direction).

execute_instruction(fwd(Distance), State0, State) :-
    integer(Distance),
    Distance >= 0,
    move_forward(Distance, State0, State).

execute_instruction(set_cell, State0, State) :-
    stamp_pen(State0, State).

valid_pen_width(Width) :-
    integer(Width),
    between(1, 4, Width).

move_forward(0, State, State) :-
    !.
move_forward(N, State0, State) :-
    N > 0,
    next_position(
        State0.direction,
        State0.turtle_x,
        State0.turtle_y,
        X,
        Y
    ),
    State1 = State0.put(_{turtle_x:X, turtle_y:Y}),
    draw_if_needed(State1, State2),
    N2 is N - 1,
    move_forward(N2, State2, State).

draw_if_needed(State0, State) :-
    State0.pen == down,
    !,
    stamp_pen(State0, State).
draw_if_needed(State, State).

% A thick pen stamps cells perpendicular to the current travel direction.
% Width 1 stamps the turtle cell. For even widths, the footprint is biased by
% one cell toward the negative perpendicular axis, making it deterministic:
% width 4 uses offsets -2,-1,0,1.
stamp_pen(State0, State) :-
    pen_offsets(State0.pen_width, Offsets),
    stamp_offsets(Offsets, State0.direction,
                  State0.turtle_x, State0.turtle_y,
                  State0.cells, Cells),
    State = State0.put(cells, Cells).

pen_offsets(Width, Offsets) :-
    Low is -(Width // 2),
    High is Low + Width - 1,
    numlist(Low, High, Offsets).

stamp_offsets([], _, _, _, Cells, Cells).
stamp_offsets([Offset|Rest], Direction, X, Y, Cells0, Cells) :-
    perpendicular_cell(Direction, X, Y, Offset, CX, CY),
    add_cell(cell(CX, CY), Cells0, Cells1),
    stamp_offsets(Rest, Direction, X, Y, Cells1, Cells).

perpendicular_cell(east,  X, Y, Offset, X, CY) :- CY is Y + Offset.
perpendicular_cell(west,  X, Y, Offset, X, CY) :- CY is Y + Offset.
perpendicular_cell(north, X, Y, Offset, CX, Y) :- CX is X + Offset.
perpendicular_cell(south, X, Y, Offset, CX, Y) :- CX is X + Offset.

add_cell(Cell, Cells, Cells) :-
    memberchk(Cell, Cells),
    !.
add_cell(Cell, Cells, [Cell|Cells]).

next_position(north, X, Y0, X, Y) :- Y is Y0 - 1.
next_position(south, X, Y0, X, Y) :- Y is Y0 + 1.
next_position(east, X0, Y, X, Y) :- X is X0 + 1.
next_position(west, X0, Y, X, Y) :- X is X0 - 1.

rotate_direction(Direction0, Degrees, Direction) :-
    StepsFloat is Degrees / 90,
    StepsRounded is round(StepsFloat),
    StepsFloat =:= StepsRounded,
    Steps is ((StepsRounded mod 4) + 4) mod 4,
    rotate_steps(Steps, Direction0, Direction).

rotate_steps(0, Direction, Direction).
rotate_steps(N, Direction0, Direction) :-
    N > 0,
    rotate_right(Direction0, Direction1),
    N2 is N - 1,
    rotate_steps(N2, Direction1, Direction).

rotate_right(north, east).
rotate_right(east, south).
rotate_right(south, west).
rotate_right(west, north).
