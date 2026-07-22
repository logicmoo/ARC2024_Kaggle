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
:-output(rhs_c2d/2). 
:-output(rhs_rot2D/2). 
:-output(rhs_pen_color/2). 
:-output(rhs_vis2D/3). 
:-output(rhs_mass/2). 
:-output(rhs_gis/2). 
:-output(rhs_gon/2). 
:-output(rhs/8). 
:-input_cw(lhs_peice/2). 
:-input_cw(lhs_c2d/2). 
:-input_cw(lhs_rot2D/2). 
:-input_cw(lhs_pen_color/2). 
:-input_cw(lhs_vis2D/3). 
:-input_cw(lhs_mass/2). 
:-input_cw(lhs_gis/2). 
:-input_cw(lhs_gon/2). 
:-input_cw(lhs_child_c/2). 
:-input_cw(lhs_sym_c/2). 
:-input_cw(lhs_cis/2). 
:-input_cw(lhs/11). 
:-modeh(*,rhs_peice(+scope,+peice)). 
:-modeh(*,rhs_c2d(+peice,+c2d)). 
:-modeh(*,rhs_rot2D(+peice,+rot2D)). 
:-modeh(*,rhs_pen_color(+peice,+ #(color))). 
:-modeh(*,rhs_vis2D(+peice,+nat30,+nat30)). 
:-modeh(*,rhs_mass(+peice,nat900)). 
:-modeh(*,rhs_gis(+peice,+gis)). 
:-modeh(*,rhs_gon(+peice,+gon)). 
:-modeh(*,rhs(+peice,+rhs,+rhs,+ #(color),+rhs,+rhs,+rhs,+rhs)). 
:-modeb(*,lhs_peice(+scope,+peice)). 
:-modeb(*,lhs_c2d(+peice,-c2d)). 
:-modeb(*,lhs_rot2D(+peice,-rot2D)). 
:-modeb(*,lhs_pen_color(+peice,+ #(color))). 
:-modeb(*,lhs_vis2D(+peice,+nat30,+nat30)). 
:-modeb(*,lhs_mass(+peice,nat900)). 
:-modeb(*,lhs_gis(+peice,-gis)). 
:-modeb(*,lhs_gon(+peice,-gon)). 
:-modeb(*,lhs_child_c(+peice,-c)). 
:-modeb(*,lhs_sym_c(+peice,-c)). 
:-modeb(*,lhs_cis(+peice,-cis)). 
:-modeb(*,lhs(+peice,-lhs,-lhs,+ #(color),-lhs,-lhs,-lhs,-lhs,-lhs,-lhs,-lhs)). 
:-modeb(*,lhs_child_c(+peice,+nat30)). 
:-modeb(*,lhs(+peice,-lhs,-lhs,+ #(color),-lhs,-lhs,-lhs,-lhs,+nat30,-lhs,-lhs)). 
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
lhs(trn_0,loc(3,19),sameR,green,vis2D(2,2),mass=3,shapeid=s11261491,[],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491). 
lhs(trn_0,loc(17,17),rot90,green,vis2D(3,4),mass=8,shapeid=s3977744,[copy_column_ntimes(2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=10030,'sym_node_*_+_@_~'=0],compressed_shapeid=s3977744). 
lhs(trn_0,loc(8,14),rot180,green,vis2D(5,3),mass=7,shapeid=s11261491,[copy_column_ntimes(1,4),copy_row_ntimes(1,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491). 
lhs(trn_0,loc(18,12),rot90,green,vis2D(2,3),mass=5,shapeid=s1201147,[],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=20010,'sym_node_*_+_@_~'=0],compressed_shapeid=s1201147). 
lhs(trn_0,loc(2,12),rot270,green,vis2D(4,5),mass=9,shapeid=s16726048,[flipD,copy_column_ntimes(2,3)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=11000,'sym_extend_-_/_\\_|'=10040,'sym_node_*_+_@_~'=0],compressed_shapeid=s3977744). 
lhs(trn_0,loc(14,7),rot270,green,vis2D(3,4),mass=8,shapeid=s1201147,[copy_column_ntimes(2,2),copy_row_ntimes(1,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=20010,'sym_node_*_+_@_~'=0],compressed_shapeid=s1201147). 
lhs(trn_0,loc(5,5),rot180,green,vis2D(4,3),mass=7,shapeid=s12482970,[copy_column_ntimes(2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=11000,'sym_extend_-_/_\\_|'=30010,'sym_node_*_+_@_~'=0],compressed_shapeid=s12482970). 
lhs(trn_0,loc(19,2),rot90,green,vis2D(2,3),mass=4,shapeid=s11261491,[copy_column_ntimes(1,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491). 
lhs(trn_0,loc(3,18),rot90,black,vis2D(4,3),mass=8,shapeid=s12482970,[rot270,as_rot(rollD,rollDR,copy_row_ntimes(1,2)),reversed(flipV^flipV),flipDHV],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s14288982). 
lhs(trn_0,loc(6,13),rot90,black,vis2D(12,9),mass=41,shapeid=s9727467,[flipV,copy_row_ntimes(9,3)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s4395854). 
lhs(trn_0,loc(16,11),sameR,black,vis2D(8,16),mass=54,shapeid=s10759316,[flipV,and(copy_row_ntimes(13,2),copy_row_ntimes(3,2)),flipH],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s15802339). 
lhs(trn_0,loc(5,5),rot90,black,vis2D(6,5),mass=20,shapeid=s12018925,[reversed(rot180^rot180),flipD],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s4310916). 
lhs(trn_0,loc(19,3),sameR,black,vis2D(4,4),mass=10,shapeid=s4852671,[rot90,rot270],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s8173278). 
lhs(trn_1,loc(3,8),flipV,green,vis2D(5,4),mass=10,shapeid=s9067551,[c_r(and(copy_row_ntimes(3,2),copy_row_ntimes(1,2))),copy_row_ntimes(2,2)],1,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=11000,'sym_extend_-_/_\\_|'=10030,'sym_node_*_+_@_~'=0],compressed_shapeid=s9067551). 
lhs(trn_1,loc(9,3),rot90,green,vis2D(4,4),mass=10,shapeid=s1201147,[copy_column_ntimes(1,3),copy_row_ntimes(2,2),rot90],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=20010,'sym_node_*_+_@_~'=0],compressed_shapeid=s1201147). 
lhs(trn_1,loc(2,2),rot90,green,vis2D(3,3),mass=5,shapeid=s11261491,[copy_column_ntimes(1,2),copy_row_ntimes(1,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491). 
lhs(trn_1,loc(2,9),sameR,black,vis2D(2,3),mass=4,shapeid=s11261491,[rot180,copy_row_ntimes(2,2),flipH],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s442920). 
lhs(trn_1,loc(3,3),sameR,black,vis2D(4,4),mass=9,shapeid=s2040036,[reversed(rot180^rot180),rot180],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s3724257). 
lhs(trn_2,loc(11,14),sameR,green,vis2D(3,2),mass=5,shapeid=s1201147,[],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=20010,'sym_node_*_+_@_~'=0],compressed_shapeid=s1201147). 
lhs(trn_2,loc(2,12),flipV,green,vis2D(3,2),mass=4,shapeid=s11261491,[copy_column_ntimes(1,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491). 
lhs(trn_2,loc(7,10),flipD,green,vis2D(3,4),mass=8,shapeid=s9067551,[copy_column_ntimes(3,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=11000,'sym_extend_-_/_\\_|'=10030,'sym_node_*_+_@_~'=0],compressed_shapeid=s9067551). 
lhs(trn_2,loc(11,3),flipH,green,vis2D(3,2),mass=4,shapeid=s11261491,[copy_column_ntimes(1,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491). 
lhs(trn_2,loc(4,4),flipH,green,vis2D(5,4),mass=9,shapeid=s11470631,[copy_column_ntimes(2,3),copy_row_ntimes(1,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=30010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11470631). 
lhs(trn_2,loc(10,3),sameR,black,vis2D(4,4),mass=11,shapeid=s16635904,[reversed(rot180^rot180),rot90],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s7724309). 
lhs(tst_0,loc(5,12),flipV,green,vis2D(6,3),mass=8,shapeid=s11261491,[copy_column_ntimes(1,5),copy_row_ntimes(1,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491). 
lhs(tst_0,loc(13,12),rot270,green,vis2D(3,3),mass=5,shapeid=s11261491,[copy_column_ntimes(1,2),copy_row_ntimes(1,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491). 
lhs(tst_0,loc(12,8),sameR,green,vis2D(4,3),mass=8,shapeid=s3977744,[copy_column_ntimes(2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=10030,'sym_node_*_+_@_~'=0],compressed_shapeid=s3977744). 
lhs(tst_0,loc(7,6),sameR,green,vis2D(5,3),mass=8,shapeid=s9067551,[copy_column_ntimes(1,3)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=11000,'sym_extend_-_/_\\_|'=10030,'sym_node_*_+_@_~'=0],compressed_shapeid=s9067551). 
lhs(tst_0,loc(14,3),flipDHV,green,vis2D(3,5),mass=8,shapeid=s5284033,[copy_column_ntimes(4,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=11000,'sym_extend_-_/_\\_|'=10040,'sym_node_*_+_@_~'=0],compressed_shapeid=s5284033). 
lhs(tst_0,loc(3,2),sameR,green,vis2D(3,3),mass=7,shapeid=s1201147,[copy_row_ntimes(1,2)],1,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=20010,'sym_node_*_+_@_~'=0],compressed_shapeid=s1201147). 
lhs(tst_0,loc(5,12),rot90,black,vis2D(8,4),mass=19,shapeid=s377632,[rot180,copy_row_ntimes(4,4),rot270],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s3370093). 
lhs(tst_0,loc(3,2),sameR,black,vis2D(1,2),mass=2,shapeid=sid_21,[],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_21). 
:-end_bg. 
:-begin_in_pos. 
pos(rhs(trn_0,loc(3,19),sameR,blue,vis2D(2,2),mass=3,shapeid=s11261491,[])). 
pos(rhs(trn_0,loc(17,17),rot90,purple,vis2D(3,4),mass=8,shapeid=s3977744,[copy_column_ntimes(2,2)])). 
pos(rhs(trn_0,loc(8,14),rot180,blue,vis2D(5,3),mass=7,shapeid=s11261491,[copy_column_ntimes(1,4),copy_row_ntimes(1,2)])). 
pos(rhs(trn_0,loc(18,12),rot90,purple,vis2D(2,3),mass=5,shapeid=s1201147,[])). 
pos(rhs(trn_0,loc(2,12),rot270,red,vis2D(4,5),mass=9,shapeid=s16726048,[flipD,copy_column_ntimes(2,3)])). 
pos(rhs(trn_0,loc(14,7),rot270,purple,vis2D(3,4),mass=8,shapeid=s1201147,[copy_column_ntimes(2,2),copy_row_ntimes(1,2)])). 
pos(rhs(trn_0,loc(5,5),rot180,red,vis2D(4,3),mass=7,shapeid=s12482970,[copy_column_ntimes(2,2)])). 
pos(rhs(trn_0,loc(19,2),rot90,blue,vis2D(2,3),mass=4,shapeid=s11261491,[copy_column_ntimes(1,2)])). 
pos(rhs(trn_0,loc(3,18),rot90,black,vis2D(4,3),mass=8,shapeid=s12482970,[rot270,as_rot(rollD,rollDR,copy_row_ntimes(1,2)),reversed(flipV^flipV),flipDHV])). 
pos(rhs(trn_0,loc(6,13),rot90,black,vis2D(12,9),mass=41,shapeid=s9727467,[flipV,copy_row_ntimes(9,3)])). 
pos(rhs(trn_0,loc(16,11),sameR,black,vis2D(8,16),mass=54,shapeid=s10759316,[flipV,and(copy_row_ntimes(13,2),copy_row_ntimes(3,2)),flipH])). 
pos(rhs(trn_0,loc(5,5),rot90,black,vis2D(6,5),mass=20,shapeid=s12018925,[reversed(rot180^rot180),flipD])). 
pos(rhs(trn_0,loc(19,3),sameR,black,vis2D(4,4),mass=10,shapeid=s4852671,[rot90,rot270])). 
pos(rhs(trn_1,loc(3,8),flipV,red,vis2D(5,4),mass=10,shapeid=s9067551,[c_r(and(copy_row_ntimes(3,2),copy_row_ntimes(1,2))),copy_row_ntimes(2,2)])). 
pos(rhs(trn_1,loc(9,3),rot90,purple,vis2D(4,4),mass=10,shapeid=s1201147,[copy_column_ntimes(1,3),copy_row_ntimes(2,2),rot90])). 
pos(rhs(trn_1,loc(2,2),rot90,blue,vis2D(3,3),mass=5,shapeid=s11261491,[copy_column_ntimes(1,2),copy_row_ntimes(1,2)])). 
pos(rhs(trn_1,loc(2,9),sameR,black,vis2D(2,3),mass=4,shapeid=s11261491,[rot180,copy_row_ntimes(2,2),flipH])). 
pos(rhs(trn_1,loc(3,3),sameR,black,vis2D(4,4),mass=9,shapeid=s2040036,[reversed(rot180^rot180),rot180])). 
pos(rhs(trn_2,loc(11,14),sameR,purple,vis2D(3,2),mass=5,shapeid=s1201147,[])). 
pos(rhs(trn_2,loc(2,12),flipV,blue,vis2D(3,2),mass=4,shapeid=s11261491,[copy_column_ntimes(1,2)])). 
pos(rhs(trn_2,loc(7,10),flipD,red,vis2D(3,4),mass=8,shapeid=s9067551,[copy_column_ntimes(3,2)])). 
pos(rhs(trn_2,loc(11,3),flipH,blue,vis2D(3,2),mass=4,shapeid=s11261491,[copy_column_ntimes(1,2)])). 
pos(rhs(trn_2,loc(4,4),flipH,purple,vis2D(5,4),mass=9,shapeid=s11470631,[copy_column_ntimes(2,3),copy_row_ntimes(1,2)])). 
pos(rhs(trn_2,loc(10,3),sameR,black,vis2D(4,4),mass=11,shapeid=s16635904,[reversed(rot180^rot180),rot90])). 
pos(rhs(tst_0,loc(5,12),flipV,blue,vis2D(6,3),mass=8,shapeid=s11261491,[copy_column_ntimes(1,5),copy_row_ntimes(1,2)])). 
pos(rhs(tst_0,loc(13,12),rot270,blue,vis2D(3,3),mass=5,shapeid=s11261491,[copy_column_ntimes(1,2),copy_row_ntimes(1,2)])). 
pos(rhs(tst_0,loc(12,8),sameR,purple,vis2D(4,3),mass=8,shapeid=s3977744,[copy_column_ntimes(2,2)])). 
pos(rhs(tst_0,loc(7,6),sameR,red,vis2D(5,3),mass=8,shapeid=s9067551,[copy_column_ntimes(1,3)])). 
pos(rhs(tst_0,loc(14,3),flipDHV,red,vis2D(3,5),mass=8,shapeid=s5284033,[copy_column_ntimes(4,2)])). 
pos(rhs(tst_0,loc(3,2),sameR,purple,vis2D(3,3),mass=7,shapeid=s1201147,[copy_row_ntimes(1,2)])). 
pos(rhs(tst_0,loc(5,12),rot90,black,vis2D(8,4),mass=19,shapeid=s377632,[rot180,copy_row_ntimes(4,4),rot270])). 
pos(rhs(tst_0,loc(3,2),sameR,black,vis2D(1,2),mass=2,shapeid=sid_21,[])). 
:-end_in_pos. 
