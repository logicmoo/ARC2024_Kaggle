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
lhs(trn_0,nw_loc(4,9),se_loc(5,10),sameR,silver,3,shapeid=s11261491,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491,center(5,10),h_v_size=vis2D(2,2)). 
lhs(trn_0,nw_loc(2,8),se_loc(2,9),rot90,silver,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(2,9),h_v_size=vis2D(1,2)). 
lhs(trn_0,nw_loc(6,7),se_loc(7,7),sameR,silver,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(7,7),h_v_size=vis2D(2,1)). 
lhs(trn_0,nw_loc(10,6),se_loc(10,8),rot90,silver,3,shapeid=sid_12,[make_solid_object(rect,3,1)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(10,7),h_v_size=vis2D(1,3)). 
lhs(trn_0,nw_loc(2,3),se_loc(4,4),sameR,silver,4,shapeid=s1961242,[rot180,copy_column_ntimes(1,2),as_rot(rollD,rollDR,copy_row_ntimes(1,2))],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242,center(3,4),h_v_size=vis2D(3,2)). 
lhs(trn_0,nw_loc(8,2),se_loc(9,3),sameR,silver,4,shapeid=sid_11,[make_solid_object(square,2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(9,3),h_v_size=vis2D(2,2)). 
lhs(trn_1,nw_loc(2,9),se_loc(3,10),sameR,silver,4,shapeid=sid_11,[make_solid_object(square,2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(3,10),h_v_size=vis2D(2,2)). 
lhs(trn_1,nw_loc(7,8),se_loc(9,9),sameR,silver,4,shapeid=s15307279,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=10000,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=s15307279,center(8,9),h_v_size=vis2D(3,2)). 
lhs(trn_1,nw_loc(4,6),se_loc(5,7),rot180,silver,3,shapeid=s11261491,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491,center(4,6),h_v_size=vis2D(2,2)). 
lhs(trn_1,nw_loc(8,3),se_loc(8,4),rot90,silver,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(8,4),h_v_size=vis2D(1,2)). 
lhs(trn_1,nw_loc(2,3),se_loc(4,3),sameR,silver,3,shapeid=sid_12,[make_solid_object(rect,3,1)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(3,3),h_v_size=vis2D(3,1)). 
lhs(trn_2,nw_loc(1,7),se_loc(2,9),rot270,silver,4,shapeid=s15307279,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=10000,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=s15307279,center(1,8),h_v_size=vis2D(2,3)). 
lhs(trn_2,nw_loc(5,6),se_loc(6,6),sameR,silver,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(6,6),h_v_size=vis2D(2,1)). 
lhs(trn_2,nw_loc(7,2),se_loc(8,3),rot90,silver,3,shapeid=s11261491,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491,center(8,2),h_v_size=vis2D(2,2)). 
lhs(trn_2,nw_loc(3,2),se_loc(3,3),rot90,silver,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(3,3),h_v_size=vis2D(1,2)). 
lhs(tst_0,nw_loc(8,8),se_loc(8,9),rot90,silver,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(8,9),h_v_size=vis2D(1,2)). 
lhs(tst_0,nw_loc(4,8),se_loc(5,8),sameR,silver,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(5,8),h_v_size=vis2D(2,1)). 
lhs(tst_0,nw_loc(1,7),se_loc(1,9),rot90,silver,3,shapeid=sid_12,[make_solid_object(rect,3,1)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(1,8),h_v_size=vis2D(1,3)). 
lhs(tst_0,nw_loc(6,3),se_loc(7,4),rot90,silver,3,shapeid=s11261491,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491,center(7,3),h_v_size=vis2D(2,2)). 
lhs(tst_0,nw_loc(2,3),se_loc(4,4),flipV,silver,4,shapeid=s1961242,[rot180,copy_column_ntimes(1,2),as_rot(rollD,rollDR,copy_row_ntimes(1,2))],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242,center(3,4),h_v_size=vis2D(3,2)). 
lhs(tst_0,nw_loc(10,1),se_loc(10,4),rot90,silver,4,shapeid=sid_12,[make_solid_object(rect,4,1)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(10,3),h_v_size=vis2D(1,4)). 
