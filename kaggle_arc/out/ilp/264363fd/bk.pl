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
lhs(in0_green5_25_4_27_6,sameR,sid_X_3x3,cxy(26,5),txy(26,5),green,no_child). 
lhs(in0_red8_24_3_28_7,sameR,sid_hollow_diamond_3x3,cxy(26,5),txy(26,5),red,no_child). 
lhs(in0_blue161_9_19_26_27,rot180,sid_hollow_3x3,cxy(17,23),txy(17,23),blue,no_child). 
lhs(in0_blue254_3_2_19_16,sameR,sid_hollow_3x3,cxy(11,9),txy(11,9),blue,no_child). 
lhs(in0_green1_6_6_6_6,sameR,sid_1x1,cxy(6,6),txy(6,6),green,no_child). 
lhs(in0_green1_18_26_18_26,sameR,sid_1x1,cxy(18,26),txy(18,26),green,no_child). 
lhs(in0_cyan470_1_1_30_30,rot270,s3656352,cxy(17,17),txy(1,1),cyan,no_child). 
lhs(in1_green8_23_4_27_8,sameR,sid_hollow_diamond_3x3,cxy(25,6),txy(25,6),green,no_child). 
lhs(in1_red151_2_6_18_14,sameR,s5449797,cxy(10,10),txy(10,10),red,no_child). 
lhs(in1_red233_7_16_24_28,rot180,sid_hollow_3x3,cxy(15,22),txy(15,22),red,no_child). 
lhs(in1_yellow1_6_11_6_11,sameR,sid_1x1,cxy(6,11),txy(6,11),yellow,no_child). 
lhs(in1_yellow1_15_8_15_8,sameR,sid_1x1,cxy(15,8),txy(15,8),yellow,no_child). 
lhs(in1_yellow1_17_25_17_25,sameR,sid_1x1,cxy(17,25),txy(17,25),yellow,no_child). 
lhs(in1_yellow1_25_6_25_6,sameR,sid_1x1,cxy(25,6),txy(25,6),yellow,no_child). 
lhs(in1_blue504_1_1_30_30,sameR,s5190770,cxy(17,14),txy(1,30),blue,no_child). 
lhs(in2_silver2_25_25_25_26,rot90,sid_2x1,cxy(25,26),txy(25,26),silver,no_child). 
lhs(in2_silver2_25_28_25_29,rot90,sid_2x1,cxy(25,29),txy(25,29),silver,no_child). 
lhs(in2_purple3_24_26_24_28,rot90,sid_2x1,cxy(24,27),txy(24,27),purple,no_child). 
lhs(in2_purple3_26_26_26_28,rot90,sid_2x1,cxy(26,27),txy(26,27),purple,no_child). 
lhs(in2_green69_13_17_22_23,rot180,sid_hollow_3x3,cxy(17,20),txy(17,20),green,no_child). 
lhs(in2_green134_2_10_10_24,flipD,sid_hollow_3x3,cxy(6,17),txy(6,17),green,no_child). 
lhs(in2_green206_12_3_27_15,rot180,s5449797,cxy(19,9),txy(19,9),green,no_child). 
lhs(in2_yellow1_5_13_5_13,sameR,sid_1x1,cxy(5,13),txy(5,13),yellow,no_child). 
lhs(in2_yellow1_16_11_16_11,sameR,sid_1x1,cxy(16,11),txy(16,11),yellow,no_child). 
lhs(in2_yellow1_19_21_19_21,sameR,sid_1x1,cxy(19,21),txy(19,21),yellow,no_child). 
lhs(in2_yellow1_24_7_24_7,sameR,sid_1x1,cxy(24,7),txy(24,7),yellow,no_child). 
lhs(in2_yellow1_25_27_25_27,sameR,sid_1x1,cxy(25,27),txy(25,27),yellow,no_child). 
lhs(in2_cyan476_1_1_30_30,rot180,s413424,cxy(16,17),txy(1,1),cyan,no_child). 
lhs(in0_cyan2_2_24_3_24,sameR,sid_2x1,cxy(3,24),txy(3,24),cyan,no_child). 
lhs(in0_cyan2_5_24_6_24,sameR,sid_2x1,cxy(6,24),txy(6,24),cyan,no_child). 
lhs(in0_green3_3_23_5_23,sameR,sid_2x1,cxy(4,23),txy(4,23),green,no_child). 
lhs(in0_green3_3_25_5_25,sameR,sid_2x1,cxy(4,25),txy(4,25),green,no_child). 
lhs(in0_blue119_4_3_15_12,flipV,sid_hollow_3x3,cxy(10,7),txy(4,12),blue,no_child). 
lhs(in0_blue236_13_15_29_28,rot180,s5449797,cxy(21,22),txy(21,22),blue,no_child). 
lhs(in0_red1_4_24_4_24,sameR,sid_1x1,cxy(4,24),txy(4,24),red,no_child). 
lhs(in0_red1_7_10_7_10,sameR,sid_1x1,cxy(7,10),txy(7,10),red,no_child). 
lhs(in0_red1_19_25_19_25,sameR,sid_1x1,cxy(19,25),txy(19,25),red,no_child). 
lhs(in0_red1_24_18_24_18,sameR,sid_1x1,cxy(24,18),txy(24,18),red,no_child). 
lhs(in0_yellow531_1_1_30_30,rot90,s856546,cxy(15,14),txy(30,30),yellow,no_child). 
