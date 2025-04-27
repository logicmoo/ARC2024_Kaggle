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
:-modeb(*,lhs_peice(+scope,+peice)). 
:-modeb(*,lhs_rot2D(+peice,-rot2D)). 
:-modeb(*,lhs_gis(+peice,-gis)). 
:-modeb(*,lhs_c2d(+peice,-c2d)). 
:-modeb(*,lhs_t2d(+peice,-t2d)). 
:-modeb(*,lhs_child_c(+peice,-c)). 
:-modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,-lhs)). 
:-modeb(*,lhs_child_c(+peice,+nat30)). 
:-modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,+nat30)). 
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
lhs(in0_black0_9_13_9_14,sameR,sid_1x2,cxy(9,14),txy(9,14),no_child). 
lhs(in0_red12_7_12_10_15,sameR,s14011369,cxy(9,14),txy(7,12),1). 
lhs(in0_red10_7_7_10_10,sameR,s5187905,cxy(9,9),txy(7,7),no_child). 
lhs(in0_red10_2_7_5_10,sameR,sid_u_3x2,cxy(4,9),txy(2,7),no_child). 
lhs(in0_red10_2_12_5_15,rot270,s16715379,cxy(3,14),txy(5,12),no_child). 
lhs(in0_red10_7_2_10_5,rot270,s16715379,cxy(8,4),txy(10,2),no_child). 
lhs(in0_red10_2_2_5_5,rot270,sid_u_3x2,cxy(3,4),txy(5,2),no_child). 
lhs(in1_red4_2_9_3_10,sameR,sid_1x1,cxy(3,10),txy(2,9),no_child). 
lhs(in1_red4_2_12_3_13,sameR,sid_1x1,cxy(3,13),txy(2,12),no_child). 
lhs(in1_red4_4_2_5_3,sameR,sid_1x1,cxy(5,3),txy(4,2),no_child). 
lhs(in1_red4_7_9_8_10,sameR,sid_1x1,cxy(8,10),txy(7,9),no_child). 
lhs(in1_red4_9_4_10_5,sameR,sid_1x1,cxy(10,5),txy(9,4),no_child). 
lhs(in1_red4_9_7_10_8,sameR,sid_1x1,cxy(10,8),txy(9,7),no_child). 
lhs(in1_red4_9_14_10_15,sameR,sid_1x1,cxy(10,15),txy(9,14),no_child). 
lhs(in1_red3_7_7_8_8,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(7,7),txy(7,7),1). 
lhs(in1_red3_9_9_10_10,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(10,10),txy(10,10),1). 
lhs(in1_black0_3_3_4_4,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(3,4),txy(3,4),no_child). 
lhs(in1_black0_3_8_4_9,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(4,8),txy(4,8),no_child). 
lhs(in1_black0_3_13_4_14,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(4,14),txy(4,14),no_child). 
lhs(in1_black0_8_3_9_4,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(8,3),txy(8,3),no_child). 
lhs(in1_black0_8_13_9_14,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(8,13),txy(8,13),no_child). 
lhs(in1_red9_7_2_10_5,rot180,s15713804,cxy(8,3),txy(8,3),2). 
lhs(in1_red9_7_12_10_15,rot180,s15713804,cxy(8,13),txy(8,13),2). 
lhs(in1_red9_2_2_5_5,rot270,s15713804,cxy(3,4),txy(3,4),2). 
lhs(in1_red9_2_7_5_10,rot90,s15713804,cxy(4,8),txy(4,8),2). 
lhs(in1_red9_2_12_5_15,sameR,s15713804,cxy(4,14),txy(4,14),2). 
lhs(in1_black0_8_8_8_8,sameR,sid_1x1,cxy(8,8),txy(8,8),no_child). 
lhs(in1_black0_9_9_9_9,sameR,sid_1x1,cxy(9,9),txy(9,9),no_child). 
lhs(in2_red2_7_3_7_4,rot90,sid_2x1,cxy(7,4),txy(7,4),no_child). 
lhs(in2_red2_10_3_10_4,rot90,sid_2x1,cxy(10,4),txy(10,4),no_child). 
lhs(in2_red2_8_7_9_7,sameR,sid_2x1,cxy(9,7),txy(9,7),no_child). 
lhs(in2_red2_8_10_9_10,sameR,sid_2x1,cxy(9,10),txy(9,10),no_child). 
lhs(in2_red4_3_2_4_3,sameR,sid_1x1,cxy(4,3),txy(3,2),no_child). 
lhs(in2_red4_3_9_4_10,sameR,sid_1x1,cxy(4,10),txy(3,9),no_child). 
lhs(in2_red4_3_14_4_15,sameR,sid_1x1,cxy(4,15),txy(3,14),no_child). 
lhs(in2_red4_4_3_5_4,sameR,sid_1x1,cxy(5,4),txy(4,3),no_child). 
lhs(in2_red4_7_13_8_14,sameR,sid_1x1,cxy(8,14),txy(7,13),no_child). 
lhs(in2_red4_8_2_9_3,sameR,sid_1x1,cxy(9,3),txy(8,2),no_child). 
lhs(in2_red4_9_8_10_9,sameR,sid_1x1,cxy(10,9),txy(9,8),no_child). 
lhs(in2_black0_1_1_2_2,sameR,sid_1x1,cxy(2,2),txy(1,1),no_child). 
lhs(in2_black0_1_15_2_16,sameR,sid_1x1,cxy(2,16),txy(1,15),no_child). 
lhs(in2_black0_10_1_11_2,sameR,sid_1x1,cxy(11,2),txy(10,1),no_child). 
lhs(in2_black0_10_15_11_16,sameR,sid_1x1,cxy(11,16),txy(10,15),no_child). 
lhs(in2_black0_5_15_7_16,rot90,sid_1x2,cxy(6,16),txy(6,16),no_child). 
lhs(in2_black0_6_8_8_9,rot90,sid_1x2,cxy(7,9),txy(7,9),no_child). 
lhs(in2_black0_8_4_9_6,sameR,sid_1x2,cxy(9,5),txy(9,5),no_child). 
lhs(in2_black0_10_5_11_7,sameR,sid_1x2,cxy(11,6),txy(11,6),no_child). 
lhs(in2_black0_10_10_11_12,sameR,sid_1x2,cxy(11,11),txy(11,11),no_child). 
lhs(in2_black0_5_1_7_2,rot90,sid_1x2,cxy(7,2),txy(5,1),no_child). 
lhs(in2_red4_8_13_10_15,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(9,14),txy(9,14),no_child). 
lhs(in2_red4_2_3_4_5,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(3,4),txy(3,4),1). 
lhs(in2_red4_2_12_4_14,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(3,13),txy(3,13),no_child). 
lhs(in2_red4_3_7_5_9,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(4,8),txy(4,8),no_child). 
lhs(in2_black0_5_10_7_12,sameR,sid_1x1,cxy(6,11),txy(6,11),no_child). 
lhs(in2_black0_5_5_7_7,sameR,sid_1x1,cxy(7,7),txy(11,11),no_child). 
lhs(in2_black0_5_5_11_6,rot90,sid_1x2,cxy(8,6),txy(8,6),no_child). 
lhs(in2_black0_5_11_11_12,rot90,sid_1x2,cxy(8,12),txy(8,12),no_child). 
lhs(in2_black0_5_10_6_16,sameR,sid_1x2,cxy(6,13),txy(6,13),no_child). 
lhs(in2_black0_6_5_7_12,sameR,sid_1x2,cxy(7,9),txy(6,5),no_child). 
lhs(in2_black0_1_5_2_12,sameR,sid_1x2,cxy(2,9),txy(1,5),no_child). 
lhs(in2_black0_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4),no_child). 
lhs(in0_red2_3_15_4_15,sameR,sid_2x1,cxy(4,15),txy(4,15),no_child). 
lhs(in0_red3_2_7_3_8,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(2,7),txy(2,7),no_child). 
lhs(in0_red3_7_4_8_5,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(7,5),txy(7,5),no_child). 
lhs(in0_red3_9_7_10_8,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(10,7),txy(10,7),no_child). 
lhs(in0_red3_4_4_5_5,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(5,5),txy(5,5),no_child). 
lhs(in0_red3_9_14_10_15,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(10,15),txy(10,15),no_child). 
lhs(in0_black0_3_13_4_14,sameR,sid_1x1,cxy(4,14),txy(3,13),no_child). 
lhs(in0_red4_3_8_5_10,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(4,9),txy(4,9),no_child). 
lhs(in0_red4_7_8_9_10,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(8,9),txy(8,9),no_child). 
lhs(in0_red4_2_2_4_4,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(3,3),txy(3,3),no_child). 
lhs(in0_red4_7_12_9_14,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(8,13),txy(8,13),no_child). 
lhs(in0_red4_8_2_10_4,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(9,3),txy(9,3),no_child). 
lhs(in0_red8_2_12_5_14,rot180,sid_u_3x2,cxy(4,13),txy(4,13),1). 
:-end_bg. 
:-begin_in_pos. 
pos(rhs(out0_black0_9_13_9_14,sameR,sid_1x2,cxy(9,14),txy(9,14))). 
pos(rhs(out0_black0_1_13_2_14,sameR,sid_1x1,cxy(2,14),txy(1,13))). 
pos(rhs(out0_black0_10_8_11_9,sameR,sid_1x1,cxy(11,9),txy(10,8))). 
pos(rhs(out0_black0_6_8_8_9,rot90,sid_1x2,cxy(7,9),txy(7,9))). 
pos(rhs(out0_black0_9_3_11_4,rot90,sid_1x2,cxy(10,4),txy(10,4))). 
pos(rhs(out0_black0_4_13_7_14,rot90,sid_1x2,cxy(6,14),txy(4,13))). 
pos(rhs(out0_black0_1_8_4_9,rot90,sid_1x2,cxy(3,9),txy(4,16))). 
pos(rhs(out0_black0_3_3_7_4,rot90,sid_1x2,cxy(5,4),txy(9,6))). 
pos(rhs(out0_green12_7_12_10_15,sameR,s14011369,cxy(9,14),txy(7,12))). 
pos(rhs(out0_red10_7_7_10_10,sameR,s5187905,cxy(9,9),txy(7,7))). 
pos(rhs(out0_cyan10_2_7_5_10,sameR,sid_u_3x2,cxy(4,9),txy(2,7))). 
pos(rhs(out0_red10_2_12_5_15,rot270,s16715379,cxy(3,14),txy(5,12))). 
pos(rhs(out0_cyan10_7_2_10_5,rot270,s16715379,cxy(8,4),txy(10,2))). 
pos(rhs(out0_red10_2_2_5_5,rot270,sid_u_3x2,cxy(3,4),txy(5,2))). 
pos(rhs(out1_cyan4_2_9_3_10,sameR,sid_1x1,cxy(3,10),txy(2,9))). 
pos(rhs(out1_red4_2_12_3_13,sameR,sid_1x1,cxy(3,13),txy(2,12))). 
pos(rhs(out1_cyan4_4_2_5_3,sameR,sid_1x1,cxy(5,3),txy(4,2))). 
pos(rhs(out1_green4_7_9_8_10,sameR,sid_1x1,cxy(8,10),txy(7,9))). 
pos(rhs(out1_red4_9_4_10_5,sameR,sid_1x1,cxy(10,5),txy(9,4))). 
pos(rhs(out1_green4_9_7_10_8,sameR,sid_1x1,cxy(10,8),txy(9,7))). 
pos(rhs(out1_red4_9_14_10_15,sameR,sid_1x1,cxy(10,15),txy(9,14))). 
pos(rhs(out1_green3_7_7_8_8,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(7,7),txy(7,7))). 
pos(rhs(out1_green3_9_9_10_10,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(10,10),txy(10,10))). 
pos(rhs(out1_black0_3_3_4_4,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(3,4),txy(3,4))). 
pos(rhs(out1_black0_3_8_4_9,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(4,8),txy(4,8))). 
pos(rhs(out1_black0_3_13_4_14,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(4,14),txy(4,14))). 
pos(rhs(out1_black0_8_3_9_4,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(8,3),txy(8,3))). 
pos(rhs(out1_black0_8_13_9_14,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(8,13),txy(8,13))). 
pos(rhs(out1_red9_7_2_10_5,rot180,s15713804,cxy(8,3),txy(8,3))). 
pos(rhs(out1_red9_7_12_10_15,rot180,s15713804,cxy(8,13),txy(8,13))). 
pos(rhs(out1_cyan9_2_2_5_5,rot270,s15713804,cxy(3,4),txy(3,4))). 
pos(rhs(out1_cyan9_2_7_5_10,rot90,s15713804,cxy(4,8),txy(4,8))). 
pos(rhs(out1_red9_2_12_5_15,sameR,s15713804,cxy(4,14),txy(4,14))). 
pos(rhs(out1_black0_8_8_8_8,sameR,sid_1x1,cxy(8,8),txy(8,8))). 
pos(rhs(out1_black0_9_9_9_9,sameR,sid_1x1,cxy(9,9),txy(9,9))). 
pos(rhs(out2_cyan2_7_3_7_4,rot90,sid_2x1,cxy(7,4),txy(7,4))). 
pos(rhs(out2_cyan2_10_3_10_4,rot90,sid_2x1,cxy(10,4),txy(10,4))). 
pos(rhs(out2_cyan2_8_7_9_7,sameR,sid_2x1,cxy(9,7),txy(9,7))). 
pos(rhs(out2_cyan2_8_10_9_10,sameR,sid_2x1,cxy(9,10),txy(9,10))). 
pos(rhs(out2_green4_3_2_4_3,sameR,sid_1x1,cxy(4,3),txy(3,2))). 
pos(rhs(out2_red4_3_9_4_10,sameR,sid_1x1,cxy(4,10),txy(3,9))). 
pos(rhs(out2_red4_3_14_4_15,sameR,sid_1x1,cxy(4,15),txy(3,14))). 
pos(rhs(out2_green4_4_3_5_4,sameR,sid_1x1,cxy(5,4),txy(4,3))). 
pos(rhs(out2_red4_7_13_8_14,sameR,sid_1x1,cxy(8,14),txy(7,13))). 
pos(rhs(out2_cyan4_8_2_9_3,sameR,sid_1x1,cxy(9,3),txy(8,2))). 
pos(rhs(out2_cyan4_9_8_10_9,sameR,sid_1x1,cxy(10,9),txy(9,8))). 
pos(rhs(out2_black0_1_1_2_2,sameR,sid_1x1,cxy(2,2),txy(1,1))). 
pos(rhs(out2_black0_1_15_2_16,sameR,sid_1x1,cxy(2,16),txy(1,15))). 
pos(rhs(out2_black0_10_1_11_2,sameR,sid_1x1,cxy(11,2),txy(10,1))). 
pos(rhs(out2_black0_10_15_11_16,sameR,sid_1x1,cxy(11,16),txy(10,15))). 
pos(rhs(out2_black0_5_15_7_16,rot90,sid_1x2,cxy(6,16),txy(6,16))). 
pos(rhs(out2_black0_6_8_8_9,rot90,sid_1x2,cxy(7,9),txy(7,9))). 
pos(rhs(out2_black0_8_4_9_6,sameR,sid_1x2,cxy(9,5),txy(9,5))). 
pos(rhs(out2_black0_10_5_11_7,sameR,sid_1x2,cxy(11,6),txy(11,6))). 
pos(rhs(out2_black0_10_10_11_12,sameR,sid_1x2,cxy(11,11),txy(11,11))). 
pos(rhs(out2_black0_5_1_7_2,rot90,sid_1x2,cxy(7,2),txy(5,1))). 
pos(rhs(out2_red4_8_13_10_15,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(9,14),txy(9,14))). 
pos(rhs(out2_green4_2_3_4_5,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(3,4),txy(3,4))). 
pos(rhs(out2_red4_2_12_4_14,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(3,13),txy(3,13))). 
pos(rhs(out2_red4_3_7_5_9,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(4,8),txy(4,8))). 
pos(rhs(out2_black0_5_10_7_12,sameR,sid_1x1,cxy(6,11),txy(6,11))). 
pos(rhs(out2_black0_5_5_7_7,sameR,sid_1x1,cxy(7,7),txy(11,11))). 
pos(rhs(out2_black0_5_5_11_6,rot90,sid_1x2,cxy(8,6),txy(8,6))). 
pos(rhs(out2_black0_5_11_11_12,rot90,sid_1x2,cxy(8,12),txy(8,12))). 
pos(rhs(out2_black0_5_10_6_16,sameR,sid_1x2,cxy(6,13),txy(6,13))). 
pos(rhs(out2_black0_6_5_7_12,sameR,sid_1x2,cxy(7,9),txy(6,5))). 
pos(rhs(out2_black0_1_5_2_12,sameR,sid_1x2,cxy(2,9),txy(1,5))). 
pos(rhs(out2_black0_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4))). 
pos(rhs(out0_green2_3_15_4_15,sameR,sid_2x1,cxy(4,15),txy(4,15))). 
pos(rhs(out0_cyan3_2_7_3_8,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(2,7),txy(2,7))). 
pos(rhs(out0_red3_7_4_8_5,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(7,5),txy(7,5))). 
pos(rhs(out0_cyan3_9_7_10_8,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(10,7),txy(10,7))). 
pos(rhs(out0_red3_4_4_5_5,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(5,5),txy(5,5))). 
pos(rhs(out0_red3_9_14_10_15,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(10,15),txy(10,15))). 
pos(rhs(out0_black0_3_13_4_14,sameR,sid_1x1,cxy(4,14),txy(3,13))). 
pos(rhs(out0_cyan4_3_8_5_10,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(4,9),txy(4,9))). 
pos(rhs(out0_cyan4_7_8_9_10,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(8,9),txy(8,9))). 
pos(rhs(out0_red4_2_2_4_4,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(3,3),txy(3,3))). 
pos(rhs(out0_red4_7_12_9_14,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(8,13),txy(8,13))). 
pos(rhs(out0_red4_8_2_10_4,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(9,3),txy(9,3))). 
pos(rhs(out0_green8_2_12_5_14,rot180,sid_u_3x2,cxy(4,13),txy(4,13))). 
:-end_in_pos. 
