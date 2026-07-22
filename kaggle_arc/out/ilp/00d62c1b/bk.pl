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
lhs(in0_green6_2_2_5_5,sameR,s10809003,cxy(4,4),txy(4,4),green,no_child). 
lhs(in0_black0_1_1_6_6,sameR,s3217181,cxy(4,4),txy(1,1),black,no_child). 
lhs(in1_green15_3_2_8_8,rot180,s9980084,cxy(5,5),txy(3,2),green,no_child). 
lhs(in1_black0_1_1_10_10,sameR,s5135887,cxy(6,6),txy(1,1),black,no_child). 
lhs(in2_green22_1_1_9_9,sameR,s8721169,cxy(6,5),txy(9,9),green,no_child). 
lhs(in2_black0_1_1_10_10,sameR,s12727439,cxy(5,6),txy(10,1),black,no_child). 
lhs(in3_black0_4_3_5_4,sameR,sid_1x1,cxy(5,4),txy(4,3),black,no_child). 
lhs(in3_green29_3_2_10_10,flipDHV,s14837053,cxy(6,6),txy(3,2),green,no_child). 
lhs(in3_black0_1_1_10_10,sameR,s1469986,cxy(5,6),txy(10,1),black,no_child). 
lhs(in4_green2_13_17_14_18,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(14,18),txy(13,17),green,no_child). 
lhs(in4_black0_10_6_15_9,rot90,sid_1x2,cxy(13,8),txy(10,6),black,no_child). 
lhs(in4_green11_14_13_18_17,sameR,s11486546,cxy(17,15),txy(14,13),green,no_child). 
lhs(in4_green49_5_2_16_16,rot180,s6997219,cxy(11,9),txy(5,3),green,no_child). 
lhs(in4_green1_3_10_3_10,sameR,sid_1x1,cxy(3,10),txy(3,10),green,no_child). 
lhs(in4_green1_5_7_5_7,sameR,sid_1x1,cxy(5,7),txy(5,7),green,no_child). 
lhs(in4_green1_16_12_16_12,sameR,sid_1x1,cxy(16,12),txy(16,12),green,no_child). 
lhs(in4_black0_17_16_17_16,sameR,sid_1x1,cxy(17,16),txy(17,16),black,no_child). 
lhs(in4_green1_18_12_18_12,sameR,sid_1x1,cxy(18,12),txy(18,12),green,no_child). 
lhs(in4_green1_19_4_19_4,sameR,sid_1x1,cxy(19,4),txy(19,4),green,no_child). 
lhs(in4_black0_1_1_20_20,sameR,s1538320,cxy(10,11),txy(20,1),black,no_child). 
lhs(in0_black0_11_11_13_11,rot90,sid_1x2,cxy(12,11),txy(12,11),black,no_child). 
lhs(in0_black0_9_17_11_18,rot90,sid_1x2,cxy(10,18),txy(10,18),black,no_child). 
lhs(in0_green5_2_14_5_16,flipD,sid_hollow_diamond_3x3,cxy(3,15),txy(5,16),green,no_child). 
lhs(in0_black0_15_8_17_12,sameR,sid_1x2,cxy(16,10),txy(16,10),black,no_child). 
lhs(in0_green15_7_16_12_19,flipV,s2533767,cxy(10,17),txy(7,16),green,no_child). 
lhs(in0_green58_2_2_18_14,flipDHV,s12290725,cxy(11,8),txy(3,2),green,no_child). 
lhs(in0_black0_1_1_20_20,sameR,s283661,cxy(10,10),txy(20,20),black,no_child). 
