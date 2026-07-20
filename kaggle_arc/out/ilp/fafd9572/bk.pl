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
lhs(in0_blue6_1_1_3_3,sameR,s1381650,cxy(2,2),txy(2,2),blue,no_child). 
lhs(in0_blue6_1_5_3_7,sameR,s1381650,cxy(2,6),txy(2,6),blue,no_child). 
lhs(in0_blue6_5_1_7_3,sameR,s1381650,cxy(6,2),txy(6,2),blue,no_child). 
lhs(in0_blue6_5_9_7_11,sameR,s1381650,cxy(6,10),txy(6,10),blue,no_child). 
lhs(in0_blue6_9_5_11_7,sameR,s1381650,cxy(10,6),txy(10,6),blue,no_child). 
lhs(in0_blue6_9_9_11_11,sameR,s1381650,cxy(10,10),txy(10,10),blue,no_child). 
lhs(in0_red6_15_3_17_5,sameR,s1381650,cxy(16,4),txy(16,4),pen([cc(red,1),cc(green,4),cc(red,1)]),no_child). 
lhs(in0_black0_1_1_18_12,rot90,s10205375,cxy(10,7),txy(18,1),black,no_child). 
lhs(in1_green3_2_4_3_5,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(2,4),txy(2,4),pen([cc(green,1),cc(yellow,1),cc(red,1)]),no_child). 
lhs(in1_blue3_6_2_7_3,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(6,2),txy(6,2),blue,no_child). 
lhs(in1_blue3_6_5_7_6,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(6,5),txy(6,5),blue,no_child). 
lhs(in1_blue3_9_2_10_3,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(9,2),txy(9,2),blue,no_child). 
lhs(in1_black0_1_1_12_10,rot90,s4004348,cxy(7,6),txy(1,1),black,no_child). 
lhs(in0_red6_1_1_3_3,sameR,sid__3x3,cxy(2,2),txy(2,2),pen([cc(red,1),cc(yellow,1),cc(orange,1),cc(yellow,1),cc(green,2)]),1). 
lhs(in0_blue6_2_7_4_9,sameR,sid__3x3,cxy(3,8),txy(3,8),blue,no_child). 
lhs(in0_blue6_2_11_4_13,sameR,sid__3x3,cxy(3,12),txy(3,12),blue,no_child). 
lhs(in0_blue6_6_3_8_5,sameR,sid__3x3,cxy(7,4),txy(7,4),blue,no_child). 
lhs(in0_blue6_6_7_8_9,sameR,sid__3x3,cxy(7,8),txy(7,8),blue,no_child). 
lhs(in0_blue6_10_7_12_9,sameR,sid__3x3,cxy(11,8),txy(11,8),blue,no_child). 
lhs(in0_blue6_10_11_12_13,sameR,sid__3x3,cxy(11,12),txy(11,12),blue,no_child). 
lhs(in0_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),black,no_child). 
lhs(in0_black0_1_1_12_14,sameR,s10448255,cxy(7,7),txy(1,14),black,no_child). 
