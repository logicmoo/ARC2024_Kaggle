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
lhs(in0_red5_4_4_6_6,sameR,sid_plus_3x3,cxy(5,5),txy(5,5),no_child). 
lhs(in0_black0_1_1_4_4,sameR,sid_1x1,cxy(3,3),txy(1,1),no_child). 
lhs(in0_black0_6_1_10_4,rot90,sid_1x2,cxy(8,3),txy(8,3),no_child). 
lhs(in0_red5_3_3_7_7,sameR,s6151086,cxy(5,5),txy(5,5),no_child). 
lhs(in1_wbg0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),no_child). 
lhs(in1_red1_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4),no_child). 
lhs(in1_wbg0_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5),no_child). 
lhs(in1_red1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),no_child). 
lhs(in1_red1_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),no_child). 
lhs(in1_red1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5),no_child). 
lhs(in1_wbg0_5_3_5_3,sameR,sid_1x1,cxy(5,3),txy(5,3),no_child). 
lhs(in1_red1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),no_child). 
lhs(in1_wbg0_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5),no_child). 
lhs(in0_red5_7_11_9_13,sameR,sid_plus_3x3,cxy(8,12),txy(8,12),no_child). 
lhs(in0_red5_6_10_10_14,sameR,s6151086,cxy(8,12),txy(8,12),no_child). 
