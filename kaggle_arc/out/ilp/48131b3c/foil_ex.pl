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
lhs(in0_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),no_child). 
lhs(in0_black0_2_3_2_3,sameR,sid_1x1,cxy(2,3),txy(2,3),no_child). 
lhs(in0_black0_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),no_child). 
lhs(in0_black0_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),no_child). 
lhs(in0_black0_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1),no_child). 
lhs(in0_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),no_child). 
lhs(in0_cyan1_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2),no_child). 
lhs(in0_cyan1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),no_child). 
lhs(in0_cyan1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),no_child). 
lhs(in1_black0_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),no_child). 
lhs(in1_black0_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),no_child). 
lhs(in1_orange1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),no_child). 
lhs(in1_orange1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),no_child). 
lhs(in2_black0_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),no_child). 
lhs(in2_black0_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4),no_child). 
lhs(in2_black0_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4),no_child). 
lhs(in2_black0_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),no_child). 
lhs(in2_black0_2_3_2_3,sameR,sid_1x1,cxy(2,3),txy(2,3),no_child). 
lhs(in2_black0_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),no_child). 
lhs(in2_black0_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),no_child). 
lhs(in2_black0_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1),no_child). 
lhs(in2_black0_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1),no_child). 
lhs(in2_black0_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),no_child). 
lhs(in2_yellow1_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4),no_child). 
lhs(in2_yellow1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),no_child). 
lhs(in2_yellow4_2_2_4_3,rot180,sid_t180_3x2,cxy(3,2),txy(3,2),2). 
lhs(in0_black0_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),no_child). 
lhs(in0_black0_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4),no_child). 
lhs(in0_black0_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4),no_child). 
lhs(in0_black0_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),no_child). 
lhs(in0_black0_2_3_2_3,sameR,sid_1x1,cxy(2,3),txy(2,3),no_child). 
lhs(in0_black0_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),no_child). 
lhs(in0_black0_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2),no_child). 
lhs(in0_black0_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),no_child). 
lhs(in0_black0_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1),no_child). 
lhs(in0_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),no_child). 
lhs(in0_blue1_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4),no_child). 
lhs(in0_blue1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),no_child). 
lhs(in0_blue1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),no_child). 
lhs(in0_blue1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),no_child). 
lhs(in0_blue2_4_1_4_2,rot90,sid_2x1,cxy(4,2),txy(4,2),no_child). 
:-end_bg. 
:-begin_in_pos. 
pos(rhs(out0_black0_6_5_6_5,sameR,sid_1x1,cxy(6,5),txy(6,5))). 
pos(rhs(out0_black0_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5))). 
pos(rhs(out0_black0_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5))). 
pos(rhs(out0_black0_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5))). 
pos(rhs(out0_black0_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4))). 
pos(rhs(out0_black0_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4))). 
pos(rhs(out0_black0_6_2_6_2,sameR,sid_1x1,cxy(6,2),txy(6,2))). 
pos(rhs(out0_black0_4_2_4_2,sameR,sid_1x1,cxy(4,2),txy(4,2))). 
pos(rhs(out0_black0_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2))). 
pos(rhs(out0_black0_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2))). 
pos(rhs(out0_black0_5_1_5_1,sameR,sid_1x1,cxy(5,1),txy(5,1))). 
pos(rhs(out0_black0_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1))). 
pos(rhs(out0_cyan1_6_1_6_1,sameR,sid_1x1,cxy(6,1),txy(6,1))). 
pos(rhs(out0_cyan1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1))). 
pos(rhs(out0_cyan8_1_5_6_6,sameR,s7732729,cxy(4,6),txy(2,5))). 
pos(rhs(out0_cyan12_1_2_6_4,sameR,s7487866,cxy(4,3),txy(1,4))). 
pos(rhs(out0_cyan2_3_1_4_1,sameR,sid_2x1,cxy(4,1),txy(4,1))). 
pos(rhs(out1_black0_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4))). 
pos(rhs(out1_black0_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4))). 
pos(rhs(out1_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3))). 
pos(rhs(out1_black0_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3))). 
pos(rhs(out1_black0_4_2_4_2,sameR,sid_1x1,cxy(4,2),txy(4,2))). 
pos(rhs(out1_black0_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2))). 
pos(rhs(out1_black0_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1))). 
pos(rhs(out1_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1))). 
pos(rhs(out1_orange1_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4))). 
pos(rhs(out1_orange1_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4))). 
pos(rhs(out1_orange1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3))). 
pos(rhs(out1_orange1_2_3_2_3,sameR,sid_1x1,cxy(2,3),txy(2,3))). 
pos(rhs(out1_orange1_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2))). 
pos(rhs(out1_orange1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2))). 
pos(rhs(out1_orange1_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1))). 
pos(rhs(out1_orange1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1))). 
pos(rhs(out2_black0_6_8_6_8,sameR,sid_1x1,cxy(6,8),txy(6,8))). 
pos(rhs(out2_black0_2_8_2_8,sameR,sid_1x1,cxy(2,8),txy(2,8))). 
pos(rhs(out2_black0_7_7_7_7,sameR,sid_1x1,cxy(7,7),txy(7,7))). 
pos(rhs(out2_black0_3_7_3_7,sameR,sid_1x1,cxy(3,7),txy(3,7))). 
pos(rhs(out2_black0_8_6_8_6,sameR,sid_1x1,cxy(8,6),txy(8,6))). 
pos(rhs(out2_black0_7_6_7_6,sameR,sid_1x1,cxy(7,6),txy(7,6))). 
pos(rhs(out2_black0_6_6_6_6,sameR,sid_1x1,cxy(6,6),txy(6,6))). 
pos(rhs(out2_black0_4_6_4_6,sameR,sid_1x1,cxy(4,6),txy(4,6))). 
pos(rhs(out2_black0_3_6_3_6,sameR,sid_1x1,cxy(3,6),txy(3,6))). 
pos(rhs(out2_black0_2_6_2_6,sameR,sid_1x1,cxy(2,6),txy(2,6))). 
pos(rhs(out2_black0_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5))). 
pos(rhs(out2_black0_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5))). 
pos(rhs(out2_black0_6_4_6_4,sameR,sid_1x1,cxy(6,4),txy(6,4))). 
pos(rhs(out2_black0_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4))). 
pos(rhs(out2_black0_7_3_7_3,sameR,sid_1x1,cxy(7,3),txy(7,3))). 
pos(rhs(out2_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3))). 
pos(rhs(out2_black0_8_2_8_2,sameR,sid_1x1,cxy(8,2),txy(8,2))). 
pos(rhs(out2_black0_7_2_7_2,sameR,sid_1x1,cxy(7,2),txy(7,2))). 
pos(rhs(out2_black0_6_2_6_2,sameR,sid_1x1,cxy(6,2),txy(6,2))). 
pos(rhs(out2_black0_4_2_4_2,sameR,sid_1x1,cxy(4,2),txy(4,2))). 
pos(rhs(out2_black0_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2))). 
pos(rhs(out2_black0_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2))). 
pos(rhs(out2_black0_5_1_5_1,sameR,sid_1x1,cxy(5,1),txy(5,1))). 
pos(rhs(out2_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1))). 
pos(rhs(out2_yellow3_7_7_8_8,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(8,8),txy(8,8))). 
pos(rhs(out2_yellow7_3_6_6_8,flipH,s12927968,cxy(5,7),txy(3,8))). 
pos(rhs(out2_yellow4_1_6_2_8,rot270,sid_t180_3x2,cxy(1,7),txy(1,7))). 
pos(rhs(out2_yellow6_6_3_8_5,sameR,sid_RtTriagle_se_3x3,cxy(7,4),txy(7,4))). 
pos(rhs(out2_yellow10_2_2_6_5,flipH,s12927968,cxy(4,4),txy(4,4))). 
pos(rhs(out2_yellow4_1_2_2_4,rot270,sid_t180_3x2,cxy(1,3),txy(1,3))). 
pos(rhs(out2_yellow3_6_1_8_1,sameR,sid_2x1,cxy(7,1),txy(7,1))). 
pos(rhs(out2_yellow3_2_1_4_1,sameR,sid_2x1,cxy(3,1),txy(3,1))). 
pos(rhs(out0_black0_5_8_5_8,sameR,sid_1x1,cxy(5,8),txy(5,8))). 
pos(rhs(out0_black0_1_8_1_8,sameR,sid_1x1,cxy(1,8),txy(1,8))). 
pos(rhs(out0_black0_7_7_7_7,sameR,sid_1x1,cxy(7,7),txy(7,7))). 
pos(rhs(out0_black0_3_7_3_7,sameR,sid_1x1,cxy(3,7),txy(3,7))). 
pos(rhs(out0_black0_8_6_8_6,sameR,sid_1x1,cxy(8,6),txy(8,6))). 
pos(rhs(out0_black0_5_6_5_6,sameR,sid_1x1,cxy(5,6),txy(5,6))). 
pos(rhs(out0_black0_4_6_4_6,sameR,sid_1x1,cxy(4,6),txy(4,6))). 
pos(rhs(out0_black0_1_6_1_6,sameR,sid_1x1,cxy(1,6),txy(1,6))). 
pos(rhs(out0_black0_8_5_8_5,sameR,sid_1x1,cxy(8,5),txy(8,5))). 
pos(rhs(out0_black0_6_5_6_5,sameR,sid_1x1,cxy(6,5),txy(6,5))). 
pos(rhs(out0_black0_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5))). 
pos(rhs(out0_black0_2_5_2_5,sameR,sid_1x1,cxy(2,5),txy(2,5))). 
pos(rhs(out0_black0_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4))). 
pos(rhs(out0_black0_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4))). 
pos(rhs(out0_black0_7_3_7_3,sameR,sid_1x1,cxy(7,3),txy(7,3))). 
pos(rhs(out0_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3))). 
pos(rhs(out0_black0_8_2_8_2,sameR,sid_1x1,cxy(8,2),txy(8,2))). 
pos(rhs(out0_black0_5_2_5_2,sameR,sid_1x1,cxy(5,2),txy(5,2))). 
pos(rhs(out0_black0_4_2_4_2,sameR,sid_1x1,cxy(4,2),txy(4,2))). 
pos(rhs(out0_black0_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2))). 
pos(rhs(out0_black0_8_1_8_1,sameR,sid_1x1,cxy(8,1),txy(8,1))). 
pos(rhs(out0_black0_6_1_6_1,sameR,sid_1x1,cxy(6,1),txy(6,1))). 
pos(rhs(out0_black0_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1))). 
pos(rhs(out0_black0_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1))). 
pos(rhs(out0_blue1_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5))). 
pos(rhs(out0_blue1_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5))). 
pos(rhs(out0_blue1_5_1_5_1,sameR,sid_1x1,cxy(5,1),txy(5,1))). 
pos(rhs(out0_blue1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1))). 
pos(rhs(out0_blue36_1_1_8_8,sameR,s1389351,cxy(5,5),txy(5,5))). 
:-end_in_pos. 
