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
lhs(in0_red4_1_1_2_2,sameR,sid_1x1,cxy(2,2),txy(1,1),red,no_child). 
lhs(in0_black0_1_1_5_5,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(3,3),txy(3,3),black,no_child). 
lhs(in1_red4_2_2_3_3,sameR,sid_1x1,cxy(3,3),txy(2,2),red,no_child). 
lhs(in1_red4_4_4_5_5,sameR,sid_1x1,cxy(5,5),txy(4,4),red,no_child). 
lhs(in1_black0_1_4_3_5,rot90,sid_1x2,cxy(2,5),txy(2,5),black,no_child). 
lhs(in1_black0_4_1_5_3,sameR,sid_1x2,cxy(5,2),txy(5,2),black,no_child). 
lhs(in2_red4_2_2_3_3,sameR,sid_1x1,cxy(3,3),txy(2,2),red,no_child). 
lhs(in2_red8_3_3_6_6,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(5,5),txy(5,5),red,no_child). 
lhs(in2_black0_1_1_7_7,sameR,s595307,cxy(4,4),txy(5,5),black,no_child). 
lhs(in3_red4_2_2_3_3,sameR,sid_1x1,cxy(3,3),txy(2,2),red,no_child). 
lhs(in3_red4_3_5_4_6,sameR,sid_1x1,cxy(4,6),txy(3,5),red,no_child). 
lhs(in3_black0_1_1_6_6,sameR,s7269102,cxy(4,3),txy(1,6),black,no_child). 
lhs(in4_red4_2_2_3_3,sameR,sid_1x1,cxy(3,3),txy(2,2),red,no_child). 
lhs(in4_black0_1_1_3_3,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(2,2),txy(2,2),black,no_child). 
lhs(in5_red4_2_3_3_4,sameR,sid_1x1,cxy(3,4),txy(2,3),red,no_child). 
lhs(in5_red4_2_6_3_7,sameR,sid_1x1,cxy(3,7),txy(2,6),red,no_child). 
lhs(in5_red4_5_1_6_2,sameR,sid_1x1,cxy(6,2),txy(5,1),red,no_child). 
lhs(in5_red4_5_4_6_5,sameR,sid_1x1,cxy(6,5),txy(5,4),red,no_child). 
lhs(in5_black0_1_1_7_7,sameR,s9288350,cxy(4,4),txy(4,4),black,no_child). 
lhs(in6_red4_1_5_2_6,sameR,sid_1x1,cxy(2,6),txy(1,5),red,no_child). 
lhs(in6_red4_2_2_3_3,sameR,sid_1x1,cxy(3,3),txy(2,2),red,no_child). 
lhs(in6_red4_5_1_6_2,sameR,sid_1x1,cxy(6,2),txy(5,1),red,no_child). 
lhs(in6_red8_4_4_7_7,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(6,6),txy(6,6),red,no_child). 
lhs(in6_black0_1_1_7_7,sameR,s5665186,cxy(4,4),txy(6,6),black,no_child). 
lhs(in7_red4_4_4_5_5,sameR,sid_1x1,cxy(5,5),txy(4,4),red,no_child). 
lhs(in7_red4_6_1_7_2,sameR,sid_1x1,cxy(7,2),txy(6,1),red,no_child). 
lhs(in7_red8_1_1_4_4,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(3,3),txy(3,3),red,no_child). 
lhs(in7_black0_1_1_7_7,sameR,s3181755,cxy(4,5),txy(1,1),black,no_child). 
lhs(in0_red4_4_1_5_2,sameR,sid_1x1,cxy(5,2),txy(4,1),red,no_child). 
lhs(in0_red8_1_2_4_5,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(3,4),txy(1,2),red,no_child). 
lhs(in0_black0_1_1_6_6,sameR,s4860520,cxy(4,4),txy(1,1),black,no_child). 
lhs(in1_red4_1_2_2_3,sameR,sid_1x1,cxy(2,3),txy(1,2),red,no_child). 
lhs(in1_red4_3_5_4_6,sameR,sid_1x1,cxy(4,6),txy(3,5),red,no_child). 
lhs(in1_red8_4_2_7_5,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(6,4),txy(4,2),red,no_child). 
lhs(in1_black0_1_1_7_7,sameR,s3350503,cxy(4,4),txy(4,4),black,no_child). 
lhs(in2_red4_1_1_2_2,sameR,sid_1x1,cxy(2,2),txy(1,1),red,no_child). 
lhs(in2_red4_2_4_3_5,sameR,sid_1x1,cxy(3,5),txy(2,4),red,no_child). 
lhs(in2_red4_5_6_6_7,sameR,sid_1x1,cxy(6,7),txy(5,6),red,no_child). 
lhs(in2_red8_4_1_7_4,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(6,3),txy(4,1),red,no_child). 
lhs(in2_black0_1_1_7_7,sameR,s9992804,cxy(4,4),txy(4,4),black,no_child). 
pos(rhs(out0_blue1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),blue)). 
pos(rhs(out0_black0_1_1_3_3,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(2,2),txy(2,2),black)). 
pos(rhs(out1_blue1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),blue)). 
pos(rhs(out1_blue1_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1),blue)). 
pos(rhs(out1_black0_1_1_3_3,sameR,s4868024,cxy(2,2),txy(2,2),black)). 
pos(rhs(out2_blue3_1_1_3_2,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(2,1),txy(2,1),blue)). 
pos(rhs(out2_black0_1_1_3_3,sameR,s15852889,cxy(2,2),txy(2,2),black)). 
pos(rhs(out3_blue1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),blue)). 
pos(rhs(out3_blue1_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1),blue)). 
pos(rhs(out3_black0_1_1_3_3,sameR,s4868024,cxy(2,2),txy(2,2),black)). 
pos(rhs(out4_blue1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),blue)). 
pos(rhs(out4_black0_1_1_3_3,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(2,2),txy(2,2),black)). 
pos(rhs(out5_blue4_1_1_3_3,rot180,s5506581,cxy(2,2),txy(2,2),blue)). 
pos(rhs(out5_black0_1_1_3_3,sameR,s15001251,cxy(2,2),txy(3,3),black)). 
pos(rhs(out6_blue5_1_1_3_3,sameR,sid_X_3x3,cxy(2,2),txy(2,2),blue)). 
pos(rhs(out6_black0_1_1_3_3,sameR,sid_hollow_diamond_3x3,cxy(2,2),txy(2,2),black)). 
pos(rhs(out7_blue4_1_1_3_3,rot180,s5506581,cxy(2,2),txy(2,2),blue)). 
pos(rhs(out7_black0_1_1_3_3,sameR,s15001251,cxy(2,2),txy(3,3),black)). 
pos(rhs(out0_blue3_1_1_3_2,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(2,1),txy(2,1),blue)). 
pos(rhs(out0_black0_1_1_3_3,sameR,s15852889,cxy(2,2),txy(2,2),black)). 
pos(rhs(out1_blue4_1_1_3_3,rot180,s5506581,cxy(2,2),txy(2,2),blue)). 
pos(rhs(out1_black0_1_1_3_3,sameR,s15001251,cxy(2,2),txy(3,3),black)). 
pos(rhs(out2_blue5_1_1_3_3,sameR,sid_X_3x3,cxy(2,2),txy(2,2),blue)). 
pos(rhs(out2_black0_1_1_3_3,sameR,sid_hollow_diamond_3x3,cxy(2,2),txy(2,2),black)). 
