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
lhs(in0_red4_3_1_5_3,sameR,sid_hollow_diamond_3x3,cxy(4,2),txy(4,2),1). 
lhs(in0_red4_10_1_12_3,sameR,sid_hollow_diamond_3x3,cxy(11,2),txy(11,2),1). 
lhs(in0_red4_10_5_12_7,sameR,sid_hollow_diamond_3x3,cxy(11,6),txy(11,6),1). 
lhs(in0_black0_9_4_13_8,sameR,sid_hollow_3x3,cxy(11,6),txy(11,6),no_child). 
lhs(in0_black0_4_2_4_2,sameR,sid_1x1,cxy(4,2),txy(4,2),no_child). 
lhs(in0_black0_11_2_11_2,sameR,sid_1x1,cxy(11,2),txy(11,2),no_child). 
lhs(in0_black0_11_6_11_6,sameR,sid_1x1,cxy(11,6),txy(11,6),no_child). 
lhs(in1_red4_2_10_4_12,sameR,sid_hollow_diamond_3x3,cxy(3,11),txy(3,11),1). 
lhs(in1_red4_3_3_5_5,sameR,sid_hollow_diamond_3x3,cxy(4,4),txy(4,4),1). 
lhs(in1_red4_8_3_10_5,sameR,sid_hollow_diamond_3x3,cxy(9,4),txy(9,4),1). 
lhs(in1_red4_8_9_10_11,sameR,sid_hollow_diamond_3x3,cxy(9,10),txy(9,10),1). 
lhs(in1_red4_13_3_15_5,sameR,sid_hollow_diamond_3x3,cxy(14,4),txy(14,4),1). 
lhs(in1_black0_1_1_3_3,sameR,sid_1x1,cxy(2,2),txy(2,2),no_child). 
lhs(in1_black0_5_11_8_14,sameR,sid_1x1,cxy(7,13),txy(5,11),no_child). 
lhs(in1_black0_1_9_5_13,sameR,sid_hollow_3x3,cxy(3,11),txy(3,11),no_child). 
lhs(in1_black0_2_2_6_6,sameR,sid_hollow_3x3,cxy(4,4),txy(4,4),no_child). 
lhs(in1_black0_7_2_11_6,sameR,sid_hollow_3x3,cxy(9,4),txy(9,4),no_child). 
lhs(in1_black0_7_8_11_12,sameR,sid_hollow_3x3,cxy(9,10),txy(9,10),no_child). 
lhs(in1_black0_12_2_16_6,sameR,sid_hollow_3x3,cxy(14,4),txy(14,4),no_child). 
lhs(in1_black0_3_11_3_11,sameR,sid_1x1,cxy(3,11),txy(3,11),no_child). 
lhs(in1_black0_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),no_child). 
lhs(in1_black0_9_4_9_4,sameR,sid_1x1,cxy(9,4),txy(9,4),no_child). 
lhs(in1_black0_9_10_9_10,sameR,sid_1x1,cxy(9,10),txy(9,10),no_child). 
lhs(in1_black0_14_4_14_4,sameR,sid_1x1,cxy(14,4),txy(14,4),no_child). 
lhs(in2_black0_10_3_11_4,sameR,sid_1x1,cxy(11,4),txy(10,3),no_child). 
lhs(in2_black0_1_11_4_12,rot90,sid_1x2,cxy(3,12),txy(1,11),no_child). 
lhs(in2_red4_4_4_6_6,sameR,sid_hollow_diamond_3x3,cxy(5,5),txy(5,5),1). 
lhs(in2_red4_4_9_6_11,sameR,sid_hollow_diamond_3x3,cxy(5,10),txy(5,10),1). 
lhs(in2_red4_8_1_10_3,sameR,sid_hollow_diamond_3x3,cxy(9,2),txy(9,2),1). 
lhs(in2_red4_11_4_13_6,sameR,sid_hollow_diamond_3x3,cxy(12,5),txy(12,5),1). 
lhs(in2_red4_11_9_13_11,sameR,sid_hollow_diamond_3x3,cxy(12,10),txy(12,10),1). 
lhs(in2_black0_13_1_15_4,sameR,sid_1x2,cxy(14,3),txy(14,3),no_child). 
lhs(in2_black0_13_6_15_9,sameR,sid_1x2,cxy(14,8),txy(14,8),no_child). 
lhs(in2_black0_11_1_15_3,rot90,sid_1x2,cxy(13,2),txy(13,2),no_child). 
lhs(in2_black0_1_1_4_4,sameR,sid_1x1,cxy(3,3),txy(1,1),no_child). 
lhs(in2_black0_1_6_4_9,sameR,sid_1x1,cxy(3,8),txy(1,6),no_child). 
lhs(in2_black0_6_6_11_9,rot90,sid_1x2,cxy(9,8),txy(6,6),no_child). 
lhs(in2_black0_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5),no_child). 
lhs(in2_black0_5_10_5_10,sameR,sid_1x1,cxy(5,10),txy(5,10),no_child). 
lhs(in2_black0_9_2_9_2,sameR,sid_1x1,cxy(9,2),txy(9,2),no_child). 
lhs(in2_black0_12_5_12_5,sameR,sid_1x1,cxy(12,5),txy(12,5),no_child). 
lhs(in2_black0_12_10_12_10,sameR,sid_1x1,cxy(12,10),txy(12,10),no_child). 
lhs(in0_black0_1_1_2_2,sameR,sid_1x1,cxy(2,2),txy(1,1),no_child). 
lhs(in0_black0_1_8_2_9,sameR,sid_1x1,cxy(2,9),txy(1,8),no_child). 
lhs(in0_black0_12_8_15_9,rot90,sid_1x2,cxy(14,9),txy(12,8),no_child). 
lhs(in0_red4_2_2_4_4,sameR,sid_hollow_diamond_3x3,cxy(3,3),txy(3,3),1). 
lhs(in0_red4_2_6_4_8,sameR,sid_hollow_diamond_3x3,cxy(3,7),txy(3,7),1). 
lhs(in0_red4_7_4_9_6,sameR,sid_hollow_diamond_3x3,cxy(8,5),txy(8,5),1). 
lhs(in0_red4_10_6_12_8,sameR,sid_hollow_diamond_3x3,cxy(11,7),txy(11,7),1). 
lhs(in0_black0_4_4_6_6,sameR,sid_1x1,cxy(5,5),txy(5,5),no_child). 
lhs(in0_black0_5_7_9_9,rot90,sid_1x2,cxy(7,8),txy(7,8),no_child). 
lhs(in0_black0_9_1_15_4,rot90,sid_1x2,cxy(12,3),txy(12,3),no_child). 
lhs(in0_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),no_child). 
lhs(in0_black0_3_7_3_7,sameR,sid_1x1,cxy(3,7),txy(3,7),no_child). 
lhs(in0_black0_8_5_8_5,sameR,sid_1x1,cxy(8,5),txy(8,5),no_child). 
lhs(in0_black0_11_7_11_7,sameR,sid_1x1,cxy(11,7),txy(11,7),no_child). 
pos(rhs(out0_blue4_6_2_9_2,sameR,sid_2x1,cxy(8,2),txy(8,2))). 
pos(rhs(out0_black0_5_1_10_1,rot90,sid_1x2,cxy(8,1),txy(8,1))). 
pos(rhs(out0_red4_3_1_5_3,sameR,sid_hollow_diamond_3x3,cxy(4,2),txy(4,2))). 
pos(rhs(out0_red4_10_1_12_3,sameR,sid_hollow_diamond_3x3,cxy(11,2),txy(11,2))). 
pos(rhs(out0_red4_10_5_12_7,sameR,sid_hollow_diamond_3x3,cxy(11,6),txy(11,6))). 
pos(rhs(out0_black0_12_7_15_10,sameR,sid_1x1,cxy(14,9),txy(12,7))). 
pos(rhs(out0_black0_4_2_4_2,sameR,sid_1x1,cxy(4,2),txy(4,2))). 
pos(rhs(out0_black0_11_2_11_2,sameR,sid_1x1,cxy(11,2),txy(11,2))). 
pos(rhs(out0_blue1_11_4_11_4,sameR,sid_1x1,cxy(11,4),txy(11,4))). 
pos(rhs(out0_black0_11_6_11_6,sameR,sid_1x1,cxy(11,6),txy(11,6))). 
pos(rhs(out1_blue2_6_4_7_4,sameR,sid_2x1,cxy(7,4),txy(7,4))). 
pos(rhs(out1_blue2_11_4_12_4,sameR,sid_2x1,cxy(12,4),txy(12,4))). 
pos(rhs(out1_blue3_9_6_9_8,rot90,sid_2x1,cxy(9,7),txy(9,7))). 
pos(rhs(out1_red4_2_10_4_12,sameR,sid_hollow_diamond_3x3,cxy(3,11),txy(3,11))). 
pos(rhs(out1_red4_3_3_5_5,sameR,sid_hollow_diamond_3x3,cxy(4,4),txy(4,4))). 
pos(rhs(out1_red4_8_3_10_5,sameR,sid_hollow_diamond_3x3,cxy(9,4),txy(9,4))). 
pos(rhs(out1_red4_8_9_10_11,sameR,sid_hollow_diamond_3x3,cxy(9,10),txy(9,10))). 
pos(rhs(out1_red4_13_3_15_5,sameR,sid_hollow_diamond_3x3,cxy(14,4),txy(14,4))). 
pos(rhs(out1_black0_1_1_3_3,sameR,sid_1x1,cxy(2,2),txy(2,2))). 
pos(rhs(out1_black0_5_11_8_14,sameR,sid_1x1,cxy(7,13),txy(5,11))). 
pos(rhs(out1_black0_1_9_5_13,sameR,sid_hollow_3x3,cxy(3,11),txy(3,11))). 
pos(rhs(out1_black0_3_11_3_11,sameR,sid_1x1,cxy(3,11),txy(3,11))). 
pos(rhs(out1_black0_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4))). 
pos(rhs(out1_black0_9_4_9_4,sameR,sid_1x1,cxy(9,4),txy(9,4))). 
pos(rhs(out1_black0_9_10_9_10,sameR,sid_1x1,cxy(9,10),txy(9,10))). 
pos(rhs(out1_black0_14_4_14_4,sameR,sid_1x1,cxy(14,4),txy(14,4))). 
pos(rhs(out2_blue2_5_7_5_8,rot90,sid_2x1,cxy(5,8),txy(5,8))). 
pos(rhs(out2_blue2_12_7_12_8,rot90,sid_2x1,cxy(12,8),txy(12,8))). 
pos(rhs(out2_blue4_7_5_10_5,sameR,sid_2x1,cxy(9,5),txy(9,5))). 
pos(rhs(out2_blue4_7_10_10_10,sameR,sid_2x1,cxy(9,10),txy(9,10))). 
pos(rhs(out2_black0_10_3_11_4,sameR,sid_1x1,cxy(11,4),txy(10,3))). 
pos(rhs(out2_black0_1_11_4_12,rot90,sid_1x2,cxy(3,12),txy(1,11))). 
pos(rhs(out2_red4_4_4_6_6,sameR,sid_hollow_diamond_3x3,cxy(5,5),txy(5,5))). 
pos(rhs(out2_red4_4_9_6_11,sameR,sid_hollow_diamond_3x3,cxy(5,10),txy(5,10))). 
pos(rhs(out2_red4_8_1_10_3,sameR,sid_hollow_diamond_3x3,cxy(9,2),txy(9,2))). 
pos(rhs(out2_red4_11_4_13_6,sameR,sid_hollow_diamond_3x3,cxy(12,5),txy(12,5))). 
pos(rhs(out2_red4_11_9_13_11,sameR,sid_hollow_diamond_3x3,cxy(12,10),txy(12,10))). 
pos(rhs(out2_black0_13_1_15_4,sameR,sid_1x2,cxy(14,3),txy(14,3))). 
pos(rhs(out2_black0_13_6_15_9,sameR,sid_1x2,cxy(14,8),txy(14,8))). 
pos(rhs(out2_black0_11_1_15_3,rot90,sid_1x2,cxy(13,2),txy(13,2))). 
pos(rhs(out2_black0_1_1_4_4,sameR,sid_1x1,cxy(3,3),txy(1,1))). 
pos(rhs(out2_black0_1_6_4_9,sameR,sid_1x1,cxy(3,8),txy(1,6))). 
pos(rhs(out2_black0_6_6_11_9,rot90,sid_1x2,cxy(9,8),txy(6,6))). 
pos(rhs(out2_black0_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5))). 
pos(rhs(out2_black0_5_10_5_10,sameR,sid_1x1,cxy(5,10),txy(5,10))). 
pos(rhs(out2_black0_9_2_9_2,sameR,sid_1x1,cxy(9,2),txy(9,2))). 
pos(rhs(out2_black0_12_5_12_5,sameR,sid_1x1,cxy(12,5),txy(12,5))). 
pos(rhs(out2_black0_12_10_12_10,sameR,sid_1x1,cxy(12,10),txy(12,10))). 
pos(rhs(out0_black0_1_1_2_2,sameR,sid_1x1,cxy(2,2),txy(1,1))). 
pos(rhs(out0_black0_1_8_2_9,sameR,sid_1x1,cxy(2,9),txy(1,8))). 
pos(rhs(out0_blue5_5_7_9_7,sameR,sid_2x1,cxy(7,7),txy(7,7))). 
pos(rhs(out0_red4_2_2_4_4,sameR,sid_hollow_diamond_3x3,cxy(3,3),txy(3,3))). 
pos(rhs(out0_red4_2_6_4_8,sameR,sid_hollow_diamond_3x3,cxy(3,7),txy(3,7))). 
pos(rhs(out0_red4_7_4_9_6,sameR,sid_hollow_diamond_3x3,cxy(8,5),txy(8,5))). 
pos(rhs(out0_red4_10_6_12_8,sameR,sid_hollow_diamond_3x3,cxy(11,7),txy(11,7))). 
pos(rhs(out0_black0_4_4_6_6,sameR,sid_1x1,cxy(5,5),txy(5,5))). 
pos(rhs(out0_black0_9_1_15_4,rot90,sid_1x2,cxy(12,3),txy(12,3))). 
pos(rhs(out0_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3))). 
pos(rhs(out0_blue1_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5))). 
pos(rhs(out0_black0_3_7_3_7,sameR,sid_1x1,cxy(3,7),txy(3,7))). 
pos(rhs(out0_black0_8_5_8_5,sameR,sid_1x1,cxy(8,5),txy(8,5))). 
pos(rhs(out0_black0_11_7_11_7,sameR,sid_1x1,cxy(11,7),txy(11,7))). 
