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
lhs(in0_red1_2_2_4_4,sameR,sid_1x1,cxy(3,3),txy(3,3),red,no_child). 
lhs(in0_red2_2_2_4_4,sameR,sid_tetris_T_Stretched_3x3,cxy(4,4),txy(4,4),red,1). 
lhs(in0_black0_2_2_4_4,sameR,sid_hollow_3x3,cxy(3,3),txy(3,3),black,no_child). 
lhs(in0_red17_1_1_5_5,sameR,s6353595,cxy(3,3),txy(3,3),red,4). 
lhs(in0_red16_1_1_5_5,sameR,sid_hollow_3x3,cxy(3,3),txy(3,3),red,3). 
lhs(in0_red1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),red,no_child). 
lhs(in1_red2_3_3_5_5,sameR,sid_tetris_T_Stretched_3x3,cxy(6,6),txy(4,4),red,1). 
lhs(in1_red1_2_2_6_6,sameR,sid_1x1,cxy(4,4),txy(4,4),red,no_child). 
lhs(in1_black0_2_2_6_6,sameR,sid_hollow_3x3,cxy(4,4),txy(4,4),black,no_child). 
lhs(in1_red25_1_1_7_7,sameR,s6353595,cxy(4,4),txy(4,4),red,4). 
lhs(in1_red24_1_1_7_7,sameR,sid_hollow_3x3,cxy(4,4),txy(4,4),red,3). 
lhs(in1_red1_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),red,no_child). 
lhs(in2_black0_3_12_5_14,sameR,sid_hollow_3x3,cxy(4,13),txy(4,13),black,no_child). 
lhs(in2_red16_2_11_6_15,sameR,sid_hollow_3x3,cxy(4,13),txy(4,13),red,2). 
lhs(in2_black0_8_2_14_8,sameR,sid_hollow_3x3,cxy(11,5),txy(11,5),black,no_child). 
lhs(in2_red32_7_1_15_9,sameR,sid_hollow_3x3,cxy(11,5),txy(11,5),red,2). 
lhs(in2_red1_4_13_4_13,sameR,sid_1x1,cxy(4,13),txy(4,13),red,no_child). 
lhs(in2_red1_11_5_11_5,sameR,sid_1x1,cxy(11,5),txy(11,5),red,no_child). 
lhs(in2_black0_1_1_15_15,sameR,s16744804,cxy(7,9),txy(7,9),black,no_child). 
lhs(in3_black0_3_2_5_4,sameR,sid_hollow_3x3,cxy(4,3),txy(4,3),black,no_child). 
lhs(in3_red16_2_1_6_5,sameR,sid_hollow_3x3,cxy(4,3),txy(4,3),red,2). 
lhs(in3_black0_7_8_11_12,sameR,sid_hollow_3x3,cxy(9,10),txy(9,10),black,no_child). 
lhs(in3_red24_6_7_12_13,sameR,sid_hollow_3x3,cxy(9,10),txy(9,10),red,2). 
lhs(in3_red1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),red,no_child). 
lhs(in3_red1_9_10_9_10,sameR,sid_1x1,cxy(9,10),txy(9,10),red,no_child). 
lhs(in3_black0_1_1_13_13,sameR,s5566047,cxy(7,7),txy(7,7),black,no_child). 
lhs(in0_black0_13_2_15_4,sameR,sid_hollow_3x3,cxy(14,3),txy(14,3),black,no_child). 
lhs(in0_black0_15_9_17_11,sameR,sid_hollow_3x3,cxy(16,10),txy(16,10),black,no_child). 
lhs(in0_red16_12_1_16_5,sameR,sid_hollow_3x3,cxy(14,3),txy(14,3),red,2). 
lhs(in0_red16_14_8_18_12,sameR,sid_hollow_3x3,cxy(16,10),txy(16,10),red,2). 
lhs(in0_black0_7_14_11_18,sameR,sid_hollow_3x3,cxy(9,16),txy(9,16),black,no_child). 
lhs(in0_red24_6_13_12_19,sameR,sid_hollow_3x3,cxy(9,16),txy(9,16),red,2). 
lhs(in0_black0_3_3_9_9,sameR,sid_hollow_3x3,cxy(6,6),txy(6,6),black,no_child). 
lhs(in0_red32_2_2_10_10,sameR,sid_hollow_3x3,cxy(6,6),txy(6,6),red,2). 
lhs(in0_red1_6_6_6_6,sameR,sid_1x1,cxy(6,6),txy(6,6),red,no_child). 
lhs(in0_red1_9_16_9_16,sameR,sid_1x1,cxy(9,16),txy(9,16),red,no_child). 
lhs(in0_red1_14_3_14_3,sameR,sid_1x1,cxy(14,3),txy(14,3),red,no_child). 
lhs(in0_red1_16_10_16_10,sameR,sid_1x1,cxy(16,10),txy(16,10),red,no_child). 
lhs(in0_black0_1_1_20_20,sameR,s15230487,cxy(11,12),txy(1,1),black,no_child). 
pos(rhs(out0_cyan9_2_2_4_4,sameR,sid_3x3,cxy(3,3),txy(3,3),pen([cc(cyan,4),cc(red,1),cc(cyan,4)]))). 
pos(rhs(out0_cyan8_2_2_4_4,sameR,sid_hollow_3x3,cxy(3,3),txy(3,3),cyan)). 
pos(rhs(out0_red25_1_1_5_5,sameR,s7993947,cxy(3,3),txy(3,3),pen([cc(red,6),cc(cyan,3),cc(red,2),cc(cyan,1),cc(red,1),cc(cyan,1),cc(red,2),cc(cyan,3),cc(red,6)]))). 
pos(rhs(out0_red16_1_1_5_5,sameR,sid_hollow_3x3,cxy(3,3),txy(3,3),red)). 
pos(rhs(out0_red1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),red)). 
pos(rhs(out1_yellow8_3_3_5_5,sameR,sid_hollow_3x3,cxy(4,4),txy(4,4),yellow)). 
pos(rhs(out1_yellow25_2_2_6_6,sameR,sid_3x3,cxy(4,4),txy(4,4),pen([cc(yellow,12),cc(red,1),cc(yellow,12)]))). 
pos(rhs(out1_red49_1_1_7_7,sameR,s7993947,cxy(4,4),txy(4,4),pen([cc(red,8),cc(yellow,5),cc(red,2),cc(yellow,5),cc(red,2),cc(yellow,2),cc(red,1),cc(yellow,2),cc(red,2),cc(yellow,5),cc(red,2),cc(yellow,5),cc(red,8)]))). 
pos(rhs(out1_red24_1_1_7_7,sameR,sid_hollow_3x3,cxy(4,4),txy(4,4),red)). 
pos(rhs(out1_red1_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),red)). 
pos(rhs(out2_cyan8_3_12_5_14,sameR,sid_hollow_3x3,cxy(4,13),txy(4,13),cyan)). 
pos(rhs(out2_red16_2_11_6_15,sameR,sid_hollow_3x3,cxy(4,13),txy(4,13),red)). 
pos(rhs(out2_green48_8_2_14_8,sameR,sid_hollow_3x3,cxy(11,5),txy(11,5),green)). 
pos(rhs(out2_red32_7_1_15_9,sameR,sid_hollow_3x3,cxy(11,5),txy(11,5),red)). 
pos(rhs(out2_red1_4_13_4_13,sameR,sid_1x1,cxy(4,13),txy(4,13),red)). 
pos(rhs(out2_red1_11_5_11_5,sameR,sid_1x1,cxy(11,5),txy(11,5),red)). 
pos(rhs(out2_black0_1_1_15_15,sameR,s16744804,cxy(7,9),txy(7,9),black)). 
pos(rhs(out3_cyan8_3_2_5_4,sameR,sid_hollow_3x3,cxy(4,3),txy(4,3),cyan)). 
pos(rhs(out3_yellow24_7_8_11_12,sameR,sid_hollow_3x3,cxy(9,10),txy(9,10),yellow)). 
pos(rhs(out3_red16_2_1_6_5,sameR,sid_hollow_3x3,cxy(4,3),txy(4,3),red)). 
pos(rhs(out3_red24_6_7_12_13,sameR,sid_hollow_3x3,cxy(9,10),txy(9,10),red)). 
pos(rhs(out3_red1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),red)). 
pos(rhs(out3_red1_9_10_9_10,sameR,sid_1x1,cxy(9,10),txy(9,10),red)). 
pos(rhs(out3_black0_1_1_13_13,sameR,s5566047,cxy(7,7),txy(7,7),black)). 
pos(rhs(out0_cyan8_13_2_15_4,sameR,sid_hollow_3x3,cxy(14,3),txy(14,3),cyan)). 
pos(rhs(out0_cyan8_15_9_17_11,sameR,sid_hollow_3x3,cxy(16,10),txy(16,10),cyan)). 
pos(rhs(out0_yellow24_7_14_11_18,sameR,sid_hollow_3x3,cxy(9,16),txy(9,16),yellow)). 
pos(rhs(out0_red16_12_1_16_5,sameR,sid_hollow_3x3,cxy(14,3),txy(14,3),red)). 
pos(rhs(out0_red16_14_8_18_12,sameR,sid_hollow_3x3,cxy(16,10),txy(16,10),red)). 
pos(rhs(out0_green48_3_3_9_9,sameR,sid_hollow_3x3,cxy(6,6),txy(6,6),green)). 
pos(rhs(out0_red24_6_13_12_19,sameR,sid_hollow_3x3,cxy(9,16),txy(9,16),red)). 
pos(rhs(out0_red32_2_2_10_10,sameR,sid_hollow_3x3,cxy(6,6),txy(6,6),red)). 
pos(rhs(out0_red1_6_6_6_6,sameR,sid_1x1,cxy(6,6),txy(6,6),red)). 
pos(rhs(out0_red1_9_16_9_16,sameR,sid_1x1,cxy(9,16),txy(9,16),red)). 
pos(rhs(out0_red1_14_3_14_3,sameR,sid_1x1,cxy(14,3),txy(14,3),red)). 
pos(rhs(out0_red1_16_10_16_10,sameR,sid_1x1,cxy(16,10),txy(16,10),red)). 
pos(rhs(out0_black0_1_1_20_20,sameR,s15230487,cxy(11,12),txy(1,1),black)). 
