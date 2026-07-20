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
lhs(in0_yellow1_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5),yellow,no_child). 
lhs(in0_black0_1_1_5_5,sameR,s11778174,cxy(3,3),txy(3,3),black,no_child). 
lhs(in1_yellow4_2_4_4_5,sameR,sid_t180_3x2,cxy(3,5),txy(3,5),yellow,no_child). 
lhs(in1_black0_1_1_5_5,sameR,s15609749,cxy(3,3),txy(3,3),black,no_child). 
lhs(in2_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),black,no_child). 
lhs(in2_black0_5_1_5_1,sameR,sid_1x1,cxy(5,1),txy(5,1),black,no_child). 
lhs(in2_yellow23_1_1_5_5,sameR,sid_t180_3x2,cxy(3,3),txy(3,3),yellow,2). 
lhs(in0_black0_1_1_5_3,rot90,s15609749,cxy(3,2),txy(3,2),black,no_child). 
lhs(in0_yellow14_1_2_5_5,sameR,sid_RtTriagle_north_5x3,cxy(3,4),txy(3,4),yellow,no_child). 
