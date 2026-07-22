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
lhs(in0_green1_6_6_6_6,sameR,sid_11,center(6,6),tip_loc(6,6),no_child). 
lhs(in0_red1_5_6_5_6,sameR,sid_11,center(5,6),tip_loc(5,6),no_child). 
lhs(in0_red1_6_5_6_5,sameR,sid_11,center(6,5),tip_loc(6,5),no_child). 
lhs(in0_green1_5_5_5_5,sameR,sid_11,center(5,5),tip_loc(5,5),no_child). 
lhs(in0_blue1_4_5_4_5,sameR,sid_11,center(4,5),tip_loc(4,5),no_child). 
lhs(in0_blue1_5_4_5_4,sameR,sid_11,center(5,4),tip_loc(5,4),no_child). 
lhs(in0_yellow1_4_4_4_4,sameR,sid_11,center(4,4),tip_loc(4,4),no_child). 
lhs(in0_blue1_3_4_3_4,sameR,sid_11,center(3,4),tip_loc(3,4),no_child). 
lhs(in0_blue1_4_3_4_3,sameR,sid_11,center(4,3),tip_loc(4,3),no_child). 
lhs(in0_green1_3_3_3_3,sameR,sid_11,center(3,3),tip_loc(3,3),no_child). 
lhs(in0_red1_2_3_2_3,sameR,sid_11,center(2,3),tip_loc(2,3),no_child). 
lhs(in0_red1_3_2_3_2,sameR,sid_11,center(3,2),tip_loc(3,2),no_child). 
lhs(in0_green1_2_2_2_2,sameR,sid_11,center(2,2),tip_loc(2,2),no_child). 
lhs(in0_blue1_1_2_1_2,sameR,sid_11,center(1,2),tip_loc(1,2),no_child). 
lhs(in0_blue1_2_1_2_1,sameR,sid_11,center(2,1),tip_loc(2,1),no_child). 
lhs(in0_yellow1_1_1_1_1,sameR,sid_11,center(1,1),tip_loc(1,1),no_child). 
lhs(in1_red1_5_5_5_5,sameR,sid_11,center(5,5),tip_loc(5,5),no_child). 
lhs(in1_red1_4_4_4_4,sameR,sid_11,center(4,4),tip_loc(4,4),no_child). 
lhs(in1_silver1_3_4_3_4,sameR,sid_11,center(3,4),tip_loc(3,4),no_child). 
lhs(in1_silver1_4_3_4_3,sameR,sid_11,center(4,3),tip_loc(4,3),no_child). 
lhs(in1_red1_3_3_3_3,sameR,sid_11,center(3,3),tip_loc(3,3),no_child). 
lhs(in1_red1_2_2_2_2,sameR,sid_11,center(2,2),tip_loc(2,2),no_child). 
lhs(in1_silver1_1_2_1_2,sameR,sid_11,center(1,2),tip_loc(1,2),no_child). 
lhs(in1_silver1_2_1_2_1,sameR,sid_11,center(2,1),tip_loc(2,1),no_child). 
lhs(in1_red1_1_1_1_1,sameR,sid_11,center(1,1),tip_loc(1,1),no_child). 
lhs(in2_purple1_1_8_1_8,sameR,sid_11,center(1,8),tip_loc(1,8),no_child). 
lhs(in2_blue1_2_7_2_7,sameR,sid_11,center(2,7),tip_loc(2,7),no_child). 
lhs(in2_purple1_3_6_3_6,sameR,sid_11,center(3,6),tip_loc(3,6),no_child). 
lhs(in2_blue1_4_5_4_5,sameR,sid_11,center(4,5),tip_loc(4,5),no_child). 
lhs(in2_purple1_5_4_5_4,sameR,sid_11,center(5,4),tip_loc(5,4),no_child). 
lhs(in2_blue1_6_3_6_3,sameR,sid_11,center(6,3),tip_loc(6,3),no_child). 
lhs(in2_purple1_7_2_7_2,sameR,sid_11,center(7,2),tip_loc(7,2),no_child). 
lhs(in2_blue1_8_1_8_1,sameR,sid_11,center(8,1),tip_loc(8,1),no_child). 
lhs(in0_cyan1_1_10_1_10,sameR,sid_11,center(1,10),tip_loc(1,10),no_child). 
lhs(in0_yellow1_3_9_3_9,sameR,sid_11,center(3,9),tip_loc(3,9),no_child). 
lhs(in0_cyan1_3_8_3_8,sameR,sid_11,center(3,8),tip_loc(3,8),no_child). 
lhs(in0_yellow1_2_8_2_8,sameR,sid_11,center(2,8),tip_loc(2,8),no_child). 
lhs(in0_yellow1_5_7_5_7,sameR,sid_11,center(5,7),tip_loc(5,7),no_child). 
lhs(in0_cyan1_5_6_5_6,sameR,sid_11,center(5,6),tip_loc(5,6),no_child). 
lhs(in0_yellow1_4_6_4_6,sameR,sid_11,center(4,6),tip_loc(4,6),no_child). 
lhs(in0_yellow1_7_5_7_5,sameR,sid_11,center(7,5),tip_loc(7,5),no_child). 
lhs(in0_cyan1_7_4_7_4,sameR,sid_11,center(7,4),tip_loc(7,4),no_child). 
lhs(in0_yellow1_6_4_6_4,sameR,sid_11,center(6,4),tip_loc(6,4),no_child). 
lhs(in0_yellow1_9_3_9_3,sameR,sid_11,center(9,3),tip_loc(9,3),no_child). 
lhs(in0_cyan1_9_2_9_2,sameR,sid_11,center(9,2),tip_loc(9,2),no_child). 
lhs(in0_yellow1_8_2_8_2,sameR,sid_11,center(8,2),tip_loc(8,2),no_child). 
lhs(in0_purple3_1_9_2_10,rot90,s11261491,center(2,9),tip_loc(2,9),1). 
lhs(in0_purple3_3_7_4_8,rot90,s11261491,center(4,7),tip_loc(4,7),1). 
lhs(in0_purple3_5_5_6_6,rot90,s11261491,center(6,5),tip_loc(6,5),1). 
lhs(in0_purple3_7_3_8_4,rot90,s11261491,center(8,3),tip_loc(8,3),1). 
lhs(in0_purple3_9_1_10_2,rot90,s11261491,center(10,1),tip_loc(10,1),1). 
:-end_bg. 
:-begin_in_pos. 
pos(rhs(out0_yellow1_10_10_10_10,sameR,sid_11,center(10,10),tip_loc(10,10))). 
pos(rhs(out0_yellow1_7_7_7_7,sameR,sid_11,center(7,7),tip_loc(7,7))). 
pos(rhs(out0_yellow1_4_4_4_4,sameR,sid_11,center(4,4),tip_loc(4,4))). 
pos(rhs(out0_yellow1_1_1_1_1,sameR,sid_11,center(1,1),tip_loc(1,1))). 
pos(rhs(out0_red2_11_11_12_12,rot90,s1961242,center(12,12),tip_loc(12,12))). 
pos(rhs(out0_blue4_9_9_11_11,sameR,s4259372,center(10,10),tip_loc(10,10))). 
pos(rhs(out0_red2_8_8_9_9,rot90,s1961242,center(9,9),tip_loc(9,9))). 
pos(rhs(out0_blue4_6_6_8_8,sameR,s4259372,center(7,7),tip_loc(7,7))). 
pos(rhs(out0_red2_5_5_6_6,rot90,s1961242,center(6,6),tip_loc(6,6))). 
pos(rhs(out0_blue4_3_3_5_5,sameR,s4259372,center(4,4),tip_loc(4,4))). 
pos(rhs(out0_red2_2_2_3_3,rot90,s1961242,center(3,3),tip_loc(3,3))). 
pos(rhs(out0_blue2_1_1_2_2,rot90,s1961242,center(2,2),tip_loc(2,2))). 
pos(rhs(out1_red1_10_10_10_10,sameR,sid_11,center(10,10),tip_loc(10,10))). 
pos(rhs(out1_silver1_9_10_9_10,sameR,sid_11,center(9,10),tip_loc(9,10))). 
pos(rhs(out1_silver1_10_9_10_9,sameR,sid_11,center(10,9),tip_loc(10,9))). 
pos(rhs(out1_red1_9_9_9_9,sameR,sid_11,center(9,9),tip_loc(9,9))). 
pos(rhs(out1_red1_8_8_8_8,sameR,sid_11,center(8,8),tip_loc(8,8))). 
pos(rhs(out1_silver1_7_8_7_8,sameR,sid_11,center(7,8),tip_loc(7,8))). 
pos(rhs(out1_silver1_8_7_8_7,sameR,sid_11,center(8,7),tip_loc(8,7))). 
pos(rhs(out1_red1_7_7_7_7,sameR,sid_11,center(7,7),tip_loc(7,7))). 
pos(rhs(out1_red1_6_6_6_6,sameR,sid_11,center(6,6),tip_loc(6,6))). 
pos(rhs(out1_silver1_5_6_5_6,sameR,sid_11,center(5,6),tip_loc(5,6))). 
pos(rhs(out1_silver1_6_5_6_5,sameR,sid_11,center(6,5),tip_loc(6,5))). 
pos(rhs(out1_red1_5_5_5_5,sameR,sid_11,center(5,5),tip_loc(5,5))). 
pos(rhs(out1_red1_4_4_4_4,sameR,sid_11,center(4,4),tip_loc(4,4))). 
pos(rhs(out1_silver1_3_4_3_4,sameR,sid_11,center(3,4),tip_loc(3,4))). 
pos(rhs(out1_silver1_4_3_4_3,sameR,sid_11,center(4,3),tip_loc(4,3))). 
pos(rhs(out1_red1_3_3_3_3,sameR,sid_11,center(3,3),tip_loc(3,3))). 
pos(rhs(out1_red1_2_2_2_2,sameR,sid_11,center(2,2),tip_loc(2,2))). 
pos(rhs(out1_silver1_1_2_1_2,sameR,sid_11,center(1,2),tip_loc(1,2))). 
pos(rhs(out1_silver1_2_1_2_1,sameR,sid_11,center(2,1),tip_loc(2,1))). 
pos(rhs(out1_red1_1_1_1_1,sameR,sid_11,center(1,1),tip_loc(1,1))). 
pos(rhs(out2_purple1_1_16_1_16,sameR,sid_11,center(1,16),tip_loc(1,16))). 
pos(rhs(out2_blue1_2_15_2_15,sameR,sid_11,center(2,15),tip_loc(2,15))). 
pos(rhs(out2_purple1_3_14_3_14,sameR,sid_11,center(3,14),tip_loc(3,14))). 
pos(rhs(out2_blue1_4_13_4_13,sameR,sid_11,center(4,13),tip_loc(4,13))). 
pos(rhs(out2_purple1_5_12_5_12,sameR,sid_11,center(5,12),tip_loc(5,12))). 
pos(rhs(out2_blue1_6_11_6_11,sameR,sid_11,center(6,11),tip_loc(6,11))). 
pos(rhs(out2_purple1_7_10_7_10,sameR,sid_11,center(7,10),tip_loc(7,10))). 
pos(rhs(out2_blue1_8_9_8_9,sameR,sid_11,center(8,9),tip_loc(8,9))). 
pos(rhs(out2_purple1_9_8_9_8,sameR,sid_11,center(9,8),tip_loc(9,8))). 
pos(rhs(out2_blue1_10_7_10_7,sameR,sid_11,center(10,7),tip_loc(10,7))). 
pos(rhs(out2_purple1_11_6_11_6,sameR,sid_11,center(11,6),tip_loc(11,6))). 
pos(rhs(out2_blue1_12_5_12_5,sameR,sid_11,center(12,5),tip_loc(12,5))). 
pos(rhs(out2_purple1_13_4_13_4,sameR,sid_11,center(13,4),tip_loc(13,4))). 
pos(rhs(out2_blue1_14_3_14_3,sameR,sid_11,center(14,3),tip_loc(14,3))). 
pos(rhs(out2_purple1_15_2_15_2,sameR,sid_11,center(15,2),tip_loc(15,2))). 
pos(rhs(out2_blue1_16_1_16_1,sameR,sid_11,center(16,1),tip_loc(16,1))). 
pos(rhs(out0_cyan1_1_20_1_20,sameR,sid_11,center(1,20),tip_loc(1,20))). 
pos(rhs(out0_yellow1_3_19_3_19,sameR,sid_11,center(3,19),tip_loc(3,19))). 
pos(rhs(out0_cyan1_3_18_3_18,sameR,sid_11,center(3,18),tip_loc(3,18))). 
pos(rhs(out0_yellow1_2_18_2_18,sameR,sid_11,center(2,18),tip_loc(2,18))). 
pos(rhs(out0_yellow1_5_17_5_17,sameR,sid_11,center(5,17),tip_loc(5,17))). 
pos(rhs(out0_cyan1_5_16_5_16,sameR,sid_11,center(5,16),tip_loc(5,16))). 
pos(rhs(out0_yellow1_4_16_4_16,sameR,sid_11,center(4,16),tip_loc(4,16))). 
pos(rhs(out0_yellow1_7_15_7_15,sameR,sid_11,center(7,15),tip_loc(7,15))). 
pos(rhs(out0_cyan1_7_14_7_14,sameR,sid_11,center(7,14),tip_loc(7,14))). 
pos(rhs(out0_yellow1_6_14_6_14,sameR,sid_11,center(6,14),tip_loc(6,14))). 
pos(rhs(out0_yellow1_9_13_9_13,sameR,sid_11,center(9,13),tip_loc(9,13))). 
pos(rhs(out0_cyan1_9_12_9_12,sameR,sid_11,center(9,12),tip_loc(9,12))). 
pos(rhs(out0_yellow1_8_12_8_12,sameR,sid_11,center(8,12),tip_loc(8,12))). 
pos(rhs(out0_yellow1_11_11_11_11,sameR,sid_11,center(11,11),tip_loc(11,11))). 
pos(rhs(out0_cyan1_11_10_11_10,sameR,sid_11,center(11,10),tip_loc(11,10))). 
pos(rhs(out0_yellow1_10_10_10_10,sameR,sid_11,center(10,10),tip_loc(10,10))). 
pos(rhs(out0_yellow1_13_9_13_9,sameR,sid_11,center(13,9),tip_loc(13,9))). 
pos(rhs(out0_cyan1_13_8_13_8,sameR,sid_11,center(13,8),tip_loc(13,8))). 
pos(rhs(out0_yellow1_12_8_12_8,sameR,sid_11,center(12,8),tip_loc(12,8))). 
pos(rhs(out0_yellow1_15_7_15_7,sameR,sid_11,center(15,7),tip_loc(15,7))). 
pos(rhs(out0_cyan1_15_6_15_6,sameR,sid_11,center(15,6),tip_loc(15,6))). 
pos(rhs(out0_yellow1_14_6_14_6,sameR,sid_11,center(14,6),tip_loc(14,6))). 
pos(rhs(out0_yellow1_17_5_17_5,sameR,sid_11,center(17,5),tip_loc(17,5))). 
pos(rhs(out0_cyan1_17_4_17_4,sameR,sid_11,center(17,4),tip_loc(17,4))). 
pos(rhs(out0_yellow1_16_4_16_4,sameR,sid_11,center(16,4),tip_loc(16,4))). 
pos(rhs(out0_yellow1_19_3_19_3,sameR,sid_11,center(19,3),tip_loc(19,3))). 
pos(rhs(out0_cyan1_19_2_19_2,sameR,sid_11,center(19,2),tip_loc(19,2))). 
pos(rhs(out0_yellow1_18_2_18_2,sameR,sid_11,center(18,2),tip_loc(18,2))). 
pos(rhs(out0_purple3_1_19_2_20,rot90,s11261491,center(2,19),tip_loc(2,19))). 
pos(rhs(out0_purple3_3_17_4_18,rot90,s11261491,center(4,17),tip_loc(4,17))). 
pos(rhs(out0_purple3_5_15_6_16,rot90,s11261491,center(6,15),tip_loc(6,15))). 
pos(rhs(out0_purple3_7_13_8_14,rot90,s11261491,center(8,13),tip_loc(8,13))). 
pos(rhs(out0_purple3_9_11_10_12,rot90,s11261491,center(10,11),tip_loc(10,11))). 
pos(rhs(out0_purple3_11_9_12_10,rot90,s11261491,center(12,9),tip_loc(12,9))). 
pos(rhs(out0_purple3_13_7_14_8,rot90,s11261491,center(14,7),tip_loc(14,7))). 
pos(rhs(out0_purple3_15_5_16_6,rot90,s11261491,center(16,5),tip_loc(16,5))). 
pos(rhs(out0_purple3_17_3_18_4,rot90,s11261491,center(18,3),tip_loc(18,3))). 
pos(rhs(out0_purple3_19_1_20_2,rot90,s11261491,center(20,1),tip_loc(20,1))). 
:-end_in_pos. 
