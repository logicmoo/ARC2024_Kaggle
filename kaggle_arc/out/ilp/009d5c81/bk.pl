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
lhs(in0_blue5_2_10_4_12,sameR,sid_plus_3x3,cxy(3,11),txy(3,11),blue,no_child). 
lhs(in0_cyan30_5_2_13_9,sameR,s12516714,cxy(9,5),txy(13,9),cyan,no_child). 
lhs(in0_black0_1_1_14_14,sameR,s502064,cxy(7,8),txy(14,1),black,no_child). 
lhs(in1_blue6_4_11_6_13,sameR,s11399640,cxy(5,12),txy(5,12),blue,no_child). 
lhs(in1_cyan14_5_3_11_5,sameR,s8570574,cxy(8,4),txy(8,4),cyan,no_child). 
lhs(in1_black0_1_1_14_14,sameR,s6071711,cxy(8,8),txy(1,1),black,no_child). 
lhs(in2_black0_5_1_7_2,rot90,s11778174,cxy(6,1),txy(6,1),black,no_child). 
lhs(in2_blue5_8_10_10_12,sameR,sid_plus_3x3,cxy(9,11),txy(9,11),blue,no_child). 
lhs(in2_cyan24_2_1_10_5,sameR,s12800406,cxy(6,3),txy(6,3),cyan,no_child). 
lhs(in2_black0_1_1_14_14,sameR,s1107826,cxy(8,8),txy(1,1),black,no_child). 
lhs(in3_blue6_5_11_7_13,rot90,s12561063,cxy(6,12),txy(6,12),blue,no_child). 
lhs(in3_black0_10_1_14_4,rot90,s4384838,cxy(13,2),txy(10,1),black,no_child). 
lhs(in3_cyan31_5_1_14_8,flipD,s5741363,cxy(10,5),txy(8,1),cyan,no_child). 
lhs(in3_black0_1_1_14_14,sameR,s15072403,cxy(7,8),txy(7,8),black,no_child). 
lhs(in4_blue6_3_9_5_11,sameR,s11399640,cxy(4,10),txy(4,10),blue,no_child). 
lhs(in4_cyan16_6_2_12_7,flipD,s14930528,cxy(9,4),txy(9,4),cyan,no_child). 
lhs(in4_black0_1_1_14_14,sameR,s14163849,cxy(7,8),txy(14,1),black,no_child). 
lhs(in0_black0_7_3_9_4,rot90,s11778174,cxy(8,3),txy(8,3),black,no_child). 
lhs(in0_black0_11_3_13_4,rot90,s11778174,cxy(12,4),txy(12,4),black,no_child). 
lhs(in0_blue6_7_9_9_11,rot90,s12561063,cxy(8,10),txy(8,10),blue,no_child). 
lhs(in0_cyan26_6_2_14_5,flipV,s14078230,cxy(10,4),txy(10,4),cyan,no_child). 
lhs(in0_black0_1_1_14_14,sameR,s6284299,cxy(7,8),txy(14,1),black,no_child). 
