:- initialization(main, main).

main :-
    load_test_files([]),
    run_tests,
    halt.
