:-style_check(- (discontiguous)). 
:-use_module(library(aleph)). 
:-if(current_predicate(use_rendering/1)). 
:-use_rendering(prolog). 
:-endif. 
:-aleph_set(verbosity,1). 
:-aleph_set(interactive,false). 
:-aleph_set(i,4). 
:-aleph_set(nodes,10000). 
:-aleph. 
% :- modeh(*,rhs(+state,+nat30,+nat30,+color,+nat30,+nat30,+rotation,+nat900,+shape,+list)). 
% :- modeb(*,lhs(+state,+nat30,+nat30,#(color),+nat30,+nat30,+rotation,+nat900,+shape,+list)). 
% :- modeb(*,my_geq(+nat30,-#(nat30))). 
% :- modeb(*,my_leq(+nat30,-#(nat30))). 
% :- modeb(*,my_add(+nat30,+nat30,-nat30)). 
% :- modeb(*,my_mult(+nat30,#(nat30),-nat30)). 
% :- lazy_evaluate(my_add/3). 
% :- lazy_evaluate(my_geq/2). 
% :- lazy_evaluate(my_leq/2). 
% :- lazy_evaluate(my_mult/3). 
% :- determination(rhs/7,lhs/7). 
% :- determination(rhs/7,color_change/2). 
% :- determination(rhs/7,incr_nat30/2). 
% :- determination(rhs/7,my_geq/2). 
% :- determination(rhs/7,my_leq/2). 
% :- determination(rhs/7,my_add/3). 
% :- determination(rhs/7,my_mult/3). 
:-output(rhs_peice/2). 
:-output(rhs_rot2D/2). 
:-output(rhs_gis/2). 
:-output(rhs_c2d/2). 
:-output(rhs_t2d/2). 
:-output(rhs_pen_color/2). 
:-output(rhs/6). 
:-input_cw(lhs_peice/2). 
:-input_cw(lhs_rot2D/2). 
:-input_cw(lhs_gis/2). 
:-input_cw(lhs_c2d/2). 
:-input_cw(lhs_t2d/2). 
:-input_cw(lhs_pen_color/2). 
:-input_cw(lhs_child_c/2). 
:-input_cw(lhs/7). 
:-modeh(*,rhs_peice(+scope,+peice)). 
:-modeh(*,rhs_rot2D(+peice,+rot2D)). 
:-modeh(*,rhs_gis(+peice,+gis)). 
:-modeh(*,rhs_c2d(+peice,+c2d)). 
:-modeh(*,rhs_t2d(+peice,+t2d)). 
:-modeh(*,rhs_pen_color(+peice,+ #(color))). 
:-modeh(*,rhs(+peice,+rhs,+rhs,+rhs,+rhs,+ #(color))). 
:-modeb(*,lhs_peice(+scope,+peice)). 
:-modeb(*,lhs_rot2D(+peice,-rot2D)). 
:-modeb(*,lhs_gis(+peice,-gis)). 
:-modeb(*,lhs_c2d(+peice,-c2d)). 
:-modeb(*,lhs_t2d(+peice,-t2d)). 
:-modeb(*,lhs_pen_color(+peice,+ #(color))). 
:-modeb(*,lhs_child_c(+peice,-c)). 
:-modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,+ #(color),-lhs)). 
:-modeb(*,lhs_child_c(+peice,+nat30)). 
:-modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,+ #(color),+nat30)). 
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
:-begin_bg. 
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
lhs(in0_red16_4_4_7_8,rot270,s12561063,cxy(6,6),txy(4,8),red,no_child). 
lhs(in0_cyan16_11_2_14_6,rot270,s12561063,cxy(13,4),txy(11,6),cyan,no_child). 
lhs(in0_yellow16_17_8_20_12,rot270,s12561063,cxy(19,10),txy(17,12),yellow,no_child). 
lhs(in0_black0_1_1_23_13,rot90,s8678073,cxy(12,7),txy(12,7),black,no_child). 
lhs(in1_black0_15_14_16_14,rot90,sid_1x2,cxy(16,14),txy(16,14),black,no_child). 
lhs(in1_cyan16_5_7_10_10,sameR,s5507379,cxy(8,9),txy(8,9),cyan,no_child). 
lhs(in1_purple16_13_11_18_14,sameR,s5507379,cxy(16,13),txy(16,13),purple,1). 
lhs(in1_blue16_19_3_24_6,sameR,s5507379,cxy(22,5),txy(22,5),blue,no_child). 
lhs(in1_green16_25_9_30_12,sameR,s5507379,cxy(28,11),txy(28,11),green,no_child). 
lhs(in1_black0_1_1_30_14,rot90,s8843638,cxy(15,7),txy(30,14),black,no_child). 
lhs(in2_blue12_3_6_6_9,sameR,s14594424,cxy(5,8),txy(5,8),blue,no_child). 
lhs(in2_yellow12_8_9_11_12,sameR,s14594424,cxy(10,11),txy(10,11),yellow,no_child). 
lhs(in2_cyan12_14_3_17_6,sameR,s14594424,cxy(16,5),txy(16,5),cyan,no_child). 
lhs(in2_red12_18_8_21_11,sameR,s14594424,cxy(20,10),txy(20,10),red,no_child). 
lhs(in2_green12_25_4_28_7,sameR,s14594424,cxy(27,6),txy(27,6),green,no_child). 
lhs(in2_black0_1_1_30_16,rot90,s6130932,cxy(16,9),txy(1,1),black,no_child). 
lhs(in0_green15_3_10_7_14,rot90,s1496004,cxy(5,12),txy(5,12),green,no_child). 
lhs(in0_blue15_10_13_14_17,rot90,s1496004,cxy(12,15),txy(12,15),blue,no_child). 
lhs(in0_yellow15_15_3_19_7,rot90,s1496004,cxy(17,5),txy(17,5),yellow,no_child). 
lhs(in0_cyan15_22_8_26_12,rot90,s1496004,cxy(24,10),txy(24,10),cyan,no_child). 
lhs(in0_black0_1_1_30_17,rot90,s8682924,cxy(16,9),txy(16,9),black,no_child). 
:-end_bg. 
:-begin_in_pos. 
pos(rhs(out0_red16_4_2_7_6,rot270,s12561063,cxy(6,4),txy(4,6),red)). 
pos(rhs(out0_cyan16_11_2_14_6,rot270,s12561063,cxy(13,4),txy(11,6),cyan)). 
pos(rhs(out0_yellow16_17_2_20_6,rot270,s12561063,cxy(19,4),txy(17,6),yellow)). 
pos(rhs(out0_black0_1_1_23_13,rot90,s9741348,cxy(12,8),txy(12,8),black)). 
pos(rhs(out1_cyan16_5_7_10_10,sameR,s5507379,cxy(8,9),txy(8,9),cyan)). 
pos(rhs(out1_purple16_13_7_18_10,sameR,s5507379,cxy(16,9),txy(16,9),purple)). 
pos(rhs(out1_blue16_19_7_24_10,sameR,s5507379,cxy(22,9),txy(22,9),blue)). 
pos(rhs(out1_green16_25_7_30_10,sameR,s5507379,cxy(28,9),txy(28,9),green)). 
pos(rhs(out1_black0_1_1_30_14,rot90,s4383387,cxy(15,7),txy(30,14),black)). 
pos(rhs(out2_black0_17_5_18_5,rot90,sid_1x2,cxy(18,5),txy(18,5),black)). 
pos(rhs(out2_blue12_3_3_6_6,sameR,s14594424,cxy(5,5),txy(5,5),blue)). 
pos(rhs(out2_yellow12_8_3_11_6,sameR,s14594424,cxy(10,5),txy(10,5),yellow)). 
pos(rhs(out2_cyan12_14_3_17_6,sameR,s14594424,cxy(16,5),txy(16,5),cyan)). 
pos(rhs(out2_red12_18_3_21_6,sameR,s14594424,cxy(20,5),txy(20,5),red)). 
pos(rhs(out2_green12_25_3_28_6,sameR,s14594424,cxy(27,5),txy(27,5),green)). 
pos(rhs(out2_black0_1_1_30_16,rot90,s13796390,cxy(16,9),txy(1,1),black)). 
pos(rhs(out0_black0_13_9_16_10,rot90,s5766781,cxy(15,9),txy(14,10),black)). 
pos(rhs(out0_green15_3_8_7_12,rot90,s1496004,cxy(5,10),txy(5,10),green)). 
pos(rhs(out0_blue15_10_8_14_12,rot90,s1496004,cxy(12,10),txy(12,10),blue)). 
pos(rhs(out0_yellow15_15_8_19_12,rot90,s1496004,cxy(17,10),txy(17,10),yellow)). 
pos(rhs(out0_cyan15_22_8_26_12,rot90,s1496004,cxy(24,10),txy(24,10),cyan)). 
pos(rhs(out0_black0_1_1_30_17,rot90,s4831827,cxy(16,9),txy(16,9),black)). 
:-end_in_pos. 
