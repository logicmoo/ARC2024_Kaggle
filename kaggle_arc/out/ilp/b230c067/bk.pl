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
lhs(in0_black0_3_4_4_4,rot90,sid_1x2,cxy(4,4),txy(4,4),black,no_child). 
lhs(in0_black0_7_9_8_9,rot90,sid_1x2,cxy(8,9),txy(8,9),black,no_child). 
lhs(in0_cyan8_8_2_10_4,sameR,sid_hollow_3x3,cxy(9,3),txy(9,3),cyan,no_child). 
lhs(in0_cyan10_2_3_5_5,sameR,sid_hollow_3x3,cxy(4,4),txy(4,4),cyan,no_child). 
lhs(in0_cyan10_6_8_9_10,sameR,sid_hollow_3x3,cxy(8,9),txy(8,9),cyan,no_child). 
lhs(in0_black0_9_3_9_3,sameR,sid_1x1,cxy(9,3),txy(9,3),black,no_child). 
lhs(in0_black0_1_1_10_10,sameR,s5771107,cxy(5,5),txy(10,10),black,no_child). 
lhs(in1_cyan8_7_2_10_4,flipV,sid_tetris_Z_270_Rotated_2x3,cxy(9,3),txy(7,2),cyan,no_child). 
lhs(in1_cyan9_2_3_6_5,sameR,s14864972,cxy(4,4),txy(4,4),cyan,no_child). 
lhs(in1_cyan9_4_7_8_9,sameR,s14864972,cxy(6,8),txy(6,8),cyan,no_child). 
lhs(in1_black0_1_1_10_10,sameR,s2597892,cxy(5,6),txy(10,1),black,no_child). 
lhs(in0_cyan7_2_2_4_5,rot270,s84645,cxy(3,4),txy(2,2),cyan,no_child). 
lhs(in0_cyan9_4_7_7_10,rot270,s2885155,cxy(5,9),txy(5,9),cyan,no_child). 
lhs(in0_cyan9_7_2_10_5,rot270,s2885155,cxy(8,4),txy(8,4),cyan,no_child). 
lhs(in0_black0_1_1_10_10,sameR,s2157333,cxy(5,6),txy(10,1),black,no_child). 
