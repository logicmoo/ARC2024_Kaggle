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
lhs(in0_cyan3_7_2_8_3,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(7,2),txy(7,2),cyan,no_child). 
lhs(in0_green3_4_10_5_11,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(4,11),txy(4,11),green,no_child). 
lhs(in0_red3_2_4_3_5,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(3,4),txy(3,4),red,no_child). 
lhs(in0_blue3_8_8_9_9,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(9,9),txy(9,9),blue,no_child). 
lhs(in0_black0_1_1_13_13,sameR,s11301843,cxy(7,7),txy(7,7),black,no_child). 
lhs(in1_blue3_3_4_4_5,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(3,4),txy(3,4),blue,no_child). 
lhs(in1_yellow3_5_10_6_11,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(5,11),txy(5,11),yellow,no_child). 
lhs(in1_cyan3_9_2_10_3,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(10,2),txy(10,2),cyan,no_child). 
lhs(in1_red3_8_6_9_7,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(9,7),txy(9,7),red,no_child). 
lhs(in1_black0_1_1_13_13,sameR,s10222346,cxy(7,7),txy(7,7),black,no_child). 
lhs(in0_green3_3_10_4_11,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(3,10),txy(3,10),green,no_child). 
lhs(in0_blue3_7_7_8_8,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(7,8),txy(7,8),blue,no_child). 
lhs(in0_cyan3_11_3_12_4,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(12,3),txy(12,3),cyan,no_child). 
lhs(in0_purple3_3_3_4_4,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(4,4),txy(4,4),purple,no_child). 
lhs(in0_black0_1_1_13_13,sameR,s11261021,cxy(7,7),txy(7,7),black,no_child). 
