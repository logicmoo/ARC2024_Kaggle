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
lhs(in0_cyan1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),cyan,no_child). 
lhs(in0_yellow1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),yellow,no_child). 
lhs(in0_purple2_1_1_2_2,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(2,2),txy(2,2),purple,2). 
lhs(in1_orange1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),orange,no_child). 
lhs(in1_yellow1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),yellow,no_child). 
lhs(in1_brown1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),brown,no_child). 
lhs(in1_green1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),green,no_child). 
lhs(in0_green1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),green,no_child). 
lhs(in0_orange1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),orange,no_child). 
lhs(in0_red1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),red,no_child). 
lhs(in0_cyan1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),cyan,no_child). 
