:-style_check(- (discontiguous)). 
max_body(6). 
max_vars(8). 
non_magic(4). 
% head_pred(rhs,7). 
% body_pred(lhs,7). 
% body_pred(child,2). 
% body_pred(incr_nat30_by,3). 
body_pred(incr_nat30,2). 
body_pred(color_change,2). 
body_pred(my_add,3). 
body_pred(my_geq,2). 
body_pred(my_leq,2). 
body_pred(my_mult,3). 
bounds(my_add,1,(0,29)). 
bounds(my_geq,1,(1,30)). 
bounds(my_leq,1,(1,30)). 
bounds(my_mult,1,(1,10)). 
% direction(color_change,(out,out)). 
% direction(incr_nat30,(out,out)). 
% direction(my_add,((in),(in),out)). 
% direction(my_geq,((in),out)). 
% direction(my_leq,((in),out)). 
% direction(my_mult,((in),out,(in))). 
type(my_add,(nat30,nat30,nat30)). 
type(my_mult,(nat30,nat30,nat30)). 
type(my_geq,(nat30,nat30)). 
type(my_leq,(nat30,nat30)). 
type(incr_nat30,(nat30,nat30)). 
type(color_change,(color,color)). 
% direction(rhs,((in),(in),(in),(in),(in),(in),(in),(in),(in),(in))). 
type(rhs,(state,center2D,rot2D,color,vis2D,rotSize2D,nat900,shape)). 
% direction(lhs,(out,out,out,out,out,out,out,out,out,out)). 
type(lhs,(state,center2D,rot2D,color,vis2D,rotSize2D,nat900,shape)). 
magic_type(color). 
magic_type(nat30). 
magic_value_type(color). 
magic_value_type(nat30). 
numerical_pred(my_add,3). 
numerical_pred(my_geq,2). 
numerical_pred(my_leq,2). 
numerical_pred(my_mult,3). 
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
pos(rhs(trn_0,nw_loc(8,7),se_loc(8,9),rot90,yellow,3,sid_12,[make_solid_object(rect,3,1)])). 
pos(rhs(trn_0,nw_loc(4,4),se_loc(4,9),rot90,green,6,sid_12,[make_solid_object(rect,6,1)])). 
pos(rhs(trn_0,nw_loc(2,2),se_loc(2,9),rot90,red,8,sid_12,[make_solid_object(rect,8,1)])). 
pos(rhs(trn_0,nw_loc(6,1),se_loc(6,9),rot90,blue,9,sid_12,[make_solid_object(rect,9,1)])). 
pos(rhs(trn_0,nw_loc(7,1),se_loc(9,9),sameR,black,14,s12482970,[rot180,and(copy_row_ntimes(3,5),copy_row_ntimes(1,3)),flipV])). 
pos(rhs(trn_0,nw_loc(1,1),se_loc(5,9),sameR,black,29,s13674977,[rot90,copy_row_ntimes(4,6),flipH])). 
pos(rhs(trn_1,nw_loc(2,8),se_loc(2,9),rot90,yellow,2,sid_12,[])). 
pos(rhs(trn_1,nw_loc(6,6),se_loc(6,9),rot90,green,4,sid_12,[make_solid_object(rect,4,1)])). 
pos(rhs(trn_1,nw_loc(4,5),se_loc(4,9),rot90,red,5,sid_12,[make_solid_object(rect,5,1)])). 
pos(rhs(trn_1,nw_loc(8,2),se_loc(8,9),rot90,blue,8,sid_12,[make_solid_object(rect,8,1)])). 
pos(rhs(tst_0,nw_loc(4,7),se_loc(4,9),rot90,yellow,3,sid_12,[make_solid_object(rect,3,1)])). 
pos(rhs(tst_0,nw_loc(8,5),se_loc(8,9),rot90,green,5,sid_12,[make_solid_object(rect,5,1)])). 
pos(rhs(tst_0,nw_loc(6,3),se_loc(6,9),rot90,red,7,sid_12,[make_solid_object(rect,7,1)])). 
pos(rhs(tst_0,nw_loc(2,2),se_loc(2,9),rot90,blue,8,sid_12,[make_solid_object(rect,8,1)])). 
