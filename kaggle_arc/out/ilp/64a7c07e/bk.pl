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
lhs(in0_cyan8_2_2_4_4,sameR,sid_hollow_3x3,cxy(3,3),txy(3,3),1). 
lhs(in0_cyan1_2_7_2_7,sameR,sid_1x1,cxy(2,7),txy(2,7),no_child). 
lhs(in0_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),no_child). 
lhs(in1_cyan4_1_2_2_3,sameR,sid_1x1,cxy(2,3),txy(1,2),no_child). 
lhs(in2_cyan4_5_9_6_10,sameR,sid_1x1,cxy(6,10),txy(5,9),no_child). 
lhs(in2_cyan12_2_2_5_5,sameR,sid_u_3x2,cxy(4,4),txy(2,2),no_child). 
lhs(in0_black0_4_4_4_5,sameR,sid_1x2,cxy(4,5),txy(4,5),no_child). 
lhs(in0_cyan3_5_9_6_10,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(6,10),txy(6,10),no_child). 
lhs(in0_cyan13_2_2_6_6,rot90,s10632248,cxy(4,4),txy(4,4),1). 
