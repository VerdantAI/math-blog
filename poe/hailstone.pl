:- use_module(library(clpfd)).
hailstone(N, N).
hailstone(N0, N) :- 
    N0 #= 2*N1, 
    hailstone(N1, N).
hailstone(N0, N) :- 
    N0 #= 2*_ + 1,
    N1 #= 3*N0 +1,
    hailstone(N1, N).

moves(Js0) --> { member(jug(_,_,2), Js0)}.
moves(Js0) --> [from_to(F,T)],
    { 
        select(jug(F, FC, FF0), Js0, Js1),
        select(jug(T, TC, TF0), Js1, Js),
        M #= min(FF0, TC-TF0),
        FF #= FF0 - M,
        TF #= TF0 + M
    },
        moves([jug(F,FC, FF), jug(T, TC, TF)| Js]).

as --> [].
as --> [a], as.