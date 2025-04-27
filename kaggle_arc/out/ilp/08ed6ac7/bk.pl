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
lhs(trn_0,nw_loc(8,7),se_loc(8,9),rot90,silver,3,sid_12,[make_solid_object(rect,3,1)],no_child). 
lhs(trn_0,nw_loc(4,4),se_loc(4,9),rot90,silver,6,sid_12,[make_solid_object(rect,6,1)],no_child). 
lhs(trn_0,nw_loc(2,2),se_loc(2,9),rot90,silver,8,sid_12,[make_solid_object(rect,8,1)],no_child). 
lhs(trn_0,nw_loc(6,1),se_loc(6,9),rot90,silver,9,sid_12,[make_solid_object(rect,9,1)],no_child). 
lhs(trn_0,nw_loc(7,1),se_loc(9,9),sameR,black,14,s12482970,[rot180,and(copy_row_ntimes(3,5),copy_row_ntimes(1,3)),flipV],no_child). 
lhs(trn_0,nw_loc(1,1),se_loc(5,9),sameR,black,29,s13674977,[rot90,copy_row_ntimes(4,6),flipH],no_child). 
lhs(trn_1,nw_loc(2,8),se_loc(2,9),rot90,silver,2,sid_12,[],no_child). 
lhs(trn_1,nw_loc(6,6),se_loc(6,9),rot90,silver,4,sid_12,[make_solid_object(rect,4,1)],no_child). 
lhs(trn_1,nw_loc(4,5),se_loc(4,9),rot90,silver,5,sid_12,[make_solid_object(rect,5,1)],no_child). 
lhs(trn_1,nw_loc(8,2),se_loc(8,9),rot90,silver,8,sid_12,[make_solid_object(rect,8,1)],no_child). 
lhs(tst_0,nw_loc(4,7),se_loc(4,9),rot90,silver,3,sid_12,[make_solid_object(rect,3,1)],no_child). 
lhs(tst_0,nw_loc(8,5),se_loc(8,9),rot90,silver,5,sid_12,[make_solid_object(rect,5,1)],no_child). 
lhs(tst_0,nw_loc(6,3),se_loc(6,9),rot90,silver,7,sid_12,[make_solid_object(rect,7,1)],no_child). 
lhs(tst_0,nw_loc(2,2),se_loc(2,9),rot90,silver,8,sid_12,[make_solid_object(rect,8,1)],no_child). 
