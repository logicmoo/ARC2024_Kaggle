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
lhs(in0_silver1_5_9_5_9,sameR,sid_1x1,cxy(5,9),txy(5,9),silver,no_child). 
lhs(in0_green46_1_1_9_9,sameR,s8385054,cxy(5,5),txy(6,7),pen([cc(green,3),cc(cyan,3),cc(green,3),cc(cyan,1),cc(silver,1),cc(cyan,1),cc(green,3),cc(cyan,3),cc(orange,1),cc(silver,1),cc(orange,7),cc(purple,3),cc(silver,1),cc(brown,3),cc(purple,3),cc(brown,3),cc(purple,1),cc(silver,1),cc(purple,1),cc(brown,2),cc(silver,1)]),1). 
lhs(in0_black0_1_1_9_9,sameR,s12090839,cxy(5,5),txy(5,5),black,no_child). 
lhs(in1_red9_4_1_6_3,sameR,sid_1x1,cxy(5,2),txy(5,2),red,no_child). 
lhs(in1_orange8_4_7_6_9,rot270,sid_u_3x2,cxy(5,8),txy(5,8),orange,1). 
lhs(in1_silver1_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4),silver,no_child). 
lhs(in1_silver1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),silver,no_child). 
lhs(in1_silver1_2_7_2_7,sameR,sid_1x1,cxy(2,7),txy(2,7),silver,no_child). 
lhs(in1_silver1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5),silver,no_child). 
lhs(in1_silver1_6_8_6_8,sameR,sid_1x1,cxy(6,8),txy(6,8),silver,no_child). 
lhs(in1_silver1_8_5_8_5,sameR,sid_1x1,cxy(8,5),txy(8,5),silver,no_child). 
lhs(in0_yellow29_1_1_6_9,flipD,s16755656,cxy(4,5),txy(1,1),pen([cc(yellow,1),cc(silver,1),cc(yellow,7),cc(silver,1),cc(green,3),cc(brown,3),cc(silver,1),cc(green,3),cc(brown,1),cc(silver,1),cc(brown,1),cc(green,3),cc(brown,3)]),no_child). 
lhs(in0_silver1_8_1_8_1,sameR,sid_1x1,cxy(8,1),txy(8,1),silver,no_child). 
lhs(in0_silver1_8_4_8_4,sameR,sid_1x1,cxy(8,4),txy(8,4),silver,no_child). 
lhs(in0_black0_1_1_9_9,sameR,s5819547,cxy(5,5),txy(5,5),black,no_child). 
pos(rhs(out0_green1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),green)). 
pos(rhs(out0_purple1_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),purple)). 
pos(rhs(out0_orange1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),orange)). 
pos(rhs(out0_cyan1_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1),cyan)). 
pos(rhs(out0_brown1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),brown)). 
pos(rhs(out0_black0_1_1_3_3,sameR,sid_hollow_diamond_3x3,cxy(2,2),txy(2,2),black)). 
pos(rhs(out1_red1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),red)). 
pos(rhs(out1_orange1_2_3_2_3,sameR,sid_1x1,cxy(2,3),txy(2,3),orange)). 
pos(rhs(out0_yellow1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),yellow)). 
pos(rhs(out0_green1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),green)). 
pos(rhs(out0_brown1_2_3_2_3,sameR,sid_1x1,cxy(2,3),txy(2,3),brown)). 
pos(rhs(out0_black0_1_1_3_3,sameR,s807685,cxy(2,2),txy(2,2),black)). 
