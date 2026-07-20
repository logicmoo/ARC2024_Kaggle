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
lhs(in0_orange2_2_2_3_2,sameR,sid_2x1,cxy(3,2),txy(3,2),no_child). 
lhs(in0_green1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),no_child). 
lhs(in0_black0_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1),no_child). 
lhs(in1_cyan2_2_1_3_2,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(3,2),txy(3,2),no_child). 
lhs(in1_silver3_3_2_4_3,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(4,2),txy(4,2),no_child). 
lhs(in1_black0_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1),no_child). 
lhs(in0_blue2_3_1_3_2,rot90,sid_2x1,cxy(3,2),txy(3,2),no_child). 
lhs(in0_purple4_2_3_4_4,flipV,sid_tetris_Z_270_Rotated_2x3,cxy(3,3),txy(4,4),1). 
lhs(in0_blue1_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4),no_child). 
