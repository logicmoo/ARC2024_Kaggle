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
lhs(in1_blue5_6_10_8_12,sameR,s2822656,cxy(7,11),txy(7,11),no_child). 
lhs(in1_silver15_1_6_15_6,sameR,sid_12,cxy(8,6),txy(8,6),no_child). 
lhs(in1_yellow7_11_2_13_4,rot90,s15307279,cxy(12,3),txy(12,3),no_child). 
lhs(in1_red5_7_2_9_4,sameR,s15307279,cxy(8,3),txy(8,3),no_child). 
lhs(in1_blue5_3_2_5_4,sameR,s2822656,cxy(4,3),txy(4,3),no_child). 
lhs(in1_black0_5_9_9_13,sameR,s4705663,cxy(7,11),txy(7,11),no_child). 
lhs(in1_black0_1_7_15_7,rot90,sid_21,cxy(8,7),txy(8,7),no_child). 
lhs(in1_black0_1_1_15_5,rot90,s12974445,cxy(8,3),txy(13,4),no_child). 
pos(rhs(out1_blue1_8_6_8_6,sameR,sid_11,cxy(8,6),txy(8,6))). 
pos(rhs(out1_blue1_6_6_6_6,sameR,sid_11,cxy(6,6),txy(6,6))). 
pos(rhs(out1_blue1_7_5_7_5,sameR,sid_11,cxy(7,5),txy(7,5))). 
pos(rhs(out1_blue1_8_4_8_4,sameR,sid_11,cxy(8,4),txy(8,4))). 
pos(rhs(out1_blue1_6_4_6_4,sameR,sid_11,cxy(6,4),txy(6,4))). 
pos(rhs(out1_yellow7_6_1_8_3,rot90,s15307279,cxy(7,2),txy(7,2))). 
pos(rhs(out1_black0_7_4_7_4,sameR,sid_11,cxy(7,4),txy(7,4))). 
pos(rhs(out1_black0_5_1_9_7,sameR,s14764600,cxy(7,5),txy(7,5))). 
