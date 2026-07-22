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
lhs(in0_blue1_2_10,nw_loc(2,10),se_loc(2,10),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_8_8,nw_loc(8,8),se_loc(8,8),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_4_6,nw_loc(4,6),se_loc(4,6),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_10_4,nw_loc(10,4),se_loc(10,4),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_7_2,nw_loc(7,2),se_loc(7,2),sameR,blue,1,sid_11,no_child). 
lhs(in0_black0_1_9,nw_loc(1,9),se_loc(3,10),rot90,black,5,s11778174,no_child). 
lhs(in0_black0_7_7,nw_loc(7,7),se_loc(9,9),sameR,black,8,sid_323,no_child). 
lhs(in0_black0_3_5,nw_loc(3,5),se_loc(5,7),sameR,black,8,sid_323,no_child). 
lhs(in0_black0_6_1,nw_loc(6,1),se_loc(10,5),sameR,black,13,s11803212,no_child). 
lhs(in1_blue1_10_10,nw_loc(10,10),se_loc(10,10),sameR,blue,1,sid_11,no_child). 
lhs(in1_blue1_3_9,nw_loc(3,9),se_loc(3,9),sameR,blue,1,sid_11,no_child). 
lhs(in1_blue1_6_6,nw_loc(6,6),se_loc(6,6),sameR,blue,1,sid_11,no_child). 
lhs(in1_blue1_10_4,nw_loc(10,4),se_loc(10,4),sameR,blue,1,sid_11,no_child). 
lhs(in1_blue1_1_3,nw_loc(1,3),se_loc(1,3),sameR,blue,1,sid_11,no_child). 
lhs(in1_blue1_6_1,nw_loc(6,1),se_loc(6,1),sameR,blue,1,sid_11,no_child). 
lhs(in1_black0_9_9,nw_loc(9,9),se_loc(10,10),sameR,black,3,s11261491,no_child). 
lhs(in1_black0_2_8,nw_loc(2,8),se_loc(4,10),sameR,black,8,sid_323,no_child). 
lhs(in1_black0_5_5,nw_loc(5,5),se_loc(7,7),sameR,black,8,sid_323,no_child). 
lhs(in1_black0_9_3,nw_loc(9,3),se_loc(10,5),sameR,black,5,s11778174,no_child). 
lhs(in1_black0_1_2,nw_loc(1,2),se_loc(2,4),sameR,black,5,s11778174,no_child). 
lhs(in1_black0_5_1,nw_loc(5,1),se_loc(7,2),rot90,black,5,s11778174,no_child). 
lhs(in0_blue1_5_10,nw_loc(5,10),se_loc(5,10),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_8_7,nw_loc(8,7),se_loc(8,7),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_1_7,nw_loc(1,7),se_loc(1,7),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_4_4,nw_loc(4,4),se_loc(4,4),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_8_3,nw_loc(8,3),se_loc(8,3),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_10_1,nw_loc(10,1),se_loc(10,1),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_2_1,nw_loc(2,1),se_loc(2,1),sameR,blue,1,sid_11,no_child). 
lhs(in0_black0_4_9,nw_loc(4,9),se_loc(6,10),rot90,black,5,s11778174,no_child). 
lhs(in0_black0_7_6,nw_loc(7,6),se_loc(9,8),sameR,black,8,sid_323,no_child). 
lhs(in0_black0_1_6,nw_loc(1,6),se_loc(2,8),sameR,black,5,s11778174,no_child). 
lhs(in0_black0_7_1,nw_loc(7,1),se_loc(10,4),sameR,black,10,s9322574,no_child). 
lhs(in0_black0_1_1,nw_loc(1,1),se_loc(5,5),sameR,black,13,s13302810,no_child). 
