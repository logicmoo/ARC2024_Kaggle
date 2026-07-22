:- module(arc3_agent, [
    choose_action_file/2,
    choose_action/2
]).

:- use_module(library(http/json)).

choose_action_file(InputFile, OutputFile) :-
    setup_call_cleanup(
        open(InputFile, read, In),
        json_read_dict(In, Snapshot),
        close(In)
    ),
    choose_action(Snapshot, Decision),
    setup_call_cleanup(
        open(OutputFile, write, Out),
        json_write_dict(Out, Decision, [width(0)]),
        close(Out)
    ).

% Skeleton policy: select the first legal action.
% Replace this predicate with the Turtle DSL / world-model controller.
choose_action(Snapshot, Decision) :-
    Snapshot.legal_actions = [First|_],
    Decision = _{
        action: First.name,
        data: _{},
        reason: "first_legal_action_skeleton"
    }.
