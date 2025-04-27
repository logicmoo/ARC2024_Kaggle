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
lhs(in0_red4_2_4_3_5,sameR,sid_1x1,cxy(3,5),txy(2,4),no_child). 
lhs(in0_red4_5_4_6_5,sameR,sid_1x1,cxy(6,5),txy(5,4),no_child). 
lhs(in0_blue1_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5),no_child). 
lhs(in0_blue1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5),no_child). 
lhs(in0_blue1_7_5_7_5,sameR,sid_1x1,cxy(7,5),txy(7,5),no_child). 
lhs(in1_green2_1_5_2_5,sameR,sid_2x1,cxy(2,5),txy(2,5),no_child). 
lhs(in1_green2_5_5_6_5,sameR,sid_2x1,cxy(6,5),txy(6,5),no_child). 
lhs(in1_red3_3_3_3_5,rot90,sid_2x1,cxy(3,4),txy(3,4),no_child). 
lhs(in1_red3_7_3_7_5,rot90,sid_2x1,cxy(7,4),txy(7,4),no_child). 
lhs(in1_blue1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5),no_child). 
lhs(in1_blue1_8_5_8_5,sameR,sid_1x1,cxy(8,5),txy(8,5),no_child). 
lhs(in2_green2_2_4_2_5,rot90,sid_2x1,cxy(2,5),txy(2,5),no_child). 
lhs(in2_green2_5_4_5_5,rot90,sid_2x1,cxy(5,5),txy(5,5),no_child). 
lhs(in2_green2_8_4_8_5,rot90,sid_2x1,cxy(8,5),txy(8,5),no_child). 
lhs(in2_red2_3_5_4_5,sameR,sid_2x1,cxy(4,5),txy(4,5),no_child). 
lhs(in2_yellow2_6_3_7_3,sameR,sid_2x1,cxy(7,3),txy(7,3),no_child). 
lhs(in2_red2_9_5_10_5,sameR,sid_2x1,cxy(10,5),txy(10,5),no_child). 
lhs(in2_yellow3_1_3_1_5,rot90,sid_2x1,cxy(1,4),txy(1,4),no_child). 
lhs(in2_black0_1_1_2_3,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(2,2),txy(1,1),no_child). 
lhs(in2_green8_5_4_8_5,sameR,sid_3x1,cxy(7,5),txy(5,4),2). 
lhs(in2_green6_2_4_5_5,sameR,sid_u_3x2,cxy(4,5),txy(2,4),3). 
lhs(in2_black0_3_1_4_4,sameR,sid_1x2,cxy(4,3),txy(4,3),no_child). 
lhs(in2_black0_5_1_7_3,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(6,2),txy(6,2),no_child). 
lhs(in2_green12_2_4_8_5,sameR,s1894223,cxy(5,5),txy(7,4),6). 
lhs(in2_black0_8_1_15_3,rot90,sid_1x2,cxy(12,2),txy(22,3),no_child). 
lhs(in2_black0_11_1_15_5,sameR,sid_1x1,cxy(13,3),txy(25,5),no_child). 
lhs(in2_black0_9_1_15_4,rot90,sid_1x2,cxy(12,3),txy(23,4),no_child). 
lhs(in0_black0_3_1_3_2,sameR,sid_1x2,cxy(3,2),txy(3,2),no_child). 
lhs(in0_black0_7_1_7_2,sameR,sid_1x2,cxy(7,2),txy(7,2),no_child). 
lhs(in0_purple3_1_4_2_5,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(1,5),txy(1,5),no_child). 
lhs(in0_purple3_5_4_6_5,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(5,5),txy(5,5),no_child). 
lhs(in0_purple3_9_4_10_5,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(9,5),txy(9,5),1). 
lhs(in0_red4_2_3_3_5,rot90,sid_t180_3x2,cxy(3,4),txy(3,4),no_child). 
lhs(in0_red4_6_3_7_5,rot90,sid_t180_3x2,cxy(7,4),txy(7,4),no_child). 
lhs(in0_black0_1_1_2_3,sameR,sid_1x2,cxy(2,2),txy(2,2),no_child). 
lhs(in0_black0_4_1_6_3,sameR,sid_1x1,cxy(5,2),txy(9,3),no_child). 
lhs(in0_black0_8_1_15_3,rot90,sid_1x2,cxy(12,2),txy(22,3),no_child). 
lhs(in0_black0_11_1_15_5,sameR,sid_1x1,cxy(13,3),txy(25,5),no_child). 
lhs(in0_black0_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),no_child). 
lhs(in0_green1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5),no_child). 
lhs(in0_black0_8_4_8_4,sameR,sid_1x1,cxy(8,4),txy(8,4),no_child). 
lhs(in0_green1_8_5_8_5,sameR,sid_1x1,cxy(8,5),txy(8,5),no_child). 
lhs(in0_red1_10_4_10_4,sameR,sid_1x1,cxy(10,4),txy(10,4),no_child). 
pos(rhs(out0_red4_2_4_3_5,sameR,sid_1x1,cxy(3,5),txy(2,4))). 
pos(rhs(out0_red4_5_4_6_5,sameR,sid_1x1,cxy(6,5),txy(5,4))). 
pos(rhs(out0_red4_8_4_9_5,sameR,sid_1x1,cxy(9,5),txy(8,4))). 
pos(rhs(out0_red4_11_4_12_5,sameR,sid_1x1,cxy(12,5),txy(11,4))). 
pos(rhs(out0_red4_14_4_15_5,sameR,sid_1x1,cxy(15,5),txy(14,4))). 
pos(rhs(out0_blue1_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5))). 
pos(rhs(out0_blue1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5))). 
pos(rhs(out0_blue1_7_5_7_5,sameR,sid_1x1,cxy(7,5),txy(7,5))). 
pos(rhs(out0_blue1_10_5_10_5,sameR,sid_1x1,cxy(10,5),txy(10,5))). 
pos(rhs(out0_blue1_13_5_13_5,sameR,sid_1x1,cxy(13,5),txy(13,5))). 
pos(rhs(out1_green2_1_5_2_5,sameR,sid_2x1,cxy(2,5),txy(2,5))). 
pos(rhs(out1_green2_5_5_6_5,sameR,sid_2x1,cxy(6,5),txy(6,5))). 
pos(rhs(out1_green2_9_5_10_5,sameR,sid_2x1,cxy(10,5),txy(10,5))). 
pos(rhs(out1_green2_13_5_14_5,sameR,sid_2x1,cxy(14,5),txy(14,5))). 
pos(rhs(out1_red3_3_3_3_5,rot90,sid_2x1,cxy(3,4),txy(3,4))). 
pos(rhs(out1_red3_7_3_7_5,rot90,sid_2x1,cxy(7,4),txy(7,4))). 
pos(rhs(out1_red3_11_3_11_5,rot90,sid_2x1,cxy(11,4),txy(11,4))). 
pos(rhs(out1_red3_15_3_15_5,rot90,sid_2x1,cxy(15,4),txy(15,4))). 
pos(rhs(out1_black0_1_1_2_4,sameR,sid_1x2,cxy(2,3),txy(1,1))). 
pos(rhs(out1_blue1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5))). 
pos(rhs(out1_blue1_8_5_8_5,sameR,sid_1x1,cxy(8,5),txy(8,5))). 
pos(rhs(out1_blue1_12_5_12_5,sameR,sid_1x1,cxy(12,5),txy(12,5))). 
pos(rhs(out2_green2_2_4_2_5,rot90,sid_2x1,cxy(2,5),txy(2,5))). 
pos(rhs(out2_green2_5_4_5_5,rot90,sid_2x1,cxy(5,5),txy(5,5))). 
pos(rhs(out2_green2_8_4_8_5,rot90,sid_2x1,cxy(8,5),txy(8,5))). 
pos(rhs(out2_green2_11_4_11_5,rot90,sid_2x1,cxy(11,5),txy(11,5))). 
pos(rhs(out2_green2_14_4_14_5,rot90,sid_2x1,cxy(14,5),txy(14,5))). 
pos(rhs(out2_red2_3_5_4_5,sameR,sid_2x1,cxy(4,5),txy(4,5))). 
pos(rhs(out2_red2_9_5_10_5,sameR,sid_2x1,cxy(10,5),txy(10,5))). 
pos(rhs(out2_yellow3_1_3_1_5,rot90,sid_2x1,cxy(1,4),txy(1,4))). 
pos(rhs(out2_yellow6_6_3_7_5,rot90,sid_2x1,cxy(7,4),txy(7,4))). 
pos(rhs(out2_yellow6_12_3_13_5,rot90,sid_2x1,cxy(13,4),txy(13,4))). 
pos(rhs(out2_green8_5_4_8_5,sameR,sid_3x1,cxy(7,5),txy(5,4))). 
pos(rhs(out2_green8_11_4_14_5,sameR,sid_3x1,cxy(13,5),txy(11,4))). 
pos(rhs(out2_green6_2_4_5_5,sameR,sid_u_3x2,cxy(4,5),txy(2,4))). 
pos(rhs(out2_green6_8_4_11_5,sameR,sid_u_3x2,cxy(10,5),txy(8,4))). 
pos(rhs(out2_green12_5_4_11_5,flipH,s1894223,cxy(8,5),txy(6,4))). 
pos(rhs(out2_green12_2_4_8_5,sameR,s1894223,cxy(5,5),txy(7,4))). 
pos(rhs(out2_green12_8_4_14_5,sameR,s1894223,cxy(11,5),txy(13,4))). 
pos(rhs(out2_red1_15_5_15_5,sameR,sid_1x1,cxy(15,5),txy(15,5))). 
pos(rhs(out0_black0_3_1_3_2,sameR,sid_1x2,cxy(3,2),txy(3,2))). 
pos(rhs(out0_black0_7_1_7_2,sameR,sid_1x2,cxy(7,2),txy(7,2))). 
pos(rhs(out0_black0_11_1_11_2,sameR,sid_1x2,cxy(11,2),txy(11,2))). 
pos(rhs(out0_black0_15_1_15_2,sameR,sid_1x2,cxy(15,2),txy(15,2))). 
pos(rhs(out0_purple3_1_4_2_5,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(1,5),txy(1,5))). 
pos(rhs(out0_purple3_5_4_6_5,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(5,5),txy(5,5))). 
pos(rhs(out0_purple3_9_4_10_5,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(9,5),txy(9,5))). 
pos(rhs(out0_purple3_13_4_14_5,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(13,5),txy(13,5))). 
pos(rhs(out0_red4_2_3_3_5,rot90,sid_t180_3x2,cxy(3,4),txy(3,4))). 
pos(rhs(out0_red4_6_3_7_5,rot90,sid_t180_3x2,cxy(7,4),txy(7,4))). 
pos(rhs(out0_red4_10_3_11_5,rot90,sid_t180_3x2,cxy(11,4),txy(11,4))). 
pos(rhs(out0_red4_14_3_15_5,rot90,sid_t180_3x2,cxy(15,4),txy(15,4))). 
pos(rhs(out0_black0_1_1_2_3,sameR,sid_1x2,cxy(2,2),txy(2,2))). 
pos(rhs(out0_black0_4_1_6_3,sameR,sid_1x1,cxy(5,2),txy(9,3))). 
pos(rhs(out0_black0_8_1_10_3,sameR,sid_1x1,cxy(10,2),txy(17,3))). 
pos(rhs(out0_black0_12_1_14_3,sameR,sid_1x1,cxy(14,2),txy(25,3))). 
pos(rhs(out0_black0_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4))). 
pos(rhs(out0_green1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5))). 
pos(rhs(out0_black0_8_4_8_4,sameR,sid_1x1,cxy(8,4),txy(8,4))). 
pos(rhs(out0_green1_8_5_8_5,sameR,sid_1x1,cxy(8,5),txy(8,5))). 
pos(rhs(out0_black0_12_4_12_4,sameR,sid_1x1,cxy(12,4),txy(12,4))). 
pos(rhs(out0_green1_12_5_12_5,sameR,sid_1x1,cxy(12,5),txy(12,5))). 
