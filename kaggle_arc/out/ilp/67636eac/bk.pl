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
lhs(in0_red5_2_2_4_4,sameR,sid_plus_3x3,cxy(3,3),txy(3,3),no_child). 
lhs(in0_green5_5_6_7_8,sameR,sid_plus_3x3,cxy(6,7),txy(6,7),no_child). 
lhs(in0_cyan5_14_3_16_5,sameR,sid_plus_3x3,cxy(15,4),txy(15,4),no_child). 
lhs(in1_green4_3_2_5_4,sameR,sid_hollow_diamond_3x3,cxy(4,3),txy(4,3),1). 
lhs(in1_blue4_4_7_6_9,sameR,sid_hollow_diamond_3x3,cxy(5,8),txy(5,8),1). 
lhs(in1_cyan4_5_12_7_14,sameR,sid_hollow_diamond_3x3,cxy(6,13),txy(6,13),1). 
lhs(in1_black0_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),no_child). 
lhs(in1_black0_5_8_5_8,sameR,sid_1x1,cxy(5,8),txy(5,8),no_child). 
lhs(in1_black0_6_13_6_13,sameR,sid_1x1,cxy(6,13),txy(6,13),no_child). 
lhs(in2_blue5_2_7_4_9,sameR,sid_X_3x3,cxy(3,8),txy(3,8),no_child). 
lhs(in2_red5_4_2_6_4,sameR,sid_X_3x3,cxy(5,3),txy(5,3),no_child). 
lhs(in0_yellow7_2_4_4_6,sameR,s16715379,cxy(3,5),txy(3,5),no_child). 
lhs(in0_red7_7_5_9_7,sameR,s16715379,cxy(8,6),txy(8,6),no_child). 
lhs(in0_green7_11_3_13_5,sameR,s16715379,cxy(12,4),txy(12,4),no_child). 
lhs(in0_blue7_15_4_17_6,sameR,s16715379,cxy(16,5),txy(16,5),no_child). 
