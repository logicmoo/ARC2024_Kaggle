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
lhs(in0_green5_25_4_27_6,sameR,sid_X_3x3,cxy(26,5),txy(26,5),green,no_child). 
lhs(in0_red8_24_3_28_7,sameR,sid_hollow_diamond_3x3,cxy(26,5),txy(26,5),red,no_child). 
lhs(in0_blue161_9_19_26_27,rot180,sid_hollow_3x3,cxy(17,23),txy(17,23),blue,no_child). 
lhs(in0_blue254_3_2_19_16,sameR,sid_hollow_3x3,cxy(11,9),txy(11,9),blue,no_child). 
lhs(in0_green1_6_6_6_6,sameR,sid_1x1,cxy(6,6),txy(6,6),green,no_child). 
lhs(in0_green1_18_26_18_26,sameR,sid_1x1,cxy(18,26),txy(18,26),green,no_child). 
lhs(in0_cyan470_1_1_30_30,rot270,s3656352,cxy(17,17),txy(1,1),cyan,no_child). 
lhs(in1_green8_23_4_27_8,sameR,sid_hollow_diamond_3x3,cxy(25,6),txy(25,6),green,no_child). 
lhs(in1_red151_2_6_18_14,sameR,s5449797,cxy(10,10),txy(10,10),red,no_child). 
lhs(in1_red233_7_16_24_28,rot180,sid_hollow_3x3,cxy(15,22),txy(15,22),red,no_child). 
lhs(in1_yellow1_6_11_6_11,sameR,sid_1x1,cxy(6,11),txy(6,11),yellow,no_child). 
lhs(in1_yellow1_15_8_15_8,sameR,sid_1x1,cxy(15,8),txy(15,8),yellow,no_child). 
lhs(in1_yellow1_17_25_17_25,sameR,sid_1x1,cxy(17,25),txy(17,25),yellow,no_child). 
lhs(in1_yellow1_25_6_25_6,sameR,sid_1x1,cxy(25,6),txy(25,6),yellow,no_child). 
lhs(in1_blue504_1_1_30_30,sameR,s5190770,cxy(17,14),txy(1,30),blue,no_child). 
lhs(in2_silver2_25_25_25_26,rot90,sid_2x1,cxy(25,26),txy(25,26),silver,no_child). 
lhs(in2_silver2_25_28_25_29,rot90,sid_2x1,cxy(25,29),txy(25,29),silver,no_child). 
lhs(in2_purple3_24_26_24_28,rot90,sid_2x1,cxy(24,27),txy(24,27),purple,no_child). 
lhs(in2_purple3_26_26_26_28,rot90,sid_2x1,cxy(26,27),txy(26,27),purple,no_child). 
lhs(in2_green69_13_17_22_23,rot180,sid_hollow_3x3,cxy(17,20),txy(17,20),green,no_child). 
lhs(in2_green134_2_10_10_24,flipD,sid_hollow_3x3,cxy(6,17),txy(6,17),green,no_child). 
lhs(in2_green206_12_3_27_15,rot180,s5449797,cxy(19,9),txy(19,9),green,no_child). 
lhs(in2_yellow1_5_13_5_13,sameR,sid_1x1,cxy(5,13),txy(5,13),yellow,no_child). 
lhs(in2_yellow1_16_11_16_11,sameR,sid_1x1,cxy(16,11),txy(16,11),yellow,no_child). 
lhs(in2_yellow1_19_21_19_21,sameR,sid_1x1,cxy(19,21),txy(19,21),yellow,no_child). 
lhs(in2_yellow1_24_7_24_7,sameR,sid_1x1,cxy(24,7),txy(24,7),yellow,no_child). 
lhs(in2_yellow1_25_27_25_27,sameR,sid_1x1,cxy(25,27),txy(25,27),yellow,no_child). 
lhs(in2_cyan476_1_1_30_30,rot180,s413424,cxy(16,17),txy(1,1),cyan,no_child). 
lhs(in0_cyan2_2_24_3_24,sameR,sid_2x1,cxy(3,24),txy(3,24),cyan,no_child). 
lhs(in0_cyan2_5_24_6_24,sameR,sid_2x1,cxy(6,24),txy(6,24),cyan,no_child). 
lhs(in0_green3_3_23_5_23,sameR,sid_2x1,cxy(4,23),txy(4,23),green,no_child). 
lhs(in0_green3_3_25_5_25,sameR,sid_2x1,cxy(4,25),txy(4,25),green,no_child). 
lhs(in0_blue119_4_3_15_12,flipV,sid_hollow_3x3,cxy(10,7),txy(4,12),blue,no_child). 
lhs(in0_blue236_13_15_29_28,rot180,s5449797,cxy(21,22),txy(21,22),blue,no_child). 
lhs(in0_red1_4_24_4_24,sameR,sid_1x1,cxy(4,24),txy(4,24),red,no_child). 
lhs(in0_red1_7_10_7_10,sameR,sid_1x1,cxy(7,10),txy(7,10),red,no_child). 
lhs(in0_red1_19_25_19_25,sameR,sid_1x1,cxy(19,25),txy(19,25),red,no_child). 
lhs(in0_red1_24_18_24_18,sameR,sid_1x1,cxy(24,18),txy(24,18),red,no_child). 
lhs(in0_yellow531_1_1_30_30,rot90,s856546,cxy(15,14),txy(30,30),yellow,no_child). 
pos(rhs(out0_blue7_20_27_26_27,sameR,sid_2x1,cxy(23,27),txy(23,27),blue)). 
pos(rhs(out0_blue8_9_27_16_27,sameR,sid_2x1,cxy(13,27),txy(13,27),blue)). 
pos(rhs(out0_green5_5_5_7_7,sameR,sid_X_3x3,cxy(6,6),txy(6,6),green)). 
pos(rhs(out0_green5_17_25_19_27,sameR,sid_X_3x3,cxy(18,26),txy(18,26),green)). 
pos(rhs(out0_blue11_3_2_5_5,flipDHV,sid_tetris_Z_270_Rotated_2x3,cxy(4,3),txy(3,5),blue)). 
pos(rhs(out0_blue29_3_7_5_16,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(4,12),txy(3,7),blue)). 
pos(rhs(out0_blue51_7_2_19_5,flipV,sid_tetris_Z_270_Rotated_2x3,cxy(13,3),txy(19,5),blue)). 
pos(rhs(out0_blue55_19_19_26_25,flipV,sid_tetris_Z_270_Rotated_2x3,cxy(23,22),txy(19,19),blue)). 
pos(rhs(out0_blue62_9_19_17_25,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(13,22),txy(13,22),blue)). 
pos(rhs(out0_blue129_7_7_19_16,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(13,12),txy(19,7),blue)). 
pos(rhs(out0_red25_9_19_26_27,flipD,sid_hollow_diamond_3x3,cxy(18,25),txy(9,26),red)). 
pos(rhs(out0_red30_3_2_19_16,flipDHV,sid_hollow_diamond_3x3,cxy(9,8),txy(6,16),red)). 
pos(rhs(out0_cyan483_1_1_30_30,rot90,s13252453,cxy(17,16),txy(1,1),cyan)). 
pos(rhs(out1_red6_16_6_18_7,sameR,sid_2x1,cxy(17,7),txy(17,7),red)). 
pos(rhs(out1_red6_16_9_18_10,sameR,sid_2x1,cxy(17,10),txy(17,10),red)). 
pos(rhs(out1_red8_2_6_5_7,sameR,sid_2x1,cxy(4,7),txy(2,6),red)). 
pos(rhs(out1_red8_2_9_5_10,sameR,sid_2x1,cxy(4,10),txy(2,9),red)). 
pos(rhs(out1_red9_16_12_18_14,sameR,sid_1x1,cxy(17,13),txy(17,13),red)). 
pos(rhs(out1_red12_2_12_5_14,sameR,sid_2x1,cxy(4,13),txy(4,13),red)). 
pos(rhs(out1_red16_7_6_14_7,sameR,sid_2x1,cxy(11,7),txy(7,6),red)). 
pos(rhs(out1_red16_7_9_14_10,sameR,sid_2x1,cxy(11,10),txy(7,9),red)). 
pos(rhs(out1_red21_18_26_24_28,sameR,sid_2x1,cxy(21,27),txy(21,27),red)). 
pos(rhs(out1_red24_7_12_14_14,sameR,sid_2x1,cxy(11,13),txy(11,13),red)). 
pos(rhs(out1_red30_7_26_16_28,sameR,sid_2x1,cxy(12,27),txy(12,27),red)). 
pos(rhs(out1_red63_18_16_24_24,rot90,sid_2x1,cxy(21,20),txy(21,20),red)). 
pos(rhs(out1_red90_7_16_16_24,sameR,sid_2x1,cxy(12,20),txy(12,20),red)). 
pos(rhs(out1_green46_2_6_18_14,rot90,s1956623,cxy(10,10),txy(10,10),green)). 
pos(rhs(out1_green29_7_16_24_28,flipD,sid_hollow_diamond_3x3,cxy(16,24),txy(7,25),green)). 
pos(rhs(out1_yellow1_6_11_6_11,sameR,sid_1x1,cxy(6,11),txy(6,11),yellow)). 
pos(rhs(out1_yellow1_15_8_15_8,sameR,sid_1x1,cxy(15,8),txy(15,8),yellow)). 
pos(rhs(out1_yellow1_17_25_17_25,sameR,sid_1x1,cxy(17,25),txy(17,25),yellow)). 
pos(rhs(out1_blue513_1_1_30_30,rot90,s13252453,cxy(17,14),txy(1,30),blue)). 
pos(rhs(out2_silver2_19_22_19_23,rot90,sid_2x1,cxy(19,23),txy(19,23),silver)). 
pos(rhs(out2_purple3_4_12_4_14,rot90,sid_2x1,cxy(4,13),txy(4,13),purple)). 
pos(rhs(out2_silver3_5_10_5_12,rot90,sid_2x1,cxy(5,11),txy(5,11),silver)). 
pos(rhs(out2_purple3_6_12_6_14,rot90,sid_2x1,cxy(6,13),txy(6,13),purple)). 
pos(rhs(out2_purple3_15_10_15_12,rot90,sid_2x1,cxy(15,11),txy(15,11),purple)). 
pos(rhs(out2_purple3_17_10_17_12,rot90,sid_2x1,cxy(17,11),txy(17,11),purple)). 
pos(rhs(out2_purple3_18_20_18_22,rot90,sid_2x1,cxy(18,21),txy(18,21),purple)). 
pos(rhs(out2_purple3_20_20_20_22,rot90,sid_2x1,cxy(20,21),txy(20,21),purple)). 
pos(rhs(out2_purple3_23_6_23_8,rot90,sid_2x1,cxy(23,7),txy(23,7),purple)). 
pos(rhs(out2_purple3_25_6_25_8,rot90,sid_2x1,cxy(25,7),txy(25,7),purple)). 
pos(rhs(out2_silver4_16_12_16_15,rot90,sid_2x1,cxy(16,14),txy(16,14),silver)). 
pos(rhs(out2_silver4_19_17_19_20,rot90,sid_2x1,cxy(19,19),txy(19,19),silver)). 
pos(rhs(out2_silver4_24_3_24_6,rot90,sid_2x1,cxy(24,5),txy(24,5),silver)). 
pos(rhs(out2_silver8_16_3_16_10,rot90,sid_2x1,cxy(16,7),txy(16,7),silver)). 
pos(rhs(out2_silver8_24_8_24_15,rot90,sid_2x1,cxy(24,12),txy(24,12),silver)). 
pos(rhs(out2_silver11_5_14_5_24,rot90,sid_2x1,cxy(5,19),txy(5,19),silver)). 
pos(rhs(out2_green18_20_17_22_23,rot90,sid_u_3x2,cxy(21,20),txy(21,20),green)). 
pos(rhs(out2_green36_25_3_27_15,flipD,sid_u_3x2,cxy(26,9),txy(26,9),green)). 
pos(rhs(out2_green39_13_17_18_23,flipDHV,sid_u_3x2,cxy(15,20),txy(15,20),green)). 
pos(rhs(out2_green42_2_10_4_24,rot270,sid_u_3x2,cxy(3,17),txy(3,17),green)). 
pos(rhs(out2_green49_12_3_15_15,flipDHV,sid_u_3x2,cxy(13,9),txy(13,9),green)). 
pos(rhs(out2_green72_6_10_10_24,flipD,sid_u_3x2,cxy(8,17),txy(8,17),green)). 
pos(rhs(out2_green85_17_3_23_15,flipDHV,s7728596,cxy(20,9),txy(20,9),green)). 
pos(rhs(out2_yellow1_5_13_5_13,sameR,sid_1x1,cxy(5,13),txy(5,13),yellow)). 
pos(rhs(out2_yellow1_16_11_16_11,sameR,sid_1x1,cxy(16,11),txy(16,11),yellow)). 
pos(rhs(out2_yellow1_19_21_19_21,sameR,sid_1x1,cxy(19,21),txy(19,21),yellow)). 
pos(rhs(out2_yellow1_24_7_24_7,sameR,sid_1x1,cxy(24,7),txy(24,7),yellow)). 
pos(rhs(out2_cyan487_1_1_30_30,sameR,s10828854,cxy(16,17),txy(1,1),cyan)). 
pos(rhs(out0_cyan3_4_10_6_10,sameR,sid_2x1,cxy(5,10),txy(5,10),cyan)). 
pos(rhs(out0_green3_6_9_8_9,sameR,sid_2x1,cxy(7,9),txy(7,9),green)). 
pos(rhs(out0_green3_6_11_8_11,sameR,sid_2x1,cxy(7,11),txy(7,11),green)). 
pos(rhs(out0_green3_18_24_20_24,sameR,sid_2x1,cxy(19,24),txy(19,24),green)). 
pos(rhs(out0_green3_18_26_20_26,sameR,sid_2x1,cxy(19,26),txy(19,26),green)). 
pos(rhs(out0_green3_23_17_25_17,sameR,sid_2x1,cxy(24,17),txy(24,17),green)). 
pos(rhs(out0_green3_23_19_25_19,sameR,sid_2x1,cxy(24,19),txy(24,19),green)). 
pos(rhs(out0_cyan5_25_18_29_18,sameR,sid_2x1,cxy(27,18),txy(27,18),cyan)). 
pos(rhs(out0_cyan6_13_25_18_25,sameR,sid_2x1,cxy(16,25),txy(16,25),cyan)). 
pos(rhs(out0_cyan8_8_10_15_10,sameR,sid_2x1,cxy(12,10),txy(12,10),cyan)). 
pos(rhs(out0_cyan10_20_25_29_25,sameR,sid_2x1,cxy(25,25),txy(25,25),cyan)). 
pos(rhs(out0_cyan11_13_18_23_18,sameR,sid_2x1,cxy(18,18),txy(18,18),cyan)). 
pos(rhs(out0_blue21_4_11_15_12,sameR,sid_u_3x2,cxy(10,12),txy(4,11),blue)). 
pos(rhs(out0_blue48_13_26_29_28,sameR,sid_u_3x2,cxy(21,27),txy(21,27),blue)). 
pos(rhs(out0_blue48_13_15_29_17,rot180,sid_u_3x2,cxy(21,16),txy(21,16),blue)). 
pos(rhs(out0_blue81_4_3_15_9,flipV,sid_u_3x2,cxy(10,6),txy(10,6),blue)). 
pos(rhs(out0_blue96_13_19_29_24,rot180,s7728596,cxy(21,22),txy(18,19),blue)). 
pos(rhs(out0_red1_7_10_7_10,sameR,sid_1x1,cxy(7,10),txy(7,10),red)). 
pos(rhs(out0_red1_19_25_19_25,sameR,sid_1x1,cxy(19,25),txy(19,25),red)). 
pos(rhs(out0_red1_24_18_24_18,sameR,sid_1x1,cxy(24,18),txy(24,18),red)). 
pos(rhs(out0_yellow542_1_1_30_30,rot90,s13252453,cxy(14,15),txy(30,30),yellow)). 
