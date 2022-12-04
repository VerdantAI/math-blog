:- use_module(library(clpfd)).
edge(a, b).
edge(b, c).
edge(c, d).
edge(d, e).

path(X,Y,A) :- path(X,Y, [], A).
path(X,Y,_,1) :- edge(X,Y).
path(X,Y, E, A) :- edge(X,Z),
    \+ member(Z,E),
    path(Z,Y, [Z|E], A1),
    A #= A1+1.
