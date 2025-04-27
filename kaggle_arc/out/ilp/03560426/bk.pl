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
lhs(in0_red4_4_9_5_10,sameR,sid_1x1,cxy(5,10),txy(4,9),red,no_child). 
lhs(in0_green4_7_9_8_10,sameR,sid_1x1,cxy(8,10),txy(7,9),green,no_child). 
lhs(in0_yellow4_10_7_10_10,rot90,sid_2x1,cxy(10,9),txy(10,9),yellow,no_child). 
lhs(in0_blue6_1_8_2_10,rot90,sid_2x1,cxy(2,9),txy(2,9),blue,no_child). 
lhs(in0_black0_1_1_10_10,sameR,s15109119,cxy(6,5),txy(1,1),black,no_child). 
lhs(in1_orange4_5_9_6_10,sameR,sid_1x1,cxy(6,10),txy(5,9),orange,no_child). 
lhs(in1_red6_8_9_10_10,sameR,sid_2x1,cxy(9,10),txy(9,10),red,no_child). 
lhs(in1_cyan12_1_7_3_10,rot90,sid_2x1,cxy(2,9),txy(2,9),cyan,no_child). 
lhs(in1_black0_1_1_10_10,sameR,s15359499,cxy(6,5),txy(1,1),black,no_child). 
lhs(in2_red5_6_6_6_10,rot90,sid_2x1,cxy(6,8),txy(6,8),red,no_child). 
lhs(in2_yellow8_1_9_4_10,sameR,sid_2x1,cxy(3,10),txy(1,9),yellow,no_child). 
lhs(in2_green9_8_8_10_10,sameR,sid_1x1,cxy(9,9),txy(9,9),green,no_child). 
lhs(in2_black0_1_1_10_10,sameR,s8237827,cxy(5,5),txy(10,1),black,no_child). 
lhs(in0_purple3_6_8_6_10,rot90,sid_2x1,cxy(6,9),txy(6,9),purple,no_child). 
lhs(in0_green4_8_9_9_10,sameR,sid_1x1,cxy(9,10),txy(8,9),green,no_child). 
lhs(in0_orange4_1_7_1_10,rot90,sid_2x1,cxy(1,9),txy(1,9),orange,no_child). 
lhs(in0_cyan6_3_8_4_10,rot90,sid_2x1,cxy(4,9),txy(4,9),cyan,no_child). 
lhs(in0_black0_1_1_10_10,sameR,s12129420,cxy(6,5),txy(1,2),black,no_child). 
