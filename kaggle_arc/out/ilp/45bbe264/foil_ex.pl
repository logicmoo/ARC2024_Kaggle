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
lhs(in0_black0_4_2_6_4,sameR,sid_hollow_3x3,cxy(5,3),txy(9,5),no_child). 
lhs(in0_black0_10_9_12_11,sameR,sid_hollow_3x3,cxy(12,11),txy(21,19),no_child). 
lhs(in0_cyan1_5_3_5_3,sameR,sid_1x1,cxy(5,3),txy(5,3),no_child). 
lhs(in0_silver1_11_10_11_10,sameR,sid_1x1,cxy(11,10),txy(11,10),no_child). 
lhs(in1_black0_3_10_5_12,sameR,sid_hollow_3x3,cxy(4,12),txy(7,21),no_child). 
lhs(in1_black0_9_5_11_7,sameR,sid_hollow_3x3,cxy(11,7),txy(19,11),no_child). 
lhs(in1_yellow1_4_11_4_11,sameR,sid_1x1,cxy(4,11),txy(4,11),no_child). 
lhs(in1_green1_10_6_10_6,sameR,sid_1x1,cxy(10,6),txy(10,6),no_child). 
lhs(in2_black0_2_4_4_6,sameR,sid_hollow_3x3,cxy(3,5),txy(5,9),no_child). 
lhs(in2_black0_7_11_9_13,sameR,sid_hollow_3x3,cxy(9,13),txy(15,23),no_child). 
lhs(in2_black0_11_2_13_4,sameR,sid_hollow_3x3,cxy(13,3),txy(23,5),no_child). 
lhs(in2_silver1_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5),no_child). 
lhs(in2_orange1_8_12_8_12,sameR,sid_1x1,cxy(8,12),txy(8,12),no_child). 
lhs(in2_green1_12_3_12_3,sameR,sid_1x1,cxy(12,3),txy(12,3),no_child). 
lhs(in0_cyan1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),no_child). 
lhs(in0_blue1_7_13_7_13,sameR,sid_1x1,cxy(7,13),txy(7,13),no_child). 
lhs(in0_yellow1_11_7_11_7,sameR,sid_1x1,cxy(11,7),txy(11,7),no_child). 
:-end_bg. 
:-begin_in_pos. 
pos(rhs(out0_silver2_11_1_11_2,rot90,sid_2x1,cxy(11,2),txy(11,2))). 
pos(rhs(out0_black0_5_1_5_2,sameR,sid_1x2,cxy(5,2),txy(5,2))). 
pos(rhs(out0_silver4_1_10_4_10,sameR,sid_2x1,cxy(3,10),txy(3,10))). 
pos(rhs(out0_black0_1_3_4_3,rot90,sid_1x2,cxy(3,3),txy(3,3))). 
pos(rhs(out0_cyan5_12_3_16_3,sameR,sid_2x1,cxy(14,3),txy(14,3))). 
pos(rhs(out0_black0_12_10_16_10,rot90,sid_1x2,cxy(14,10),txy(14,10))). 
pos(rhs(out0_cyan6_5_11_5_16,rot90,sid_2x1,cxy(5,14),txy(5,14))). 
pos(rhs(out0_black0_11_11_11_16,sameR,sid_1x2,cxy(11,14),txy(11,14))). 
pos(rhs(out0_black0_1_1_4_2,rot90,sid_1x2,cxy(3,2),txy(1,1))). 
pos(rhs(out0_black0_6_1_10_2,rot90,sid_1x2,cxy(8,2),txy(8,2))). 
pos(rhs(out0_black0_12_1_16_2,rot90,sid_1x2,cxy(14,2),txy(14,2))). 
pos(rhs(out0_black0_1_4_4_9,sameR,sid_1x2,cxy(3,7),txy(1,4))). 
pos(rhs(out0_black0_1_11_4_16,sameR,sid_1x2,cxy(3,14),txy(1,11))). 
pos(rhs(out0_black0_6_4_10_9,sameR,sid_1x2,cxy(8,7),txy(8,7))). 
pos(rhs(out0_black0_6_11_10_16,sameR,sid_1x2,cxy(8,14),txy(8,14))). 
pos(rhs(out0_black0_12_4_16_9,sameR,sid_1x2,cxy(14,7),txy(14,7))). 
pos(rhs(out0_black0_12_11_16_16,sameR,sid_1x2,cxy(14,14),txy(14,14))). 
pos(rhs(out0_cyan18_1_1_10_9,flipDHV,sid_plus_3x3,cxy(5,4),txy(10,3))). 
pos(rhs(out0_black0_6_1_16_9,rot90,sid_plus_3x3,cxy(11,4),txy(11,4))). 
pos(rhs(out0_black0_1_4_10_16,sameR,sid_plus_3x3,cxy(5,10),txy(5,10))). 
pos(rhs(out0_silver23_6_4_16_16,sameR,sid_plus_3x3,cxy(11,10),txy(11,10))). 
pos(rhs(out0_cyan1_5_3_5_3,sameR,sid_1x1,cxy(5,3),txy(5,3))). 
pos(rhs(out0_red1_5_10_5_10,sameR,sid_1x1,cxy(5,10),txy(5,10))). 
pos(rhs(out0_red1_11_3_11_3,sameR,sid_1x1,cxy(11,3),txy(11,3))). 
pos(rhs(out0_silver1_11_10_11_10,sameR,sid_1x1,cxy(11,10),txy(11,10))). 
pos(rhs(out1_green3_10_12_10_14,rot90,sid_2x1,cxy(10,13),txy(10,13))). 
pos(rhs(out1_green3_1_6_3_6,sameR,sid_2x1,cxy(2,6),txy(2,6))). 
pos(rhs(out1_black0_1_11_3_11,rot90,sid_1x2,cxy(2,11),txy(2,11))). 
pos(rhs(out1_black0_4_12_4_14,sameR,sid_1x2,cxy(4,13),txy(4,13))). 
pos(rhs(out1_yellow4_11_11_14_11,sameR,sid_2x1,cxy(13,11),txy(13,11))). 
pos(rhs(out1_black0_11_6_14_6,rot90,sid_1x2,cxy(13,6),txy(13,6))). 
pos(rhs(out1_yellow5_4_1_4_5,rot90,sid_2x1,cxy(4,3),txy(4,3))). 
pos(rhs(out1_black0_10_1_10_5,sameR,sid_1x2,cxy(10,3),txy(10,3))). 
pos(rhs(out1_black0_1_12_3_14,sameR,sid_1x1,cxy(2,13),txy(2,13))). 
pos(rhs(out1_black0_11_12_14_14,rot90,sid_1x2,cxy(13,13),txy(13,13))). 
pos(rhs(out1_black0_1_7_3_10,sameR,sid_1x2,cxy(2,9),txy(2,9))). 
pos(rhs(out1_black0_5_12_9_14,rot90,sid_1x2,cxy(7,13),txy(7,13))). 
pos(rhs(out1_black0_1_1_3_5,sameR,sid_1x2,cxy(2,3),txy(2,3))). 
pos(rhs(out1_black0_11_7_14_10,sameR,sid_1x1,cxy(13,9),txy(11,7))). 
pos(rhs(out1_black0_5_7_9_10,rot90,sid_1x2,cxy(7,9),txy(7,9))). 
pos(rhs(out1_black0_11_1_14_5,sameR,sid_1x2,cxy(13,3),txy(13,3))). 
pos(rhs(out1_black0_5_1_9_5,sameR,sid_1x1,cxy(7,3),txy(7,3))). 
pos(rhs(out1_yellow16_1_7_9_14,rot270,sid_plus_3x3,cxy(5,11),txy(4,7))). 
pos(rhs(out1_black0_5_7_14_14,rot90,sid_plus_3x3,cxy(10,11),txy(10,11))). 
pos(rhs(out1_black0_1_1_9_10,sameR,sid_plus_3x3,cxy(5,6),txy(4,1))). 
pos(rhs(out1_green19_5_1_14_10,sameR,sid_plus_3x3,cxy(10,6),txy(10,6))). 
pos(rhs(out1_red1_4_6_4_6,sameR,sid_1x1,cxy(4,6),txy(4,6))). 
pos(rhs(out1_yellow1_4_11_4_11,sameR,sid_1x1,cxy(4,11),txy(4,11))). 
pos(rhs(out1_green1_10_6_10_6,sameR,sid_1x1,cxy(10,6),txy(10,6))). 
pos(rhs(out1_red1_10_11_10_11,sameR,sid_1x1,cxy(10,11),txy(10,11))). 
pos(rhs(out2_silver2_3_1_3_2,rot90,sid_2x1,cxy(3,2),txy(3,2))). 
pos(rhs(out2_orange2_8_1_8_2,rot90,sid_2x1,cxy(8,2),txy(8,2))). 
pos(rhs(out2_green2_1_3_2_3,sameR,sid_2x1,cxy(2,3),txy(2,3))). 
pos(rhs(out2_orange2_1_12_2_12,sameR,sid_2x1,cxy(2,12),txy(2,12))). 
pos(rhs(out2_black0_1_4_2_4,rot90,sid_1x2,cxy(2,4),txy(2,4))). 
pos(rhs(out2_black0_1_5_2_5,rot90,sid_1x2,cxy(2,5),txy(2,5))). 
pos(rhs(out2_black0_1_13_2_13,rot90,sid_1x2,cxy(2,13),txy(2,13))). 
pos(rhs(out2_black0_12_1_12_2,sameR,sid_1x2,cxy(12,2),txy(12,2))). 
pos(rhs(out2_black0_13_1_13_2,sameR,sid_1x2,cxy(13,2),txy(13,2))). 
pos(rhs(out2_silver3_9_5_11_5,sameR,sid_2x1,cxy(10,5),txy(10,5))). 
pos(rhs(out2_black0_9_4_11_4,rot90,sid_1x2,cxy(10,4),txy(10,4))). 
pos(rhs(out2_black0_9_13_11_13,rot90,sid_1x2,cxy(10,13),txy(10,13))). 
pos(rhs(out2_green4_4_3_7_3,sameR,sid_2x1,cxy(6,3),txy(6,3))). 
pos(rhs(out2_black0_4_4_7_4,rot90,sid_1x2,cxy(6,4),txy(6,4))). 
pos(rhs(out2_black0_4_13_7_13,rot90,sid_1x2,cxy(6,13),txy(6,13))). 
pos(rhs(out2_black0_1_1_2_2,sameR,sid_1x1,cxy(2,2),txy(1,1))). 
pos(rhs(out2_green6_12_6_12_11,rot90,sid_2x1,cxy(12,9),txy(12,9))). 
pos(rhs(out2_black0_13_6_13_11,sameR,sid_1x2,cxy(13,9),txy(13,9))). 
pos(rhs(out2_black0_9_1_11_2,rot90,sid_1x2,cxy(10,2),txy(10,2))). 
pos(rhs(out2_black0_4_1_7_2,rot90,sid_1x2,cxy(6,2),txy(4,1))). 
pos(rhs(out2_black0_1_6_2_11,sameR,sid_1x2,cxy(2,9),txy(1,6))). 
pos(rhs(out2_black0_9_6_11_11,sameR,sid_1x2,cxy(10,9),txy(10,9))). 
pos(rhs(out2_green8_9_1_13_4,flipD,sid_plus_3x3,cxy(11,3),txy(12,1))). 
pos(rhs(out2_black0_4_6_7_11,sameR,sid_1x2,cxy(6,9),txy(4,6))). 
pos(rhs(out2_silver14_1_4_7_11,rot180,sid_plus_3x3,cxy(4,6),txy(3,11))). 
pos(rhs(out2_black0_1_6_7_13,sameR,sid_plus_3x3,cxy(4,11),txy(3,6))). 
pos(rhs(out2_orange15_4_6_11_13,sameR,sid_plus_3x3,cxy(8,11),txy(4,12))). 
pos(rhs(out2_red1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3))). 
pos(rhs(out2_silver1_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5))). 
pos(rhs(out2_red1_3_12_3_12,sameR,sid_1x1,cxy(3,12),txy(3,12))). 
pos(rhs(out2_silver1_3_13_3_13,sameR,sid_1x1,cxy(3,13),txy(3,13))). 
pos(rhs(out2_red1_8_3_8_3,sameR,sid_1x1,cxy(8,3),txy(8,3))). 
pos(rhs(out2_orange1_8_4_8_4,sameR,sid_1x1,cxy(8,4),txy(8,4))). 
pos(rhs(out2_red1_8_5_8_5,sameR,sid_1x1,cxy(8,5),txy(8,5))). 
pos(rhs(out2_orange1_8_12_8_12,sameR,sid_1x1,cxy(8,12),txy(8,12))). 
pos(rhs(out2_black0_8_13_8_13,sameR,sid_1x1,cxy(8,13),txy(8,13))). 
pos(rhs(out2_green1_12_3_12_3,sameR,sid_1x1,cxy(12,3),txy(12,3))). 
pos(rhs(out2_red1_12_5_12_5,sameR,sid_1x1,cxy(12,5),txy(12,5))). 
pos(rhs(out2_red1_12_12_12_12,sameR,sid_1x1,cxy(12,12),txy(12,12))). 
pos(rhs(out2_green1_12_13_12_13,sameR,sid_1x1,cxy(12,13),txy(12,13))). 
pos(rhs(out2_black0_13_3_13_3,sameR,sid_1x1,cxy(13,3),txy(13,3))). 
pos(rhs(out2_black0_13_4_13_4,sameR,sid_1x1,cxy(13,4),txy(13,4))). 
pos(rhs(out2_silver1_13_5_13_5,sameR,sid_1x1,cxy(13,5),txy(13,5))). 
pos(rhs(out2_orange1_13_12_13_12,sameR,sid_1x1,cxy(13,12),txy(13,12))). 
pos(rhs(out2_black0_13_13_13_13,sameR,sid_1x1,cxy(13,13),txy(13,13))). 
pos(rhs(out0_cyan2_4_14_4_15,rot90,sid_2x1,cxy(4,15),txy(4,15))). 
pos(rhs(out0_blue2_7_1_7_2,rot90,sid_2x1,cxy(7,2),txy(7,2))). 
pos(rhs(out0_yellow2_11_1_11_2,rot90,sid_2x1,cxy(11,2),txy(11,2))). 
pos(rhs(out0_yellow2_11_14_11_15,rot90,sid_2x1,cxy(11,15),txy(11,15))). 
pos(rhs(out0_yellow2_5_7_6_7,sameR,sid_2x1,cxy(6,7),txy(6,7))). 
pos(rhs(out0_blue3_7_4_7_6,rot90,sid_2x1,cxy(7,5),txy(7,5))). 
pos(rhs(out0_yellow3_1_7_3_7,sameR,sid_2x1,cxy(2,7),txy(2,7))). 
pos(rhs(out0_blue3_1_13_3_13,sameR,sid_2x1,cxy(2,13),txy(2,13))). 
pos(rhs(out0_cyan3_8_3_10_3,sameR,sid_2x1,cxy(9,3),txy(9,3))). 
pos(rhs(out0_cyan4_12_3_15_3,sameR,sid_2x1,cxy(14,3),txy(14,3))). 
pos(rhs(out0_blue4_12_13_15_13,sameR,sid_2x1,cxy(14,13),txy(14,13))). 
pos(rhs(out0_black0_5_1_6_2,sameR,sid_1x1,cxy(6,2),txy(5,1))). 
pos(rhs(out0_black0_5_14_6_15,sameR,sid_1x1,cxy(6,15),txy(5,14))). 
pos(rhs(out0_cyan5_4_8_4_12,rot90,sid_2x1,cxy(4,10),txy(4,10))). 
pos(rhs(out0_black0_1_1_3_2,rot90,sid_1x2,cxy(2,2),txy(2,2))). 
pos(rhs(out0_black0_1_14_3_15,rot90,sid_1x2,cxy(2,15),txy(2,15))). 
pos(rhs(out0_black0_8_1_10_2,rot90,sid_1x2,cxy(9,2),txy(9,2))). 
pos(rhs(out0_black0_8_14_10_15,rot90,sid_1x2,cxy(9,15),txy(9,15))). 
pos(rhs(out0_black0_5_4_6_6,sameR,sid_1x2,cxy(6,5),txy(6,5))). 
pos(rhs(out0_black0_12_1_15_2,rot90,sid_1x2,cxy(14,2),txy(12,1))). 
pos(rhs(out0_black0_12_14_15_15,rot90,sid_1x2,cxy(14,15),txy(12,14))). 
pos(rhs(out0_black0_1_4_3_6,sameR,sid_1x1,cxy(2,5),txy(2,5))). 
pos(rhs(out0_black0_8_4_10_6,sameR,sid_1x1,cxy(9,5),txy(9,5))). 
pos(rhs(out0_black0_5_8_6_12,sameR,sid_1x2,cxy(6,10),txy(6,10))). 
pos(rhs(out0_black0_12_4_15_6,rot90,sid_1x2,cxy(14,5),txy(14,5))). 
pos(rhs(out0_black0_1_8_3_12,sameR,sid_1x2,cxy(2,10),txy(2,10))). 
pos(rhs(out0_black0_8_8_10_12,sameR,sid_1x2,cxy(9,10),txy(9,10))). 
pos(rhs(out0_black0_12_8_15_12,sameR,sid_1x2,cxy(14,10),txy(14,10))). 
pos(rhs(out0_cyan11_1_1_6_6,rot90,sid_plus_3x3,cxy(4,3),txy(4,3))). 
pos(rhs(out0_blue13_5_8_10_15,flipH,sid_plus_3x3,cxy(7,12),txy(10,13))). 
pos(rhs(out0_yellow16_8_4_15_12,rot180,sid_plus_3x3,cxy(11,8),txy(15,7))). 
pos(rhs(out0_red1_4_7_4_7,sameR,sid_1x1,cxy(4,7),txy(4,7))). 
pos(rhs(out0_red1_4_13_4_13,sameR,sid_1x1,cxy(4,13),txy(4,13))). 
pos(rhs(out0_red1_7_3_7_3,sameR,sid_1x1,cxy(7,3),txy(7,3))). 
pos(rhs(out0_red1_7_7_7_7,sameR,sid_1x1,cxy(7,7),txy(7,7))). 
pos(rhs(out0_red1_11_3_11_3,sameR,sid_1x1,cxy(11,3),txy(11,3))). 
pos(rhs(out0_red1_11_13_11_13,sameR,sid_1x1,cxy(11,13),txy(11,13))). 
:-end_in_pos. 
