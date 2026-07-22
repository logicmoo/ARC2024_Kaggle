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
:-output(rhs_l2d/2). 
:-output(rhs_l2d2/2). 
:-output(rhs_rot2D/2). 
:-output(rhs_pen_color/2). 
:-output(rhs_mass/2). 
:-output(rhs_gis/2). 
:-output(rhs/7). 
:-input_cw(lhs_peice/2). 
:-input_cw(lhs_l2d/2). 
:-input_cw(lhs_l2d2/2). 
:-input_cw(lhs_rot2D/2). 
:-input_cw(lhs_pen_color/2). 
:-input_cw(lhs_mass/2). 
:-input_cw(lhs_gis/2). 
:-input_cw(lhs_child_c/2). 
:-input_cw(lhs/8). 
:-modeh(*,rhs_peice(+scope,+peice)). 
:-modeh(*,rhs_l2d(+peice,+l2d)). 
:-modeh(*,rhs_l2d2(+peice,+l2d2)). 
:-modeh(*,rhs_rot2D(+peice,+rot2D)). 
:-modeh(*,rhs_pen_color(+peice,+ #(color))). 
:-modeh(*,rhs_mass(+peice,nat900)). 
:-modeh(*,rhs_gis(+peice,+gis)). 
:-modeh(*,rhs(+peice,+rhs,+rhs,+rhs,+ #(color),+nat30,+rhs)). 
:-modeh(*,rhs(+peice,+rhs,+rhs,+rhs,+ #(color),+rhs,+rhs)). 
:-modeb(*,lhs_peice(+scope,+peice)). 
:-modeb(*,lhs_l2d(+peice,-l2d)). 
:-modeb(*,lhs_l2d2(+peice,-l2d2)). 
:-modeb(*,lhs_rot2D(+peice,-rot2D)). 
:-modeb(*,lhs_pen_color(+peice,+ #(color))). 
:-modeb(*,lhs_mass(+peice,nat900)). 
:-modeb(*,lhs_gis(+peice,-gis)). 
:-modeb(*,lhs_child_c(+peice,+nat30)). 
:-modeb(*,lhs(+peice,-lhs,-lhs,-lhs,+ #(color),+nat30,-lhs,+nat30)). 
:-modeb(*,lhs_child_c(+peice,-c)). 
:-modeb(*,lhs(+peice,-lhs,-lhs,-lhs,+ #(color),+nat30,-lhs,-lhs)). 
:-modeb(*,lhs(+peice,-lhs,-lhs,-lhs,+ #(color),-lhs,-lhs,-lhs)). 
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
lhs(in0_silver12_7_7,nw_loc(7,7),se_loc(10,10),sameR,silver,12,sid_323,1). 
lhs(in0_silver8_3_3,nw_loc(3,3),se_loc(5,5),sameR,silver,8,sid_323,1). 
lhs(in0_silver16_8_1,nw_loc(8,1),se_loc(12,5),sameR,silver,16,sid_323,1). 
lhs(in0_black0_4_4,nw_loc(4,4),se_loc(4,4),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_8_8,nw_loc(8,8),se_loc(9,9),sameR,black,4,sid_11,no_child). 
lhs(in0_black0_9_2,nw_loc(9,2),se_loc(11,4),sameR,black,8,sid_323,no_child). 
lhs(in1_silver8_2_8,nw_loc(2,8),se_loc(4,10),sameR,silver,8,sid_323,1). 
lhs(in1_silver16_7_5,nw_loc(7,5),se_loc(11,9),sameR,silver,16,sid_323,1). 
lhs(in1_silver12_2_1,nw_loc(2,1),se_loc(5,4),sameR,silver,12,sid_323,1). 
lhs(in1_black0_3_9,nw_loc(3,9),se_loc(3,9),sameR,black,1,sid_11,no_child). 
lhs(in1_black0_8_6,nw_loc(8,6),se_loc(10,8),sameR,black,8,sid_323,no_child). 
lhs(in1_black0_3_2,nw_loc(3,2),se_loc(4,3),sameR,black,4,sid_11,no_child). 
lhs(in2_silver12_5_8,nw_loc(5,8),se_loc(8,11),sameR,silver,12,sid_323,1). 
lhs(in2_silver16_2_2,nw_loc(2,2),se_loc(6,6),sameR,silver,16,sid_323,1). 
lhs(in2_black0_6_9,nw_loc(6,9),se_loc(7,10),sameR,black,4,sid_11,no_child). 
lhs(in2_black0_3_3,nw_loc(3,3),se_loc(5,5),sameR,black,8,sid_323,no_child). 
lhs(in2_black0_1_1,nw_loc(1,1),se_loc(9,12),sameR,black,40,s14484080,no_child). 
lhs(in0_silver12_5_9,nw_loc(5,9),se_loc(8,12),sameR,silver,12,sid_323,1). 
lhs(in0_silver8_9_5,nw_loc(9,5),se_loc(11,7),sameR,silver,8,sid_323,1). 
lhs(in0_silver16_2_2,nw_loc(2,2),se_loc(6,6),sameR,silver,16,sid_323,1). 
lhs(in0_black0_10_6,nw_loc(10,6),se_loc(10,6),sameR,black,1,sid_11,no_child). 
lhs(in0_black0_6_10,nw_loc(6,10),se_loc(7,11),sameR,black,4,sid_11,no_child). 
lhs(in0_black0_3_3,nw_loc(3,3),se_loc(5,5),sameR,black,8,sid_323,no_child). 
:-end_bg. 
:-begin_in_pos. 
pos(rhs(out0_purple1_4_4,nw_loc(4,4),se_loc(4,4),sameR,purple,1,sid_11)). 
pos(rhs(out0_orange4_8_8,nw_loc(8,8),se_loc(9,9),sameR,orange,4,sid_11)). 
pos(rhs(out0_silver12_7_7,nw_loc(7,7),se_loc(10,10),sameR,silver,12,sid_323)). 
pos(rhs(out0_silver8_3_3,nw_loc(3,3),se_loc(5,5),sameR,silver,8,sid_323)). 
pos(rhs(out0_cyan9_9_2,nw_loc(9,2),se_loc(11,4),sameR,cyan,9,sid_11)). 
pos(rhs(out0_silver16_8_1,nw_loc(8,1),se_loc(12,5),sameR,silver,16,sid_323)). 
pos(rhs(out1_purple1_3_9,nw_loc(3,9),se_loc(3,9),sameR,purple,1,sid_11)). 
pos(rhs(out1_silver8_2_8,nw_loc(2,8),se_loc(4,10),sameR,silver,8,sid_323)). 
pos(rhs(out1_cyan9_8_6,nw_loc(8,6),se_loc(10,8),sameR,cyan,9,sid_11)). 
pos(rhs(out1_silver16_7_5,nw_loc(7,5),se_loc(11,9),sameR,silver,16,sid_323)). 
pos(rhs(out1_orange4_3_2,nw_loc(3,2),se_loc(4,3),sameR,orange,4,sid_11)). 
pos(rhs(out1_silver12_2_1,nw_loc(2,1),se_loc(5,4),sameR,silver,12,sid_323)). 
pos(rhs(out2_orange4_6_9,nw_loc(6,9),se_loc(7,10),sameR,orange,4,sid_11)). 
pos(rhs(out2_silver12_5_8,nw_loc(5,8),se_loc(8,11),sameR,silver,12,sid_323)). 
pos(rhs(out2_cyan9_3_3,nw_loc(3,3),se_loc(5,5),sameR,cyan,9,sid_11)). 
pos(rhs(out2_silver16_2_2,nw_loc(2,2),se_loc(6,6),sameR,silver,16,sid_323)). 
pos(rhs(out2_black0_1_1,nw_loc(1,1),se_loc(9,12),sameR,black,40,s14484080)). 
pos(rhs(out0_purple1_10_6,nw_loc(10,6),se_loc(10,6),sameR,purple,1,sid_11)). 
pos(rhs(out0_orange4_6_10,nw_loc(6,10),se_loc(7,11),sameR,orange,4,sid_11)). 
pos(rhs(out0_silver12_5_9,nw_loc(5,9),se_loc(8,12),sameR,silver,12,sid_323)). 
pos(rhs(out0_silver8_9_5,nw_loc(9,5),se_loc(11,7),sameR,silver,8,sid_323)). 
pos(rhs(out0_cyan9_3_3,nw_loc(3,3),se_loc(5,5),sameR,cyan,9,sid_11)). 
pos(rhs(out0_silver16_2_2,nw_loc(2,2),se_loc(6,6),sameR,silver,16,sid_323)). 
:-end_in_pos. 
