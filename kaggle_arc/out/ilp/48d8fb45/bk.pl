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
lhs(in0_blue5_8_2_10_4,rot90,s11869152,cxy(9,3),txy(10,2),blue,no_child). 
lhs(in0_blue7_6_8_8_10,sameR,sid_t180_3x2,cxy(7,9),txy(7,9),blue,no_child). 
lhs(in0_blue7_3_3_5_6,flipD,s12298352,cxy(4,5),txy(5,6),pen([cc(blue,1),cc(silver,1),cc(blue,5)]),no_child). 
lhs(in0_black0_1_1_10_10,sameR,s12976261,cxy(5,5),txy(10,10),black,no_child). 
lhs(in1_yellow5_2_4_4_6,sameR,s15001251,cxy(3,5),txy(4,6),yellow,no_child). 
lhs(in1_yellow5_7_2_9_5,rot180,s5954242,cxy(8,3),txy(9,4),pen([cc(yellow,4),cc(silver,1)]),no_child). 
lhs(in1_black0_1_1_10_10,sameR,s16472543,cxy(5,6),txy(10,1),black,no_child). 
lhs(in2_red5_2_3_4_5,rot90,s15001251,cxy(3,4),txy(4,3),red,no_child). 
lhs(in2_red6_7_5_9_8,flipV,s16596186,cxy(8,7),txy(9,6),pen([cc(red,5),cc(silver,1)]),no_child). 
lhs(in2_black0_1_1_10_10,sameR,s8213959,cxy(5,6),txy(10,1),black,no_child). 
lhs(in0_green4_2_5_3_7,rot90,sid_t180_3x2,cxy(3,6),txy(3,6),green,no_child). 
lhs(in0_green6_6_7_8_9,sameR,s12760807,cxy(7,8),txy(8,9),green,no_child). 
lhs(in0_silver6_6_1_8_4,sameR,s7610833,cxy(7,3),txy(8,4),pen([cc(silver,1),cc(green,5)]),no_child). 
lhs(in0_black0_1_1_10_10,sameR,s15040645,cxy(5,5),txy(10,10),black,no_child). 
