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
lhs(in0_black0_4_2_6_4,sameR,sid_hollow_3x3,cxy(5,3),txy(9,5),no_child). 
lhs(in0_black0_10_9_12_11,sameR,sid_hollow_3x3,cxy(12,11),txy(21,19),no_child). 
lhs(in0_cyan1_5_3_5_3,sameR,sid_1x1,cxy(5,3),txy(5,3),no_child). 
lhs(in0_silver1_11_10_11_10,sameR,sid_1x1,cxy(11,10),txy(11,10),no_child). 
lhs(in1_black0_3_10_5_12,sameR,sid_hollow_3x3,cxy(4,12),txy(7,21),no_child). 
lhs(in1_black0_9_5_11_7,sameR,sid_hollow_3x3,cxy(11,7),txy(19,11),no_child). 
lhs(in1_yellow1_4_11_4_11,sameR,sid_1x1,cxy(4,11),txy(4,11),no_child). 
lhs(in1_green1_10_6_10_6,sameR,sid_1x1,cxy(10,6),txy(10,6),no_child). 
lhs(in2_black0_2_4_4_6,sameR,sid_hollow_3x3,cxy(3,5),txy(5,9),no_child). 
lhs(in2_black0_7_11_9_13,sameR,sid_hollow_3x3,cxy(9,13),txy(15,23),no_child). 
lhs(in2_black0_11_2_13_4,sameR,sid_hollow_3x3,cxy(13,3),txy(23,5),no_child). 
lhs(in2_silver1_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5),no_child). 
lhs(in2_orange1_8_12_8_12,sameR,sid_1x1,cxy(8,12),txy(8,12),no_child). 
lhs(in2_green1_12_3_12_3,sameR,sid_1x1,cxy(12,3),txy(12,3),no_child). 
lhs(in0_cyan1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),no_child). 
lhs(in0_blue1_7_13_7_13,sameR,sid_1x1,cxy(7,13),txy(7,13),no_child). 
lhs(in0_yellow1_11_7_11_7,sameR,sid_1x1,cxy(11,7),txy(11,7),no_child). 
