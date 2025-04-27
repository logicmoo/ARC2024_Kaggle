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
:-output(rhs/3). 
:-input_cw(lhs_peice/2). 
:-input_cw(lhs_rot2D/2). 
:-input_cw(lhs_gis/2). 
:-input_cw(lhs_child_c/2). 
:-input_cw(lhs/4). 
:-modeh(*,rhs_peice(+scope,+peice)). 
:-modeh(*,rhs_rot2D(+peice,+rot2D)). 
:-modeh(*,rhs_gis(+peice,+gis)). 
:-modeh(*,rhs(+peice,+rhs,+rhs)). 
:-modeb(*,lhs_peice(+scope,+peice)). 
:-modeb(*,lhs_rot2D(+peice,-rot2D)). 
:-modeb(*,lhs_gis(+peice,-gis)). 
:-modeb(*,lhs_child_c(+peice,-c)). 
:-modeb(*,lhs(+peice,-lhs,-lhs,-lhs)). 
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
lhs(in0_red14_10_8,sameR,sid_12,no_child). 
lhs(in0_black0_10_8,rot90,sid_323,no_child). 
lhs(in1_red9_14_13,sameR,sid_12,no_child). 
lhs(in1_red5_5_5,rot90,sid_12,no_child). 
lhs(in1_black0_14_13,rot90,sid_323,no_child). 
lhs(in1_black0_5_5,sameR,sid_323,no_child). 
lhs(in0_red7_6_15,rot90,sid_12,no_child). 
lhs(in0_red10_17_10,sameR,sid_12,no_child). 
lhs(in0_red6_6_5,sameR,sid_12,no_child). 
lhs(in0_black0_6_15,sameR,sid_323,no_child). 
lhs(in0_black0_17_10,rot90,sid_323,no_child). 
lhs(in0_black0_6_5,rot90,sid_323,no_child). 
:-end_bg. 
:-begin_in_pos. 
pos(rhs(out0_cyan42_10_11,rot180,s794528)). 
pos(rhs(out0_red14_10_8,sameR,sid_12)). 
pos(rhs(out0_cyan42_10_5,sameR,s794528)). 
pos(rhs(out0_black0_10_8,rot90,s9870679)). 
pos(rhs(out1_cyan16_14_15,rot180,s99936)). 
pos(rhs(out1_red9_14_13,sameR,sid_12)). 
pos(rhs(out1_cyan16_14_11,sameR,s99936)). 
pos(rhs(out1_cyan4_6_5,rot270,s15307279)). 
pos(rhs(out1_cyan4_4_5,rot90,s15307279)). 
pos(rhs(out1_red5_5_5,rot90,sid_12)). 
pos(rhs(out1_black0_14_13,sameR,s13242417)). 
pos(rhs(out1_black0_5_5,sameR,s7055667)). 
pos(rhs(out0_cyan9_8_15,rot270,s2597236)). 
pos(rhs(out0_cyan9_4_15,rot90,s2597236)). 
pos(rhs(out0_red7_6_15,rot90,sid_12)). 
pos(rhs(out0_cyan20_17_12,rot180,s99936)). 
pos(rhs(out0_red10_17_10,sameR,sid_12)). 
pos(rhs(out0_cyan20_17_8,sameR,s99936)). 
pos(rhs(out0_cyan6_6_6,rot180,s15307279)). 
pos(rhs(out0_red6_6_5,sameR,sid_12)). 
pos(rhs(out0_cyan6_6_4,sameR,s15307279)). 
pos(rhs(out0_black0_6_15,sameR,s9562242)). 
pos(rhs(out0_black0_17_10,rot90,s13242417)). 
pos(rhs(out0_black0_6_5,rot90,s7055667)). 
:-end_in_pos. 
