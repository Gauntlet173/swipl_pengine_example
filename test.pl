:- use_module(library(pengines)).

test(1) :-
    pengine_rpc('http://localhost:8080', winner(_X,Y),[src_text("winner(test,jason).")]),
    writeln(Y), halt(0).

test(2) :-
    pengine_rpc('http://localhost:8080', blawxrun(true,_A,_B,_C),[src_text("winner(test,jason).")]),
    writeln("Worked"),halt(0).

test(3) :-
    pengine_rpc('http://localhost:8080', blawxrun(winner(_X,Y),_A,_B,_C),[src_text("winner(test,jason).")]),
    writeln(Y).