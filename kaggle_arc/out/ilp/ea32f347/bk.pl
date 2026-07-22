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
lhs(in0_silver3_8_5_8_7,rot90,sid_2x1,cxy(8,6),txy(8,6),silver,no_child). 
lhs(in0_silver5_5_3_5_7,rot90,sid_2x1,cxy(5,5),txy(5,5),silver,no_child). 
lhs(in0_silver6_2_2_2_7,rot90,sid_2x1,cxy(2,5),txy(2,5),silver,no_child). 
lhs(in0_black0_1_1_10_10,sameR,s1540869,cxy(6,6),txy(1,1),black,no_child). 
lhs(in1_silver2_8_6_8_7,rot90,sid_2x1,cxy(8,7),txy(8,7),silver,no_child). 
lhs(in1_silver4_2_4_2_7,rot90,sid_2x1,cxy(2,6),txy(2,6),silver,no_child). 
lhs(in1_silver6_5_2_5_7,rot90,sid_2x1,cxy(5,5),txy(5,5),silver,no_child). 
lhs(in1_black0_1_1_10_10,sameR,s16560111,cxy(6,6),txy(1,1),black,no_child). 
lhs(in2_silver3_3_8_5_8,sameR,sid_2x1,cxy(4,8),txy(4,8),silver,no_child). 
lhs(in2_silver5_8_4_8_8,rot90,sid_2x1,cxy(8,6),txy(8,6),silver,no_child). 
lhs(in2_silver6_1_3_6_3,sameR,sid_2x1,cxy(4,3),txy(4,3),silver,no_child). 
lhs(in2_black0_1_1_10_10,sameR,s8171524,cxy(6,6),txy(1,1),black,no_child). 
lhs(in3_silver4_2_3_5_3,sameR,sid_2x1,cxy(4,3),txy(4,3),silver,no_child). 
lhs(in3_silver5_2_6_6_6,sameR,sid_2x1,cxy(4,6),txy(4,6),silver,no_child). 
lhs(in3_silver7_8_2_8_8,rot90,sid_2x1,cxy(8,5),txy(8,5),silver,no_child). 
lhs(in3_black0_1_1_10_10,sameR,s9018019,cxy(5,6),txy(10,1),black,no_child). 
lhs(in0_silver3_4_2_4_4,rot90,sid_2x1,cxy(4,3),txy(4,3),silver,no_child). 
lhs(in0_silver5_1_9_5_9,sameR,sid_2x1,cxy(3,9),txy(3,9),silver,no_child). 
lhs(in0_silver6_5_6_10_6,sameR,sid_2x1,cxy(8,6),txy(8,6),silver,no_child). 
lhs(in0_black0_1_1_10_10,sameR,s9951808,cxy(6,5),txy(1,10),black,no_child). 
