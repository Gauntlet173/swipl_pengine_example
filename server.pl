% scasp_server.pl
:- use_module(library(http/http_server)).
:- use_module(library(pengines)).
:- use_module(library(sandbox)).
:- ensure_loaded(pengine_sandbox:blawx).

server(Port) :- 
    http_server([port(Port)]).