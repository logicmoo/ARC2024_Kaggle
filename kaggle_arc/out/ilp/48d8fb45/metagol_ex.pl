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
lhs(in0_blue5_8_2_10_4,rot90,s11869152,cxy(9,3),txy(10,2),blue,no_child). 
lhs(in0_blue7_6_8_8_10,sameR,sid_t180_3x2,cxy(7,9),txy(7,9),blue,no_child). 
lhs(in0_blue7_3_3_5_6,flipD,s12298352,cxy(4,5),txy(5,6),pen([cc(blue,1),cc(silver,1),cc(blue,5)]),no_child). 
lhs(in0_black0_1_1_10_10,sameR,s12976261,cxy(5,5),txy(10,10),black,no_child). 
lhs(in1_yellow5_2_4_4_6,sameR,s15001251,cxy(3,5),txy(4,6),yellow,no_child). 
lhs(in1_yellow5_7_2_9_5,rot180,s5954242,cxy(8,3),txy(9,4),pen([cc(yellow,4),cc(silver,1)]),no_child). 
lhs(in1_black0_1_1_10_10,sameR,s16472543,cxy(5,6),txy(10,1),black,no_child). 
lhs(in2_red5_2_3_4_5,rot90,s15001251,cxy(3,4),txy(4,3),red,no_child). 
lhs(in2_red6_7_5_9_8,flipV,s16596186,cxy(8,7),txy(9,6),pen([cc(red,5),cc(silver,1)]),no_child). 
lhs(in2_black0_1_1_10_10,sameR,s8213959,cxy(5,6),txy(10,1),black,no_child). 
lhs(in0_green4_2_5_3_7,rot90,sid_t180_3x2,cxy(3,6),txy(3,6),green,no_child). 
lhs(in0_green6_6_7_8_9,sameR,s12760807,cxy(7,8),txy(8,9),green,no_child). 
lhs(in0_silver6_6_1_8_4,sameR,s7610833,cxy(7,3),txy(8,4),pen([cc(silver,1),cc(green,5)]),no_child). 
lhs(in0_black0_1_1_10_10,sameR,s15040645,cxy(5,5),txy(10,10),black,no_child). 
pos(rhs(out0_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),black)). 
pos(rhs(out0_black0_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),black)). 
pos(rhs(out0_black0_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1),black)). 
pos(rhs(out0_blue6_1_1_3_3,sameR,s12760807,cxy(2,2),txy(3,3),blue)). 
pos(rhs(out1_yellow4_1_1_3_3,rot180,s14554160,cxy(2,2),txy(1,1),yellow)). 
pos(rhs(out1_black0_1_1_3_3,sameR,s5145269,cxy(2,2),txy(2,2),black)). 
pos(rhs(out2_black0_3_2_3_3,sameR,sid_1x2,cxy(3,3),txy(3,3),black)). 
pos(rhs(out2_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),black)). 
pos(rhs(out2_black0_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),black)). 
pos(rhs(out2_red5_1_1_3_3,rot90,s11869152,cxy(2,2),txy(3,1),red)). 
pos(rhs(out0_black0_3_1_3_2,sameR,sid_1x2,cxy(3,2),txy(3,2),black)). 
pos(rhs(out0_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),black)). 
pos(rhs(out0_black0_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),black)). 
pos(rhs(out0_green5_1_1_3_3,sameR,sid_tetris_T_Rotated_3x3,cxy(2,2),txy(3,3),green)). 
