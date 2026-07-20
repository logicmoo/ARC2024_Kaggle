:- module(world_state, [
    initial_state/1,
    render_state/1
]).

initial_state(state{
    width: 10,
    height: 10,
    turtle_x: 0,
    turtle_y: 0,
    direction: east,
    pen: up,
    cells: []
}).

render_state(State) :-
    Width = State.width,
    Height = State.height,
    Cells = State.cells,
    TX = State.turtle_x,
    TY = State.turtle_y,
    render_rows(0, Height, Width, Cells, TX, TY).

render_rows(Y, Height, _, _, _, _) :-
    Y >= Height,
    !.
render_rows(Y, Height, Width, Cells, TX, TY) :-
    render_columns(0, Y, Width, Cells, TX, TY),
    nl,
    Y2 is Y + 1,
    render_rows(Y2, Height, Width, Cells, TX, TY).

render_columns(X, _, Width, _, _, _) :-
    X >= Width,
    !.
render_columns(X, Y, Width, Cells, TX, TY) :-
    render_cell(X, Y, Cells, TX, TY),
    X2 is X + 1,
    render_columns(X2, Y, Width, Cells, TX, TY).

render_cell(X, Y, _, X, Y) :-
    !,
    write('\e[1;33mT\e[0m ').
render_cell(X, Y, Cells, _, _) :-
    memberchk(cell(X, Y), Cells),
    !,
    write('\e[1;36m#\e[0m ').
render_cell(_, _, _, _, _) :-
    write('. ').
