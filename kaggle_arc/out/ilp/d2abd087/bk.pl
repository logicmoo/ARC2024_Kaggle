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
lhs(trn_0,nw_loc(2,8),se_loc(4,9),flipH,silver,5,shapeid=s11261491,[copy_column_ntimes(2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491,center(3,9),h_v_size=vis2D(3,2)). 
lhs(trn_0,nw_loc(6,6),se_loc(8,8),rot90,silver,6,shapeid=s12760807,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=10000],compressed_shapeid=s12760807,center(7,7),h_v_size=vis2D(3,3)). 
lhs(trn_0,nw_loc(3,3),se_loc(5,4),sameR,silver,6,shapeid=sid_12,[make_solid_object(rect,3,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(4,4),h_v_size=vis2D(3,2)). 
lhs(trn_1,nw_loc(2,8),se_loc(3,9),sameR,silver,4,shapeid=sid_11,[make_solid_object(square,2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(3,9),h_v_size=vis2D(2,2)). 
lhs(trn_1,nw_loc(6,7),se_loc(7,9),rot90,silver,6,shapeid=sid_12,[make_solid_object(rect,3,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(7,8),h_v_size=vis2D(2,3)). 
lhs(trn_1,nw_loc(9,5),se_loc(9,6),rot90,silver,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(9,6),h_v_size=vis2D(1,2)). 
lhs(trn_1,nw_loc(3,5),se_loc(6,5),sameR,silver,4,shapeid=sid_12,[make_solid_object(rect,4,1)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(5,5),h_v_size=vis2D(4,1)). 
lhs(trn_1,nw_loc(1,2),se_loc(4,3),sameR,silver,6,shapeid=s15307279,[copy_column_ntimes(2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=10000,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=s15307279,center(3,3),h_v_size=vis2D(4,2)). 
lhs(trn_1,nw_loc(7,1),se_loc(9,3),sameR,silver,5,shapeid=s15307279,[rot90,copy_column_ntimes(1,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=10000,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=s15307279,center(8,2),h_v_size=vis2D(3,3)). 
lhs(trn_2,nw_loc(2,8),se_loc(5,10),rot270,silver,7,shapeid=s10665738,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=10000,'sym_extend_-_/_\\_|'=10000,'sym_node_*_+_@_~'=10000],compressed_shapeid=s841047,center(3,9),h_v_size=vis2D(4,3)). 
lhs(trn_2,nw_loc(2,6),se_loc(3,6),sameR,silver,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(3,6),h_v_size=vis2D(2,1)). 
lhs(trn_2,nw_loc(10,5),se_loc(10,7),rot90,silver,3,shapeid=sid_12,[make_solid_object(rect,3,1)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(10,6),h_v_size=vis2D(1,3)). 
lhs(trn_2,nw_loc(5,5),se_loc(7,7),sameR,silver,6,shapeid=s1961242,[rot180,copy_column_ntimes(1,2),as_rot(rollD,rollDR,copy_row_ntimes(1,2)),copy_row_ntimes(2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242,center(6,6),h_v_size=vis2D(3,3)). 
lhs(trn_2,nw_loc(5,2),se_loc(6,3),sameR,silver,4,shapeid=sid_11,[make_solid_object(square,2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(6,3),h_v_size=vis2D(2,2)). 
lhs(trn_2,nw_loc(8,1),se_loc(10,4),flipDHV,silver,6,shapeid=s11261491,[copy_column_ntimes(1,3),copy_row_ntimes(1,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491,center(9,2),h_v_size=vis2D(3,4)). 
lhs(trn_2,nw_loc(1,1),se_loc(3,4),rot90,silver,7,shapeid=s7610329,[copy_column_ntimes(1,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=21000,'sym_extend_-_/_\\_|'=10110,'sym_node_*_+_@_~'=0],compressed_shapeid=s7610329,center(2,2),h_v_size=vis2D(3,4)). 
lhs(tst_0,nw_loc(2,9),se_loc(6,9),sameR,silver,5,shapeid=sid_12,[make_solid_object(rect,5,1)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(4,9),h_v_size=vis2D(5,1)). 
lhs(tst_0,nw_loc(8,5),se_loc(8,8),rot90,silver,4,shapeid=sid_12,[make_solid_object(rect,4,1)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(8,7),h_v_size=vis2D(1,4)). 
lhs(tst_0,nw_loc(2,5),se_loc(5,6),flipH,silver,6,shapeid=s11261491,[c_r(and(copy_row_ntimes(2,2),copy_row_ntimes(1,2)))],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491,center(3,6),h_v_size=vis2D(4,2)). 
lhs(tst_0,nw_loc(6,1),se_loc(8,3),rot90,silver,6,shapeid=s12561063,[flipDHV,copy_column_ntimes(2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242,center(7,2),h_v_size=vis2D(3,3)). 
lhs(tst_0,nw_loc(1,1),se_loc(4,3),sameR,silver,8,shapeid=s15307279,[copy_column_ntimes(2,2),copy_row_ntimes(1,2)],1,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=10000,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=s15307279,center(3,2),h_v_size=vis2D(4,3)). 
lhs(tst_0,nw_loc(1,1),se_loc(1,2),sameR,black,2,shapeid=sid_21,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_21,center(1,2),h_v_size=vis2D(1,2)). 
