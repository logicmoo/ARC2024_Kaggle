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
