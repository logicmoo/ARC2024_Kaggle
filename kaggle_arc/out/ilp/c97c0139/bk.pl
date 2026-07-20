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
lhs(in0_red14_10_8,sameR,sid_12,no_child). 
lhs(in0_black0_10_8,rot90,sid_323,no_child). 
lhs(in1_red9_14_13,sameR,sid_12,no_child). 
lhs(in1_red5_5_5,rot90,sid_12,no_child). 
lhs(in1_black0_14_13,rot90,sid_323,no_child). 
lhs(in1_black0_5_5,sameR,sid_323,no_child). 
lhs(in0_red7_6_15,rot90,sid_12,no_child). 
lhs(in0_red10_17_10,sameR,sid_12,no_child). 
lhs(in0_red6_6_5,sameR,sid_12,no_child). 
lhs(in0_black0_6_15,sameR,sid_323,no_child). 
lhs(in0_black0_17_10,rot90,sid_323,no_child). 
lhs(in0_black0_6_5,rot90,sid_323,no_child). 
