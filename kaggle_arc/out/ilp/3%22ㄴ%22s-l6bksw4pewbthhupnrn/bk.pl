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
lhs(in0_cyan2_2_5_3_5,sameR,sid_2x1,cxy(3,5),txy(3,5),cyan,no_child). 
lhs(in0_cyan2_4_2_5_2,sameR,sid_2x1,cxy(5,2),txy(5,2),cyan,no_child). 
lhs(in0_cyan1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),cyan,no_child). 
lhs(in0_cyan1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),cyan,no_child). 
lhs(in0_black0_1_1_5_5,sameR,s11505469,cxy(3,3),txy(3,3),black,no_child). 
lhs(in1_purple2_4_4_5_5,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(5,5),txy(4,4),purple,no_child). 
lhs(in1_purple1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),purple,no_child). 
lhs(in1_purple1_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),purple,no_child). 
lhs(in1_purple1_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2),purple,no_child). 
lhs(in1_purple1_5_2_5_2,sameR,sid_1x1,cxy(5,2),txy(5,2),purple,no_child). 
lhs(in1_black0_1_1_5_5,sameR,s7874187,cxy(3,3),txy(3,3),black,no_child). 
lhs(in2_yellow2_4_5_5_5,sameR,sid_2x1,cxy(5,5),txy(5,5),yellow,no_child). 
lhs(in2_yellow2_1_4_2_5,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(2,5),txy(1,4),yellow,no_child). 
lhs(in2_yellow6_1_1_5_3,flipDHV,s14554160,cxy(3,2),txy(1,1),yellow,no_child). 
lhs(in2_black0_1_1_5_5,sameR,s9952369,cxy(3,3),txy(3,3),black,no_child). 
lhs(in3_orange1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),orange,no_child). 
lhs(in3_orange1_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4),orange,no_child). 
lhs(in3_orange1_5_3_5_3,sameR,sid_1x1,cxy(5,3),txy(5,3),orange,no_child). 
lhs(in0_silver5_1_1_5_2,rot270,sid_tetris_Triple_East_and_North_2x2,cxy(3,2),txy(3,2),silver,no_child). 
lhs(in0_silver1_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4),silver,no_child). 
lhs(in0_black0_1_1_5_5,sameR,s9574159,cxy(3,3),txy(3,3),black,no_child). 
