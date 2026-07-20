:- module(demo_task, [
    demo_program/1
]).

demo_program([
    pendown,
    set_cell,
    fwd(4),
    rot(90),
    fwd(3)
]).
