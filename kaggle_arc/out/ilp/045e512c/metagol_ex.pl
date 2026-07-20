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
lhs(in0_green3_11_7_11_9,rot90,sid_2x1,cxy(11,8),txy(11,8),green,no_child). 
lhs(in0_red3_7_11_9_11,sameR,sid_2x1,cxy(8,11),txy(8,11),red,no_child). 
lhs(in0_cyan8_7_7_9_9,sameR,sid_hollow_3x3,cxy(8,8),txy(8,8),cyan,1). 
lhs(in0_black0_8_8_8_8,sameR,sid_1x1,cxy(8,8),txy(8,8),black,no_child). 
lhs(in0_black0_1_1_21_21,sameR,s9113573,cxy(11,11),txy(11,11),black,no_child). 
lhs(in1_blue5_12_8_14_10,sameR,sid_plus_3x3,cxy(13,9),txy(13,9),blue,no_child). 
lhs(in1_red1_9_8_11_10,sameR,sid_tetris_T_Stretched_3x3,cxy(10,9),txy(10,9),red,no_child). 
lhs(in1_yellow1_12_5_14_7,sameR,sid_tetris_T_Stretched_3x3,cxy(13,6),txy(13,6),yellow,no_child). 
lhs(in1_yellow1_15_8_17_10,sameR,sid_tetris_T_Stretched_3x3,cxy(16,9),txy(16,9),yellow,no_child). 
lhs(in1_blue5_11_7_15_11,sameR,s6151086,cxy(13,9),txy(13,9),blue,no_child). 
lhs(in1_red1_10_9_10_9,sameR,sid_1x1,cxy(10,9),txy(10,9),red,no_child). 
lhs(in1_yellow1_13_6_13_6,sameR,sid_1x1,cxy(13,6),txy(13,6),yellow,no_child). 
lhs(in1_yellow1_16_9_16_9,sameR,sid_1x1,cxy(16,9),txy(16,9),yellow,no_child). 
lhs(in2_purple2_11_5_12_6,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(12,6),txy(11,5),purple,no_child). 
lhs(in2_blue3_11_12_12_13,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(11,12),txy(11,12),blue,no_child). 
lhs(in2_silver6_7_8_9_10,sameR,s1381650,cxy(8,9),txy(8,9),silver,no_child). 
lhs(in2_black0_1_1_21_21,sameR,s6059610,cxy(11,11),txy(11,11),black,no_child). 
lhs(in0_yellow2_11_5_11_6,rot90,sid_2x1,cxy(11,6),txy(11,6),yellow,no_child). 
lhs(in0_red3_11_8_11_10,rot90,sid_2x1,cxy(11,9),txy(11,9),red,no_child). 
lhs(in0_green3_7_12_9_12,sameR,sid_2x1,cxy(8,12),txy(8,12),green,no_child). 
lhs(in0_cyan7_7_8_9_10,rot90,sid_u_3x2,cxy(8,9),txy(8,9),cyan,no_child). 
lhs(in0_black0_1_1_21_21,sameR,s14350887,cxy(11,11),txy(11,11),black,no_child). 
pos(rhs(out0_cyan8_7_7_9_9,sameR,sid_hollow_3x3,cxy(8,8),txy(8,8),cyan)). 
pos(rhs(out0_red8_7_11_9_13,sameR,sid_hollow_3x3,cxy(8,12),txy(8,12),red)). 
pos(rhs(out0_red8_7_15_9_17,sameR,sid_hollow_3x3,cxy(8,16),txy(8,16),red)). 
pos(rhs(out0_red8_7_19_9_21,sameR,sid_hollow_3x3,cxy(8,20),txy(8,20),red)). 
pos(rhs(out0_green8_11_7_13_9,sameR,sid_hollow_3x3,cxy(12,8),txy(12,8),green)). 
pos(rhs(out0_green8_15_7_17_9,sameR,sid_hollow_3x3,cxy(16,8),txy(16,8),green)). 
pos(rhs(out0_green8_19_7_21_9,sameR,sid_hollow_3x3,cxy(20,8),txy(20,8),green)). 
pos(rhs(out0_black0_8_8_8_8,sameR,sid_1x1,cxy(8,8),txy(8,8),black)). 
pos(rhs(out0_black0_8_12_8_12,sameR,sid_1x1,cxy(8,12),txy(8,12),black)). 
pos(rhs(out0_black0_8_16_8_16,sameR,sid_1x1,cxy(8,16),txy(8,16),black)). 
pos(rhs(out0_black0_8_20_8_20,sameR,sid_1x1,cxy(8,20),txy(8,20),black)). 
pos(rhs(out0_black0_12_8_12_8,sameR,sid_1x1,cxy(12,8),txy(12,8),black)). 
pos(rhs(out0_black0_16_8_16_8,sameR,sid_1x1,cxy(16,8),txy(16,8),black)). 
pos(rhs(out0_black0_20_8_20_8,sameR,sid_1x1,cxy(20,8),txy(20,8),black)). 
pos(rhs(out0_black0_1_1_21_21,sameR,s5366997,cxy(11,11),txy(11,11),black)). 
pos(rhs(out1_yellow4_12_1_14_2,rot180,sid_t180_3x2,cxy(13,1),txy(13,1),yellow)). 
pos(rhs(out1_red4_1_8_2_10,rot270,sid_t180_3x2,cxy(1,9),txy(1,9),red)). 
pos(rhs(out1_yellow4_20_8_21_10,rot90,sid_t180_3x2,cxy(21,9),txy(21,9),yellow)). 
pos(rhs(out1_red5_4_8_6_10,sameR,sid_plus_3x3,cxy(5,9),txy(5,9),red)). 
pos(rhs(out1_red5_8_8_10_10,sameR,sid_plus_3x3,cxy(9,9),txy(9,9),red)). 
pos(rhs(out1_yellow5_12_4_14_6,sameR,sid_plus_3x3,cxy(13,5),txy(13,5),yellow)). 
pos(rhs(out1_blue5_12_8_14_10,sameR,sid_plus_3x3,cxy(13,9),txy(13,9),blue)). 
pos(rhs(out1_yellow5_16_8_18_10,sameR,sid_plus_3x3,cxy(17,9),txy(17,9),yellow)). 
pos(rhs(out1_black0_1_1_21_21,sameR,s11741688,cxy(11,11),txy(11,11),black)). 
pos(rhs(out2_blue4_19_20_21_21,rot180,s11716125,cxy(20,21),txy(19,20),blue)). 
pos(rhs(out2_purple4_15_1_17_2,sameR,s11716125,cxy(16,2),txy(16,2),purple)). 
pos(rhs(out2_silver6_7_8_9_10,sameR,s1381650,cxy(8,9),txy(8,9),silver)). 
pos(rhs(out2_purple6_11_4_13_6,sameR,s1381650,cxy(12,5),txy(12,5),purple)). 
pos(rhs(out2_blue6_11_12_13_14,sameR,s1381650,cxy(12,13),txy(12,13),blue)). 
pos(rhs(out2_blue6_15_16_17_18,sameR,s1381650,cxy(16,17),txy(16,17),blue)). 
pos(rhs(out2_black0_1_1_21_21,sameR,s12950248,cxy(11,11),txy(11,11),black)). 
pos(rhs(out0_yellow2_15_1_15_2,rot90,sid_2x1,cxy(15,2),txy(15,2),yellow)). 
pos(rhs(out0_yellow2_17_1_17_2,rot90,sid_2x1,cxy(17,2),txy(17,2),yellow)). 
pos(rhs(out0_green5_7_20_9_21,rot180,sid_u_3x2,cxy(8,20),txy(8,20),green)). 
pos(rhs(out0_cyan7_7_8_9_10,rot90,sid_u_3x2,cxy(8,9),txy(8,9),cyan)). 
pos(rhs(out0_green7_7_12_9_14,rot90,sid_u_3x2,cxy(8,13),txy(8,13),green)). 
pos(rhs(out0_green7_7_16_9_18,rot90,sid_u_3x2,cxy(8,17),txy(8,17),green)). 
pos(rhs(out0_yellow7_11_4_13_6,rot90,sid_u_3x2,cxy(12,5),txy(12,5),yellow)). 
pos(rhs(out0_red7_11_8_13_10,rot90,sid_u_3x2,cxy(12,9),txy(12,9),red)). 
pos(rhs(out0_red7_15_8_17_10,rot90,sid_u_3x2,cxy(16,9),txy(16,9),red)). 
pos(rhs(out0_red7_19_8_21_10,rot90,sid_u_3x2,cxy(20,9),txy(20,9),red)). 
pos(rhs(out0_black0_8_21_8_21,sameR,sid_1x1,cxy(8,21),txy(8,21),black)). 
pos(rhs(out0_black0_1_1_21_21,sameR,s13706499,cxy(11,11),txy(11,11),black)). 
