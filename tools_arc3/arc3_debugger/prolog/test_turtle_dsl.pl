:- begin_tests(turtle_dsl_pen_width).

:- use_module(turtle_dsl).
:- use_module(world_state).

program_cells(Program, SortedCells) :-
    initial_state(State0),
    execute_program(Program, State0, State),
    sort(State.cells, SortedCells).

horizontal_thick([
    penup, set_pos(2, 5), pen_width(4), pendown, set_cell, fwd(4)
]).

horizontal_thin([
    pen_width(1),
    penup, set_pos(2, 3), pendown, set_cell, fwd(4),
    penup, set_pos(2, 4), pendown, set_cell, fwd(4),
    penup, set_pos(2, 5), pendown, set_cell, fwd(4),
    penup, set_pos(2, 6), pendown, set_cell, fwd(4)
]).

vertical_thick([
    penup, set_pos(5, 2), rot(90), pen_width(4),
    pendown, set_cell, fwd(4)
]).

vertical_thin([
    pen_width(1), rot(90),
    penup, set_pos(3, 2), pendown, set_cell, fwd(4),
    penup, set_pos(4, 2), pendown, set_cell, fwd(4),
    penup, set_pos(5, 2), pendown, set_cell, fwd(4),
    penup, set_pos(6, 2), pendown, set_cell, fwd(4)
]).

test(horizontal_width_4_equals_four_width_1_lines) :-
    horizontal_thick(Thick),
    horizontal_thin(Thin),
    program_cells(Thick, ThickCells),
    program_cells(Thin, ThinCells),
    assertion(ThickCells == ThinCells).

test(vertical_width_4_equals_four_width_1_lines) :-
    vertical_thick(Thick),
    vertical_thin(Thin),
    program_cells(Thick, ThickCells),
    program_cells(Thin, ThinCells),
    assertion(ThickCells == ThinCells).

test(width_one_is_default) :-
    program_cells([pendown, set_cell, fwd(2)], DefaultCells),
    program_cells([pen_width(1), pendown, set_cell, fwd(2)], ExplicitCells),
    assertion(DefaultCells == ExplicitCells).

test(width_zero_is_rejected, [fail]) :-
    initial_state(State0),
    execute_instruction(pen_width(0), State0, _).

test(width_five_is_rejected, [fail]) :-
    initial_state(State0),
    execute_instruction(pen_width(5), State0, _).

:- end_tests(turtle_dsl_pen_width).
