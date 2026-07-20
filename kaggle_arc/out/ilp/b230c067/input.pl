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
:-output(rhs_center2D/3). 
:-output(rhs_rot2D/2). 
:-output(rhs_pen_color/2). 
:-output(rhs_rotSize2D/3). 
:-output(rhs_vis2D/3). 
:-output(rhs_mass/2). 
:-output(rhs_iz_sid/2). 
:-output(rhs/8). 
:-input_cw(lhs_peice/2). 
:-input_cw(lhs_center2D/3). 
:-input_cw(lhs_rot2D/2). 
:-input_cw(lhs_pen_color/2). 
:-input_cw(lhs_rotSize2D/3). 
:-input_cw(lhs_vis2D/3). 
:-input_cw(lhs_mass/2). 
:-input_cw(lhs_iz_sid/2). 
:-input_cw(lhs/8). 
:-modeh(*,rhs_peice(+scope,+peice)). 
:-modeh(*,rhs_center2D(+peice,+nat30,+nat30)). 
:-modeh(*,rhs_rot2D(+peice,+rot2D)). 
:-modeh(*,rhs_pen_color(+peice,+ #(color))). 
:-modeh(*,rhs_rotSize2D(+peice,+nat30,+nat30)). 
:-modeh(*,rhs_vis2D(+peice,+nat30,+nat30)). 
:-modeh(*,rhs_mass(+peice,nat900)). 
:-modeh(*,rhs_iz_sid(+peice,+sid)). 
:-modeh(*,rhs(+peice,+rhs,+rhs,+ #(color),+rhs,+rhs,+nat30,+rhs)). 
:-modeb(*,lhs_peice(+scope,+peice)). 
:-modeb(*,lhs_center2D(+peice,+nat30,+nat30)). 
:-modeb(*,lhs_rot2D(+peice,-rot2D)). 
:-modeb(*,lhs_pen_color(+peice,+ #(color))). 
:-modeb(*,lhs_rotSize2D(+peice,+nat30,+nat30)). 
:-modeb(*,lhs_vis2D(+peice,+nat30,+nat30)). 
:-modeb(*,lhs_mass(+peice,nat900)). 
:-modeb(*,lhs_iz_sid(+peice,-sid)). 
:-modeb(*,lhs(+peice,-lhs,-lhs,+ #(color),-lhs,-lhs,+nat30,-lhs)). 
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
lhs(trn_0,center2D(4,4),rot90,black,hv(rotSize2D(grav),1,2),vis2D(2,1),2,sid_21). 
lhs(trn_0,center2D(8,9),rot90,black,hv(rotSize2D(grav),1,2),vis2D(2,1),2,sid_21). 
lhs(trn_0,center2D(9,3),sameR,cyan,hv(rotSize2D(grav),3,3),vis2D(3,3),8,sid_323). 
lhs(trn_0,center2D(4,4),sameR,cyan,hv(rotSize2D(grav),4,3),vis2D(4,3),10,s5461606). 
lhs(trn_0,center2D(8,9),sameR,cyan,hv(rotSize2D(grav),4,3),vis2D(4,3),10,s5461606). 
lhs(trn_0,center2D(9,3),sameR,black,hv(rotSize2D(grav),1,1),vis2D(1,1),1,sid_11). 
lhs(trn_1,center2D(9,3),flipV,cyan,hv(rotSize2D(grav),4,3),vis2D(4,3),8,s15633297). 
lhs(trn_1,center2D(4,4),sameR,cyan,hv(rotSize2D(grav),5,3),vis2D(5,3),9,s16362323). 
lhs(trn_1,center2D(6,8),sameR,cyan,hv(rotSize2D(grav),5,3),vis2D(5,3),9,s16362323). 
lhs(tst_0,center2D(3,2),rot90,cyan,hv(rotSize2D(grav),2,2),vis2D(2,2),3,s11261491). 
lhs(tst_0,center2D(3,5),flipH,cyan,hv(rotSize2D(grav),3,2),vis2D(3,2),4,s10901743). 
lhs(tst_0,center2D(5,7),flipV,cyan,hv(rotSize2D(grav),3,2),vis2D(3,2),4,s10901743). 
lhs(tst_0,center2D(8,2),flipV,cyan,hv(rotSize2D(grav),3,2),vis2D(3,2),4,s10901743). 
lhs(tst_0,center2D(5,10),flipH,cyan,hv(rotSize2D(grav),4,2),vis2D(4,2),5,s13353882). 
lhs(tst_0,center2D(8,5),flipH,cyan,hv(rotSize2D(grav),4,2),vis2D(4,2),5,s13353882). 
:-end_bg. 
:-begin_in_pos. 
pos(rhs(trn_0,center2D(4,4),rot90,black,hv(rotSize2D(grav),1,2),vis2D(2,1),2,sid_21)). 
pos(rhs(trn_0,center2D(8,9),rot90,black,hv(rotSize2D(grav),1,2),vis2D(2,1),2,sid_21)). 
pos(rhs(trn_0,center2D(9,3),sameR,red,hv(rotSize2D(grav),3,3),vis2D(3,3),8,sid_323)). 
pos(rhs(trn_0,center2D(9,3),sameR,black,hv(rotSize2D(grav),3,3),vis2D(3,3),8,sid_33)). 
pos(rhs(trn_0,center2D(4,4),sameR,blue,hv(rotSize2D(grav),4,3),vis2D(4,3),10,s5461606)). 
pos(rhs(trn_0,center2D(8,9),sameR,blue,hv(rotSize2D(grav),4,3),vis2D(4,3),10,s5461606)). 
pos(rhs(trn_0,center2D(4,4),rot90,black,hv(rotSize2D(grav),3,4),vis2D(4,3),10,s8390450)). 
pos(rhs(trn_0,center2D(8,9),rot90,black,hv(rotSize2D(grav),3,4),vis2D(4,3),10,s8390450)). 
pos(rhs(trn_0,center2D(9,3),sameR,black,hv(rotSize2D(grav),1,1),vis2D(1,1),1,sid_11)). 
pos(rhs(trn_1,center2D(9,3),flipV,red,hv(rotSize2D(grav),4,3),vis2D(4,3),8,s15633297)). 
pos(rhs(trn_1,center2D(9,3),rot90,black,hv(rotSize2D(grav),3,4),vis2D(4,3),8,s8390450)). 
pos(rhs(trn_1,center2D(4,4),sameR,blue,hv(rotSize2D(grav),5,3),vis2D(5,3),9,s16362323)). 
pos(rhs(trn_1,center2D(6,8),sameR,blue,hv(rotSize2D(grav),5,3),vis2D(5,3),9,s16362323)). 
pos(rhs(trn_1,center2D(4,4),rot90,black,hv(rotSize2D(grav),3,5),vis2D(5,3),9,s5607816)). 
pos(rhs(trn_1,center2D(6,8),rot90,black,hv(rotSize2D(grav),3,5),vis2D(5,3),9,s5607816)). 
pos(rhs(tst_0,center2D(3,2),rot90,red,hv(rotSize2D(grav),2,2),vis2D(2,2),3,s11261491)). 
pos(rhs(tst_0,center2D(3,5),flipH,red,hv(rotSize2D(grav),3,2),vis2D(3,2),4,s10901743)). 
pos(rhs(tst_0,center2D(5,7),flipV,blue,hv(rotSize2D(grav),3,2),vis2D(3,2),4,s10901743)). 
pos(rhs(tst_0,center2D(8,2),flipV,blue,hv(rotSize2D(grav),3,2),vis2D(3,2),4,s10901743)). 
pos(rhs(tst_0,center2D(5,10),flipH,blue,hv(rotSize2D(grav),4,2),vis2D(4,2),5,s13353882)). 
pos(rhs(tst_0,center2D(8,5),flipH,blue,hv(rotSize2D(grav),4,2),vis2D(4,2),5,s13353882)). 
:-end_in_pos. 
