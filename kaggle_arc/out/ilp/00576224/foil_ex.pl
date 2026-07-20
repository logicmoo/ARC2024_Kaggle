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
lhs(in0_cyan1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),cyan,no_child). 
lhs(in0_yellow1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),yellow,no_child). 
lhs(in0_purple2_1_1_2_2,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(2,2),txy(2,2),purple,2). 
lhs(in1_orange1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),orange,no_child). 
lhs(in1_yellow1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),yellow,no_child). 
lhs(in1_brown1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),brown,no_child). 
lhs(in1_green1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),green,no_child). 
lhs(in0_green1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),green,no_child). 
lhs(in0_orange1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),orange,no_child). 
lhs(in0_red1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),red,no_child). 
lhs(in0_cyan1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),cyan,no_child). 
:-end_bg. 
:-begin_in_pos. 
pos(rhs(out0_cyan1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),cyan)). 
pos(rhs(out0_yellow1_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4),yellow)). 
pos(rhs(out0_cyan1_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5),cyan)). 
pos(rhs(out0_yellow1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),yellow)). 
pos(rhs(out0_cyan1_2_3_2_3,sameR,sid_1x1,cxy(2,3),txy(2,3),cyan)). 
pos(rhs(out0_yellow1_2_6_2_6,sameR,sid_1x1,cxy(2,6),txy(2,6),yellow)). 
pos(rhs(out0_cyan1_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1),cyan)). 
pos(rhs(out0_yellow1_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4),yellow)). 
pos(rhs(out0_cyan1_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5),cyan)). 
pos(rhs(out0_yellow1_4_2_4_2,sameR,sid_1x1,cxy(4,2),txy(4,2),yellow)). 
pos(rhs(out0_cyan1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),cyan)). 
pos(rhs(out0_yellow1_4_6_4_6,sameR,sid_1x1,cxy(4,6),txy(4,6),yellow)). 
pos(rhs(out0_cyan1_5_1_5_1,sameR,sid_1x1,cxy(5,1),txy(5,1),cyan)). 
pos(rhs(out0_yellow1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),yellow)). 
pos(rhs(out0_cyan1_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5),cyan)). 
pos(rhs(out0_yellow1_6_2_6_2,sameR,sid_1x1,cxy(6,2),txy(6,2),yellow)). 
pos(rhs(out0_cyan1_6_3_6_3,sameR,sid_1x1,cxy(6,3),txy(6,3),cyan)). 
pos(rhs(out0_yellow1_6_6_6_6,sameR,sid_1x1,cxy(6,6),txy(6,6),yellow)). 
pos(rhs(out0_purple18_1_1_6_6,rot90,s3565350,cxy(4,4),txy(1,3),purple)). 
pos(rhs(out1_orange1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),orange)). 
pos(rhs(out1_yellow1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),yellow)). 
pos(rhs(out1_brown1_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),brown)). 
pos(rhs(out1_green1_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4),green)). 
pos(rhs(out1_orange1_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5),orange)). 
pos(rhs(out1_yellow1_1_6_1_6,sameR,sid_1x1,cxy(1,6),txy(1,6),yellow)). 
pos(rhs(out1_brown1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),brown)). 
pos(rhs(out1_green1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),green)). 
pos(rhs(out1_orange1_2_3_2_3,sameR,sid_1x1,cxy(2,3),txy(2,3),orange)). 
pos(rhs(out1_yellow1_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4),yellow)). 
pos(rhs(out1_brown1_2_5_2_5,sameR,sid_1x1,cxy(2,5),txy(2,5),brown)). 
pos(rhs(out1_green1_2_6_2_6,sameR,sid_1x1,cxy(2,6),txy(2,6),green)). 
pos(rhs(out1_orange1_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1),orange)). 
pos(rhs(out1_yellow1_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2),yellow)). 
pos(rhs(out1_brown1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),brown)). 
pos(rhs(out1_green1_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4),green)). 
pos(rhs(out1_orange1_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5),orange)). 
pos(rhs(out1_yellow1_3_6_3_6,sameR,sid_1x1,cxy(3,6),txy(3,6),yellow)). 
pos(rhs(out1_brown1_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1),brown)). 
pos(rhs(out1_green1_4_2_4_2,sameR,sid_1x1,cxy(4,2),txy(4,2),green)). 
pos(rhs(out1_orange1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),orange)). 
pos(rhs(out1_yellow1_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),yellow)). 
pos(rhs(out1_brown1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5),brown)). 
pos(rhs(out1_green1_4_6_4_6,sameR,sid_1x1,cxy(4,6),txy(4,6),green)). 
pos(rhs(out1_orange1_5_1_5_1,sameR,sid_1x1,cxy(5,1),txy(5,1),orange)). 
pos(rhs(out1_yellow1_5_2_5_2,sameR,sid_1x1,cxy(5,2),txy(5,2),yellow)). 
pos(rhs(out1_brown1_5_3_5_3,sameR,sid_1x1,cxy(5,3),txy(5,3),brown)). 
pos(rhs(out1_green1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),green)). 
pos(rhs(out1_orange1_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5),orange)). 
pos(rhs(out1_yellow1_5_6_5_6,sameR,sid_1x1,cxy(5,6),txy(5,6),yellow)). 
pos(rhs(out1_brown1_6_1_6_1,sameR,sid_1x1,cxy(6,1),txy(6,1),brown)). 
pos(rhs(out1_green1_6_2_6_2,sameR,sid_1x1,cxy(6,2),txy(6,2),green)). 
pos(rhs(out1_orange1_6_3_6_3,sameR,sid_1x1,cxy(6,3),txy(6,3),orange)). 
pos(rhs(out1_yellow1_6_4_6_4,sameR,sid_1x1,cxy(6,4),txy(6,4),yellow)). 
pos(rhs(out1_brown1_6_5_6_5,sameR,sid_1x1,cxy(6,5),txy(6,5),brown)). 
pos(rhs(out1_green1_6_6_6_6,sameR,sid_1x1,cxy(6,6),txy(6,6),green)). 
pos(rhs(out0_green1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),green)). 
pos(rhs(out0_orange1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),orange)). 
pos(rhs(out0_red1_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),red)). 
pos(rhs(out0_cyan1_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4),cyan)). 
pos(rhs(out0_green1_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5),green)). 
pos(rhs(out0_orange1_1_6_1_6,sameR,sid_1x1,cxy(1,6),txy(1,6),orange)). 
pos(rhs(out0_red1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),red)). 
pos(rhs(out0_cyan1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),cyan)). 
pos(rhs(out0_green1_2_3_2_3,sameR,sid_1x1,cxy(2,3),txy(2,3),green)). 
pos(rhs(out0_orange1_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4),orange)). 
pos(rhs(out0_red1_2_5_2_5,sameR,sid_1x1,cxy(2,5),txy(2,5),red)). 
pos(rhs(out0_cyan1_2_6_2_6,sameR,sid_1x1,cxy(2,6),txy(2,6),cyan)). 
pos(rhs(out0_green1_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1),green)). 
pos(rhs(out0_orange1_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2),orange)). 
pos(rhs(out0_red1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),red)). 
pos(rhs(out0_cyan1_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4),cyan)). 
pos(rhs(out0_green1_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5),green)). 
pos(rhs(out0_orange1_3_6_3_6,sameR,sid_1x1,cxy(3,6),txy(3,6),orange)). 
pos(rhs(out0_red1_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1),red)). 
pos(rhs(out0_cyan1_4_2_4_2,sameR,sid_1x1,cxy(4,2),txy(4,2),cyan)). 
pos(rhs(out0_green1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),green)). 
pos(rhs(out0_orange1_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),orange)). 
pos(rhs(out0_red1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5),red)). 
pos(rhs(out0_cyan1_4_6_4_6,sameR,sid_1x1,cxy(4,6),txy(4,6),cyan)). 
pos(rhs(out0_green1_5_1_5_1,sameR,sid_1x1,cxy(5,1),txy(5,1),green)). 
pos(rhs(out0_orange1_5_2_5_2,sameR,sid_1x1,cxy(5,2),txy(5,2),orange)). 
pos(rhs(out0_red1_5_3_5_3,sameR,sid_1x1,cxy(5,3),txy(5,3),red)). 
pos(rhs(out0_cyan1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),cyan)). 
pos(rhs(out0_green1_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5),green)). 
pos(rhs(out0_orange1_5_6_5_6,sameR,sid_1x1,cxy(5,6),txy(5,6),orange)). 
pos(rhs(out0_red1_6_1_6_1,sameR,sid_1x1,cxy(6,1),txy(6,1),red)). 
pos(rhs(out0_cyan1_6_2_6_2,sameR,sid_1x1,cxy(6,2),txy(6,2),cyan)). 
pos(rhs(out0_green1_6_3_6_3,sameR,sid_1x1,cxy(6,3),txy(6,3),green)). 
pos(rhs(out0_orange1_6_4_6_4,sameR,sid_1x1,cxy(6,4),txy(6,4),orange)). 
pos(rhs(out0_red1_6_5_6_5,sameR,sid_1x1,cxy(6,5),txy(6,5),red)). 
pos(rhs(out0_cyan1_6_6_6_6,sameR,sid_1x1,cxy(6,6),txy(6,6),cyan)). 
:-end_in_pos. 
