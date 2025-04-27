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
lhs(in0_black0_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5),no_child). 
lhs(in0_black0_2_5_2_5,sameR,sid_1x1,cxy(2,5),txy(2,5),no_child). 
lhs(in0_black0_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5),no_child). 
lhs(in0_black0_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4),no_child). 
lhs(in0_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),no_child). 
lhs(in0_black0_2_3_2_3,sameR,sid_1x1,cxy(2,3),txy(2,3),no_child). 
lhs(in0_black0_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),no_child). 
lhs(in0_red2_1_4_2_4,sameR,sid_2x1,cxy(2,4),txy(2,4),no_child). 
lhs(in1_black0_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5),no_child). 
lhs(in1_black0_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5),no_child). 
lhs(in1_black0_2_5_2_5,sameR,sid_1x1,cxy(2,5),txy(2,5),no_child). 
lhs(in1_black0_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5),no_child). 
lhs(in1_black0_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),no_child). 
lhs(in1_black0_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),no_child). 
lhs(in1_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),no_child). 
lhs(in1_black0_2_3_2_3,sameR,sid_1x1,cxy(2,3),txy(2,3),no_child). 
lhs(in1_black0_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),no_child). 
lhs(in1_red3_1_4_3_4,sameR,sid_2x1,cxy(2,4),txy(2,4),no_child). 
lhs(in2_black0_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),no_child). 
lhs(in2_black0_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),no_child). 
lhs(in2_black0_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4),no_child). 
lhs(in2_black0_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4),no_child). 
lhs(in2_black0_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4),no_child). 
lhs(in2_black0_5_3_5_3,sameR,sid_1x1,cxy(5,3),txy(5,3),no_child). 
lhs(in2_black0_5_2_5_2,sameR,sid_1x1,cxy(5,2),txy(5,2),no_child). 
lhs(in2_black0_4_2_4_2,sameR,sid_1x1,cxy(4,2),txy(4,2),no_child). 
lhs(in2_black0_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2),no_child). 
lhs(in2_black0_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),no_child). 
lhs(in2_black0_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),no_child). 
lhs(in2_red4_1_3_4_3,sameR,sid_2x1,cxy(3,3),txy(3,3),no_child). 
lhs(in0_black0_6_4_6_4,sameR,sid_1x1,cxy(6,4),txy(6,4),no_child). 
lhs(in0_black0_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),no_child). 
lhs(in0_black0_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),no_child). 
lhs(in0_black0_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4),no_child). 
lhs(in0_black0_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4),no_child). 
lhs(in0_black0_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4),no_child). 
lhs(in0_black0_6_3_6_3,sameR,sid_1x1,cxy(6,3),txy(6,3),no_child). 
lhs(in0_black0_6_2_6_2,sameR,sid_1x1,cxy(6,2),txy(6,2),no_child). 
lhs(in0_black0_5_2_5_2,sameR,sid_1x1,cxy(5,2),txy(5,2),no_child). 
lhs(in0_black0_4_2_4_2,sameR,sid_1x1,cxy(4,2),txy(4,2),no_child). 
lhs(in0_black0_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2),no_child). 
lhs(in0_black0_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),no_child). 
lhs(in0_black0_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),no_child). 
lhs(in0_red5_1_3_5_3,sameR,sid_2x1,cxy(3,3),txy(3,3),no_child). 
