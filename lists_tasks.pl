% Task 1: delete all occurrences of X from the list
deleteElement(_, [], []).
deleteElement(X, [X|T], R) :-
    !,                                  % cut: gives only one answer
    deleteElement(X, T, R).
deleteElement(X, [H|T], [H|R]) :-
    deleteElement(X, T, R).

% Task 2: add X at the end of the list
add_at_the_end(X, [], [X]).
add_at_the_end(X, [H|T], [H|R]) :-
    add_at_the_end(X, T, R).
