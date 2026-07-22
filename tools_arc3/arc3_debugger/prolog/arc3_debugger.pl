:- module(arc3_debugger, [
    demo/0,
    run_program/1,
    debug_program/1
]).

:- use_module(world_state).
:- use_module(turtle_dsl).

demo :-
    Program = [
        pendown,
        set_cell,
        fwd(4),
        rot(90),
        fwd(3)
    ],
    debug_program(Program).

run_program(Program) :-
    initial_state(State0),
    execute_program(Program, State0, State),
    render_state(State).

debug_program(Program) :-
    initial_state(State0),
    ansi_clear,
    write_state_header(0, start, State0),
    debug_steps(Program, 1, State0, _).

debug_steps([], _, State, State) :-
    format('~n\e[1;32mExecution complete.\e[0m~n').

debug_steps([Instruction|Rest], Step, State0, State) :-
    execute_instruction(Instruction, State0, State1),
    write_state_header(Step, Instruction, State1),
    Step2 is Step + 1,
    debug_steps(Rest, Step2, State1, State).

write_state_header(Step, Instruction, State) :-
    format(
        '~n\e[1;35mStep ~w\e[0m  \e[1m~q\e[0m~n',
        [Step, Instruction]
    ),
    format(
        'Position: (~w, ~w)  Direction: ~w  Pen: ~w~n~n',
        [
            State.turtle_x,
            State.turtle_y,
            State.direction,
            State.pen
        ]
    ),
    render_state(State).

ansi_clear :-
    write('\e[2J\e[H').
