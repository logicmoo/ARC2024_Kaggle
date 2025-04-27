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
lhs(in0_yellow1_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4),yellow,no_child). 
lhs(in0_cyan1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),cyan,no_child). 
lhs(in0_silver1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),silver,no_child). 
lhs(in0_yellow1_4_2_4_2,sameR,sid_1x1,cxy(4,2),txy(4,2),yellow,no_child). 
lhs(in0_brown1_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5),brown,no_child). 
lhs(in0_black0_1_1_5_5,sameR,s3070526,cxy(3,3),txy(3,3),black,no_child). 
lhs(in1_purple2_4_5_5_5,sameR,sid_2x1,cxy(5,5),txy(5,5),pen([cc(purple,1),cc(brown,1)]),no_child). 
lhs(in1_blue3_1_3_3_4,rot90,s13411220,cxy(2,3),txy(1,4),pen([cc(blue,1),cc(cyan,1),cc(purple,1)]),no_child). 
lhs(in1_black0_1_1_5_5,sameR,s16197487,cxy(3,3),txy(3,3),black,no_child). 
lhs(in2_red5_1_3_5_3,sameR,sid_2x1,cxy(3,3),txy(3,3),red,no_child). 
lhs(in2_black0_1_1_5_2,rot90,sid_1x2,cxy(3,2),txy(3,2),black,no_child). 
lhs(in2_black0_1_4_5_5,rot90,sid_1x2,cxy(3,5),txy(3,5),black,no_child). 
lhs(in3_green2_3_3_4_4,rot90,s13666407,cxy(4,4),txy(4,4),pen([cc(green,1),cc(silver,1)]),no_child). 
lhs(in3_green2_1_1_2_2,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(2,2),txy(1,1),green,no_child). 
lhs(in3_green1_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5),green,no_child). 
lhs(in3_black0_1_1_5_5,sameR,s3070526,cxy(3,3),txy(3,3),black,no_child). 
lhs(in0_red1_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4),red,no_child). 
lhs(in0_yellow1_2_3_2_3,sameR,sid_1x1,cxy(2,3),txy(2,3),yellow,no_child). 
lhs(in0_purple1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),purple,no_child). 
lhs(in0_silver1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5),silver,no_child). 
lhs(in0_red1_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5),red,no_child). 
lhs(in0_black0_1_1_5_5,sameR,s16197487,cxy(3,3),txy(3,3),black,no_child). 
pos(rhs(out0_yellow5_1_1_1_5,rot90,sid_2x1,cxy(1,3),txy(1,3),yellow)). 
pos(rhs(out0_cyan5_2_1_2_5,rot90,sid_2x1,cxy(2,3),txy(2,3),cyan)). 
pos(rhs(out0_silver5_3_1_3_5,rot90,sid_2x1,cxy(3,3),txy(3,3),silver)). 
pos(rhs(out0_yellow5_4_1_4_5,rot90,sid_2x1,cxy(4,3),txy(4,3),yellow)). 
pos(rhs(out0_brown5_5_1_5_5,rot90,sid_2x1,cxy(5,3),txy(5,3),brown)). 
pos(rhs(out1_blue5_1_1_1_5,rot90,sid_2x1,cxy(1,3),txy(1,3),blue)). 
pos(rhs(out1_cyan5_2_1_2_5,rot90,sid_2x1,cxy(2,3),txy(2,3),cyan)). 
pos(rhs(out1_brown5_5_1_5_5,rot90,sid_2x1,cxy(5,3),txy(5,3),brown)). 
pos(rhs(out1_purple10_3_1_4_5,rot90,sid_2x1,cxy(4,3),txy(4,3),purple)). 
pos(rhs(out2_red25_1_1_5_5,sameR,sid_1x1,cxy(3,3),txy(3,3),red)). 
pos(rhs(out3_silver5_4_1_4_5,rot90,sid_2x1,cxy(4,3),txy(4,3),silver)). 
pos(rhs(out3_green5_5_1_5_5,rot90,sid_2x1,cxy(5,3),txy(5,3),green)). 
pos(rhs(out3_green15_1_1_3_5,rot90,sid_2x1,cxy(2,3),txy(2,3),green)). 
pos(rhs(out0_red5_1_1_1_5,rot90,sid_2x1,cxy(1,3),txy(1,3),red)). 
pos(rhs(out0_yellow5_2_1_2_5,rot90,sid_2x1,cxy(2,3),txy(2,3),yellow)). 
pos(rhs(out0_purple5_3_1_3_5,rot90,sid_2x1,cxy(3,3),txy(3,3),purple)). 
pos(rhs(out0_silver5_4_1_4_5,rot90,sid_2x1,cxy(4,3),txy(4,3),silver)). 
pos(rhs(out0_red5_5_1_5_5,rot90,sid_2x1,cxy(5,3),txy(5,3),red)). 
