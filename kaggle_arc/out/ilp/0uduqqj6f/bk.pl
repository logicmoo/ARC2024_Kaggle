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
lhs(in0_silver4_5_7_7_8,flipH,sid_tetris_Z_270_Rotated_2x3,cxy(6,8),txy(5,7),silver,no_child). 
lhs(in0_silver4_2_2_3_4,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(2,3),txy(3,4),silver,no_child). 
lhs(in0_silver8_6_2_8_4,sameR,sid_hollow_3x3,cxy(7,3),txy(7,3),silver,no_child). 
lhs(in0_black0_7_3_7_3,sameR,sid_1x1,cxy(7,3),txy(7,3),black,no_child). 
lhs(in0_black0_1_1_10_10,sameR,s1054068,cxy(5,6),txy(10,1),black,no_child). 
lhs(in1_black0_7_3_8_4,sameR,sid_1x1,cxy(8,4),txy(7,3),black,no_child). 
lhs(in1_silver12_6_2_9_5,sameR,sid_hollow_3x3,cxy(8,4),txy(6,2),silver,no_child). 
lhs(in1_silver15_2_2_9_9,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(4,7),txy(4,7),silver,no_child). 
lhs(in1_black0_1_1_10_10,sameR,s11340380,cxy(5,6),txy(10,1),black,no_child). 
lhs(in2_silver3_6_3_7_4,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(6,4),txy(6,4),silver,no_child). 
lhs(in2_silver3_3_6_4_7,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(4,6),txy(4,6),silver,no_child). 
lhs(in2_silver8_2_2_4_4,sameR,sid_hollow_3x3,cxy(3,3),txy(3,3),silver,no_child). 
lhs(in2_silver8_6_6_8_8,sameR,sid_hollow_3x3,cxy(7,7),txy(7,7),silver,no_child). 
lhs(in2_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),black,no_child). 
lhs(in2_black0_7_7_7_7,sameR,sid_1x1,cxy(7,7),txy(7,7),black,no_child). 
lhs(in2_black0_1_1_10_10,sameR,s9772013,cxy(6,6),txy(1,1),black,no_child). 
lhs(in0_silver3_2_2_3_3,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(2,2),txy(2,2),silver,no_child). 
lhs(in0_silver3_3_4_4_5,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(4,5),txy(4,5),silver,no_child). 
lhs(in0_silver24_6_2_9_7,rot90,sid_3x3,cxy(8,5),txy(6,2),pen([cc(silver,7),cc(green,4),cc(silver,2),cc(green,4),cc(silver,7)]),no_child). 
lhs(in0_black0_1_1_10_10,sameR,s4656530,cxy(5,6),txy(10,1),black,no_child). 
