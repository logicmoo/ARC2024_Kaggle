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
lhs(in0_blue1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),blue,no_child). 
lhs(in0_orange1_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4),orange,no_child). 
lhs(in0_purple1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),purple,no_child). 
lhs(in0_cyan1_4_2_4_2,sameR,sid_1x1,cxy(4,2),txy(4,2),cyan,no_child). 
lhs(in0_silver1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),silver,no_child). 
lhs(in0_black0_1_1_5_5,sameR,s2856896,cxy(3,3),txy(3,3),black,no_child). 
lhs(in1_red1_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),red,no_child). 
lhs(in1_blue1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),blue,no_child). 
lhs(in1_green1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),green,no_child). 
lhs(in1_silver1_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),silver,no_child). 
lhs(in1_green1_5_2_5_2,sameR,sid_1x1,cxy(5,2),txy(5,2),green,no_child). 
lhs(in1_black0_1_1_5_5,sameR,s11626161,cxy(3,3),txy(3,3),black,no_child). 
lhs(in2_cyan2_1_2_2_2,sameR,sid_2x1,cxy(2,2),txy(2,2),cyan,no_child). 
lhs(in2_purple2_4_3_5_3,sameR,sid_2x1,cxy(5,3),txy(5,3),purple,no_child). 
lhs(in2_green1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),green,no_child). 
lhs(in2_black0_1_1_5_5,sameR,s11778174,cxy(3,3),txy(3,3),black,no_child). 
lhs(in0_yellow2_2_2_3_2,rot180,sid_2x1,cxy(3,2),txy(3,2),pen([cc(yellow,1),cc(red,1)]),no_child). 
lhs(in0_silver2_4_4_5_5,rot90,s13666407,cxy(5,5),txy(5,5),pen([cc(silver,1),cc(orange,1)]),no_child). 
lhs(in0_yellow1_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4),yellow,no_child). 
lhs(in0_black0_1_1_5_5,sameR,s5490103,cxy(3,3),txy(3,3),black,no_child). 
