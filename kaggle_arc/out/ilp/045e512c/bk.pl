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
lhs(in0_green3_11_7_11_9,rot90,sid_2x1,cxy(11,8),txy(11,8),green,no_child). 
lhs(in0_red3_7_11_9_11,sameR,sid_2x1,cxy(8,11),txy(8,11),red,no_child). 
lhs(in0_cyan8_7_7_9_9,sameR,sid_hollow_3x3,cxy(8,8),txy(8,8),cyan,1). 
lhs(in0_black0_8_8_8_8,sameR,sid_1x1,cxy(8,8),txy(8,8),black,no_child). 
lhs(in0_black0_1_1_21_21,sameR,s9113573,cxy(11,11),txy(11,11),black,no_child). 
lhs(in1_blue5_12_8_14_10,sameR,sid_plus_3x3,cxy(13,9),txy(13,9),blue,no_child). 
lhs(in1_red1_9_8_11_10,sameR,sid_tetris_T_Stretched_3x3,cxy(10,9),txy(10,9),red,no_child). 
lhs(in1_yellow1_12_5_14_7,sameR,sid_tetris_T_Stretched_3x3,cxy(13,6),txy(13,6),yellow,no_child). 
lhs(in1_yellow1_15_8_17_10,sameR,sid_tetris_T_Stretched_3x3,cxy(16,9),txy(16,9),yellow,no_child). 
lhs(in1_blue5_11_7_15_11,sameR,s6151086,cxy(13,9),txy(13,9),blue,no_child). 
lhs(in1_red1_10_9_10_9,sameR,sid_1x1,cxy(10,9),txy(10,9),red,no_child). 
lhs(in1_yellow1_13_6_13_6,sameR,sid_1x1,cxy(13,6),txy(13,6),yellow,no_child). 
lhs(in1_yellow1_16_9_16_9,sameR,sid_1x1,cxy(16,9),txy(16,9),yellow,no_child). 
lhs(in2_purple2_11_5_12_6,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(12,6),txy(11,5),purple,no_child). 
lhs(in2_blue3_11_12_12_13,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(11,12),txy(11,12),blue,no_child). 
lhs(in2_silver6_7_8_9_10,sameR,s1381650,cxy(8,9),txy(8,9),silver,no_child). 
lhs(in2_black0_1_1_21_21,sameR,s6059610,cxy(11,11),txy(11,11),black,no_child). 
lhs(in0_yellow2_11_5_11_6,rot90,sid_2x1,cxy(11,6),txy(11,6),yellow,no_child). 
lhs(in0_red3_11_8_11_10,rot90,sid_2x1,cxy(11,9),txy(11,9),red,no_child). 
lhs(in0_green3_7_12_9_12,sameR,sid_2x1,cxy(8,12),txy(8,12),green,no_child). 
lhs(in0_cyan7_7_8_9_10,rot90,sid_u_3x2,cxy(8,9),txy(8,9),cyan,no_child). 
lhs(in0_black0_1_1_21_21,sameR,s14350887,cxy(11,11),txy(11,11),black,no_child). 
