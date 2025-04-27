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
lhs(in0_red1_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),red,no_child). 
lhs(in0_yellow9_2_1_5_5,flipDHV,s15813757,cxy(3,3),txy(3,3),pen([cc(yellow,2),cc(green,1),cc(cyan,2),cc(green,2),cc(cyan,1),cc(green,1)]),no_child). 
lhs(in0_black0_1_1_5_5,sameR,s2216519,cxy(3,3),txy(3,3),black,no_child). 
lhs(in1_red3_1_3_1_5,rot90,sid_2x1,cxy(1,4),txy(1,4),red,no_child). 
lhs(in1_green4_3_1_4_2,sameR,sid_1x1,cxy(4,2),txy(3,1),green,no_child). 
lhs(in1_purple3_4_4_5_5,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(5,5),txy(5,5),purple,no_child). 
lhs(in1_silver1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),silver,no_child). 
lhs(in1_black0_1_1_5_5,sameR,s5414677,cxy(3,3),txy(5,1),black,no_child). 
lhs(in2_brown2_3_4_3_5,rot90,sid_2x1,cxy(3,5),txy(3,5),brown,no_child). 
lhs(in2_yellow4_1_1_2_2,sameR,sid_1x1,cxy(2,2),txy(1,1),yellow,no_child). 
lhs(in2_orange4_4_1_5_3,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(5,2),txy(4,1),orange,no_child). 
lhs(in2_black0_1_1_5_5,sameR,s12632815,cxy(3,4),txy(3,4),black,no_child). 
lhs(in0_blue2_1_5_2_5,sameR,sid_2x1,cxy(2,5),txy(2,5),blue,no_child). 
lhs(in0_silver4_1_1_2_2,sameR,sid_1x1,cxy(2,2),txy(1,1),silver,no_child). 
lhs(in0_cyan4_4_2_5_4,rot90,sid_t180_3x2,cxy(5,3),txy(5,3),cyan,no_child). 
lhs(in0_black0_1_1_5_5,sameR,s875086,cxy(3,3),txy(3,3),black,no_child). 
pos(rhs(out0_cyan1_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),cyan)). 
pos(rhs(out0_green9_2_1_5_5,flipDHV,s15813757,cxy(3,3),txy(3,3),pen([cc(green,2),cc(red,1),cc(yellow,2),cc(red,2),cc(yellow,1),cc(red,1)]))). 
pos(rhs(out0_black0_1_1_5_5,sameR,s2216519,cxy(3,3),txy(3,3),black)). 
pos(rhs(out1_purple3_1_3_1_5,rot90,sid_2x1,cxy(1,4),txy(1,4),purple)). 
pos(rhs(out1_silver4_3_1_4_2,sameR,sid_1x1,cxy(4,2),txy(3,1),silver)). 
pos(rhs(out1_green3_4_4_5_5,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(5,5),txy(5,5),green)). 
pos(rhs(out1_red1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),red)). 
pos(rhs(out1_black0_1_1_5_5,sameR,s5414677,cxy(3,3),txy(5,1),black)). 
pos(rhs(out2_orange2_3_4_3_5,rot90,sid_2x1,cxy(3,5),txy(3,5),orange)). 
pos(rhs(out2_brown4_1_1_2_2,sameR,sid_1x1,cxy(2,2),txy(1,1),brown)). 
pos(rhs(out2_yellow4_4_1_5_3,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(5,2),txy(4,1),yellow)). 
pos(rhs(out2_black0_1_1_5_5,sameR,s12632815,cxy(3,4),txy(3,4),black)). 
pos(rhs(out0_cyan2_1_5_2_5,sameR,sid_2x1,cxy(2,5),txy(2,5),cyan)). 
pos(rhs(out0_blue4_1_1_2_2,sameR,sid_1x1,cxy(2,2),txy(1,1),blue)). 
pos(rhs(out0_silver4_4_2_5_4,rot90,sid_t180_3x2,cxy(5,3),txy(5,3),silver)). 
pos(rhs(out0_black0_1_1_5_5,sameR,s875086,cxy(3,3),txy(3,3),black)). 
