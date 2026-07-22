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

execute_instruction(rot(Degrees), State0, State) :-
    rotate_direction(State0.direction, Degrees, Direction),
    State = State0.put(direction, Direction).

execute_instruction(fwd(Distance), State0, State) :-
    integer(Distance),
    Distance >= 0,
    move_forward(Distance, State0, State).

execute_instruction(set_cell, State0, State) :-
    X = State0.turtle_x,
    Y = State0.turtle_y,
    add_cell(cell(X, Y), State0.cells, Cells),
    State = State0.put(cells, Cells).

add_cell(Cell, Cells, Cells) :-
    memberchk(Cell, Cells),
    !.
add_cell(Cell, Cells, [Cell|Cells]).

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
    State1 = State0.put(_{
        turtle_x: X,
        turtle_y: Y
    }),
    draw_if_needed(State1, State2),
    N2 is N - 1,
    move_forward(N2, State2, State).

draw_if_needed(State0, State) :-
    State0.pen == down,
    !,
    X = State0.turtle_x,
    Y = State0.turtle_y,
    add_cell(cell(X, Y), State0.cells, Cells),
    State = State0.put(cells, Cells).
draw_if_needed(State, State).

next_position(north, X, Y0, X, Y) :- Y is Y0 - 1.
next_position(south, X, Y0, X, Y) :- Y is Y0 + 1.
next_position(east, X0, Y, X, Y) :- X is X0 + 1.
next_position(west, X0, Y, X, Y) :- X is X0 - 1.

rotate_direction(Direction0, Degrees, Direction) :-
    Steps0 is round(Degrees / 90),
    Steps is ((Steps0 mod 4) + 4) mod 4,
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
