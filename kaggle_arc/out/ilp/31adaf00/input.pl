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
lhs(in0_silver2_1_9_1_10,rot90,sid_2x1,cxy(1,10),txy(1,10),no_child). 
lhs(in0_silver2_1_1_2_1,sameR,sid_2x1,cxy(2,1),txy(2,1),no_child). 
lhs(in0_silver2_1_3_2_3,sameR,sid_2x1,cxy(2,3),txy(2,3),no_child). 
lhs(in0_black0_1_2_2_2,rot90,sid_1x2,cxy(2,2),txy(2,2),no_child). 
lhs(in0_black0_3_1_4_1,rot90,sid_1x2,cxy(4,1),txy(4,1),no_child). 
lhs(in0_black0_7_9_8_9,rot90,sid_1x2,cxy(8,9),txy(8,9),no_child). 
lhs(in0_black0_9_1_10_1,rot90,sid_1x2,cxy(10,1),txy(10,1),no_child). 
lhs(in0_black0_9_10_10_10,rot90,sid_1x2,cxy(10,10),txy(10,10),no_child). 
lhs(in0_black0_6_7_6_8,sameR,sid_1x2,cxy(6,8),txy(6,8),no_child). 
lhs(in0_silver4_6_4_7_5,sameR,sid_1x1,cxy(7,5),txy(6,4),no_child). 
lhs(in0_silver2_4_4_5_5,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(5,5),txy(5,5),no_child). 
lhs(in0_silver2_5_6_6_7,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(6,7),txy(6,7),no_child). 
lhs(in0_silver3_9_2_10_3,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(9,2),txy(9,2),1). 
lhs(in0_silver3_3_2_4_3,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(4,2),txy(4,2),no_child). 
lhs(in0_black0_7_6_8_7,sameR,sid_1x1,cxy(9,8),txy(14,12),no_child). 
lhs(in0_silver4_9_5_10_7,flipDHV,sid_tetris_Triple_East_and_North_2x2,cxy(10,6),txy(9,5),2). 
lhs(in0_silver3_6_9_8_10,flipD,sid_tetris_Triple_East_and_North_2x2,cxy(7,10),txy(6,9),2). 
lhs(in0_silver5_7_8_10_9,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(9,8),txy(10,9),2). 
lhs(in0_black0_2_9_5_10,rot90,sid_1x2,cxy(4,10),txy(6,18),no_child). 
lhs(in0_black0_5_2_8_3,rot90,sid_1x2,cxy(7,3),txy(12,4),no_child). 
lhs(in0_silver5_1_6_3_8,rot180,s11869152,cxy(2,7),txy(1,6),1). 
lhs(in0_black0_3_8_5_10,sameR,sid_1x1,cxy(4,10),txy(7,17),no_child). 
lhs(in0_black0_5_1_7_3,sameR,sid_1x1,cxy(7,2),txy(11,3),no_child). 
lhs(in0_black0_1_3_5_7,sameR,s9374107,cxy(3,5),txy(3,5),no_child). 
lhs(in0_black0_1_8_1_8,sameR,sid_1x1,cxy(1,8),txy(1,8),no_child). 
lhs(in0_silver1_2_5_2_5,sameR,sid_1x1,cxy(2,5),txy(2,5),no_child). 
lhs(in0_black0_6_10_6_10,sameR,sid_1x1,cxy(6,10),txy(6,10),no_child). 
lhs(in0_silver1_8_1_8_1,sameR,sid_1x1,cxy(8,1),txy(8,1),no_child). 
lhs(in0_silver1_8_4_8_4,sameR,sid_1x1,cxy(8,4),txy(8,4),no_child). 
lhs(in0_black0_8_5_8_5,sameR,sid_1x1,cxy(8,5),txy(8,5),no_child). 
lhs(in0_black0_9_4_9_4,sameR,sid_1x1,cxy(9,4),txy(9,4),no_child). 
lhs(in0_black0_9_7_9_7,sameR,sid_1x1,cxy(9,7),txy(9,7),no_child). 
lhs(in0_black0_10_3_10_3,sameR,sid_1x1,cxy(10,3),txy(10,3),no_child). 
lhs(in0_silver1_10_4_10_4,sameR,sid_1x1,cxy(10,4),txy(10,4),no_child). 
lhs(in0_black0_10_5_10_5,sameR,sid_1x1,cxy(10,5),txy(10,5),no_child). 
lhs(in0_black0_10_8_10_8,sameR,sid_1x1,cxy(10,8),txy(10,8),no_child). 
lhs(in1_black0_6_3_7_3,rot90,sid_1x2,cxy(7,3),txy(7,3),no_child). 
lhs(in1_black0_10_4_10_5,sameR,sid_1x2,cxy(10,5),txy(10,5),no_child). 
lhs(in1_silver2_8_9_9_10,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(9,10),txy(9,10),no_child). 
lhs(in1_silver3_3_8_4_9,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(3,9),txy(3,9),1). 
lhs(in1_silver3_1_1_2_2,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(2,2),txy(2,2),1). 
lhs(in1_black0_1_3_2_4,sameR,sid_1x1,cxy(2,4),txy(1,3),no_child). 
lhs(in1_black0_1_7_2_8,sameR,sid_1x1,cxy(2,9),txy(1,7),no_child). 
lhs(in1_black0_3_1_4_2,sameR,sid_1x1,cxy(4,2),txy(3,1),no_child). 
lhs(in1_black0_4_5_5_6,sameR,sid_1x1,cxy(5,6),txy(8,10),no_child). 
lhs(in1_black0_7_4_8_5,sameR,sid_1x1,cxy(9,5),txy(14,8),no_child). 
lhs(in1_silver4_4_3_6_4,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(5,4),txy(4,3),1). 
lhs(in1_silver3_5_1_7_2,flipD,sid_tetris_Triple_East_and_North_2x2,cxy(6,2),txy(5,1),1). 
lhs(in1_silver3_8_6_10_7,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(9,6),txy(9,6),1). 
lhs(in1_silver8_6_6_7_9,rot90,sid_2x1,cxy(7,8),txy(6,6),no_child). 
lhs(in1_black0_6_1_10_2,rot90,s8512000,cxy(8,1),txy(10,2),no_child). 
lhs(in1_silver6_8_2_10_5,rot180,sid_plus_3x3,cxy(9,3),txy(9,3),1). 
lhs(in1_black0_8_7_10_10,sameR,s16715379,cxy(9,8),txy(10,10),no_child). 
lhs(in1_black0_1_9_7_10,rot90,s7025452,cxy(4,10),txy(2,9),no_child). 
lhs(in1_silver6_1_4_5_8,sameR,s3245692,cxy(3,6),txy(5,8),6). 
lhs(in1_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),no_child). 
lhs(in1_black0_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5),no_child). 
lhs(in1_silver1_1_9_1_9,sameR,sid_1x1,cxy(1,9),txy(1,9),no_child). 
lhs(in1_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),no_child). 
lhs(in1_black0_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5),no_child). 
lhs(in1_black0_3_7_3_7,sameR,sid_1x1,cxy(3,7),txy(3,7),no_child). 
lhs(in1_black0_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),no_child). 
lhs(in1_black0_4_8_4_8,sameR,sid_1x1,cxy(4,8),txy(4,8),no_child). 
lhs(in1_black0_5_2_5_2,sameR,sid_1x1,cxy(5,2),txy(5,2),no_child). 
lhs(in1_black0_5_7_5_7,sameR,sid_1x1,cxy(5,7),txy(5,7),no_child). 
lhs(in1_black0_6_5_6_5,sameR,sid_1x1,cxy(6,5),txy(6,5),no_child). 
lhs(in1_black0_9_6_9_6,sameR,sid_1x1,cxy(9,6),txy(9,6),no_child). 
lhs(in2_silver2_10_1_10_2,rot90,sid_2x1,cxy(10,2),txy(10,2),no_child). 
lhs(in2_silver2_2_5_3_5,sameR,sid_2x1,cxy(3,5),txy(3,5),no_child). 
lhs(in2_black0_6_1_7_1,rot90,sid_1x2,cxy(7,1),txy(7,1),no_child). 
lhs(in2_black0_7_6_8_6,rot90,sid_1x2,cxy(8,6),txy(8,6),no_child). 
lhs(in2_black0_7_10_8_10,rot90,sid_1x2,cxy(8,10),txy(8,10),no_child). 
lhs(in2_black0_1_1_2_2,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(1,1),txy(1,1),no_child). 
lhs(in2_black0_1_3_2_4,sameR,sid_1x1,cxy(2,4),txy(1,3),no_child). 
lhs(in2_black0_4_1_5_2,sameR,sid_1x1,cxy(5,2),txy(4,1),no_child). 
lhs(in2_black0_9_6_10_7,sameR,sid_1x1,cxy(11,8),txy(18,12),no_child). 
lhs(in2_silver3_5_2_6_4,flipH,sid_tetris_Triple_East_and_North_2x2,cxy(5,3),txy(6,2),no_child). 
lhs(in2_silver3_2_1_3_3,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(3,2),txy(3,2),1). 
lhs(in2_black0_1_9_4_10,rot90,sid_1x2,cxy(3,10),txy(4,18),no_child). 
lhs(in2_silver7_6_5_8_7,rot270,sid_u_3x2,cxy(7,6),txy(7,6),1). 
lhs(in2_black0_1_8_3_10,sameR,sid_1x1,cxy(2,10),txy(3,17),no_child). 
lhs(in2_black0_7_2_9_4,sameR,sid_1x1,cxy(9,3),txy(15,5),no_child). 
lhs(in2_black0_6_3_10_4,rot90,sid_1x2,cxy(9,4),txy(15,6),no_child). 
lhs(in2_silver7_1_6_4_8,flipV,s12482970,cxy(3,7),txy(1,6),1). 
lhs(in2_silver9_5_8_10_10,flipD,s15553490,cxy(8,9),txy(6,10),4). 
lhs(in2_black0_3_3_8_8,sameR,s2118439,cxy(5,6),txy(8,8),no_child). 
lhs(in2_black0_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5),no_child). 
lhs(in2_black0_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2),no_child). 
lhs(in2_black0_3_6_3_6,sameR,sid_1x1,cxy(3,6),txy(3,6),no_child). 
lhs(in2_black0_5_10_5_10,sameR,sid_1x1,cxy(5,10),txy(5,10),no_child). 
lhs(in2_silver1_8_1_8_1,sameR,sid_1x1,cxy(8,1),txy(8,1),no_child). 
lhs(in2_black0_9_1_9_1,sameR,sid_1x1,cxy(9,1),txy(9,1),no_child). 
lhs(in2_black0_9_5_9_5,sameR,sid_1x1,cxy(9,5),txy(9,5),no_child). 
lhs(in2_silver1_10_5_10_5,sameR,sid_1x1,cxy(10,5),txy(10,5),no_child). 
lhs(in2_black0_10_8_10_8,sameR,sid_1x1,cxy(10,8),txy(10,8),no_child). 
lhs(in2_black0_10_10_10_10,sameR,sid_1x1,cxy(10,10),txy(10,10),no_child). 
lhs(in0_silver2_5_5_6_5,sameR,sid_2x1,cxy(6,5),txy(6,5),no_child). 
lhs(in0_black0_8_8_9_8,rot90,sid_1x2,cxy(9,8),txy(9,8),no_child). 
lhs(in0_black0_4_8_4_9,sameR,sid_1x2,cxy(4,9),txy(4,9),no_child). 
lhs(in0_silver4_7_6_8_7,sameR,sid_1x1,cxy(8,7),txy(7,6),no_child). 
lhs(in0_silver3_8_3_9_4,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(8,3),txy(8,3),no_child). 
lhs(in0_silver3_4_2_5_3,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(4,3),txy(4,3),1). 
lhs(in0_silver3_6_1_7_2,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(7,2),txy(7,2),1). 
lhs(in0_black0_1_6_2_7,sameR,sid_1x1,cxy(2,8),txy(1,6),no_child). 
lhs(in0_black0_2_1_3_2,sameR,sid_1x1,cxy(3,2),txy(2,1),no_child). 
lhs(in0_black0_5_6_6_7,sameR,sid_1x1,cxy(6,8),txy(10,12),no_child). 
lhs(in0_black0_6_3_7_4,sameR,sid_1x1,cxy(8,4),txy(12,6),no_child). 
lhs(in0_black0_9_6_10_7,sameR,sid_1x1,cxy(11,8),txy(18,12),no_child). 
lhs(in0_silver4_8_8_10_9,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(9,9),txy(10,8),1). 
lhs(in0_black0_1_9_3_10,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(2,10),txy(1,9),no_child). 
lhs(in0_silver5_2_7_4_9,rot90,s11385418,cxy(3,8),txy(3,8),2). 
lhs(in0_silver5_4_8_6_10,sameR,sid_t180_3x2,cxy(5,9),txy(5,9),1). 
lhs(in0_black0_2_4_4_6,sameR,sid_1x1,cxy(3,5),txy(5,9),no_child). 
lhs(in0_silver6_1_1_2_5,rot270,sid_t180_3x2,cxy(1,3),txy(1,3),no_child). 
lhs(in0_black0_6_8_10_10,rot90,s10925715,cxy(8,9),txy(8,9),no_child). 
lhs(in0_black0_7_1_10_5,sameR,s7691757,cxy(9,3),txy(7,5),no_child). 
lhs(in0_silver1_1_8_1_8,sameR,sid_1x1,cxy(1,8),txy(1,8),no_child). 
lhs(in0_black0_2_8_2_8,sameR,sid_1x1,cxy(2,8),txy(2,8),no_child). 
lhs(in0_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),no_child). 
lhs(in0_black0_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1),no_child). 
lhs(in0_silver1_5_1_5_1,sameR,sid_1x1,cxy(5,1),txy(5,1),no_child). 
lhs(in0_black0_5_2_5_2,sameR,sid_1x1,cxy(5,2),txy(5,2),no_child). 
lhs(in0_black0_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),no_child). 
lhs(in0_black0_6_1_6_1,sameR,sid_1x1,cxy(6,1),txy(6,1),no_child). 
lhs(in0_silver1_7_8_7_8,sameR,sid_1x1,cxy(7,8),txy(7,8),no_child). 
lhs(in0_silver1_9_1_9_1,sameR,sid_1x1,cxy(9,1),txy(9,1),no_child). 
lhs(in0_silver1_10_5_10_5,sameR,sid_1x1,cxy(10,5),txy(10,5),no_child). 
:-end_bg. 
:-begin_in_pos. 
pos(rhs(out0_silver2_1_9_1_10,rot90,sid_2x1,cxy(1,10),txy(1,10))). 
pos(rhs(out0_silver2_1_1_2_1,sameR,sid_2x1,cxy(2,1),txy(2,1))). 
pos(rhs(out0_silver2_1_3_2_3,sameR,sid_2x1,cxy(2,3),txy(2,3))). 
pos(rhs(out0_blue4_7_6_8_7,sameR,sid_1x1,cxy(8,7),txy(7,6))). 
pos(rhs(out0_silver3_9_2_10_3,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(9,2),txy(9,2))). 
pos(rhs(out0_silver3_3_2_4_3,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(4,2),txy(4,2))). 
pos(rhs(out0_silver4_9_5_10_7,flipDHV,sid_tetris_Triple_East_and_North_2x2,cxy(10,6),txy(9,5))). 
pos(rhs(out0_silver3_6_9_8_10,flipD,sid_tetris_Triple_East_and_North_2x2,cxy(7,10),txy(6,9))). 
pos(rhs(out0_silver5_7_8_10_9,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(9,8),txy(10,9))). 
pos(rhs(out0_blue9_3_8_5_10,sameR,sid_1x1,cxy(4,9),txy(4,9))). 
pos(rhs(out0_blue9_5_1_7_3,sameR,sid_1x1,cxy(6,2),txy(6,2))). 
pos(rhs(out0_silver5_1_6_3_8,rot180,s11869152,cxy(2,7),txy(1,6))). 
pos(rhs(out0_silver7_5_4_8_6,rot180,s9374370,cxy(6,5),txy(8,4))). 
pos(rhs(out0_silver1_2_5_2_5,sameR,sid_1x1,cxy(2,5),txy(2,5))). 
pos(rhs(out0_silver1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5))). 
pos(rhs(out0_silver1_5_7_5_7,sameR,sid_1x1,cxy(5,7),txy(5,7))). 
pos(rhs(out0_silver1_8_1_8_1,sameR,sid_1x1,cxy(8,1),txy(8,1))). 
pos(rhs(out0_silver1_10_4_10_4,sameR,sid_1x1,cxy(10,4),txy(10,4))). 
pos(rhs(out1_blue4_1_7_2_8,sameR,sid_1x1,cxy(2,8),txy(1,7))). 
pos(rhs(out1_silver2_8_9_9_10,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(9,10),txy(9,10))). 
pos(rhs(out1_silver2_9_6_10_7,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(10,7),txy(10,7))). 
pos(rhs(out1_silver3_3_8_4_9,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(3,9),txy(3,9))). 
pos(rhs(out1_silver3_1_1_2_2,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(2,2),txy(2,2))). 
pos(rhs(out1_black0_1_5_2_6,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(1,6),txy(1,6))). 
pos(rhs(out1_black0_1_1_2_2,sameR,sid_1x1,cxy(2,2),txy(1,1))). 
pos(rhs(out1_black0_1_3_2_4,sameR,sid_1x1,cxy(2,4),txy(1,3))). 
pos(rhs(out1_black0_3_1_4_2,sameR,sid_1x1,cxy(4,2),txy(3,1))). 
pos(rhs(out1_black0_4_5_5_6,sameR,sid_1x1,cxy(5,6),txy(4,5))). 
pos(rhs(out1_black0_7_4_8_5,sameR,sid_1x1,cxy(8,5),txy(7,4))). 
pos(rhs(out1_silver4_4_3_6_4,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(5,4),txy(4,3))). 
pos(rhs(out1_silver3_5_1_7_2,flipD,sid_tetris_Triple_East_and_North_2x2,cxy(6,2),txy(5,1))). 
pos(rhs(out1_blue6_1_3_3_5,rot180,s12760807,cxy(2,4),txy(1,3))). 
pos(rhs(out1_silver6_8_2_10_5,rot180,sid_plus_3x3,cxy(9,3),txy(9,3))). 
pos(rhs(out1_silver10_5_6_8_9,rot90,s3516597,cxy(7,7),txy(7,7))). 
pos(rhs(out1_silver5_1_4_4_7,sameR,s3071927,cxy(3,6),txy(3,6))). 
pos(rhs(out1_black0_5_1_10_3,rot90,s15312845,cxy(7,2),txy(10,1))). 
pos(rhs(out1_black0_1_4_10_10,rot90,s4206902,cxy(6,8),txy(10,4))). 
pos(rhs(out1_blue35_3_1_10_9,flipDHV,s647584,cxy(6,5),txy(3,1))). 
pos(rhs(out1_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1))). 
pos(rhs(out1_silver1_1_9_1_9,sameR,sid_1x1,cxy(1,9),txy(1,9))). 
pos(rhs(out1_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3))). 
pos(rhs(out1_black0_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5))). 
pos(rhs(out1_black0_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4))). 
pos(rhs(out1_black0_5_7_5_7,sameR,sid_1x1,cxy(5,7),txy(5,7))). 
pos(rhs(out1_black0_6_5_6_5,sameR,sid_1x1,cxy(6,5),txy(6,5))). 
pos(rhs(out2_silver2_10_1_10_2,rot90,sid_2x1,cxy(10,2),txy(10,2))). 
pos(rhs(out2_silver2_2_5_3_5,sameR,sid_2x1,cxy(3,5),txy(3,5))). 
pos(rhs(out2_black0_7_10_8_10,rot90,sid_1x2,cxy(8,10),txy(8,10))). 
pos(rhs(out2_blue4_1_3_2_4,sameR,sid_1x1,cxy(2,4),txy(1,3))). 
pos(rhs(out2_blue4_4_1_5_2,sameR,sid_1x1,cxy(5,2),txy(4,1))). 
pos(rhs(out2_blue4_9_6_10_7,sameR,sid_1x1,cxy(10,7),txy(9,6))). 
pos(rhs(out2_silver3_5_2_6_4,flipH,sid_tetris_Triple_East_and_North_2x2,cxy(5,3),txy(6,2))). 
pos(rhs(out2_silver3_2_1_3_3,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(3,2),txy(3,2))). 
pos(rhs(out2_blue9_1_8_3_10,sameR,sid_1x1,cxy(2,9),txy(2,9))). 
pos(rhs(out2_blue9_7_2_9_4,sameR,sid_1x1,cxy(8,3),txy(8,3))). 
pos(rhs(out2_silver7_6_5_8_7,rot270,sid_u_3x2,cxy(7,6),txy(7,6))). 
pos(rhs(out2_silver7_1_6_4_8,flipV,s12482970,cxy(3,7),txy(1,6))). 
pos(rhs(out2_silver9_5_8_10_10,flipD,s15553490,cxy(8,9),txy(6,10))). 
pos(rhs(out2_silver1_8_1_8_1,sameR,sid_1x1,cxy(8,1),txy(8,1))). 
pos(rhs(out2_silver1_10_5_10_5,sameR,sid_1x1,cxy(10,5),txy(10,5))). 
pos(rhs(out2_black0_10_10_10_10,sameR,sid_1x1,cxy(10,10),txy(10,10))). 
pos(rhs(out0_silver2_5_5_6_5,sameR,sid_2x1,cxy(6,5),txy(6,5))). 
pos(rhs(out0_black0_8_8_9_8,rot90,sid_1x2,cxy(9,8),txy(9,8))). 
pos(rhs(out0_black0_4_8_4_9,sameR,sid_1x2,cxy(4,9),txy(4,9))). 
pos(rhs(out0_blue4_2_1_3_2,sameR,sid_1x1,cxy(3,2),txy(2,1))). 
pos(rhs(out0_blue4_6_3_7_4,sameR,sid_1x1,cxy(7,4),txy(6,3))). 
pos(rhs(out0_blue4_9_6_10_7,sameR,sid_1x1,cxy(10,7),txy(9,6))). 
pos(rhs(out0_silver3_8_3_9_4,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(8,3),txy(8,3))). 
pos(rhs(out0_silver3_4_2_5_3,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(4,3),txy(4,3))). 
pos(rhs(out0_silver3_6_1_7_2,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(7,2),txy(7,2))). 
pos(rhs(out0_silver5_7_6_8_8,flipDHV,sid_tetris_Z_270_Rotated_2x3,cxy(7,7),txy(8,6))). 
pos(rhs(out0_silver4_8_8_10_9,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(9,9),txy(10,8))). 
pos(rhs(out0_black0_1_9_3_10,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(2,10),txy(1,9))). 
pos(rhs(out0_black0_1_6_2_8,sameR,s13770256,cxy(2,7),txy(1,6))). 
pos(rhs(out0_silver5_2_7_4_9,rot90,s11385418,cxy(3,8),txy(3,8))). 
pos(rhs(out0_silver5_4_8_6_10,sameR,sid_t180_3x2,cxy(5,9),txy(5,9))). 
pos(rhs(out0_silver6_1_1_2_5,rot270,sid_t180_3x2,cxy(1,3),txy(1,3))). 
pos(rhs(out0_black0_6_8_10_10,rot90,s10925715,cxy(8,9),txy(8,9))). 
pos(rhs(out0_blue13_2_4_6_7,rot180,s12561063,cxy(4,5),txy(6,7))). 
pos(rhs(out0_black0_7_1_10_5,sameR,s7691757,cxy(9,3),txy(7,5))). 
pos(rhs(out0_silver1_1_8_1_8,sameR,sid_1x1,cxy(1,8),txy(1,8))). 
pos(rhs(out0_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3))). 
pos(rhs(out0_black0_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1))). 
pos(rhs(out0_silver1_5_1_5_1,sameR,sid_1x1,cxy(5,1),txy(5,1))). 
pos(rhs(out0_black0_5_2_5_2,sameR,sid_1x1,cxy(5,2),txy(5,2))). 
pos(rhs(out0_black0_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4))). 
pos(rhs(out0_black0_6_1_6_1,sameR,sid_1x1,cxy(6,1),txy(6,1))). 
pos(rhs(out0_silver1_9_1_9_1,sameR,sid_1x1,cxy(9,1),txy(9,1))). 
pos(rhs(out0_silver1_10_5_10_5,sameR,sid_1x1,cxy(10,5),txy(10,5))). 
:-end_in_pos. 
