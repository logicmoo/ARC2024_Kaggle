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
lhs(trn_0,loc(8,7),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_0,loc(12,6),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_0,loc(16,6),sameR,red,vis2D(4,4),8,shapeid=s1961242,[rot180,as_rot(rollD,rollDR,copy_row_ntimes(1,2)),double_size],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242). 
lhs(trn_0,loc(3,5),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_0,loc(9,4),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_0,loc(6,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_0,loc(13,2),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_0,loc(2,2),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_1,loc(5,6),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_1,loc(10,5),rot90,red,vis2D(4,4),8,shapeid=s1961242,[rot180,as_rot(rollD,rollDR,copy_row_ntimes(1,2)),double_size],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242). 
lhs(trn_1,loc(6,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_1,loc(3,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_1,loc(14,2),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_2,loc(13,7),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_2,loc(2,7),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_2,loc(7,6),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_2,loc(10,5),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_2,loc(4,4),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_2,loc(15,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_2,loc(8,2),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_3,loc(3,5),sameR,red,vis2D(4,4),8,shapeid=s1961242,[rot180,as_rot(rollD,rollDR,copy_row_ntimes(1,2)),double_size],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242). 
lhs(trn_3,loc(7,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_4,loc(5,6),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_4,loc(2,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(tst_0,loc(10,7),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(tst_0,loc(2,7),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(tst_0,loc(13,6),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(tst_0,loc(5,5),sameR,red,vis2D(4,4),8,shapeid=s1961242,[rot180,as_rot(rollD,rollDR,copy_row_ntimes(1,2)),double_size],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242). 
lhs(tst_0,loc(15,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(tst_0,loc(9,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_0,loc(17,7),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_0,loc(15,5),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_1,loc(9,6),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_1,loc(11,4),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_3,loc(4,6),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_3,loc(2,4),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(tst_0,loc(6,6),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(tst_0,loc(4,4),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
