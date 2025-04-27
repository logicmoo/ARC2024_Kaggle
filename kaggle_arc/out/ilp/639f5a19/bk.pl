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
lhs(in0_cyan64_3_2_10_9,sameR,sid_1x1,cxy(7,6),txy(3,2),no_child). 
lhs(in0_cyan120_8_11_19_20,sameR,sid_2x1,cxy(14,16),txy(8,11),no_child). 
lhs(in1_cyan96_2_15_13_22,sameR,sid_2x1,cxy(8,19),txy(2,15),no_child). 
lhs(in1_cyan120_6_2_17_11,sameR,sid_2x1,cxy(12,7),txy(6,2),no_child). 
lhs(in0_cyan36_4_16_9_21,sameR,sid_1x1,cxy(7,19),txy(4,16),no_child). 
lhs(in0_cyan60_4_2_9_11,rot90,sid_2x1,cxy(7,7),txy(4,2),no_child). 
lhs(in0_cyan140_13_5_22_18,rot90,sid_2x1,cxy(18,12),txy(13,5),no_child). 
