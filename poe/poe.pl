:- use_module(library(clpfd)).
:- use_module(library(lists)).
is_happy(Guest) :-
 has_sushi(Guest);
 has_cocktail(Guest).

guest(william).
guest(logan).
guest(takeshi).

has_sushi(william).
has_cocktail(logan).

attend_to_guest(Guest) :-
    is_happy(Guest).

roll_dice(0, _, 0).
roll_dice(N, S, R) :-
    N #> 0,
    random_between(1, S, R1),
    R #= R1 + R2,
    N1 #= N - 1,
    roll_dice(N1, S, R2).
    

