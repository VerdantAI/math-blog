/*
 I should get into the habit of commenting my code.
 */
:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).

server(Port) :-
        http_server(http_dispatch, [port(Port)]).

:- http_handler(root(.), index(), []).

index(_Request) :-
 format('Content-type: text/plain~n~n'),
 format('Hello to the ground!~n').
