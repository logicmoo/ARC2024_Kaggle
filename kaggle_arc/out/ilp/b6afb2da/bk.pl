:-use_module(library(clpfd)). 
incr_nat30(P,Q):-Q#=P+1. 
color_change(_,_). 
my_geq(P,Q):-nonvar(P),nonvar(Q),!,P>=Q. 
my_leq(P,Q):-nonvar(P),nonvar(Q),!,P=<Q. 
my_add(P,Q,R):-nonvar(P),nonvar(Q),integer(P),integer(Q),R is P+Q. 
my_add(P,Q,R):-nonvar(P),nonvar(R),integer(P),integer(R),Q is R-P. 
my_add(P,Q,R):-nonvar(R),nonvar(Q),integer(Q),integer(R),P is R-Q. 
my_mult(P,Q,R):-nonvar(P),nonvar(Q),integer(P),integer(Q),R is P*Q. 
my_mult(P,Q,R):-nonvar(P),nonvar(R),integer(P),integer(R),\+P=0.0,\+P=0,Q is R/P. 
my_mult(P,Q,R):-nonvar(R),nonvar(Q),integer(Q),integer(R),\+P=0.0,\+P=0,P is R/Q. 
:-use_module(library(clpfd)). 
size(30). 
at_left(hv(1,_)). 
at_top(hv(_,1)). 
at_bottem(hv(_,P)):-size(P). 
at_right(hv(P,_)):-size(P). 
right(hv(P,Q),hv(R,Q)):-size(S),P#<S,R#=P+1. 
left(hv(P,Q),hv(R,Q)):-P#>1,R#=P-1. 
down(hv(P,Q),hv(P,R)):-size(S),Q#<S,R#=Q+1. 
up(hv(P,Q),hv(P,R)):-Q#>1,R#=Q-1. 
lhs(trn_0,nw_loc(7,6),se_loc(10,10),rot90,silver,20,sid_12,[make_solid_object(rect,5,4)],no_child). 
lhs(trn_0,nw_loc(2,3),se_loc(5,6),sameR,silver,16,sid_11,[make_solid_object(square,4,4)],no_child). 
lhs(trn_1,nw_loc(5,7),se_loc(10,10),sameR,silver,24,sid_12,[make_solid_object(rect,6,4)],no_child). 
lhs(trn_1,nw_loc(1,1),se_loc(6,5),sameR,silver,30,sid_12,[make_solid_object(rect,6,5)],no_child). 
lhs(tst_0,nw_loc(5,8),se_loc(10,10),sameR,silver,18,sid_12,[make_solid_object(rect,6,3)],no_child). 
lhs(tst_0,nw_loc(2,1),se_loc(5,6),rot90,silver,24,sid_12,[make_solid_object(rect,6,4)],no_child). 
