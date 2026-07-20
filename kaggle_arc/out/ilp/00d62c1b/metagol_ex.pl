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
lhs(in0_green6_2_2_5_5,sameR,s10809003,cxy(4,4),txy(4,4),green,no_child). 
lhs(in0_black0_1_1_6_6,sameR,s3217181,cxy(4,4),txy(1,1),black,no_child). 
lhs(in1_green15_3_2_8_8,rot180,s9980084,cxy(5,5),txy(3,2),green,no_child). 
lhs(in1_black0_1_1_10_10,sameR,s5135887,cxy(6,6),txy(1,1),black,no_child). 
lhs(in2_green22_1_1_9_9,sameR,s8721169,cxy(6,5),txy(9,9),green,no_child). 
lhs(in2_black0_1_1_10_10,sameR,s12727439,cxy(5,6),txy(10,1),black,no_child). 
lhs(in3_black0_4_3_5_4,sameR,sid_1x1,cxy(5,4),txy(4,3),black,no_child). 
lhs(in3_green29_3_2_10_10,flipDHV,s14837053,cxy(6,6),txy(3,2),green,no_child). 
lhs(in3_black0_1_1_10_10,sameR,s1469986,cxy(5,6),txy(10,1),black,no_child). 
lhs(in4_green2_13_17_14_18,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(14,18),txy(13,17),green,no_child). 
lhs(in4_black0_10_6_15_9,rot90,sid_1x2,cxy(13,8),txy(10,6),black,no_child). 
lhs(in4_green11_14_13_18_17,sameR,s11486546,cxy(17,15),txy(14,13),green,no_child). 
lhs(in4_green49_5_2_16_16,rot180,s6997219,cxy(11,9),txy(5,3),green,no_child). 
lhs(in4_green1_3_10_3_10,sameR,sid_1x1,cxy(3,10),txy(3,10),green,no_child). 
lhs(in4_green1_5_7_5_7,sameR,sid_1x1,cxy(5,7),txy(5,7),green,no_child). 
lhs(in4_green1_16_12_16_12,sameR,sid_1x1,cxy(16,12),txy(16,12),green,no_child). 
lhs(in4_black0_17_16_17_16,sameR,sid_1x1,cxy(17,16),txy(17,16),black,no_child). 
lhs(in4_green1_18_12_18_12,sameR,sid_1x1,cxy(18,12),txy(18,12),green,no_child). 
lhs(in4_green1_19_4_19_4,sameR,sid_1x1,cxy(19,4),txy(19,4),green,no_child). 
lhs(in4_black0_1_1_20_20,sameR,s1538320,cxy(10,11),txy(20,1),black,no_child). 
lhs(in0_black0_11_11_13_11,rot90,sid_1x2,cxy(12,11),txy(12,11),black,no_child). 
lhs(in0_black0_9_17_11_18,rot90,sid_1x2,cxy(10,18),txy(10,18),black,no_child). 
lhs(in0_green5_2_14_5_16,flipD,sid_hollow_diamond_3x3,cxy(3,15),txy(5,16),green,no_child). 
lhs(in0_black0_15_8_17_12,sameR,sid_1x2,cxy(16,10),txy(16,10),black,no_child). 
lhs(in0_green15_7_16_12_19,flipV,s2533767,cxy(10,17),txy(7,16),green,no_child). 
lhs(in0_green58_2_2_18_14,flipDHV,s12290725,cxy(11,8),txy(3,2),green,no_child). 
lhs(in0_black0_1_1_20_20,sameR,s283661,cxy(10,10),txy(20,20),black,no_child). 
pos(rhs(out0_yellow2_3_3_4_4,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(4,4),txy(3,3),yellow)). 
pos(rhs(out0_green6_2_2_5_5,sameR,s10809003,cxy(4,4),txy(4,4),green)). 
pos(rhs(out0_black0_1_1_6_6,sameR,s8656395,cxy(4,4),txy(1,1),black)). 
pos(rhs(out1_green15_3_2_8_8,rot180,s9980084,cxy(5,5),txy(3,2),green)). 
pos(rhs(out1_yellow1_7_5_7_5,sameR,sid_1x1,cxy(7,5),txy(7,5),yellow)). 
pos(rhs(out1_black0_1_1_10_10,sameR,s15855655,cxy(6,6),txy(1,1),black)). 
pos(rhs(out2_yellow8_5_4_6_7,rot90,sid_2x1,cxy(6,6),txy(5,4),yellow)). 
pos(rhs(out2_green22_1_1_9_9,sameR,s8721169,cxy(6,5),txy(9,9),green)). 
pos(rhs(out2_yellow1_8_4_8_4,sameR,sid_1x1,cxy(8,4),txy(8,4),yellow)). 
pos(rhs(out2_black0_1_1_10_10,sameR,s6827363,cxy(5,6),txy(10,1),black)). 
pos(rhs(out3_yellow4_4_3_5_4,sameR,sid_1x1,cxy(5,4),txy(4,3),yellow)). 
pos(rhs(out3_black0_5_6_10_10,rot90,s8742889,cxy(7,8),txy(10,10),black)). 
pos(rhs(out3_green29_3_2_10_10,flipDHV,s14837053,cxy(6,6),txy(3,2),green)). 
pos(rhs(out3_yellow1_5_9_5_9,sameR,sid_1x1,cxy(5,9),txy(5,9),yellow)). 
pos(rhs(out3_yellow1_9_8_9_8,sameR,sid_1x1,cxy(9,8),txy(9,8),yellow)). 
pos(rhs(out3_black0_1_1_10_10,sameR,s3213940,cxy(5,5),txy(5,5),black)). 
pos(rhs(out4_green2_13_17_14_18,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(14,18),txy(13,17),green)). 
pos(rhs(out4_green12_14_13_18_17,sameR,s4919079,cxy(17,15),txy(14,13),pen([cc(green,7),cc(yellow,1),cc(green,4)]))). 
pos(rhs(out4_green79_5_2_16_16,rot180,s16743881,cxy(11,8),txy(5,3),pen([cc(green,8),cc(yellow,2),cc(green,2),cc(yellow,2),cc(green,15),cc(yellow,6),cc(green,2),cc(yellow,6),cc(green,2),cc(yellow,6),cc(green,2),cc(yellow,6),cc(green,10),cc(yellow,1),cc(green,3),cc(yellow,1),cc(green,5)]))). 
pos(rhs(out4_green1_3_10_3_10,sameR,sid_1x1,cxy(3,10),txy(3,10),green)). 
pos(rhs(out4_green1_5_7_5_7,sameR,sid_1x1,cxy(5,7),txy(5,7),green)). 
pos(rhs(out4_green1_16_12_16_12,sameR,sid_1x1,cxy(16,12),txy(16,12),green)). 
pos(rhs(out4_green1_18_12_18_12,sameR,sid_1x1,cxy(18,12),txy(18,12),green)). 
pos(rhs(out4_green1_19_4_19_4,sameR,sid_1x1,cxy(19,4),txy(19,4),green)). 
pos(rhs(out4_black0_1_1_20_20,sameR,s13614738,cxy(10,11),txy(20,1),black)). 
pos(rhs(out0_green6_2_14_5_16,flipD,sid_plus_3x3,cxy(3,15),txy(5,16),pen([cc(green,2),cc(yellow,1),cc(green,3)]))). 
pos(rhs(out0_green21_7_16_12_19,flipV,s2149589,cxy(10,17),txy(7,16),pen([cc(green,6),cc(yellow,3),cc(green,2),cc(yellow,3),cc(green,7)]))). 
pos(rhs(out0_green84_2_2_18_14,flipDHV,s16362403,cxy(12,8),txy(3,2),pen([cc(green,8),cc(yellow,5),cc(green,2),cc(yellow,5),cc(green,2),cc(yellow,5),cc(green,9),cc(yellow,1),cc(green,4),cc(yellow,1),cc(green,2),cc(yellow,1),cc(green,2),cc(yellow,1),cc(green,2),cc(yellow,1),cc(green,8),cc(yellow,1),cc(green,2),cc(yellow,1),cc(green,3),cc(yellow,1),cc(green,3),cc(yellow,1),cc(green,2),cc(yellow,1),cc(green,7),cc(yellow,1),cc(green,2)]))). 
pos(rhs(out0_black0_1_1_20_20,sameR,s3631455,cxy(10,10),txy(20,20),black)). 
