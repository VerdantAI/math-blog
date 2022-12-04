:- use_module(library(clpfd)).
:- use_module(library(lists)).
% :- use_module(library(tokenize)).
guest(william).
guest(logan).
guest(takeshi).

perk(sushi).
perk(cocktail).

has_perk(william, sushi).
has_perk(logan, cocktail).

wants_perk(william, sushi).
wants_perk(william, cocktail).
wants_perk(logan, cocktail).

still_needs(G,X) :-
    wants_perk(G, X),
    \+ has_perk(G, X).

is_happy(Guest) :-
 (
    has_perk(Guest, X) -> true;
    format("Get something for ~w!~n", [Guest]), false
 ).

attend_to_guest(Guest) :-
    \+ is_happy(Guest),
    write("Why so serious?"), nl.

roll_dice(0, _, 0).
roll_dice(N, S, R) :-
    N #> 0,
    random_between(1, S, R1),
    R #= R1 + R2,
    N1 #= N - 1,
    roll_dice(N1, S, R2).

list_perks() :-
    write("We offer: "), nl,
    perk(X),
    tab(2), write(X), nl,
    fail.
list_perks().

attend(G) :- attend(G, []).
attend(G, _) :- true.
attend(G, S) :-
    (
        guest(G) -> true;  format('~w is not a guest.~n', [G]), false
    ),
    list_perks(), nl,
    write("whatcha want? "), nl,
    read(P),
    (
        \+ perk(P) -> write("Now, why THE FUCK would we have those?");
        write("You got it, boss")
    ).
attend() :- write("Please specify a guest").
