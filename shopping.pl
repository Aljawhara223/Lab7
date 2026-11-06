% Shopping program - run with: ?- start.
% Start with a basket of five items
start :-
    menu([coffee, milk, chocolate, apple, juice]).

menu(Basket) :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE .'), nl,
    read(Choice),
    do(Choice, Basket).

% d: display all items
do(d, Basket) :- !,
    display_items(Basket),
    menu(Basket).
% a: add an item
do(a, Basket) :- !,
    write('enter the item you want to add it'), nl,
    read(Item),
    add_at_the_end(Item, Basket, NewBasket),
    write('The item has been added'), nl,
    menu(NewBasket).
% e: exit
do(e, _) :- !,
    write('Goodbye!'), nl.
do(_, Basket) :-
    write('Invalid choice, try again.'), nl,
    menu(Basket).

% Display using recursion, stops at the empty list
display_items([]).
display_items([H|T]) :-
    write(H), nl,
    display_items(T).

add_at_the_end(X, [], [X]).
add_at_the_end(X, [H|T], [H|R]) :-
    add_at_the_end(X, T, R).
