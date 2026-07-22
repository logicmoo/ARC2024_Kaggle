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
lhs(in0_silver1_1_8_1_8,sameR,sid_1x1,cxy(1,8),txy(1,8),no_child). 
lhs(in0_silver1_2_5_2_5,sameR,sid_1x1,cxy(2,5),txy(2,5),no_child). 
lhs(in0_silver1_2_11_2_11,sameR,sid_1x1,cxy(2,11),txy(2,11),no_child). 
lhs(in0_yellow1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),no_child). 
lhs(in0_silver1_5_6_5_6,sameR,sid_1x1,cxy(5,6),txy(5,6),no_child). 
lhs(in0_silver1_7_1_7_1,sameR,sid_1x1,cxy(7,1),txy(7,1),no_child). 
lhs(in0_yellow1_7_9_7_9,sameR,sid_1x1,cxy(7,9),txy(7,9),no_child). 
lhs(in0_silver1_9_4_9_4,sameR,sid_1x1,cxy(9,4),txy(9,4),no_child). 
lhs(in0_silver1_10_12_10_12,sameR,sid_1x1,cxy(10,12),txy(10,12),no_child). 
lhs(in1_silver1_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4),no_child). 
lhs(in1_yellow1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),no_child). 
lhs(in2_silver1_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2),no_child). 
lhs(in2_yellow1_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),no_child). 
lhs(in3_yellow1_5_6_5_6,sameR,sid_1x1,cxy(5,6),txy(5,6),no_child). 
lhs(in3_silver1_6_2_6_2,sameR,sid_1x1,cxy(6,2),txy(6,2),no_child). 
lhs(in0_silver1_2_20_2_20,sameR,sid_1x1,cxy(2,20),txy(2,20),no_child). 
lhs(in0_silver1_2_28_2_28,sameR,sid_1x1,cxy(2,28),txy(2,28),no_child). 
lhs(in0_silver1_4_12_4_12,sameR,sid_1x1,cxy(4,12),txy(4,12),no_child). 
lhs(in0_yellow1_6_26_6_26,sameR,sid_1x1,cxy(6,26),txy(6,26),no_child). 
lhs(in0_yellow1_7_6_7_6,sameR,sid_1x1,cxy(7,6),txy(7,6),no_child). 
lhs(in0_silver1_9_20_9_20,sameR,sid_1x1,cxy(9,20),txy(9,20),no_child). 
lhs(in0_silver1_11_16_11_16,sameR,sid_1x1,cxy(11,16),txy(11,16),no_child). 
lhs(in0_silver1_15_8_15_8,sameR,sid_1x1,cxy(15,8),txy(15,8),no_child). 
lhs(in0_silver1_15_20_15_20,sameR,sid_1x1,cxy(15,20),txy(15,20),no_child). 
lhs(in0_silver1_16_3_16_3,sameR,sid_1x1,cxy(16,3),txy(16,3),no_child). 
lhs(in0_yellow1_16_16_16_16,sameR,sid_1x1,cxy(16,16),txy(16,16),no_child). 
lhs(in0_silver1_16_28_16_28,sameR,sid_1x1,cxy(16,28),txy(16,28),no_child). 
lhs(in0_silver1_19_17_19_17,sameR,sid_1x1,cxy(19,17),txy(19,17),no_child). 
:-end_bg. 
:-begin_in_pos. 
pos(rhs(out0_red9_3_2_5_4,sameR,sid_1x1,cxy(4,3),txy(4,3))). 
pos(rhs(out0_red25_5_7_9_11,sameR,sid_1x1,cxy(7,9),txy(7,9))). 
pos(rhs(out0_silver1_1_8_1_8,sameR,sid_1x1,cxy(1,8),txy(1,8))). 
pos(rhs(out0_silver1_2_5_2_5,sameR,sid_1x1,cxy(2,5),txy(2,5))). 
pos(rhs(out0_silver1_2_11_2_11,sameR,sid_1x1,cxy(2,11),txy(2,11))). 
pos(rhs(out0_yellow1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3))). 
pos(rhs(out0_silver1_5_6_5_6,sameR,sid_1x1,cxy(5,6),txy(5,6))). 
pos(rhs(out0_silver1_7_1_7_1,sameR,sid_1x1,cxy(7,1),txy(7,1))). 
pos(rhs(out0_yellow1_7_9_7_9,sameR,sid_1x1,cxy(7,9),txy(7,9))). 
pos(rhs(out0_silver1_9_4_9_4,sameR,sid_1x1,cxy(9,4),txy(9,4))). 
pos(rhs(out0_silver1_10_12_10_12,sameR,sid_1x1,cxy(10,12),txy(10,12))). 
pos(rhs(out1_red25_3_2_7_6,sameR,sid_1x1,cxy(5,4),txy(5,4))). 
pos(rhs(out1_silver1_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4))). 
pos(rhs(out1_yellow1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4))). 
pos(rhs(out2_black0_3_3_5_5,sameR,sid_hollow_3x3,cxy(4,4),txy(4,4))). 
pos(rhs(out2_silver1_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2))). 
pos(rhs(out2_red1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3))). 
pos(rhs(out2_red1_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4))). 
pos(rhs(out2_red1_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5))). 
pos(rhs(out2_red1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3))). 
pos(rhs(out2_red1_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4))). 
pos(rhs(out2_red1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5))). 
pos(rhs(out2_red1_5_3_5_3,sameR,sid_1x1,cxy(5,3),txy(5,3))). 
pos(rhs(out2_red1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4))). 
pos(rhs(out2_red1_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5))). 
pos(rhs(out3_red49_2_3_8_9,sameR,sid_1x1,cxy(5,6),txy(5,6))). 
pos(rhs(out3_yellow1_5_6_5_6,sameR,sid_1x1,cxy(5,6),txy(5,6))). 
pos(rhs(out3_silver1_6_2_6_2,sameR,sid_1x1,cxy(6,2),txy(6,2))). 
pos(rhs(out0_red24_14_14_18_18,sameR,sid_hollow_3x3,cxy(16,16),txy(16,16))). 
pos(rhs(out0_red48_3_23_9_29,sameR,sid_hollow_3x3,cxy(6,26),txy(6,26))). 
pos(rhs(out0_red120_2_1_12_11,sameR,sid_hollow_3x3,cxy(7,6),txy(7,6))). 
pos(rhs(out0_silver1_2_20_2_20,sameR,sid_1x1,cxy(2,20),txy(2,20))). 
pos(rhs(out0_silver1_2_28_2_28,sameR,sid_1x1,cxy(2,28),txy(2,28))). 
pos(rhs(out0_silver1_4_12_4_12,sameR,sid_1x1,cxy(4,12),txy(4,12))). 
pos(rhs(out0_yellow1_6_26_6_26,sameR,sid_1x1,cxy(6,26),txy(6,26))). 
pos(rhs(out0_yellow1_7_6_7_6,sameR,sid_1x1,cxy(7,6),txy(7,6))). 
pos(rhs(out0_silver1_9_20_9_20,sameR,sid_1x1,cxy(9,20),txy(9,20))). 
pos(rhs(out0_silver1_11_16_11_16,sameR,sid_1x1,cxy(11,16),txy(11,16))). 
pos(rhs(out0_silver1_15_8_15_8,sameR,sid_1x1,cxy(15,8),txy(15,8))). 
pos(rhs(out0_silver1_15_20_15_20,sameR,sid_1x1,cxy(15,20),txy(15,20))). 
pos(rhs(out0_silver1_16_3_16_3,sameR,sid_1x1,cxy(16,3),txy(16,3))). 
pos(rhs(out0_yellow1_16_16_16_16,sameR,sid_1x1,cxy(16,16),txy(16,16))). 
pos(rhs(out0_silver1_16_28_16_28,sameR,sid_1x1,cxy(16,28),txy(16,28))). 
pos(rhs(out0_silver1_19_17_19_17,sameR,sid_1x1,cxy(19,17),txy(19,17))). 
:-end_in_pos. 
