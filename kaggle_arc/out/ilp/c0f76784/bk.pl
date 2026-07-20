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
lhs(in0_silver12_7_7,nw_loc(7,7),se_loc(10,10),sameR,silver,12,sid_323,1). 
lhs(in0_silver8_3_3,nw_loc(3,3),se_loc(5,5),sameR,silver,8,sid_323,1). 
lhs(in0_silver16_8_1,nw_loc(8,1),se_loc(12,5),sameR,silver,16,sid_323,1). 
lhs(in0_black0_4_4,nw_loc(4,4),se_loc(4,4),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_8_8,nw_loc(8,8),se_loc(9,9),sameR,black,4,sid_11,no_child). 
lhs(in0_black0_9_2,nw_loc(9,2),se_loc(11,4),sameR,black,8,sid_323,no_child). 
lhs(in1_silver8_2_8,nw_loc(2,8),se_loc(4,10),sameR,silver,8,sid_323,1). 
lhs(in1_silver16_7_5,nw_loc(7,5),se_loc(11,9),sameR,silver,16,sid_323,1). 
lhs(in1_silver12_2_1,nw_loc(2,1),se_loc(5,4),sameR,silver,12,sid_323,1). 
lhs(in1_black0_3_9,nw_loc(3,9),se_loc(3,9),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_8_6,nw_loc(8,6),se_loc(10,8),sameR,black,8,sid_323,no_child). 
lhs(in1_black0_3_2,nw_loc(3,2),se_loc(4,3),sameR,black,4,sid_11,no_child). 
lhs(in2_silver12_5_8,nw_loc(5,8),se_loc(8,11),sameR,silver,12,sid_323,1). 
lhs(in2_silver16_2_2,nw_loc(2,2),se_loc(6,6),sameR,silver,16,sid_323,1). 
lhs(in2_black0_6_9,nw_loc(6,9),se_loc(7,10),sameR,black,4,sid_11,no_child). 
lhs(in2_black0_3_3,nw_loc(3,3),se_loc(5,5),sameR,black,8,sid_323,no_child). 
lhs(in2_black0_1_1,nw_loc(1,1),se_loc(9,12),sameR,black,40,s14484080,no_child). 
lhs(in0_silver12_5_9,nw_loc(5,9),se_loc(8,12),sameR,silver,12,sid_323,1). 
lhs(in0_silver8_9_5,nw_loc(9,5),se_loc(11,7),sameR,silver,8,sid_323,1). 
lhs(in0_silver16_2_2,nw_loc(2,2),se_loc(6,6),sameR,silver,16,sid_323,1). 
lhs(in0_black0_10_6,nw_loc(10,6),se_loc(10,6),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_6_10,nw_loc(6,10),se_loc(7,11),sameR,black,4,sid_11,no_child). 
lhs(in0_black0_3_3,nw_loc(3,3),se_loc(5,5),sameR,black,8,sid_323,no_child). 
