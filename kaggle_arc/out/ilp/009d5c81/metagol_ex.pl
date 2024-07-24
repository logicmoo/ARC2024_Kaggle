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
lhs(in0_blue5_2_10_4_12,sameR,sid_plus_3x3,cxy(3,11),txy(3,11),blue,no_child). 
lhs(in0_cyan30_5_2_13_9,sameR,s12516714,cxy(9,5),txy(13,9),cyan,no_child). 
lhs(in0_black0_1_1_14_14,sameR,s502064,cxy(7,8),txy(14,1),black,no_child). 
lhs(in1_blue6_4_11_6_13,sameR,s11399640,cxy(5,12),txy(5,12),blue,no_child). 
lhs(in1_cyan14_5_3_11_5,sameR,s8570574,cxy(8,4),txy(8,4),cyan,no_child). 
lhs(in1_black0_1_1_14_14,sameR,s6071711,cxy(8,8),txy(1,1),black,no_child). 
lhs(in2_black0_5_1_7_2,rot90,s11778174,cxy(6,1),txy(6,1),black,no_child). 
lhs(in2_blue5_8_10_10_12,sameR,sid_plus_3x3,cxy(9,11),txy(9,11),blue,no_child). 
lhs(in2_cyan24_2_1_10_5,sameR,s12800406,cxy(6,3),txy(6,3),cyan,no_child). 
lhs(in2_black0_1_1_14_14,sameR,s1107826,cxy(8,8),txy(1,1),black,no_child). 
lhs(in3_blue6_5_11_7_13,rot90,s12561063,cxy(6,12),txy(6,12),blue,no_child). 
lhs(in3_black0_10_1_14_4,rot90,s4384838,cxy(13,2),txy(10,1),black,no_child). 
lhs(in3_cyan31_5_1_14_8,flipD,s5741363,cxy(10,5),txy(8,1),cyan,no_child). 
lhs(in3_black0_1_1_14_14,sameR,s15072403,cxy(7,8),txy(7,8),black,no_child). 
lhs(in4_blue6_3_9_5_11,sameR,s11399640,cxy(4,10),txy(4,10),blue,no_child). 
lhs(in4_cyan16_6_2_12_7,flipD,s14930528,cxy(9,4),txy(9,4),cyan,no_child). 
lhs(in4_black0_1_1_14_14,sameR,s14163849,cxy(7,8),txy(14,1),black,no_child). 
lhs(in0_black0_7_3_9_4,rot90,s11778174,cxy(8,3),txy(8,3),black,no_child). 
lhs(in0_black0_11_3_13_4,rot90,s11778174,cxy(12,4),txy(12,4),black,no_child). 
lhs(in0_blue6_7_9_9_11,rot90,s12561063,cxy(8,10),txy(8,10),blue,no_child). 
lhs(in0_cyan26_6_2_14_5,flipV,s14078230,cxy(10,4),txy(10,4),cyan,no_child). 
lhs(in0_black0_1_1_14_14,sameR,s6284299,cxy(7,8),txy(14,1),black,no_child). 
pos(rhs(out0_red30_5_2_13_9,sameR,s12516714,cxy(9,5),txy(13,9),red)). 
pos(rhs(out0_black0_1_1_14_14,sameR,s12103810,cxy(7,8),txy(14,1),black)). 
pos(rhs(out1_green14_5_3_11_5,sameR,s8570574,cxy(8,4),txy(8,4),green)). 
pos(rhs(out1_black0_1_1_14_14,sameR,s11504686,cxy(7,8),txy(14,1),black)). 
pos(rhs(out2_black0_5_1_7_2,rot90,s11778174,cxy(6,1),txy(6,1),black)). 
pos(rhs(out2_red24_2_1_10_5,sameR,s12800406,cxy(6,3),txy(6,3),red)). 
pos(rhs(out2_black0_1_1_14_14,sameR,s10411701,cxy(8,8),txy(1,1),black)). 
pos(rhs(out3_black0_10_1_14_4,rot90,s4384838,cxy(13,2),txy(10,1),black)). 
pos(rhs(out3_orange31_5_1_14_8,flipD,s5741363,cxy(10,5),txy(8,1),orange)). 
pos(rhs(out3_black0_1_1_14_14,sameR,s9227143,cxy(7,8),txy(7,8),black)). 
pos(rhs(out4_green16_6_2_12_7,flipD,s14930528,cxy(9,4),txy(9,4),green)). 
pos(rhs(out4_black0_1_1_14_14,sameR,s8920493,cxy(7,8),txy(14,1),black)). 
pos(rhs(out0_black0_7_3_9_4,rot90,s11778174,cxy(8,3),txy(8,3),black)). 
pos(rhs(out0_black0_11_3_13_4,rot90,s11778174,cxy(12,4),txy(12,4),black)). 
pos(rhs(out0_orange26_6_2_14_5,flipV,s14078230,cxy(10,4),txy(10,4),orange)). 
pos(rhs(out0_black0_1_1_14_14,sameR,s11778174,cxy(7,8),txy(14,1),black)). 
