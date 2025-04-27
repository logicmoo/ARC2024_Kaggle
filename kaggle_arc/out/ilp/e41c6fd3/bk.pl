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
lhs(in0_red16_4_4_7_8,rot270,s12561063,cxy(6,6),txy(4,8),red,no_child). 
lhs(in0_cyan16_11_2_14_6,rot270,s12561063,cxy(13,4),txy(11,6),cyan,no_child). 
lhs(in0_yellow16_17_8_20_12,rot270,s12561063,cxy(19,10),txy(17,12),yellow,no_child). 
lhs(in0_black0_1_1_23_13,rot90,s8678073,cxy(12,7),txy(12,7),black,no_child). 
lhs(in1_black0_15_14_16_14,rot90,sid_1x2,cxy(16,14),txy(16,14),black,no_child). 
lhs(in1_cyan16_5_7_10_10,sameR,s5507379,cxy(8,9),txy(8,9),cyan,no_child). 
lhs(in1_purple16_13_11_18_14,sameR,s5507379,cxy(16,13),txy(16,13),purple,1). 
lhs(in1_blue16_19_3_24_6,sameR,s5507379,cxy(22,5),txy(22,5),blue,no_child). 
lhs(in1_green16_25_9_30_12,sameR,s5507379,cxy(28,11),txy(28,11),green,no_child). 
lhs(in1_black0_1_1_30_14,rot90,s8843638,cxy(15,7),txy(30,14),black,no_child). 
lhs(in2_blue12_3_6_6_9,sameR,s14594424,cxy(5,8),txy(5,8),blue,no_child). 
lhs(in2_yellow12_8_9_11_12,sameR,s14594424,cxy(10,11),txy(10,11),yellow,no_child). 
lhs(in2_cyan12_14_3_17_6,sameR,s14594424,cxy(16,5),txy(16,5),cyan,no_child). 
lhs(in2_red12_18_8_21_11,sameR,s14594424,cxy(20,10),txy(20,10),red,no_child). 
lhs(in2_green12_25_4_28_7,sameR,s14594424,cxy(27,6),txy(27,6),green,no_child). 
lhs(in2_black0_1_1_30_16,rot90,s6130932,cxy(16,9),txy(1,1),black,no_child). 
lhs(in0_green15_3_10_7_14,rot90,s1496004,cxy(5,12),txy(5,12),green,no_child). 
lhs(in0_blue15_10_13_14_17,rot90,s1496004,cxy(12,15),txy(12,15),blue,no_child). 
lhs(in0_yellow15_15_3_19_7,rot90,s1496004,cxy(17,5),txy(17,5),yellow,no_child). 
lhs(in0_cyan15_22_8_26_12,rot90,s1496004,cxy(24,10),txy(24,10),cyan,no_child). 
lhs(in0_black0_1_1_30_17,rot90,s8682924,cxy(16,9),txy(16,9),black,no_child). 
