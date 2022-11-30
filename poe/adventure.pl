room(kitchen).
room(office).
room(hall).
room('dining room').
room(cellar).

location(desk, office).
location(apple, kitchen).
location(flashlight, desk).
location('washing machine', cellar).
location(nani, 'washing machine').
location(broccoli, kitchen).
location(crackers, kitchen).
location(computer, office).

door(office, hall).
door(kitchen, office).
door(hall, 'dining room').
door(kitchen, cellar).
door('dining room', kitchen).

connect(X, Y) :- door(X, Y).
connect(X, Y) :- door(Y, X).

edible(apple).
edible(crackers).
tastes_yucky(broccoli).
turned_off(flashlight).

here(kitchen).

where_food(X, Y) :-
    location(X,Y),
    edible(X).

list_things(Place) :-
    location(X, Place),
    tab(2),
    write(X),
    nl,
    fail.

list_connections(Place) :-
    connect(Place, X),
    tab(2),
    write(X),
    nl,
    fail.

look :-
    here(Place),
    write('You are in the '), write(Place), nl,
    write("You can go to: "), nl,
    list_connections(Place),
    write('You can see: '), nl,
    list_things(Place).

can_go(Place) :-
    here(X),
    connect(X, Place).

correct_guess(X) :- 
    X is 4;
    X is 9.
