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
:-output(rhs/5). 
:-input_cw(lhs_peice/2). 
:-input_cw(lhs_rot2D/2). 
:-input_cw(lhs_gis/2). 
:-input_cw(lhs_c2d/2). 
:-input_cw(lhs_t2d/2). 
:-input_cw(lhs_child_c/2). 
:-input_cw(lhs/6). 
:-modeh(*,rhs_peice(+scope,+peice)). 
:-modeh(*,rhs_rot2D(+peice,+rot2D)). 
:-modeh(*,rhs_gis(+peice,+gis)). 
:-modeh(*,rhs_c2d(+peice,+c2d)). 
:-modeh(*,rhs_t2d(+peice,+t2d)). 
:-modeh(*,rhs(+peice,+rhs,+rhs,+rhs,+rhs)). 
:-modeb(*,lhs_peice(+scope,+peice)). 
:-modeb(*,lhs_rot2D(+peice,-rot2D)). 
:-modeb(*,lhs_gis(+peice,-gis)). 
:-modeb(*,lhs_c2d(+peice,-c2d)). 
:-modeb(*,lhs_t2d(+peice,-t2d)). 
:-modeb(*,lhs_child_c(+peice,-c)). 
:-modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,-lhs)). 
:-modeb(*,lhs_child_c(+peice,+nat30)). 
:-modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,+nat30)). 
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
lhs(in0_blue5_1_2_3_4,sameR,s11068904,cxy(2,3),txy(3,4),no_child). 
lhs(in0_red21_1_1_11_11,sameR,s7753066,cxy(6,6),txy(6,6),5). 
lhs(in0_black0_7_7_11_11,sameR,s11261491,cxy(8,8),txy(8,8),no_child). 
lhs(in0_black0_1_7_5_11,sameR,s11261491,cxy(4,8),txy(4,8),no_child). 
lhs(in0_black0_7_1_11_5,sameR,s11261491,cxy(8,4),txy(8,4),no_child). 
lhs(in0_black0_1_1_5_5,sameR,s4362436,cxy(3,3),txy(4,4),no_child). 
lhs(in1_green1_3_1_3_1,sameR,sid_11,cxy(3,1),txy(3,1),no_child). 
lhs(in1_cyan17_1_1_9_9,sameR,s7753066,cxy(5,5),txy(5,5),7). 
lhs(in1_green4_1_1_2_3,rot270,s15307279,cxy(1,2),txy(1,2),1). 
lhs(in1_black0_2_1_2_1,sameR,sid_11,cxy(2,1),txy(2,1),no_child). 
lhs(in1_black0_6_6_9_9,sameR,s11261491,cxy(7,7),txy(7,7),no_child). 
lhs(in1_black0_1_6_4_9,sameR,s11261491,cxy(3,7),txy(3,7),no_child). 
lhs(in1_black0_6_1_9_4,sameR,s11261491,cxy(7,3),txy(7,3),no_child). 
lhs(in1_black0_1_1_4_4,sameR,s12620050,cxy(3,3),txy(3,3),no_child). 
lhs(in2_red1_1_1_1_1,sameR,sid_11,cxy(1,1),txy(1,1),no_child). 
lhs(in2_red3_2_2_3_3,rot180,s11261491,cxy(2,2),txy(2,2),1). 
lhs(in2_yellow13_1_1_7_7,sameR,s7753066,cxy(4,4),txy(4,4),8). 
lhs(in2_black0_3_3_3_3,sameR,sid_11,cxy(3,3),txy(3,3),no_child). 
lhs(in2_black0_5_5_7_7,sameR,s11261491,cxy(6,6),txy(6,6),no_child). 
lhs(in2_black0_1_5_3_7,sameR,s11261491,cxy(2,6),txy(2,6),no_child). 
lhs(in2_black0_1_2_1_3,sameR,sid_21,cxy(1,3),txy(1,3),no_child). 
lhs(in2_black0_5_1_7_3,sameR,s11261491,cxy(6,2),txy(6,2),no_child). 
lhs(in2_black0_2_1_3_1,rot90,sid_21,cxy(3,1),txy(3,1),no_child). 
lhs(in0_cyan1_1_3_1_3,sameR,sid_11,cxy(1,3),txy(1,3),no_child). 
lhs(in0_cyan1_2_2_2_2,sameR,sid_11,cxy(2,2),txy(2,2),no_child). 
lhs(in0_cyan1_3_1_3_1,sameR,sid_11,cxy(3,1),txy(3,1),no_child). 
lhs(in0_cyan4_3_3_4_5,rot270,s11261491,cxy(3,4),txy(4,5),no_child). 
lhs(in0_green25_1_1_13_13,sameR,s7753066,cxy(7,7),txy(7,7),9). 
lhs(in0_black0_8_8_13_13,sameR,s11261491,cxy(9,9),txy(9,9),no_child). 
lhs(in0_black0_1_8_6_13,sameR,s11261491,cxy(5,9),txy(5,9),no_child). 
lhs(in0_black0_8_1_13_6,sameR,s11261491,cxy(9,5),txy(9,5),no_child). 
lhs(in0_black0_1_1_6_6,sameR,s6236936,cxy(4,4),txy(5,5),no_child). 
lhs(in0_black0_1_1_2_2,sameR,s11261491,cxy(1,1),txy(1,1),no_child). 
:-end_bg. 
:-begin_in_pos. 
pos(rhs(out0_red5_8_7_10_9,rot180,s11068904,cxy(9,8),txy(8,7))). 
pos(rhs(out0_red5_1_7_3_9,rot90,s11869152,cxy(2,8),txy(3,7))). 
pos(rhs(out0_red5_8_2_10_4,rot270,s11869152,cxy(9,3),txy(8,4))). 
pos(rhs(out0_red5_1_2_3_4,sameR,s11068904,cxy(2,3),txy(3,4))). 
pos(rhs(out0_black0_7_1_10_10,sameR,s1123303,cxy(9,6),txy(7,3))). 
pos(rhs(out0_black0_1_1_4_10,sameR,s1123303,cxy(2,6),txy(4,3))). 
pos(rhs(out1_cyan5_6_6_8_8,sameR,s5719482,cxy(7,7),txy(7,7))). 
pos(rhs(out1_cyan5_1_6_3_8,rot270,s14803251,cxy(2,7),txy(2,7))). 
pos(rhs(out1_cyan5_6_1_8_3,rot90,s14803251,cxy(7,2),txy(7,2))). 
pos(rhs(out1_cyan5_1_1_3_3,rot180,s5719482,cxy(2,2),txy(2,2))). 
pos(rhs(out1_black0_7_8_7_8,sameR,sid_11,cxy(7,8),txy(7,8))). 
pos(rhs(out1_black0_2_8_2_8,sameR,sid_11,cxy(2,8),txy(2,8))). 
pos(rhs(out1_black0_7_1_7_1,sameR,sid_11,cxy(7,1),txy(7,1))). 
pos(rhs(out1_black0_2_1_2_1,sameR,sid_11,cxy(2,1),txy(2,1))). 
pos(rhs(out2_yellow1_6_6_6_6,sameR,sid_11,cxy(6,6),txy(6,6))). 
pos(rhs(out2_yellow1_1_6_1_6,sameR,sid_11,cxy(1,6),txy(1,6))). 
pos(rhs(out2_yellow1_6_1_6_1,sameR,sid_11,cxy(6,1),txy(6,1))). 
pos(rhs(out2_yellow1_1_1_1_1,sameR,sid_11,cxy(1,1),txy(1,1))). 
pos(rhs(out2_yellow12_2_2_5_5,sameR,sid_323,cxy(4,4),txy(2,2))). 
pos(rhs(out2_black0_2_6_5_6,rot90,sid_21,cxy(4,6),txy(4,6))). 
pos(rhs(out2_black0_3_3_4_4,sameR,sid_11,cxy(4,4),txy(3,3))). 
pos(rhs(out2_black0_6_2_6_5,sameR,sid_21,cxy(6,4),txy(6,4))). 
pos(rhs(out2_black0_1_2_1_5,sameR,sid_21,cxy(1,4),txy(1,4))). 
pos(rhs(out2_black0_2_1_5_1,rot90,sid_21,cxy(4,1),txy(4,1))). 
pos(rhs(out0_green7_9_8_12_12,flipDHV,s3353849,cxy(10,10),txy(9,8))). 
pos(rhs(out0_green7_1_8_4_12,rot90,s3353849,cxy(3,10),txy(4,8))). 
pos(rhs(out0_green7_9_1_12_5,rot270,s3353849,cxy(10,3),txy(9,5))). 
pos(rhs(out0_green7_1_1_4_5,flipD,s3353849,cxy(3,3),txy(4,5))). 
pos(rhs(out0_black0_11_11_12_12,sameR,s11261491,cxy(12,12),txy(12,12))). 
pos(rhs(out0_black0_1_11_2_12,sameR,s11261491,cxy(1,12),txy(1,12))). 
pos(rhs(out0_black0_11_1_12_2,sameR,s11261491,cxy(12,1),txy(12,1))). 
pos(rhs(out0_black0_8_1_12_12,sameR,s6835672,cxy(10,7),txy(10,7))). 
pos(rhs(out0_black0_1_1_5_12,sameR,s6835672,cxy(3,7),txy(3,7))). 
pos(rhs(out0_black0_1_1_2_2,sameR,s11261491,cxy(1,1),txy(1,1))). 
:-end_in_pos. 
