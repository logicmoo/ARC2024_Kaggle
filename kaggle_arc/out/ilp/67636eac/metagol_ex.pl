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
lhs(in0_red5_2_2_4_4,sameR,sid_plus_3x3,cxy(3,3),txy(3,3),no_child). 
lhs(in0_green5_5_6_7_8,sameR,sid_plus_3x3,cxy(6,7),txy(6,7),no_child). 
lhs(in0_cyan5_14_3_16_5,sameR,sid_plus_3x3,cxy(15,4),txy(15,4),no_child). 
lhs(in1_green4_3_2_5_4,sameR,sid_hollow_diamond_3x3,cxy(4,3),txy(4,3),1). 
lhs(in1_blue4_4_7_6_9,sameR,sid_hollow_diamond_3x3,cxy(5,8),txy(5,8),1). 
lhs(in1_cyan4_5_12_7_14,sameR,sid_hollow_diamond_3x3,cxy(6,13),txy(6,13),1). 
lhs(in1_black0_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),no_child). 
lhs(in1_black0_5_8_5_8,sameR,sid_1x1,cxy(5,8),txy(5,8),no_child). 
lhs(in1_black0_6_13_6_13,sameR,sid_1x1,cxy(6,13),txy(6,13),no_child). 
lhs(in2_blue5_2_7_4_9,sameR,sid_X_3x3,cxy(3,8),txy(3,8),no_child). 
lhs(in2_red5_4_2_6_4,sameR,sid_X_3x3,cxy(5,3),txy(5,3),no_child). 
lhs(in0_yellow7_2_4_4_6,sameR,s16715379,cxy(3,5),txy(3,5),no_child). 
lhs(in0_red7_7_5_9_7,sameR,s16715379,cxy(8,6),txy(8,6),no_child). 
lhs(in0_green7_11_3_13_5,sameR,s16715379,cxy(12,4),txy(12,4),no_child). 
lhs(in0_blue7_15_4_17_6,sameR,s16715379,cxy(16,5),txy(16,5),no_child). 
pos(rhs(out0_black0_3_1_4_1,rot90,sid_1x2,cxy(4,1),txy(4,1))). 
pos(rhs(out0_black0_3_3_4_3,rot90,sid_1x2,cxy(4,3),txy(4,3))). 
pos(rhs(out0_black0_6_1_7_1,rot90,sid_1x2,cxy(7,1),txy(7,1))). 
pos(rhs(out0_black0_6_3_7_3,rot90,sid_1x2,cxy(7,3),txy(7,3))). 
pos(rhs(out0_red5_1_1_3_3,sameR,sid_plus_3x3,cxy(2,2),txy(2,2))). 
pos(rhs(out0_green5_4_1_6_3,sameR,sid_plus_3x3,cxy(5,2),txy(5,2))). 
pos(rhs(out0_cyan5_7_1_9_3,sameR,sid_plus_3x3,cxy(8,2),txy(8,2))). 
pos(rhs(out0_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1))). 
pos(rhs(out0_black0_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3))). 
pos(rhs(out0_black0_9_1_9_1,sameR,sid_1x1,cxy(9,1),txy(9,1))). 
pos(rhs(out0_black0_9_3_9_3,sameR,sid_1x1,cxy(9,3),txy(9,3))). 
pos(rhs(out1_black0_1_3_1_4,sameR,sid_1x2,cxy(1,4),txy(1,4))). 
pos(rhs(out1_black0_1_6_1_7,sameR,sid_1x2,cxy(1,7),txy(1,7))). 
pos(rhs(out1_black0_3_3_3_4,sameR,sid_1x2,cxy(3,4),txy(3,4))). 
pos(rhs(out1_black0_3_6_3_7,sameR,sid_1x2,cxy(3,7),txy(3,7))). 
pos(rhs(out1_green4_1_1_3_3,sameR,sid_hollow_diamond_3x3,cxy(2,2),txy(2,2))). 
pos(rhs(out1_blue4_1_4_3_6,sameR,sid_hollow_diamond_3x3,cxy(2,5),txy(2,5))). 
pos(rhs(out1_cyan4_1_7_3_9,sameR,sid_hollow_diamond_3x3,cxy(2,8),txy(2,8))). 
pos(rhs(out1_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1))). 
pos(rhs(out1_black0_1_9_1_9,sameR,sid_1x1,cxy(1,9),txy(1,9))). 
pos(rhs(out1_black0_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2))). 
pos(rhs(out1_black0_2_5_2_5,sameR,sid_1x1,cxy(2,5),txy(2,5))). 
pos(rhs(out1_black0_2_8_2_8,sameR,sid_1x1,cxy(2,8),txy(2,8))). 
pos(rhs(out1_black0_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1))). 
pos(rhs(out1_black0_3_9_3_9,sameR,sid_1x1,cxy(3,9),txy(3,9))). 
pos(rhs(out2_black0_2_3_2_4,sameR,sid_1x2,cxy(2,4),txy(2,4))). 
pos(rhs(out2_red5_1_1_3_3,sameR,sid_X_3x3,cxy(2,2),txy(2,2))). 
pos(rhs(out2_blue5_1_4_3_6,sameR,sid_X_3x3,cxy(2,5),txy(2,5))). 
pos(rhs(out2_black0_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2))). 
pos(rhs(out2_black0_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5))). 
pos(rhs(out2_black0_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1))). 
pos(rhs(out2_black0_2_6_2_6,sameR,sid_1x1,cxy(2,6),txy(2,6))). 
pos(rhs(out2_black0_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2))). 
pos(rhs(out2_black0_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5))). 
pos(rhs(out0_yellow7_1_1_3_3,sameR,s16715379,cxy(2,2),txy(2,2))). 
pos(rhs(out0_red7_4_1_6_3,sameR,s16715379,cxy(5,2),txy(5,2))). 
pos(rhs(out0_green7_7_1_9_3,sameR,s16715379,cxy(8,2),txy(8,2))). 
pos(rhs(out0_blue7_10_1_12_3,sameR,s16715379,cxy(11,2),txy(11,2))). 
pos(rhs(out0_black0_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1))). 
pos(rhs(out0_black0_2_3_2_3,sameR,sid_1x1,cxy(2,3),txy(2,3))). 
pos(rhs(out0_black0_5_1_5_1,sameR,sid_1x1,cxy(5,1),txy(5,1))). 
pos(rhs(out0_black0_5_3_5_3,sameR,sid_1x1,cxy(5,3),txy(5,3))). 
pos(rhs(out0_black0_8_1_8_1,sameR,sid_1x1,cxy(8,1),txy(8,1))). 
pos(rhs(out0_black0_8_3_8_3,sameR,sid_1x1,cxy(8,3),txy(8,3))). 
pos(rhs(out0_black0_11_1_11_1,sameR,sid_1x1,cxy(11,1),txy(11,1))). 
pos(rhs(out0_black0_11_3_11_3,sameR,sid_1x1,cxy(11,3),txy(11,3))). 
