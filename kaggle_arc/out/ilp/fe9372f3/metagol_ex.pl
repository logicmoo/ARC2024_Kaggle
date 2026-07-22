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
lhs(in0_red5_4_4_6_6,sameR,sid_plus_3x3,cxy(5,5),txy(5,5),no_child). 
lhs(in0_black0_1_1_4_4,sameR,sid_1x1,cxy(3,3),txy(1,1),no_child). 
lhs(in0_black0_6_1_10_4,rot90,sid_1x2,cxy(8,3),txy(8,3),no_child). 
lhs(in0_red5_3_3_7_7,sameR,s6151086,cxy(5,5),txy(5,5),no_child). 
lhs(in1_wbg0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),no_child). 
lhs(in1_red1_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4),no_child). 
lhs(in1_wbg0_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5),no_child). 
lhs(in1_red1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),no_child). 
lhs(in1_red1_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),no_child). 
lhs(in1_red1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5),no_child). 
lhs(in1_wbg0_5_3_5_3,sameR,sid_1x1,cxy(5,3),txy(5,3),no_child). 
lhs(in1_red1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),no_child). 
lhs(in1_wbg0_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5),no_child). 
lhs(in0_red5_7_11_9_13,sameR,sid_plus_3x3,cxy(8,12),txy(8,12),no_child). 
lhs(in0_red5_6_10_10_14,sameR,s6151086,cxy(8,12),txy(8,12),no_child). 
pos(rhs(out0_cyan2_5_10_5_11,rot90,sid_2x1,cxy(5,11),txy(5,11))). 
pos(rhs(out0_black0_6_1_7_2,sameR,sid_1x1,cxy(7,2),txy(6,1))). 
pos(rhs(out0_black0_1_3_2_4,sameR,sid_1x1,cxy(2,4),txy(1,3))). 
pos(rhs(out0_black0_1_6_2_7,sameR,sid_1x1,cxy(2,8),txy(1,6))). 
pos(rhs(out0_black0_3_1_4_2,sameR,sid_1x1,cxy(4,2),txy(3,1))). 
pos(rhs(out0_black0_8_3_10_4,rot90,sid_1x2,cxy(9,4),txy(9,4))). 
pos(rhs(out0_black0_8_6_10_7,rot90,sid_1x2,cxy(9,7),txy(9,7))). 
pos(rhs(out0_black0_9_2_10_4,sameR,sid_1x2,cxy(10,3),txy(10,3))). 
pos(rhs(out0_black0_9_6_10_8,sameR,sid_1x2,cxy(10,7),txy(10,7))). 
pos(rhs(out0_blue9_4_4_6_6,sameR,sid_3x3,cxy(5,5),txy(5,5))). 
pos(rhs(out0_black0_1_2_3_4,sameR,sid_RtTriagle_se_3x3,cxy(2,3),txy(2,3))). 
pos(rhs(out0_black0_1_6_3_8,sameR,sid_RtTriagle_se_3x3,cxy(2,7),txy(2,7))). 
pos(rhs(out0_black0_2_1_4_3,sameR,sid_RtTriagle_se_3x3,cxy(3,2),txy(3,2))). 
pos(rhs(out0_black0_6_1_8_3,sameR,sid_RtTriagle_se_3x3,cxy(7,2),txy(7,2))). 
pos(rhs(out0_black0_6_11_10_12,rot90,sid_1x2,cxy(8,12),txy(8,12))). 
pos(rhs(out0_black0_3_8_4_12,sameR,sid_1x2,cxy(4,10),txy(4,10))). 
pos(rhs(out0_black0_6_8_7_12,sameR,sid_1x2,cxy(7,10),txy(7,10))). 
pos(rhs(out0_black0_1_10_4_12,rot90,sid_1x2,cxy(3,11),txy(3,11))). 
pos(rhs(out0_black0_6_10_9_12,rot90,sid_1x2,cxy(8,11),txy(8,11))). 
pos(rhs(out0_black0_2_9_4_12,sameR,sid_1x2,cxy(3,11),txy(3,11))). 
pos(rhs(out0_black0_6_9_8_12,sameR,sid_1x2,cxy(7,11),txy(7,11))). 
pos(rhs(out0_black0_7_1_10_4,sameR,s12620050,cxy(9,3),txy(9,3))). 
pos(rhs(out0_black0_7_6_10_9,sameR,s12620050,cxy(9,7),txy(9,7))). 
pos(rhs(out0_black0_1_7_4_12,sameR,s12620050,cxy(3,10),txy(1,12))). 
pos(rhs(out0_blue17_3_3_7_7,sameR,s11084416,cxy(5,5),txy(5,5))). 
pos(rhs(out0_black0_6_7_10_12,sameR,s7134580,cxy(8,10),txy(6,7))). 
pos(rhs(out0_blue33_1_1_9_9,sameR,s11610902,cxy(5,5),txy(5,5))). 
pos(rhs(out0_yellow1_5_12_5_12,sameR,sid_1x1,cxy(5,12),txy(5,12))). 
pos(rhs(out0_cyan1_10_5_10_5,sameR,sid_1x1,cxy(10,5),txy(10,5))). 
pos(rhs(out0_blue1_10_10_10_10,sameR,sid_1x1,cxy(10,10),txy(10,10))). 
pos(rhs(out1_cyan2_9_4_10_4,sameR,sid_2x1,cxy(10,4),txy(10,4))). 
pos(rhs(out1_cyan2_12_4_13_4,sameR,sid_2x1,cxy(13,4),txy(13,4))). 
pos(rhs(out1_cyan2_15_4_16_4,sameR,sid_2x1,cxy(16,4),txy(16,4))). 
pos(rhs(out1_black0_1_2_2_3,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(1,3),txy(1,3))). 
pos(rhs(out1_black0_1_5_2_6,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(1,5),txy(1,5))). 
pos(rhs(out1_black0_2_1_3_2,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(3,1),txy(3,1))). 
pos(rhs(out1_black0_2_6_3_7,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(3,7),txy(3,7))). 
pos(rhs(out1_black0_5_1_6_2,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(5,1),txy(5,1))). 
pos(rhs(out1_black0_5_6_6_7,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(5,7),txy(5,7))). 
pos(rhs(out1_blue9_3_3_5_5,sameR,sid_3x3,cxy(4,4),txy(4,4))). 
pos(rhs(out1_black0_7_2_16_3,rot90,sid_1x2,cxy(12,3),txy(7,2))). 
pos(rhs(out1_black0_7_5_16_6,rot90,sid_1x2,cxy(12,6),txy(7,5))). 
pos(rhs(out1_blue17_2_2_6_6,sameR,s11084416,cxy(4,4),txy(4,4))). 
pos(rhs(out1_black0_6_1_16_3,rot90,sid_RtTriagle_se_3x3,cxy(11,2),txy(11,2))). 
pos(rhs(out1_black0_6_5_16_7,rot90,sid_RtTriagle_se_3x3,cxy(11,6),txy(11,6))). 
pos(rhs(out1_blue1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1))). 
pos(rhs(out1_cyan1_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4))). 
pos(rhs(out1_blue1_1_7_1_7,sameR,sid_1x1,cxy(1,7),txy(1,7))). 
pos(rhs(out1_cyan1_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1))). 
pos(rhs(out1_cyan1_4_7_4_7,sameR,sid_1x1,cxy(4,7),txy(4,7))). 
pos(rhs(out1_blue1_7_1_7_1,sameR,sid_1x1,cxy(7,1),txy(7,1))). 
pos(rhs(out1_cyan1_7_4_7_4,sameR,sid_1x1,cxy(7,4),txy(7,4))). 
pos(rhs(out1_blue1_7_7_7_7,sameR,sid_1x1,cxy(7,7),txy(7,7))). 
pos(rhs(out1_yellow1_8_4_8_4,sameR,sid_1x1,cxy(8,4),txy(8,4))). 
pos(rhs(out1_yellow1_11_4_11_4,sameR,sid_1x1,cxy(11,4),txy(11,4))). 
pos(rhs(out1_yellow1_14_4_14_4,sameR,sid_1x1,cxy(14,4),txy(14,4))). 
pos(rhs(out0_cyan2_8_3_8_4,rot90,sid_2x1,cxy(8,4),txy(8,4))). 
pos(rhs(out0_cyan2_8_6_8_7,rot90,sid_2x1,cxy(8,7),txy(8,7))). 
pos(rhs(out0_cyan2_8_17_8_18,rot90,sid_2x1,cxy(8,18),txy(8,18))). 
pos(rhs(out0_cyan2_8_20_8_21,rot90,sid_2x1,cxy(8,21),txy(8,21))). 
pos(rhs(out0_cyan2_8_23_8_24,rot90,sid_2x1,cxy(8,24),txy(8,24))). 
pos(rhs(out0_cyan2_8_26_8_27,rot90,sid_2x1,cxy(8,27),txy(8,27))). 
pos(rhs(out0_cyan2_8_29_8_30,rot90,sid_2x1,cxy(8,30),txy(8,30))). 
pos(rhs(out0_cyan2_2_12_3_12,sameR,sid_2x1,cxy(3,12),txy(3,12))). 
pos(rhs(out0_cyan2_13_12_14_12,sameR,sid_2x1,cxy(14,12),txy(14,12))). 
pos(rhs(out0_cyan2_16_12_17_12,sameR,sid_2x1,cxy(17,12),txy(17,12))). 
pos(rhs(out0_blue9_7_11_9_13,sameR,sid_3x3,cxy(8,12),txy(8,12))). 
pos(rhs(out0_blue3_1_17_3_19,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(2,18),txy(2,18))). 
pos(rhs(out0_blue3_1_5_3_7,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(2,6),txy(2,6))). 
pos(rhs(out0_blue5_13_3_17_7,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(15,5),txy(15,5))). 
pos(rhs(out0_blue5_13_17_17_21,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(15,19),txy(15,19))). 
pos(rhs(out0_blue17_6_10_10_14,sameR,s11084416,cxy(8,12),txy(8,12))). 
pos(rhs(out0_black0_1_6_6_11,sameR,s7454907,cxy(3,9),txy(3,9))). 
pos(rhs(out0_black0_1_13_6_18,sameR,s7454907,cxy(3,15),txy(3,15))). 
pos(rhs(out0_black0_10_4_17_11,sameR,s11751144,cxy(15,9),txy(15,9))). 
pos(rhs(out0_black0_10_13_17_20,sameR,s11751144,cxy(15,15),txy(15,15))). 
pos(rhs(out0_black0_1_1_7_10,sameR,s2033427,cxy(5,4),txy(7,9))). 
pos(rhs(out0_blue33_4_8_12_16,sameR,s11610902,cxy(8,12),txy(8,12))). 
pos(rhs(out0_black0_9_1_17_10,sameR,s12186356,cxy(12,4),txy(9,10))). 
pos(rhs(out0_black0_1_14_7_30,sameR,s2033427,cxy(4,23),txy(7,14))). 
pos(rhs(out0_black0_9_14_17_30,sameR,s12186356,cxy(12,24),txy(9,15))). 
pos(rhs(out0_yellow1_1_12_1_12,sameR,sid_1x1,cxy(1,12),txy(1,12))). 
pos(rhs(out0_cyan1_8_1_8_1,sameR,sid_1x1,cxy(8,1),txy(8,1))). 
pos(rhs(out0_yellow1_8_2_8_2,sameR,sid_1x1,cxy(8,2),txy(8,2))). 
pos(rhs(out0_yellow1_8_5_8_5,sameR,sid_1x1,cxy(8,5),txy(8,5))). 
pos(rhs(out0_yellow1_8_19_8_19,sameR,sid_1x1,cxy(8,19),txy(8,19))). 
pos(rhs(out0_yellow1_8_22_8_22,sameR,sid_1x1,cxy(8,22),txy(8,22))). 
pos(rhs(out0_yellow1_8_25_8_25,sameR,sid_1x1,cxy(8,25),txy(8,25))). 
pos(rhs(out0_yellow1_8_28_8_28,sameR,sid_1x1,cxy(8,28),txy(8,28))). 
pos(rhs(out0_yellow1_15_12_15_12,sameR,sid_1x1,cxy(15,12),txy(15,12))). 
