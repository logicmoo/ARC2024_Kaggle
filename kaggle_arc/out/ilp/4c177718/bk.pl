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
lhs(in1_blue5_6_10_8_12,sameR,s2822656,cxy(7,11),txy(7,11),no_child). 
lhs(in1_silver15_1_6_15_6,sameR,sid_12,cxy(8,6),txy(8,6),no_child). 
lhs(in1_yellow7_11_2_13_4,rot90,s15307279,cxy(12,3),txy(12,3),no_child). 
lhs(in1_red5_7_2_9_4,sameR,s15307279,cxy(8,3),txy(8,3),no_child). 
lhs(in1_blue5_3_2_5_4,sameR,s2822656,cxy(4,3),txy(4,3),no_child). 
lhs(in1_black0_5_9_9_13,sameR,s4705663,cxy(7,11),txy(7,11),no_child). 
lhs(in1_black0_1_7_15_7,rot90,sid_21,cxy(8,7),txy(8,7),no_child). 
lhs(in1_black0_1_1_15_5,rot90,s12974445,cxy(8,3),txy(13,4),no_child). 
