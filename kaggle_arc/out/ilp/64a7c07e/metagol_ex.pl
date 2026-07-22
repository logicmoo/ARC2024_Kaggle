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
lhs(in0_cyan8_2_2_4_4,sameR,sid_hollow_3x3,cxy(3,3),txy(3,3),1). 
lhs(in0_cyan1_2_7_2_7,sameR,sid_1x1,cxy(2,7),txy(2,7),no_child). 
lhs(in0_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),no_child). 
lhs(in1_cyan4_1_2_2_3,sameR,sid_1x1,cxy(2,3),txy(1,2),no_child). 
lhs(in2_cyan4_5_9_6_10,sameR,sid_1x1,cxy(6,10),txy(5,9),no_child). 
lhs(in2_cyan12_2_2_5_5,sameR,sid_u_3x2,cxy(4,4),txy(2,2),no_child). 
lhs(in0_black0_4_4_4_5,sameR,sid_1x2,cxy(4,5),txy(4,5),no_child). 
lhs(in0_cyan3_5_9_6_10,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(6,10),txy(6,10),no_child). 
lhs(in0_cyan13_2_2_6_6,rot90,s10632248,cxy(4,4),txy(4,4),1). 
pos(rhs(out0_cyan8_5_2_7_4,sameR,sid_hollow_3x3,cxy(6,3),txy(6,3))). 
pos(rhs(out0_cyan1_3_7_3_7,sameR,sid_1x1,cxy(3,7),txy(3,7))). 
pos(rhs(out0_black0_6_3_6_3,sameR,sid_1x1,cxy(6,3),txy(6,3))). 
pos(rhs(out1_cyan4_3_2_4_3,sameR,sid_1x1,cxy(4,3),txy(3,2))). 
pos(rhs(out2_cyan4_7_9_8_10,sameR,sid_1x1,cxy(8,10),txy(7,9))). 
pos(rhs(out2_cyan12_6_2_9_5,sameR,sid_u_3x2,cxy(8,4),txy(6,2))). 
pos(rhs(out0_black0_9_4_9_5,sameR,sid_1x2,cxy(9,5),txy(9,5))). 
pos(rhs(out0_cyan3_7_9_8_10,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(8,10),txy(8,10))). 
pos(rhs(out0_cyan13_7_2_11_6,rot90,s10632248,cxy(9,4),txy(9,4))). 
