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
lhs(in0_cyan3_7_2_8_3,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(7,2),txy(7,2),cyan,no_child). 
lhs(in0_green3_4_10_5_11,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(4,11),txy(4,11),green,no_child). 
lhs(in0_red3_2_4_3_5,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(3,4),txy(3,4),red,no_child). 
lhs(in0_blue3_8_8_9_9,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(9,9),txy(9,9),blue,no_child). 
lhs(in0_black0_1_1_13_13,sameR,s11301843,cxy(7,7),txy(7,7),black,no_child). 
lhs(in1_blue3_3_4_4_5,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(3,4),txy(3,4),blue,no_child). 
lhs(in1_yellow3_5_10_6_11,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(5,11),txy(5,11),yellow,no_child). 
lhs(in1_cyan3_9_2_10_3,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(10,2),txy(10,2),cyan,no_child). 
lhs(in1_red3_8_6_9_7,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(9,7),txy(9,7),red,no_child). 
lhs(in1_black0_1_1_13_13,sameR,s10222346,cxy(7,7),txy(7,7),black,no_child). 
lhs(in0_green3_3_10_4_11,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(3,10),txy(3,10),green,no_child). 
lhs(in0_blue3_7_7_8_8,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(7,8),txy(7,8),blue,no_child). 
lhs(in0_cyan3_11_3_12_4,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(12,3),txy(12,3),cyan,no_child). 
lhs(in0_purple3_3_3_4_4,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(4,4),txy(4,4),purple,no_child). 
lhs(in0_black0_1_1_13_13,sameR,s11261021,cxy(7,7),txy(7,7),black,no_child). 
pos(rhs(out0_cyan3_1_1_2_2,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(1,1),txy(1,1),cyan)). 
pos(rhs(out0_green3_1_3_2_4,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(1,4),txy(1,4),green)). 
pos(rhs(out0_red3_3_1_4_2,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(4,1),txy(4,1),red)). 
pos(rhs(out0_blue3_3_3_4_4,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(4,4),txy(4,4),blue)). 
pos(rhs(out0_black0_2_2_3_3,sameR,sid_1x1,cxy(3,3),txy(2,2),black)). 
pos(rhs(out1_blue3_1_1_2_2,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(1,1),txy(1,1),blue)). 
pos(rhs(out1_yellow3_1_3_2_4,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(1,4),txy(1,4),yellow)). 
pos(rhs(out1_cyan3_3_1_4_2,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(4,1),txy(4,1),cyan)). 
pos(rhs(out1_red3_3_3_4_4,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(4,4),txy(4,4),red)). 
pos(rhs(out1_black0_2_2_3_3,sameR,sid_1x1,cxy(3,3),txy(2,2),black)). 
pos(rhs(out0_green3_1_1_2_2,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(1,1),txy(1,1),green)). 
pos(rhs(out0_blue3_1_3_2_4,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(1,4),txy(1,4),blue)). 
pos(rhs(out0_cyan3_3_1_4_2,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(4,1),txy(4,1),cyan)). 
pos(rhs(out0_purple3_3_3_4_4,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(4,4),txy(4,4),purple)). 
pos(rhs(out0_black0_2_2_3_3,sameR,sid_1x1,cxy(3,3),txy(2,2),black)). 
