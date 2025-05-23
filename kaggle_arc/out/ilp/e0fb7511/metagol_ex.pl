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
lhs(in0_blue142_1_1,nw_loc(1,1),se_loc(13,13),rot90,blue,142,s6479830,18). 
lhs(in0_black0_1_12,nw_loc(1,12),se_loc(1,12),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_2_11,nw_loc(2,11),se_loc(2,11),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_12_10,nw_loc(12,10),se_loc(12,10),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_10_10,nw_loc(10,10),se_loc(10,10),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_9_8,nw_loc(9,8),se_loc(9,8),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_4_8,nw_loc(4,8),se_loc(4,8),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_1_8,nw_loc(1,8),se_loc(1,8),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_7_7,nw_loc(7,7),se_loc(7,7),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_1_6,nw_loc(1,6),se_loc(1,6),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_13_4,nw_loc(13,4),se_loc(13,4),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_2_2,nw_loc(2,2),se_loc(2,2),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_8_1,nw_loc(8,1),se_loc(8,1),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_3_1,nw_loc(3,1),se_loc(3,1),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_10_13,nw_loc(10,13),se_loc(11,13),rot90,black,2,sid_21,no_child). 
lhs(in0_black0_7_11,nw_loc(7,11),se_loc(8,12),sameR,black,3,s11261491,no_child). 
lhs(in0_black0_3_5,nw_loc(3,5),se_loc(4,5),rot90,black,2,sid_21,no_child). 
lhs(in0_black0_10_4,nw_loc(10,4),se_loc(10,5),sameR,black,2,sid_21,no_child). 
lhs(in0_black0_5_3,nw_loc(5,3),se_loc(7,5),sameR,black,5,s11869152,no_child). 
lhs(in1_blue1_11_2,nw_loc(11,2),se_loc(11,2),sameR,blue,1,sid_11,no_child). 
lhs(in1_blue1_10_1,nw_loc(10,1),se_loc(10,1),sameR,blue,1,sid_11,no_child). 
lhs(in1_blue122_1_1,nw_loc(1,1),se_loc(13,13),rot180,blue,122,s1139061,31). 
lhs(in1_black0_5_13,nw_loc(5,13),se_loc(5,13),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_2_13,nw_loc(2,13),se_loc(2,13),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_10_12,nw_loc(10,12),se_loc(10,12),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_8_12,nw_loc(8,12),se_loc(8,12),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_6_12,nw_loc(6,12),se_loc(6,12),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_9_11,nw_loc(9,11),se_loc(9,11),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_5_11,nw_loc(5,11),se_loc(5,11),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_8_10,nw_loc(8,10),se_loc(8,10),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_10_9,nw_loc(10,9),se_loc(10,9),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_4_9,nw_loc(4,9),se_loc(4,9),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_13_8,nw_loc(13,8),se_loc(13,8),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_6_8,nw_loc(6,8),se_loc(6,8),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_7_7,nw_loc(7,7),se_loc(7,7),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_8_6,nw_loc(8,6),se_loc(8,6),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_4_6,nw_loc(4,6),se_loc(4,6),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_12_5,nw_loc(12,5),se_loc(12,5),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_2_5,nw_loc(2,5),se_loc(2,5),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_9_4,nw_loc(9,4),se_loc(9,4),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_6_4,nw_loc(6,4),se_loc(6,4),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_11_3,nw_loc(11,3),se_loc(11,3),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_2_3,nw_loc(2,3),se_loc(2,3),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_12_2,nw_loc(12,2),se_loc(12,2),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_3_2,nw_loc(3,2),se_loc(3,2),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_11_1,nw_loc(11,1),se_loc(11,1),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_11_12,nw_loc(11,12),se_loc(12,13),sameR,black,3,s11261491,no_child). 
lhs(in1_black0_1_7,nw_loc(1,7),se_loc(3,11),sameR,black,8,s7401653,no_child). 
lhs(in1_black0_10_6,nw_loc(10,6),se_loc(11,7),sameR,black,3,s11261491,no_child). 
lhs(in1_black0_3_4,nw_loc(3,4),se_loc(4,4),rot90,black,2,sid_21,no_child). 
lhs(in1_black0_9_1,nw_loc(9,1),se_loc(10,2),sameR,black,3,s11261491,no_child). 
lhs(in1_black0_4_1,nw_loc(4,1),se_loc(5,1),rot90,black,2,sid_21,no_child). 
lhs(in2_blue1_13_1,nw_loc(13,1),se_loc(13,1),sameR,blue,1,sid_11,no_child). 
lhs(in2_blue135_1_1,nw_loc(1,1),se_loc(13,13),rot180,blue,135,s4422851,23). 
lhs(in2_black0_11_13,nw_loc(11,13),se_loc(11,13),sameR,black,1,sid_11,no_child). 
lhs(in2_black0_4_13,nw_loc(4,13),se_loc(4,13),sameR,black,1,sid_11,no_child). 
lhs(in2_black0_1_13,nw_loc(1,13),se_loc(1,13),sameR,black,1,sid_11,no_child). 
lhs(in2_black0_7_12,nw_loc(7,12),se_loc(7,12),sameR,black,1,sid_11,no_child). 
lhs(in2_black0_10_11,nw_loc(10,11),se_loc(10,11),sameR,black,1,sid_11,no_child). 
lhs(in2_black0_1_10,nw_loc(1,10),se_loc(1,10),sameR,black,1,sid_11,no_child). 
lhs(in2_black0_11_9,nw_loc(11,9),se_loc(11,9),sameR,black,1,sid_11,no_child). 
lhs(in2_black0_12_7,nw_loc(12,7),se_loc(12,7),sameR,black,1,sid_11,no_child). 
lhs(in2_black0_9_7,nw_loc(9,7),se_loc(9,7),sameR,black,1,sid_11,no_child). 
lhs(in2_black0_9_4,nw_loc(9,4),se_loc(9,4),sameR,black,1,sid_11,no_child). 
lhs(in2_black0_5_4,nw_loc(5,4),se_loc(5,4),sameR,black,1,sid_11,no_child). 
lhs(in2_black0_2_4,nw_loc(2,4),se_loc(2,4),sameR,black,1,sid_11,no_child). 
lhs(in2_black0_13_2,nw_loc(13,2),se_loc(13,2),sameR,black,1,sid_11,no_child). 
lhs(in2_black0_4_2,nw_loc(4,2),se_loc(4,2),sameR,black,1,sid_11,no_child). 
lhs(in2_black0_12_1,nw_loc(12,1),se_loc(12,1),sameR,black,1,sid_11,no_child). 
lhs(in2_black0_12_11,nw_loc(12,11),se_loc(12,12),sameR,black,2,sid_21,no_child). 
lhs(in2_black0_8_10,nw_loc(8,10),se_loc(9,10),rot90,black,2,sid_21,no_child). 
lhs(in2_black0_13_8,nw_loc(13,8),se_loc(13,9),sameR,black,2,sid_21,no_child). 
lhs(in2_black0_3_7,nw_loc(3,7),se_loc(5,9),sameR,black,6,s841047,no_child). 
lhs(in2_black0_10_6,nw_loc(10,6),se_loc(11,6),rot90,black,2,sid_21,no_child). 
lhs(in2_black0_1_6,nw_loc(1,6),se_loc(1,7),sameR,black,2,sid_21,no_child). 
lhs(in2_black0_9_1,nw_loc(9,1),se_loc(9,2),sameR,black,2,sid_21,no_child). 
lhs(in0_blue1_4_7,nw_loc(4,7),se_loc(4,7),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_12_3,nw_loc(12,3),se_loc(12,3),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_13_1,nw_loc(13,1),se_loc(13,1),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue114_1_1,nw_loc(1,1),se_loc(13,13),rot270,blue,114,s6824674,28). 
lhs(in0_black0_9_13,nw_loc(9,13),se_loc(9,13),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_7_13,nw_loc(7,13),se_loc(7,13),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_13_12,nw_loc(13,12),se_loc(13,12),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_5_12,nw_loc(5,12),se_loc(5,12),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_9_11,nw_loc(9,11),se_loc(9,11),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_1_11,nw_loc(1,11),se_loc(1,11),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_2_10,nw_loc(2,10),se_loc(2,10),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_7_9,nw_loc(7,9),se_loc(7,9),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_4_8,nw_loc(4,8),se_loc(4,8),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_5_7,nw_loc(5,7),se_loc(5,7),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_11_6,nw_loc(11,6),se_loc(11,6),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_4_6,nw_loc(4,6),se_loc(4,6),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_6_5,nw_loc(6,5),se_loc(6,5),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_12_4,nw_loc(12,4),se_loc(12,4),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_10_4,nw_loc(10,4),se_loc(10,4),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_1_4,nw_loc(1,4),se_loc(1,4),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_11_3,nw_loc(11,3),se_loc(11,3),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_8_3,nw_loc(8,3),se_loc(8,3),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_1_2,nw_loc(1,2),se_loc(1,2),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_4_10,nw_loc(4,10),se_loc(5,11),sameR,black,3,s11261491,no_child). 
lhs(in0_black0_9_8,nw_loc(9,8),se_loc(11,12),sameR,black,8,s8398750,no_child). 
lhs(in0_black0_13_6,nw_loc(13,6),se_loc(13,9),sameR,black,4,sid_21,no_child). 
lhs(in0_black0_7_6,nw_loc(7,6),se_loc(7,7),sameR,black,2,sid_21,no_child). 
lhs(in0_black0_2_6,nw_loc(2,6),se_loc(3,8),sameR,black,4,s4868024,no_child). 
lhs(in0_black0_11_1,nw_loc(11,1),se_loc(13,3),sameR,black,5,s4505979,no_child). 
lhs(in0_black0_3_1,nw_loc(3,1),se_loc(5,4),sameR,black,7,s9515561,no_child). 
pos(rhs(out0_cyan2_10_13,nw_loc(10,13),se_loc(11,13),sameR,cyan,2,sid_12)). 
pos(rhs(out0_cyan3_7_11,nw_loc(7,11),se_loc(8,12),rot90,cyan,3,s11261491)). 
pos(rhs(out0_cyan2_3_5,nw_loc(3,5),se_loc(4,5),sameR,cyan,2,sid_12)). 
pos(rhs(out0_cyan2_10_4,nw_loc(10,4),se_loc(10,5),rot90,cyan,2,sid_12)). 
pos(rhs(out0_cyan5_5_3,nw_loc(5,3),se_loc(7,5),sameR,cyan,5,s11869152)). 
pos(rhs(out0_blue142_1_1,nw_loc(1,1),se_loc(13,13),rot90,blue,142,s6479830)). 
pos(rhs(out0_black0_1_12,nw_loc(1,12),se_loc(1,12),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_2_11,nw_loc(2,11),se_loc(2,11),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_12_10,nw_loc(12,10),se_loc(12,10),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_10_10,nw_loc(10,10),se_loc(10,10),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_9_8,nw_loc(9,8),se_loc(9,8),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_4_8,nw_loc(4,8),se_loc(4,8),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_1_8,nw_loc(1,8),se_loc(1,8),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_7_7,nw_loc(7,7),se_loc(7,7),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_1_6,nw_loc(1,6),se_loc(1,6),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_13_4,nw_loc(13,4),se_loc(13,4),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_2_2,nw_loc(2,2),se_loc(2,2),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_8_1,nw_loc(8,1),se_loc(8,1),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_3_1,nw_loc(3,1),se_loc(3,1),sameR,black,1,sid_11)). 
pos(rhs(out1_blue1_11_2,nw_loc(11,2),se_loc(11,2),sameR,blue,1,sid_11)). 
pos(rhs(out1_blue1_10_1,nw_loc(10,1),se_loc(10,1),sameR,blue,1,sid_11)). 
pos(rhs(out1_cyan3_11_12,nw_loc(11,12),se_loc(12,13),sameR,cyan,3,s11261491)). 
pos(rhs(out1_cyan8_1_7,nw_loc(1,7),se_loc(3,11),rot90,cyan,8,s931177)). 
pos(rhs(out1_cyan3_10_6,nw_loc(10,6),se_loc(11,7),rot270,cyan,3,s11261491)). 
pos(rhs(out1_cyan2_3_4,nw_loc(3,4),se_loc(4,4),sameR,cyan,2,sid_12)). 
pos(rhs(out1_cyan3_9_1,nw_loc(9,1),se_loc(10,2),rot270,cyan,3,s11261491)). 
pos(rhs(out1_cyan2_4_1,nw_loc(4,1),se_loc(5,1),sameR,cyan,2,sid_12)). 
pos(rhs(out1_blue122_1_1,nw_loc(1,1),se_loc(13,13),rot180,blue,122,s1139061)). 
pos(rhs(out1_black0_5_13,nw_loc(5,13),se_loc(5,13),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_2_13,nw_loc(2,13),se_loc(2,13),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_10_12,nw_loc(10,12),se_loc(10,12),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_8_12,nw_loc(8,12),se_loc(8,12),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_6_12,nw_loc(6,12),se_loc(6,12),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_9_11,nw_loc(9,11),se_loc(9,11),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_5_11,nw_loc(5,11),se_loc(5,11),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_8_10,nw_loc(8,10),se_loc(8,10),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_10_9,nw_loc(10,9),se_loc(10,9),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_4_9,nw_loc(4,9),se_loc(4,9),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_13_8,nw_loc(13,8),se_loc(13,8),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_6_8,nw_loc(6,8),se_loc(6,8),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_7_7,nw_loc(7,7),se_loc(7,7),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_8_6,nw_loc(8,6),se_loc(8,6),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_4_6,nw_loc(4,6),se_loc(4,6),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_12_5,nw_loc(12,5),se_loc(12,5),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_2_5,nw_loc(2,5),se_loc(2,5),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_9_4,nw_loc(9,4),se_loc(9,4),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_6_4,nw_loc(6,4),se_loc(6,4),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_11_3,nw_loc(11,3),se_loc(11,3),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_2_3,nw_loc(2,3),se_loc(2,3),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_12_2,nw_loc(12,2),se_loc(12,2),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_3_2,nw_loc(3,2),se_loc(3,2),sameR,black,1,sid_11)). 
pos(rhs(out1_black0_11_1,nw_loc(11,1),se_loc(11,1),sameR,black,1,sid_11)). 
pos(rhs(out2_blue1_13_1,nw_loc(13,1),se_loc(13,1),sameR,blue,1,sid_11)). 
pos(rhs(out2_cyan2_12_11,nw_loc(12,11),se_loc(12,12),rot90,cyan,2,sid_12)). 
pos(rhs(out2_cyan2_8_10,nw_loc(8,10),se_loc(9,10),sameR,cyan,2,sid_12)). 
pos(rhs(out2_cyan2_13_8,nw_loc(13,8),se_loc(13,9),rot90,cyan,2,sid_12)). 
pos(rhs(out2_cyan6_3_7,nw_loc(3,7),se_loc(5,9),rot180,cyan,6,s841047)). 
pos(rhs(out2_cyan2_10_6,nw_loc(10,6),se_loc(11,6),sameR,cyan,2,sid_12)). 
pos(rhs(out2_cyan2_1_6,nw_loc(1,6),se_loc(1,7),rot90,cyan,2,sid_12)). 
pos(rhs(out2_cyan2_9_1,nw_loc(9,1),se_loc(9,2),rot90,cyan,2,sid_12)). 
pos(rhs(out2_blue135_1_1,nw_loc(1,1),se_loc(13,13),rot180,blue,135,s4422851)). 
pos(rhs(out2_black0_11_13,nw_loc(11,13),se_loc(11,13),sameR,black,1,sid_11)). 
pos(rhs(out2_black0_4_13,nw_loc(4,13),se_loc(4,13),sameR,black,1,sid_11)). 
pos(rhs(out2_black0_1_13,nw_loc(1,13),se_loc(1,13),sameR,black,1,sid_11)). 
pos(rhs(out2_black0_7_12,nw_loc(7,12),se_loc(7,12),sameR,black,1,sid_11)). 
pos(rhs(out2_black0_10_11,nw_loc(10,11),se_loc(10,11),sameR,black,1,sid_11)). 
pos(rhs(out2_black0_1_10,nw_loc(1,10),se_loc(1,10),sameR,black,1,sid_11)). 
pos(rhs(out2_black0_11_9,nw_loc(11,9),se_loc(11,9),sameR,black,1,sid_11)). 
pos(rhs(out2_black0_12_7,nw_loc(12,7),se_loc(12,7),sameR,black,1,sid_11)). 
pos(rhs(out2_black0_9_7,nw_loc(9,7),se_loc(9,7),sameR,black,1,sid_11)). 
pos(rhs(out2_black0_9_4,nw_loc(9,4),se_loc(9,4),sameR,black,1,sid_11)). 
pos(rhs(out2_black0_5_4,nw_loc(5,4),se_loc(5,4),sameR,black,1,sid_11)). 
pos(rhs(out2_black0_2_4,nw_loc(2,4),se_loc(2,4),sameR,black,1,sid_11)). 
pos(rhs(out2_black0_13_2,nw_loc(13,2),se_loc(13,2),sameR,black,1,sid_11)). 
pos(rhs(out2_black0_4_2,nw_loc(4,2),se_loc(4,2),sameR,black,1,sid_11)). 
pos(rhs(out2_black0_12_1,nw_loc(12,1),se_loc(12,1),sameR,black,1,sid_11)). 
pos(rhs(out0_blue1_4_7,nw_loc(4,7),se_loc(4,7),sameR,blue,1,sid_11)). 
pos(rhs(out0_blue1_12_3,nw_loc(12,3),se_loc(12,3),sameR,blue,1,sid_11)). 
pos(rhs(out0_blue1_13_1,nw_loc(13,1),se_loc(13,1),sameR,blue,1,sid_11)). 
pos(rhs(out0_cyan3_4_10,nw_loc(4,10),se_loc(5,11),rot180,cyan,3,s11261491)). 
pos(rhs(out0_cyan8_9_8,nw_loc(9,8),se_loc(11,12),rot90,cyan,8,s1184686)). 
pos(rhs(out0_cyan4_13_6,nw_loc(13,6),se_loc(13,9),rot90,cyan,4,sid_12)). 
pos(rhs(out0_cyan2_7_6,nw_loc(7,6),se_loc(7,7),rot90,cyan,2,sid_12)). 
pos(rhs(out0_cyan4_2_6,nw_loc(2,6),se_loc(3,8),rot270,cyan,4,s15307279)). 
pos(rhs(out0_cyan5_11_1,nw_loc(11,1),se_loc(13,3),sameR,cyan,5,s11068904)). 
pos(rhs(out0_cyan7_3_1,nw_loc(3,1),se_loc(5,4),rot90,cyan,7,s8347357)). 
pos(rhs(out0_blue114_1_1,nw_loc(1,1),se_loc(13,13),rot270,blue,114,s6824674)). 
pos(rhs(out0_black0_9_13,nw_loc(9,13),se_loc(9,13),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_7_13,nw_loc(7,13),se_loc(7,13),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_13_12,nw_loc(13,12),se_loc(13,12),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_5_12,nw_loc(5,12),se_loc(5,12),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_9_11,nw_loc(9,11),se_loc(9,11),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_1_11,nw_loc(1,11),se_loc(1,11),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_2_10,nw_loc(2,10),se_loc(2,10),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_7_9,nw_loc(7,9),se_loc(7,9),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_4_8,nw_loc(4,8),se_loc(4,8),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_5_7,nw_loc(5,7),se_loc(5,7),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_11_6,nw_loc(11,6),se_loc(11,6),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_4_6,nw_loc(4,6),se_loc(4,6),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_6_5,nw_loc(6,5),se_loc(6,5),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_12_4,nw_loc(12,4),se_loc(12,4),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_10_4,nw_loc(10,4),se_loc(10,4),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_1_4,nw_loc(1,4),se_loc(1,4),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_11_3,nw_loc(11,3),se_loc(11,3),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_8_3,nw_loc(8,3),se_loc(8,3),sameR,black,1,sid_11)). 
pos(rhs(out0_black0_1_2,nw_loc(1,2),se_loc(1,2),sameR,black,1,sid_11)). 
