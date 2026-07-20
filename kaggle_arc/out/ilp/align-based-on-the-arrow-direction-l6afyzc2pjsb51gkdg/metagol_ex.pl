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
lhs(in0_black0_1_1_4_4,sameR,s5668778,cxy(3,3),txy(3,3),black,no_child). 
lhs(in0_blue13_1_1_5_5,sameR,s61820,cxy(3,3),txy(3,3),blue,1). 
lhs(in1_black0_2_1_5_4,sameR,s5668778,cxy(4,3),txy(2,1),black,no_child). 
lhs(in1_red13_1_1_5_5,rot270,s61820,cxy(3,3),txy(3,3),red,1). 
lhs(in2_black0_2_2_5_5,sameR,s5668778,cxy(4,4),txy(4,4),black,no_child). 
lhs(in2_green13_1_1_5_5,rot180,s61820,cxy(3,3),txy(3,3),green,1). 
lhs(in3_black0_1_2_4_5,sameR,s5668778,cxy(3,4),txy(1,2),black,no_child). 
lhs(in3_cyan13_1_1_5_5,rot90,s61820,cxy(3,3),txy(3,3),cyan,1). 
lhs(in0_black0_2_1_5_4,sameR,s5668778,cxy(4,3),txy(2,1),black,no_child). 
lhs(in0_orange13_1_1_5_5,rot270,s61820,cxy(3,3),txy(3,3),orange,1). 
pos(rhs(out0_blue4_2_2_5_5,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(4,4),txy(2,2),blue)). 
pos(rhs(out0_black0_1_1_5_5,sameR,s11778174,cxy(3,3),txy(3,3),black)). 
pos(rhs(out1_red4_1_2_4_5,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(3,4),txy(3,4),red)). 
pos(rhs(out1_black0_1_1_5_5,sameR,s11778174,cxy(3,3),txy(3,3),black)). 
pos(rhs(out2_green4_1_1_4_4,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(3,3),txy(1,1),green)). 
pos(rhs(out2_black0_1_1_5_5,sameR,s11778174,cxy(3,3),txy(3,3),black)). 
pos(rhs(out3_cyan4_2_1_5_4,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(4,3),txy(4,3),cyan)). 
pos(rhs(out3_black0_1_1_5_5,sameR,s11778174,cxy(3,3),txy(3,3),black)). 
pos(rhs(out0_orange4_1_2_4_5,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(3,4),txy(3,4),orange)). 
pos(rhs(out0_black0_1_1_5_5,sameR,s11778174,cxy(3,3),txy(3,3),black)). 
