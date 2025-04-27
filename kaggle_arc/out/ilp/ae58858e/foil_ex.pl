:-style_check(- (discontiguous)). 
:-use_module(library(aleph)). 
:-if(current_predicate(use_rendering/1)). 
:-use_rendering(prolog). 
:-endif. 
:-aleph_set(verbosity,1). 
:-aleph_set(interactive,false). 
:-aleph_set(i,4). 
:-aleph_set(nodes,10000). 
:-aleph. 
% :- modeh(*,rhs(+state,+nat30,+nat30,+color,+nat30,+nat30,+rotation,+nat900,+shape,+list)). 
% :- modeb(*,lhs(+state,+nat30,+nat30,#(color),+nat30,+nat30,+rotation,+nat900,+shape,+list)). 
% :- modeb(*,my_geq(+nat30,-#(nat30))). 
% :- modeb(*,my_leq(+nat30,-#(nat30))). 
% :- modeb(*,my_add(+nat30,+nat30,-nat30)). 
% :- modeb(*,my_mult(+nat30,#(nat30),-nat30)). 
% :- lazy_evaluate(my_add/3). 
% :- lazy_evaluate(my_geq/2). 
% :- lazy_evaluate(my_leq/2). 
% :- lazy_evaluate(my_mult/3). 
% :- determination(rhs/7,lhs/7). 
% :- determination(rhs/7,color_change/2). 
% :- determination(rhs/7,incr_nat30/2). 
% :- determination(rhs/7,my_geq/2). 
% :- determination(rhs/7,my_leq/2). 
% :- determination(rhs/7,my_add/3). 
% :- determination(rhs/7,my_mult/3). 
:-output(rhs_peice/2). 
:-output(rhs_l2d/2). 
:-output(rhs_l2d2/2). 
:-output(rhs_rot2D/2). 
:-output(rhs_pen_color/2). 
:-output(rhs_mass/2). 
:-output(rhs_gis/2). 
:-output(rhs_gon/2). 
:-output(rhs/8). 
:-input_cw(lhs_peice/2). 
:-input_cw(lhs_l2d/2). 
:-input_cw(lhs_l2d2/2). 
:-input_cw(lhs_rot2D/2). 
:-input_cw(lhs_pen_color/2). 
:-input_cw(lhs_mass/2). 
:-input_cw(lhs_gis/2). 
:-input_cw(lhs_gon/2). 
:-input_cw(lhs_child_c/2). 
:-input_cw(lhs_sym_c/2). 
:-input_cw(lhs_cis/2). 
:-input_cw(lhs_c2d/2). 
:-input_cw(lhs_vis2D/3). 
:-input_cw(lhs/13). 
:-modeh(*,rhs_peice(+scope,+peice)). 
:-modeh(*,rhs_l2d(+peice,+l2d)). 
:-modeh(*,rhs_l2d2(+peice,+l2d2)). 
:-modeh(*,rhs_rot2D(+peice,+rot2D)). 
:-modeh(*,rhs_pen_color(+peice,+ #(color))). 
:-modeh(*,rhs_mass(+peice,nat900)). 
:-modeh(*,rhs_gis(+peice,+gis)). 
:-modeh(*,rhs_gon(+peice,+gon)). 
:-modeh(*,rhs(+peice,+rhs,+rhs,+rhs,+ #(color),+nat30,+rhs,+rhs)). 
:-modeb(*,lhs_peice(+scope,+peice)). 
:-modeb(*,lhs_l2d(+peice,-l2d)). 
:-modeb(*,lhs_l2d2(+peice,-l2d2)). 
:-modeb(*,lhs_rot2D(+peice,-rot2D)). 
:-modeb(*,lhs_pen_color(+peice,+ #(color))). 
:-modeb(*,lhs_mass(+peice,nat900)). 
:-modeb(*,lhs_gis(+peice,-gis)). 
:-modeb(*,lhs_gon(+peice,-gon)). 
:-modeb(*,lhs_child_c(+peice,-c)). 
:-modeb(*,lhs_sym_c(+peice,-c)). 
:-modeb(*,lhs_cis(+peice,-cis)). 
:-modeb(*,lhs_c2d(+peice,-c2d)). 
:-modeb(*,lhs_vis2D(+peice,+nat30,+nat30)). 
:-modeb(*,lhs(+peice,-lhs,-lhs,-lhs,+ #(color),+nat30,-lhs,-lhs,-lhs,-lhs,-lhs,-lhs,-lhs)). 
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
:-begin_bg. 
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
lhs(trn_0,nw_loc(6,7),se_loc(6,7),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(6,7),h_v_size=vis2D(1,1)). 
lhs(trn_0,nw_loc(7,9),se_loc(8,9),sameR,red,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(8,9),h_v_size=vis2D(2,1)). 
lhs(trn_0,nw_loc(1,9),se_loc(1,10),rot90,red,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(1,10),h_v_size=vis2D(1,2)). 
lhs(trn_0,nw_loc(3,8),se_loc(4,9),sameR,red,4,shapeid=sid_11,[make_solid_object(square,2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(4,9),h_v_size=vis2D(2,2)). 
lhs(trn_0,nw_loc(2,6),se_loc(4,6),sameR,red,3,shapeid=sid_12,[make_solid_object(rect,3,1)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(3,6),h_v_size=vis2D(3,1)). 
lhs(trn_0,nw_loc(6,2),se_loc(8,4),rot180,red,6,shapeid=s1961242,[copy_column_ntimes(1,2),as_rot(rollD,rollDR,copy_row_ntimes(1,2)),copy_row_ntimes(2,2),rot180],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242,center(7,3),h_v_size=vis2D(3,3)). 
lhs(trn_0,nw_loc(1,2),se_loc(3,3),sameR,red,4,shapeid=s1961242,[rot180,copy_column_ntimes(1,2),as_rot(rollD,rollDR,copy_row_ntimes(1,2))],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242,center(2,3),h_v_size=vis2D(3,2)). 
lhs(trn_1,nw_loc(8,9),se_loc(8,9),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(8,9),h_v_size=vis2D(1,1)). 
lhs(trn_1,nw_loc(3,9),se_loc(3,9),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(3,9),h_v_size=vis2D(1,1)). 
lhs(trn_1,nw_loc(2,7),se_loc(2,7),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(2,7),h_v_size=vis2D(1,1)). 
lhs(trn_1,nw_loc(6,10),se_loc(7,10),sameR,red,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(7,10),h_v_size=vis2D(2,1)). 
lhs(trn_1,nw_loc(10,7),se_loc(12,9),rot90,red,7,shapeid=s15307279,[copy_column_ntimes(2,2),rot90],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=10000,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=s15307279,center(11,8),h_v_size=vis2D(3,3)). 
lhs(trn_1,nw_loc(5,6),se_loc(6,7),sameR,red,3,shapeid=s11261491,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491,center(6,7),h_v_size=vis2D(2,2)). 
lhs(trn_1,nw_loc(11,4),se_loc(11,5),rot90,red,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(11,5),h_v_size=vis2D(1,2)). 
lhs(trn_1,nw_loc(7,2),se_loc(8,4),rot270,red,5,shapeid=s11261491,[copy_column_ntimes(2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491,center(7,3),h_v_size=vis2D(2,3)). 
lhs(trn_1,nw_loc(1,2),se_loc(4,4),sameR,red,8,shapeid=s14864972,[copy_column_ntimes(2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=10020,'sym_node_*_+_@_~'=0],compressed_shapeid=s14864972,center(3,3),h_v_size=vis2D(4,3)). 
lhs(trn_2,nw_loc(6,5),se_loc(6,5),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(6,5),h_v_size=vis2D(1,1)). 
lhs(trn_2,nw_loc(2,4),se_loc(2,4),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(2,4),h_v_size=vis2D(1,1)). 
lhs(trn_2,nw_loc(4,3),se_loc(4,3),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(4,3),h_v_size=vis2D(1,1)). 
lhs(trn_2,nw_loc(2,5),se_loc(4,6),sameR,red,4,shapeid=s11261491,[copy_column_ntimes(1,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491,center(3,6),h_v_size=vis2D(3,2)). 
lhs(trn_2,nw_loc(6,1),se_loc(6,2),rot90,red,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(6,2),h_v_size=vis2D(1,2)). 
lhs(trn_2,nw_loc(1,1),se_loc(2,2),sameR,red,4,shapeid=sid_11,[make_solid_object(square,2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(2,2),h_v_size=vis2D(2,2)). 
lhs(trn_3,nw_loc(4,10),se_loc(4,10),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(4,10),h_v_size=vis2D(1,1)). 
lhs(trn_3,nw_loc(4,6),se_loc(4,6),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(4,6),h_v_size=vis2D(1,1)). 
lhs(trn_3,nw_loc(8,8),se_loc(8,9),rot90,red,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(8,9),h_v_size=vis2D(1,2)). 
lhs(trn_3,nw_loc(2,7),se_loc(3,7),sameR,red,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(3,7),h_v_size=vis2D(2,1)). 
lhs(trn_3,nw_loc(6,3),se_loc(8,4),flipV,red,4,shapeid=s1961242,[rot180,copy_column_ntimes(1,2),as_rot(rollD,rollDR,copy_row_ntimes(1,2))],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242,center(7,4),h_v_size=vis2D(3,2)). 
lhs(trn_3,nw_loc(2,2),se_loc(3,3),rot90,red,3,shapeid=s11261491,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491,center(3,2),h_v_size=vis2D(2,2)). 
lhs(trn_3,nw_loc(7,7),se_loc(9,10),sameR,black,10,shapeid=sid_323,[copy_row_ntimes(2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s5668778,center(8,9),h_v_size=vis2D(3,4)). 
lhs(tst_0,nw_loc(8,6),se_loc(8,6),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(8,6),h_v_size=vis2D(1,1)). 
lhs(tst_0,nw_loc(1,6),se_loc(1,6),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(1,6),h_v_size=vis2D(1,1)). 
lhs(tst_0,nw_loc(3,6),se_loc(4,6),sameR,red,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(4,6),h_v_size=vis2D(2,1)). 
lhs(tst_0,nw_loc(6,3),se_loc(7,4),sameR,red,4,shapeid=sid_11,[make_solid_object(square,2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(7,4),h_v_size=vis2D(2,2)). 
lhs(tst_0,nw_loc(1,2),se_loc(3,4),rot180,red,5,shapeid=s11068904,[flipH,as_rot(rollD,rollDR,copy_row_ntimes(2,2))],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11068904,center(2,3),h_v_size=vis2D(3,3)). 
lhs(tst_0,nw_loc(5,1),se_loc(7,1),sameR,red,3,shapeid=sid_12,[make_solid_object(rect,3,1)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(6,1),h_v_size=vis2D(3,1)). 
:-end_bg. 
:-begin_in_pos. 
pos(rhs(trn_0,nw_loc(6,7),se_loc(6,7),sameR,red,1,shapeid=sid_11,[])). 
pos(rhs(trn_0,nw_loc(7,9),se_loc(8,9),sameR,red,2,shapeid=sid_12,[])). 
pos(rhs(trn_0,nw_loc(1,9),se_loc(1,10),rot90,red,2,shapeid=sid_12,[])). 
pos(rhs(trn_0,nw_loc(3,8),se_loc(4,9),sameR,purple,4,shapeid=sid_11,[make_solid_object(square,2,2)])). 
pos(rhs(trn_0,nw_loc(2,6),se_loc(4,6),sameR,red,3,shapeid=sid_12,[make_solid_object(rect,3,1)])). 
pos(rhs(trn_0,nw_loc(6,2),se_loc(8,4),rot180,purple,6,shapeid=s1961242,[copy_column_ntimes(1,2),as_rot(rollD,rollDR,copy_row_ntimes(1,2)),copy_row_ntimes(2,2),rot180])). 
pos(rhs(trn_0,nw_loc(1,2),se_loc(3,3),sameR,purple,4,shapeid=s1961242,[rot180,copy_column_ntimes(1,2),as_rot(rollD,rollDR,copy_row_ntimes(1,2))])). 
pos(rhs(trn_1,nw_loc(8,9),se_loc(8,9),sameR,red,1,shapeid=sid_11,[])). 
pos(rhs(trn_1,nw_loc(3,9),se_loc(3,9),sameR,red,1,shapeid=sid_11,[])). 
pos(rhs(trn_1,nw_loc(2,7),se_loc(2,7),sameR,red,1,shapeid=sid_11,[])). 
pos(rhs(trn_1,nw_loc(6,10),se_loc(7,10),sameR,red,2,shapeid=sid_12,[])). 
pos(rhs(trn_1,nw_loc(10,7),se_loc(12,9),rot90,purple,7,shapeid=s15307279,[copy_column_ntimes(2,2),rot90])). 
pos(rhs(trn_1,nw_loc(5,6),se_loc(6,7),sameR,red,3,shapeid=s11261491,[])). 
pos(rhs(trn_1,nw_loc(11,4),se_loc(11,5),rot90,red,2,shapeid=sid_12,[])). 
pos(rhs(trn_1,nw_loc(7,2),se_loc(8,4),rot270,purple,5,shapeid=s11261491,[copy_column_ntimes(2,2)])). 
pos(rhs(trn_1,nw_loc(1,2),se_loc(4,4),sameR,purple,8,shapeid=s14864972,[copy_column_ntimes(2,2)])). 
pos(rhs(trn_2,nw_loc(6,5),se_loc(6,5),sameR,red,1,shapeid=sid_11,[])). 
pos(rhs(trn_2,nw_loc(2,4),se_loc(2,4),sameR,red,1,shapeid=sid_11,[])). 
pos(rhs(trn_2,nw_loc(4,3),se_loc(4,3),sameR,red,1,shapeid=sid_11,[])). 
pos(rhs(trn_2,nw_loc(2,5),se_loc(4,6),sameR,purple,4,shapeid=s11261491,[copy_column_ntimes(1,2)])). 
pos(rhs(trn_2,nw_loc(6,1),se_loc(6,2),rot90,red,2,shapeid=sid_12,[])). 
pos(rhs(trn_2,nw_loc(1,1),se_loc(2,2),sameR,purple,4,shapeid=sid_11,[make_solid_object(square,2,2)])). 
pos(rhs(trn_3,nw_loc(4,10),se_loc(4,10),sameR,red,1,shapeid=sid_11,[])). 
pos(rhs(trn_3,nw_loc(4,6),se_loc(4,6),sameR,red,1,shapeid=sid_11,[])). 
pos(rhs(trn_3,nw_loc(8,8),se_loc(8,9),rot90,red,2,shapeid=sid_12,[])). 
pos(rhs(trn_3,nw_loc(2,7),se_loc(3,7),sameR,red,2,shapeid=sid_12,[])). 
pos(rhs(trn_3,nw_loc(6,3),se_loc(8,4),flipV,purple,4,shapeid=s1961242,[rot180,copy_column_ntimes(1,2),as_rot(rollD,rollDR,copy_row_ntimes(1,2))])). 
pos(rhs(trn_3,nw_loc(2,2),se_loc(3,3),rot90,red,3,shapeid=s11261491,[])). 
pos(rhs(trn_3,nw_loc(7,7),se_loc(9,10),sameR,black,10,shapeid=sid_323,[copy_row_ntimes(2,2)])). 
pos(rhs(tst_0,nw_loc(8,6),se_loc(8,6),sameR,red,1,shapeid=sid_11,[])). 
pos(rhs(tst_0,nw_loc(1,6),se_loc(1,6),sameR,red,1,shapeid=sid_11,[])). 
pos(rhs(tst_0,nw_loc(3,6),se_loc(4,6),sameR,red,2,shapeid=sid_12,[])). 
pos(rhs(tst_0,nw_loc(6,3),se_loc(7,4),sameR,purple,4,shapeid=sid_11,[make_solid_object(square,2,2)])). 
pos(rhs(tst_0,nw_loc(1,2),se_loc(3,4),rot180,purple,5,shapeid=s11068904,[flipH,as_rot(rollD,rollDR,copy_row_ntimes(2,2))])). 
pos(rhs(tst_0,nw_loc(5,1),se_loc(7,1),sameR,red,3,shapeid=sid_12,[make_solid_object(rect,3,1)])). 
:-end_in_pos. 
