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
lhs(in0_green1_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5),green,no_child). 
lhs(in0_green1_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1),green,no_child). 
lhs(in0_red1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5),red,no_child). 
lhs(in0_green1_4_10_4_10,sameR,sid_1x1,cxy(4,10),txy(4,10),green,no_child). 
lhs(in0_orange1_6_11_6_11,sameR,sid_1x1,cxy(6,11),txy(6,11),orange,no_child). 
lhs(in0_green1_9_5_9_5,sameR,sid_1x1,cxy(9,5),txy(9,5),green,no_child). 
lhs(in0_orange1_12_7_12_7,sameR,sid_1x1,cxy(12,7),txy(12,7),orange,no_child). 
lhs(in0_blue1_12_11_12_11,sameR,sid_1x1,cxy(12,11),txy(12,11),blue,no_child). 
lhs(in0_orange1_12_15_12_15,sameR,sid_1x1,cxy(12,15),txy(12,15),orange,no_child). 
lhs(in0_orange1_15_11_15_11,sameR,sid_1x1,cxy(15,11),txy(15,11),orange,no_child). 
lhs(in1_orange1_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),orange,no_child). 
lhs(in1_orange1_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1),orange,no_child). 
lhs(in1_blue1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),blue,no_child). 
lhs(in1_orange1_4_9_4_9,sameR,sid_1x1,cxy(4,9),txy(4,9),orange,no_child). 
lhs(in1_green1_6_11_6_11,sameR,sid_1x1,cxy(6,11),txy(6,11),green,no_child). 
lhs(in1_orange1_10_3_10_3,sameR,sid_1x1,cxy(10,3),txy(10,3),orange,no_child). 
lhs(in1_red1_12_11_12_11,sameR,sid_1x1,cxy(12,11),txy(12,11),red,no_child). 
lhs(in1_green1_12_15_12_15,sameR,sid_1x1,cxy(12,15),txy(12,15),green,no_child). 
lhs(in2_orange1_2_7_2_7,sameR,sid_1x1,cxy(2,7),txy(2,7),orange,no_child). 
lhs(in2_green1_7_1_7_1,sameR,sid_1x1,cxy(7,1),txy(7,1),green,no_child). 
lhs(in2_red1_7_12_7_12,sameR,sid_1x1,cxy(7,12),txy(7,12),red,no_child). 
lhs(in2_green1_7_15_7_15,sameR,sid_1x1,cxy(7,15),txy(7,15),green,no_child). 
lhs(in2_blue1_11_7_11_7,sameR,sid_1x1,cxy(11,7),txy(11,7),blue,no_child). 
lhs(in2_orange1_11_15_11_15,sameR,sid_1x1,cxy(11,15),txy(11,15),orange,no_child). 
lhs(in2_green1_15_12_15_12,sameR,sid_1x1,cxy(15,12),txy(15,12),green,no_child). 
lhs(in0_green1_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4),green,no_child). 
lhs(in0_orange1_1_7_1_7,sameR,sid_1x1,cxy(1,7),txy(1,7),orange,no_child). 
lhs(in0_blue1_6_7_6_7,sameR,sid_1x1,cxy(6,7),txy(6,7),blue,no_child). 
lhs(in0_green1_12_1_12_1,sameR,sid_1x1,cxy(12,1),txy(12,1),green,no_child). 
lhs(in0_red1_12_4_12_4,sameR,sid_1x1,cxy(12,4),txy(12,4),red,no_child). 
lhs(in0_green1_12_13_12_13,sameR,sid_1x1,cxy(12,13),txy(12,13),green,no_child). 
lhs(in0_orange1_15_7_15_7,sameR,sid_1x1,cxy(15,7),txy(15,7),orange,no_child). 
