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
lhs(in0_silver2_4_2_4_3,rot90,sid_2x1,cxy(4,3),txy(4,3),silver,no_child). 
lhs(in0_cyan4_1_2_2_3,sameR,sid_1x1,cxy(2,3),txy(1,2),cyan,no_child). 
lhs(in0_orange1_2_5_2_5,sameR,sid_1x1,cxy(2,5),txy(2,5),orange,no_child). 
lhs(in0_black0_1_1_5_5,sameR,s8447261,cxy(3,3),txy(3,3),black,no_child). 
lhs(in1_purple2_5_4_5_5,rot90,sid_2x1,cxy(5,5),txy(5,5),purple,no_child). 
lhs(in1_orange3_3_1_5_1,sameR,sid_2x1,cxy(4,1),txy(4,1),orange,no_child). 
lhs(in1_cyan1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),cyan,no_child). 
lhs(in1_yellow1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),yellow,no_child). 
lhs(in1_black0_1_1_5_5,sameR,s710163,cxy(3,3),txy(1,5),black,no_child). 
lhs(in2_orange3_2_1_4_1,sameR,sid_2x1,cxy(3,1),txy(3,1),orange,no_child). 
lhs(in2_brown6_2_3_4_4,sameR,sid_2x1,cxy(3,4),txy(3,4),brown,no_child). 
lhs(in2_purple1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),purple,no_child). 
lhs(in2_black0_1_1_5_5,sameR,s13115957,cxy(3,3),txy(3,3),black,no_child). 
lhs(in0_silver2_3_2_4_2,sameR,sid_2x1,cxy(4,2),txy(4,2),silver,no_child). 
lhs(in0_cyan5_1_1_1_5,rot90,sid_2x1,cxy(1,3),txy(1,3),cyan,no_child). 
lhs(in0_yellow1_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5),yellow,no_child). 
lhs(in0_brown1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),brown,no_child). 
lhs(in0_black0_2_1_5_5,sameR,s11919647,cxy(3,3),txy(3,3),black,no_child). 
