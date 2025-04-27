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
lhs(in0_red4_4_9_5_10,sameR,sid_1x1,cxy(5,10),txy(4,9),red,no_child). 
lhs(in0_green4_7_9_8_10,sameR,sid_1x1,cxy(8,10),txy(7,9),green,no_child). 
lhs(in0_yellow4_10_7_10_10,rot90,sid_2x1,cxy(10,9),txy(10,9),yellow,no_child). 
lhs(in0_blue6_1_8_2_10,rot90,sid_2x1,cxy(2,9),txy(2,9),blue,no_child). 
lhs(in0_black0_1_1_10_10,sameR,s15109119,cxy(6,5),txy(1,1),black,no_child). 
lhs(in1_orange4_5_9_6_10,sameR,sid_1x1,cxy(6,10),txy(5,9),orange,no_child). 
lhs(in1_red6_8_9_10_10,sameR,sid_2x1,cxy(9,10),txy(9,10),red,no_child). 
lhs(in1_cyan12_1_7_3_10,rot90,sid_2x1,cxy(2,9),txy(2,9),cyan,no_child). 
lhs(in1_black0_1_1_10_10,sameR,s15359499,cxy(6,5),txy(1,1),black,no_child). 
lhs(in2_red5_6_6_6_10,rot90,sid_2x1,cxy(6,8),txy(6,8),red,no_child). 
lhs(in2_yellow8_1_9_4_10,sameR,sid_2x1,cxy(3,10),txy(1,9),yellow,no_child). 
lhs(in2_green9_8_8_10_10,sameR,sid_1x1,cxy(9,9),txy(9,9),green,no_child). 
lhs(in2_black0_1_1_10_10,sameR,s8237827,cxy(5,5),txy(10,1),black,no_child). 
lhs(in0_purple3_6_8_6_10,rot90,sid_2x1,cxy(6,9),txy(6,9),purple,no_child). 
lhs(in0_green4_8_9_9_10,sameR,sid_1x1,cxy(9,10),txy(8,9),green,no_child). 
lhs(in0_orange4_1_7_1_10,rot90,sid_2x1,cxy(1,9),txy(1,9),orange,no_child). 
lhs(in0_cyan6_3_8_4_10,rot90,sid_2x1,cxy(4,9),txy(4,9),cyan,no_child). 
lhs(in0_black0_1_1_10_10,sameR,s12129420,cxy(6,5),txy(1,2),black,no_child). 
pos(rhs(out0_yellow4_4_5_4_8,rot90,sid_2x1,cxy(4,7),txy(4,7),yellow)). 
pos(rhs(out0_red3_2_3_3_4,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(2,3),txy(2,3),red)). 
pos(rhs(out0_green3_3_4_4_5,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(3,4),txy(3,4),green)). 
pos(rhs(out0_blue5_1_1_2_3,flipDHV,sid_tetris_Z_270_Rotated_2x3,cxy(1,2),txy(2,1),blue)). 
pos(rhs(out0_black0_1_1_10_10,sameR,s15953543,cxy(6,6),txy(6,6),black)). 
pos(rhs(out1_orange3_3_4_4_5,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(3,4),txy(3,4),orange)). 
pos(rhs(out1_red6_4_5_6_6,sameR,sid_2x1,cxy(5,6),txy(5,6),red)). 
pos(rhs(out1_cyan11_1_1_3_4,flipDHV,sid_tetris_Z_270_Rotated_2x3,cxy(2,2),txy(1,4),cyan)). 
pos(rhs(out1_black0_1_1_10_10,sameR,s814721,cxy(6,6),txy(6,6),black)). 
pos(rhs(out2_red4_4_2_4_5,rot90,sid_2x1,cxy(4,4),txy(4,4),red)). 
pos(rhs(out2_yellow7_1_1_4_2,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(2,1),txy(2,1),yellow)). 
pos(rhs(out2_green9_4_6_6_8,sameR,sid_1x1,cxy(5,7),txy(5,7),green)). 
pos(rhs(out2_black0_1_1_10_10,sameR,s10807834,cxy(6,6),txy(6,6),black)). 
pos(rhs(out0_purple2_2_6_2_7,rot90,sid_2x1,cxy(2,7),txy(2,7),purple)). 
pos(rhs(out0_orange3_1_1_1_3,rot90,sid_2x1,cxy(1,2),txy(1,2),orange)). 
pos(rhs(out0_green4_2_8_3_9,sameR,sid_1x1,cxy(3,9),txy(2,8),green)). 
pos(rhs(out0_cyan5_1_4_2_6,flipDHV,sid_tetris_Z_270_Rotated_2x3,cxy(1,5),txy(2,4),cyan)). 
pos(rhs(out0_black0_1_1_10_10,sameR,s148978,cxy(6,6),txy(6,6),black)). 
