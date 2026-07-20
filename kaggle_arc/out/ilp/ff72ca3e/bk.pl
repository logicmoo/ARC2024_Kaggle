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
lhs(in0_silver1_1_8_1_8,sameR,sid_1x1,cxy(1,8),txy(1,8),no_child). 
lhs(in0_silver1_2_5_2_5,sameR,sid_1x1,cxy(2,5),txy(2,5),no_child). 
lhs(in0_silver1_2_11_2_11,sameR,sid_1x1,cxy(2,11),txy(2,11),no_child). 
lhs(in0_yellow1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),no_child). 
lhs(in0_silver1_5_6_5_6,sameR,sid_1x1,cxy(5,6),txy(5,6),no_child). 
lhs(in0_silver1_7_1_7_1,sameR,sid_1x1,cxy(7,1),txy(7,1),no_child). 
lhs(in0_yellow1_7_9_7_9,sameR,sid_1x1,cxy(7,9),txy(7,9),no_child). 
lhs(in0_silver1_9_4_9_4,sameR,sid_1x1,cxy(9,4),txy(9,4),no_child). 
lhs(in0_silver1_10_12_10_12,sameR,sid_1x1,cxy(10,12),txy(10,12),no_child). 
lhs(in1_silver1_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4),no_child). 
lhs(in1_yellow1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),no_child). 
lhs(in2_silver1_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2),no_child). 
lhs(in2_yellow1_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),no_child). 
lhs(in3_yellow1_5_6_5_6,sameR,sid_1x1,cxy(5,6),txy(5,6),no_child). 
lhs(in3_silver1_6_2_6_2,sameR,sid_1x1,cxy(6,2),txy(6,2),no_child). 
lhs(in0_silver1_2_20_2_20,sameR,sid_1x1,cxy(2,20),txy(2,20),no_child). 
lhs(in0_silver1_2_28_2_28,sameR,sid_1x1,cxy(2,28),txy(2,28),no_child). 
lhs(in0_silver1_4_12_4_12,sameR,sid_1x1,cxy(4,12),txy(4,12),no_child). 
lhs(in0_yellow1_6_26_6_26,sameR,sid_1x1,cxy(6,26),txy(6,26),no_child). 
lhs(in0_yellow1_7_6_7_6,sameR,sid_1x1,cxy(7,6),txy(7,6),no_child). 
lhs(in0_silver1_9_20_9_20,sameR,sid_1x1,cxy(9,20),txy(9,20),no_child). 
lhs(in0_silver1_11_16_11_16,sameR,sid_1x1,cxy(11,16),txy(11,16),no_child). 
lhs(in0_silver1_15_8_15_8,sameR,sid_1x1,cxy(15,8),txy(15,8),no_child). 
lhs(in0_silver1_15_20_15_20,sameR,sid_1x1,cxy(15,20),txy(15,20),no_child). 
lhs(in0_silver1_16_3_16_3,sameR,sid_1x1,cxy(16,3),txy(16,3),no_child). 
lhs(in0_yellow1_16_16_16_16,sameR,sid_1x1,cxy(16,16),txy(16,16),no_child). 
lhs(in0_silver1_16_28_16_28,sameR,sid_1x1,cxy(16,28),txy(16,28),no_child). 
lhs(in0_silver1_19_17_19_17,sameR,sid_1x1,cxy(19,17),txy(19,17),no_child). 
