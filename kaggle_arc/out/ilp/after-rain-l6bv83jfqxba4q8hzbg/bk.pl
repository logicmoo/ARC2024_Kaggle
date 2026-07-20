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
lhs(in0_brown6_1_3_4_5,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(3,4),txy(1,3),brown,no_child). 
lhs(in0_black0_1_1_5_5,sameR,s13051660,cxy(3,3),txy(3,3),black,no_child). 
lhs(in1_brown5_1_1_3_2,sameR,sid_u_3x2,cxy(2,2),txy(2,2),brown,1). 
lhs(in1_brown6_1_4_5_5,sameR,s11716125,cxy(3,5),txy(2,4),brown,no_child). 
lhs(in1_black0_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),black,no_child). 
lhs(in1_black0_1_1_5_5,sameR,s9274657,cxy(3,3),txy(3,3),black,no_child). 
lhs(in2_brown5_2_1_4_2,sameR,sid_u_3x2,cxy(3,2),txy(3,2),brown,1). 
lhs(in2_brown5_2_4_4_5,sameR,sid_u_3x2,cxy(3,5),txy(3,5),brown,no_child). 
lhs(in2_black0_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1),black,no_child). 
lhs(in2_black0_1_1_5_5,sameR,s11487328,cxy(3,3),txy(3,3),black,no_child). 
lhs(in3_brown8_2_2_4_4,sameR,sid_hollow_3x3,cxy(3,3),txy(3,3),brown,1). 
lhs(in3_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),black,no_child). 
lhs(in3_black0_1_1_5_5,sameR,sid_hollow_3x3,cxy(3,3),txy(3,3),black,no_child). 
lhs(in4_black0_4_3_5_4,sameR,s5668778,cxy(5,4),txy(5,4),black,no_child). 
lhs(in4_black0_1_3_2_5,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(1,4),txy(2,5),black,no_child). 
lhs(in4_black0_1_1_5_2,rot90,s4868024,cxy(3,1),txy(3,1),black,no_child). 
lhs(in4_brown12_1_2_5_5,sameR,s14902120,cxy(3,3),txy(5,5),brown,2). 
lhs(in0_brown3_1_2_3_2,sameR,sid_2x1,cxy(2,2),txy(2,2),brown,no_child). 
lhs(in0_brown7_1_4_5_5,sameR,sid_u_3x2,cxy(3,5),txy(3,5),brown,no_child). 
lhs(in0_black0_1_1_5_4,rot90,s11553662,cxy(3,2),txy(3,2),black,no_child). 
