:- use_module(library(scasp)).
:- use_module(library(scasp/human)).
:- use_module(library(scasp/output)).

blawxrun(Query,Tree,Model,Attributes) :-
    scasp(Query, [tree(Tree), model(Model), source(false)]),
    ovar_analyze_term(t(Query, Tree, Model), [name_constraints(true), name_prefix('Var_')]),
    (   term_attvars(t(Query, Tree, Model), [])
    ->  Attributes = []
    ;   copy_term(t(Query, Tree, Model), _, Attributes)
    ).
