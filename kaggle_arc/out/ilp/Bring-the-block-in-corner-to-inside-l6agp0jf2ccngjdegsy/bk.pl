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
lhs(in0_yellow9_2_2_4_4,sameR,sid_1x1,cxy(3,3),txy(3,3),yellow,no_child). 
lhs(in0_red1_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5),red,no_child). 
lhs(in0_purple1_5_1_5_1,sameR,sid_1x1,cxy(5,1),txy(5,1),purple,no_child). 
lhs(in0_black0_1_1_5_5,sameR,s5668778,cxy(3,3),txy(3,3),black,no_child). 
lhs(in1_cyan6_2_2_4_3,sameR,sid_2x1,cxy(3,3),txy(3,3),cyan,no_child). 
lhs(in1_orange1_5_1_5_1,sameR,sid_1x1,cxy(5,1),txy(5,1),orange,no_child). 
lhs(in1_orange1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),orange,no_child). 
lhs(in1_black0_1_1_5_5,sameR,s6865971,cxy(3,3),txy(3,3),black,no_child). 
lhs(in2_silver9_2_2_4_4,sameR,sid_1x1,cxy(3,3),txy(3,3),silver,no_child). 
lhs(in2_yellow1_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5),yellow,no_child). 
lhs(in2_red1_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5),red,no_child). 
lhs(in2_black0_1_1_5_5,sameR,s14227767,cxy(3,3),txy(3,3),black,no_child). 
lhs(in0_blue6_2_2_3_4,rot90,sid_2x1,cxy(3,3),txy(3,3),blue,no_child). 
lhs(in0_green1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),green,no_child). 
lhs(in0_yellow1_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1),yellow,no_child). 
lhs(in0_black0_1_1_5_5,sameR,s6865971,cxy(3,3),txy(3,3),black,no_child). 
