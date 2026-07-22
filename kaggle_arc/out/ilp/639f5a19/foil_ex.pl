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
:-output(rhs_rot2D/2). 
:-output(rhs_gis/2). 
:-output(rhs_c2d/2). 
:-output(rhs_t2d/2). 
:-output(rhs/5). 
:-output(rhs_peice/2). 
:-output(rhs_rot2D/2). 
:-output(rhs_gis/2). 
:-output(rhs_c2d/2). 
:-output(rhs_t2d/2). 
:-output(rhs/5). 
:-input_cw(lhs_peice/2). 
:-input_cw(lhs_rot2D/2). 
:-input_cw(lhs_gis/2). 
:-input_cw(lhs_c2d/2). 
:-input_cw(lhs_t2d/2). 
:-input_cw(lhs_child_c/2). 
:-input_cw(lhs/6). 
:-input_cw(lhs_peice/2). 
:-input_cw(lhs_rot2D/2). 
:-input_cw(lhs_gis/2). 
:-input_cw(lhs_c2d/2). 
:-input_cw(lhs_t2d/2). 
:-input_cw(lhs_child_c/2). 
:-input_cw(lhs/6). 
:-modeh(*,rhs_peice(+scope,+peice)). 
:-modeh(*,rhs_rot2D(+peice,+rot2D)). 
:-modeh(*,rhs_gis(+peice,+gis)). 
:-modeh(*,rhs_c2d(+peice,+c2d)). 
:-modeh(*,rhs_t2d(+peice,+t2d)). 
:-modeh(*,rhs(+peice,+rhs,+rhs,+rhs,+rhs)). 
:-modeh(*,rhs_peice(+scope,+peice)). 
:-modeh(*,rhs_rot2D(+peice,+rot2D)). 
:-modeh(*,rhs_gis(+peice,+gis)). 
:-modeh(*,rhs_c2d(+peice,+c2d)). 
:-modeh(*,rhs_t2d(+peice,+t2d)). 
:-modeh(*,rhs(+peice,+rhs,+rhs,+rhs,+rhs)). 
:-modeb(*,lhs_peice(+scope,+peice)). 
:-modeb(*,lhs_rot2D(+peice,-rot2D)). 
:-modeb(*,lhs_gis(+peice,-gis)). 
:-modeb(*,lhs_c2d(+peice,-c2d)). 
:-modeb(*,lhs_t2d(+peice,-t2d)). 
:-modeb(*,lhs_child_c(+peice,+nat30)). 
:-modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,+nat30)). 
:-modeb(*,lhs_child_c(+peice,-c)). 
:-modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,-lhs)). 
:-modeb(*,lhs_peice(+scope,+peice)). 
:-modeb(*,lhs_rot2D(+peice,-rot2D)). 
:-modeb(*,lhs_gis(+peice,-gis)). 
:-modeb(*,lhs_c2d(+peice,-c2d)). 
:-modeb(*,lhs_t2d(+peice,-t2d)). 
:-modeb(*,lhs_child_c(+peice,-c)). 
:-modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,-lhs)). 
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
lhs(in0_cyan64_3_2_10_9,sameR,sid_1x1,cxy(7,6),txy(3,2),no_child). 
lhs(in0_cyan120_8_11_19_20,sameR,sid_2x1,cxy(14,16),txy(8,11),no_child). 
lhs(in1_cyan96_2_15_13_22,sameR,sid_2x1,cxy(8,19),txy(2,15),no_child). 
lhs(in1_cyan120_6_2_17_11,sameR,sid_2x1,cxy(12,7),txy(6,2),no_child). 
lhs(in0_cyan36_4_16_9_21,sameR,sid_1x1,cxy(7,19),txy(4,16),no_child). 
lhs(in0_cyan60_4_2_9_11,rot90,sid_2x1,cxy(7,7),txy(4,2),no_child). 
lhs(in0_cyan140_13_5_22_18,rot90,sid_2x1,cxy(18,12),txy(13,5),no_child). 
:-end_bg. 
:-begin_in_pos. 
pos(rhs(out0_yellow16_5_4_8_7,sameR,sid_1x1,cxy(7,6),txy(5,4))). 
pos(rhs(out0_purple12_3_2_6_5,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(4,3),txy(4,3))). 
pos(rhs(out0_red12_3_6_6_9,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(4,8),txy(4,8))). 
pos(rhs(out0_blue12_7_2_10_5,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(9,3),txy(9,3))). 
pos(rhs(out0_green12_7_6_10_9,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(9,8),txy(9,8))). 
pos(rhs(out0_red18_8_16_13_20,flipH,sid_tetris_Z_270_Rotated_2x3,cxy(10,19),txy(8,16))). 
pos(rhs(out0_blue18_14_11_19_15,flipV,sid_tetris_Z_270_Rotated_2x3,cxy(17,12),txy(19,15))). 
pos(rhs(out0_purple18_8_11_13_15,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(10,12),txy(8,15))). 
pos(rhs(out0_green18_14_16_19_20,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(17,19),txy(19,16))). 
pos(rhs(out0_yellow48_10_13_17_18,sameR,sid_2x1,cxy(14,16),txy(10,13))). 
pos(rhs(out1_red16_2_19_7_22,flipH,sid_tetris_Z_270_Rotated_2x3,cxy(4,21),txy(2,19))). 
pos(rhs(out1_blue16_8_15_13_18,flipV,sid_tetris_Z_270_Rotated_2x3,cxy(11,16),txy(13,18))). 
pos(rhs(out1_purple16_2_15_7_18,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(4,16),txy(2,18))). 
pos(rhs(out1_green16_8_19_13_22,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(11,21),txy(13,19))). 
pos(rhs(out1_red18_6_7_11_11,flipH,sid_tetris_Z_270_Rotated_2x3,cxy(8,10),txy(6,7))). 
pos(rhs(out1_blue18_12_2_17_6,flipV,sid_tetris_Z_270_Rotated_2x3,cxy(15,3),txy(17,6))). 
pos(rhs(out1_purple18_6_2_11_6,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(8,3),txy(6,6))). 
pos(rhs(out1_green18_12_7_17_11,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(15,10),txy(17,7))). 
pos(rhs(out1_yellow32_4_17_11_20,sameR,sid_2x1,cxy(8,19),txy(4,17))). 
pos(rhs(out1_yellow48_8_4_15_9,sameR,sid_2x1,cxy(12,7),txy(8,4))). 
pos(rhs(out0_yellow4_6_18_7_19,sameR,sid_1x1,cxy(7,19),txy(6,18))). 
pos(rhs(out0_purple8_4_16_6_18,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(5,17),txy(5,17))). 
pos(rhs(out0_red8_4_19_6_21,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(5,20),txy(5,20))). 
pos(rhs(out0_blue8_7_16_9_18,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(8,17),txy(8,17))). 
pos(rhs(out0_green8_7_19_9_21,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(8,20),txy(8,20))). 
pos(rhs(out0_yellow12_6_4_7_9,rot90,sid_2x1,cxy(7,7),txy(6,4))). 
pos(rhs(out0_green12_7_7_9_11,flipD,sid_tetris_Z_270_Rotated_2x3,cxy(8,9),txy(8,9))). 
pos(rhs(out0_purple12_4_2_6_6,flipDHV,sid_tetris_Z_270_Rotated_2x3,cxy(5,4),txy(5,4))). 
pos(rhs(out0_red12_4_7_6_11,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(5,9),txy(5,9))). 
pos(rhs(out0_blue12_7_2_9_6,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(8,4),txy(8,4))). 
pos(rhs(out0_green20_18_12_22_18,flipD,sid_tetris_Z_270_Rotated_2x3,cxy(21,16),txy(18,18))). 
pos(rhs(out0_purple20_13_5_17_11,flipDHV,sid_tetris_Z_270_Rotated_2x3,cxy(14,7),txy(17,5))). 
pos(rhs(out0_red20_13_12_17_18,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(14,16),txy(17,18))). 
pos(rhs(out0_blue20_18_5_22_11,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(21,7),txy(18,5))). 
pos(rhs(out0_yellow60_15_7_20_16,rot90,sid_2x1,cxy(18,12),txy(15,7))). 
:-end_in_pos. 
