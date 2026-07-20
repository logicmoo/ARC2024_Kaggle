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
lhs(trn_0,nw_loc(4,5),se_loc(4,5),sameR,blue,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(4,5),h_v_size=vis2D(1,1)). 
lhs(trn_0,nw_loc(4,3),se_loc(6,7),rot270,red,8,shapeid=s15750913,[],1,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=12000,'sym_extend_-_/_\\_|'=1120,'sym_node_*_+_@_~'=0],compressed_shapeid=s3724257,center(5,5),h_v_size=vis2D(3,5)). 
lhs(trn_0,nw_loc(3,2),se_loc(7,8),sameR,black,20,shapeid=s12170006,[reversed(rot180^rot180)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s6339340,center(5,5),h_v_size=vis2D(5,7)). 
lhs(trn_1,nw_loc(7,9),se_loc(7,9),sameR,green,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(7,9),h_v_size=vis2D(1,1)). 
lhs(trn_1,nw_loc(4,6),se_loc(10,9),sameR,cyan,15,shapeid=s8952751,[],1,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=20000,'sym_extend_-_/_\\_|'=3420,'sym_node_*_+_@_~'=10000],compressed_shapeid=s8860813,center(7,8),h_v_size=vis2D(7,4)). 
lhs(trn_1,nw_loc(3,5),se_loc(11,10),rot90,black,26,shapeid=s11081682,[reversed(rot180^rot180)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s6339340,center(7,8),h_v_size=vis2D(9,6)). 
lhs(trn_2,nw_loc(5,3),se_loc(5,3),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(5,3),h_v_size=vis2D(1,1)). 
lhs(trn_2,nw_loc(3,3),se_loc(7,5),rot180,green,8,shapeid=s15750913,[],1,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=12000,'sym_extend_-_/_\\_|'=1120,'sym_node_*_+_@_~'=0],compressed_shapeid=s3724257,center(5,4),h_v_size=vis2D(5,3)). 
lhs(trn_2,nw_loc(2,2),se_loc(8,6),rot90,black,20,shapeid=s12170006,[reversed(rot180^rot180),rot270],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s6339340,center(5,4),h_v_size=vis2D(7,5)). 
lhs(tst_0,nw_loc(5,15),se_loc(5,15),sameR,cyan,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(5,15),h_v_size=vis2D(1,1)). 
lhs(tst_0,nw_loc(2,12),se_loc(8,15),sameR,yellow,15,shapeid=s8952751,[],1,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=20000,'sym_extend_-_/_\\_|'=3420,'sym_node_*_+_@_~'=10000],compressed_shapeid=s8860813,center(5,14),h_v_size=vis2D(7,4)). 
lhs(tst_0,nw_loc(1,11),se_loc(9,16),rot90,black,26,shapeid=s11081682,[reversed(rot180^rot180)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s6339340,center(5,14),h_v_size=vis2D(9,6)). 
pos(rhs(trn_0,nw_loc(4,5),se_loc(4,5),sameR,blue,1,shapeid=sid_11,[])). 
pos(rhs(trn_0,nw_loc(7,5),se_loc(15,5),sameR,blue,9,shapeid=sid_12,[make_solid_object(rect,9,1)])). 
pos(rhs(trn_0,nw_loc(4,3),se_loc(6,7),rot270,red,8,shapeid=s15750913,[])). 
pos(rhs(trn_0,nw_loc(3,2),se_loc(15,8),rot90,black,35,shapeid=s9193416,[copy_row_ntimes(5,9),rot90])). 
pos(rhs(trn_1,nw_loc(7,9),se_loc(7,9),sameR,green,1,shapeid=sid_11,[])). 
pos(rhs(trn_1,nw_loc(4,6),se_loc(10,9),sameR,cyan,15,shapeid=s8952751,[])). 
pos(rhs(trn_1,nw_loc(7,1),se_loc(7,5),rot90,green,5,shapeid=sid_12,[make_solid_object(rect,5,1)])). 
pos(rhs(trn_1,nw_loc(3,1),se_loc(11,10),sameR,black,33,shapeid=s10961028,[rot90,copy_row_ntimes(6,5),rot180])). 
pos(rhs(trn_2,nw_loc(5,3),se_loc(5,3),sameR,red,1,shapeid=sid_11,[])). 
pos(rhs(trn_2,nw_loc(5,6),se_loc(5,15),rot90,red,10,shapeid=sid_12,[make_solid_object(rect,10,1)])). 
pos(rhs(trn_2,nw_loc(3,3),se_loc(7,5),rot180,green,8,shapeid=s15750913,[])). 
pos(rhs(trn_2,nw_loc(2,2),se_loc(8,15),sameR,black,37,shapeid=s9193416,[rot90,copy_row_ntimes(5,10)])). 
pos(rhs(tst_0,nw_loc(5,15),se_loc(5,15),sameR,cyan,1,shapeid=sid_11,[])). 
pos(rhs(tst_0,nw_loc(2,12),se_loc(8,15),sameR,yellow,15,shapeid=s8952751,[])). 
pos(rhs(tst_0,nw_loc(5,1),se_loc(5,11),rot90,cyan,11,shapeid=sid_12,[make_solid_object(rect,11,1)])). 
