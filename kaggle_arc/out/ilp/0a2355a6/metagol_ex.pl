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
lhs(trn_0,c(10,2),rot90,black,vis2D(2,1),2,sid_21,[],missing). 
lhs(trn_0,c(4,4),sameR,cyan,vis2D(3,3),8,sid_323,[],childs(1)). 
lhs(trn_0,c(10,2),sameR,cyan,vis2D(4,3),10,sid_323,[c_r(copy_row_ntimes(2,2))],childs(1)). 
lhs(trn_0,c(8,7),rot90,cyan,vis2D(3,5),13,s16201681,[],childs(2)). 
lhs(trn_0,c(4,4),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_0,c(8,6),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_0,c(8,8),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_1,c(4,6),sameR,black,vis2D(1,2),2,sid_21,[],missing). 
lhs(trn_1,c(3,12),rot90,black,vis2D(3,1),3,sid_21,[and([],make_solid_object(rect,1,3))],missing). 
lhs(trn_1,c(9,12),sameR,black,vis2D(2,2),4,sid_11,[make_solid_object(square,2,2)],missing). 
lhs(trn_1,c(10,6),sameR,cyan,vis2D(3,3),8,sid_323,[],childs(1)). 
lhs(trn_1,c(9,12),sameR,cyan,vis2D(4,4),12,sid_323,[c_r(copy_row_ntimes(2,2)),copy_row_ntimes(2,2)],childs(1)). 
lhs(trn_1,c(3,11),rot270,cyan,vis2D(5,5),17,s12506459,[],childs(2)). 
lhs(trn_1,c(5,4),flipDHV,cyan,vis2D(5,6),20,s12406422,[c_r(copy_row_ntimes(2,2))],childs(3)). 
lhs(trn_1,c(2,10),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_1,c(4,3),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_1,c(6,3),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_1,c(10,6),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_2,c(5,3),rot90,black,vis2D(3,1),3,sid_21,[and([],make_solid_object(rect,1,3))],missing). 
lhs(trn_2,c(7,10),sameR,black,vis2D(1,3),3,sid_21,[and([],make_solid_object(rect,1,3))],missing). 
lhs(trn_2,c(12,12),sameR,cyan,vis2D(3,3),8,sid_323,[],childs(1)). 
lhs(trn_2,c(5,3),sameR,cyan,vis2D(5,3),12,sid_323,[c_r(copy_row_ntimes(2,3))],childs(1)). 
lhs(trn_2,c(11,4),rot90,cyan,vis2D(3,7),18,s15984027,[],childs(3)). 
lhs(trn_2,c(6,10),sameR,cyan,vis2D(5,5),17,s16173246,[],childs(2)). 
lhs(trn_2,c(5,10),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_2,c(11,2),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_2,c(11,4),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_2,c(11,6),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_2,c(12,12),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_3,c(4,8),rot90,black,vis2D(2,1),2,sid_21,[],missing). 
lhs(trn_3,c(4,10),rot90,black,vis2D(2,1),2,sid_21,[],missing). 
lhs(trn_3,c(9,3),rot90,black,vis2D(2,1),2,sid_21,[],missing). 
lhs(trn_3,c(11,13),rot90,black,vis2D(2,1),2,sid_21,[],missing). 
lhs(trn_3,c(12,9),sameR,black,vis2D(2,2),4,sid_11,[make_solid_object(square,2,2)],missing). 
lhs(trn_3,c(4,14),sameR,cyan,vis2D(3,3),8,sid_323,[],childs(1)). 
lhs(trn_3,c(4,9),rot90,cyan,vis2D(4,5),16,s16201681,[copy_row_ntimes(2,2)],childs(2)). 
lhs(trn_3,c(11,11),rot270,cyan,vis2D(5,8),25,s1448007,[c_r(copy_row_ntimes(2,2))],childs(3)). 
lhs(trn_3,c(4,2),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_3,c(4,14),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_3,c(6,3),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_3,c(10,11),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_3,c(11,3),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(tst_0,c(5,3),rot90,black,vis2D(2,1),2,sid_21,[],missing). 
lhs(tst_0,c(15,8),rot90,black,vis2D(2,1),2,sid_21,[],missing). 
lhs(tst_0,c(10,5),sameR,black,vis2D(1,2),2,sid_21,[],missing). 
lhs(tst_0,c(15,6),sameR,black,vis2D(1,2),2,sid_21,[],missing). 
lhs(tst_0,c(13,14),sameR,black,vis2D(2,2),4,sid_11,[make_solid_object(square,2,2)],missing). 
lhs(tst_0,c(16,14),sameR,black,vis2D(2,2),4,sid_11,[make_solid_object(square,2,2)],missing). 
lhs(tst_0,c(6,12),rot90,black,vis2D(4,2),8,sid_21,[and([],make_solid_object(rect,2,4))],missing). 
lhs(tst_0,c(6,12),sameR,cyan,vis2D(6,4),16,sid_323,[c_r(copy_row_ntimes(2,4)),copy_row_ntimes(2,2)],childs(1)). 
lhs(tst_0,c(14,14),sameR,cyan,vis2D(7,4),20,s16201681,[c_r(and(copy_row_ntimes(4,2),copy_row_ntimes(2,2))),copy_row_ntimes(2,2)],childs(2)). 
lhs(tst_0,c(15,6),flipD,cyan,vis2D(4,8),22,s5270230,[c_r(copy_row_ntimes(4,2))],childs(3)). 
lhs(tst_0,c(7,4),sameR,cyan,vis2D(9,5),28,s1838558,[],childs(4)). 
lhs(tst_0,c(6,5),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(tst_0,c(8,5),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(tst_0,c(15,3),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
pos(rhs(trn_0,c(10,2),rot90,black,vis2D(2,1),2,sid_21,[])). 
pos(rhs(trn_0,c(4,4),sameR,blue,vis2D(3,3),8,sid_323,[])). 
pos(rhs(trn_0,c(4,4),sameR,black,vis2D(3,3),8,sid_323,[])). 
pos(rhs(trn_0,c(10,2),sameR,blue,vis2D(4,3),10,sid_323,[c_r(copy_row_ntimes(2,2))])). 
pos(rhs(trn_0,c(10,2),rot90,black,vis2D(4,3),10,sid_323,[copy_row_ntimes(2,2)])). 
pos(rhs(trn_0,c(8,7),rot90,green,vis2D(3,5),13,s16201681,[])). 
pos(rhs(trn_0,c(8,7),sameR,black,vis2D(3,5),13,s15446593,[])). 
pos(rhs(trn_0,c(4,4),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(trn_0,c(8,6),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(trn_0,c(8,8),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(trn_1,c(4,6),sameR,black,vis2D(1,2),2,sid_21,[])). 
pos(rhs(trn_1,c(3,12),rot90,black,vis2D(3,1),3,sid_21,[and([],make_solid_object(rect,1,3))])). 
pos(rhs(trn_1,c(9,12),sameR,black,vis2D(2,2),4,sid_11,[make_solid_object(square,2,2)])). 
pos(rhs(trn_1,c(10,6),sameR,blue,vis2D(3,3),8,sid_323,[])). 
pos(rhs(trn_1,c(10,6),sameR,black,vis2D(3,3),8,sid_323,[])). 
pos(rhs(trn_1,c(9,12),sameR,blue,vis2D(4,4),12,sid_323,[c_r(copy_row_ntimes(2,2)),copy_row_ntimes(2,2)])). 
pos(rhs(trn_1,c(9,12),sameR,black,vis2D(4,4),12,sid_323,[c_r(copy_row_ntimes(2,2)),copy_row_ntimes(2,2)])). 
pos(rhs(trn_1,c(3,11),rot270,green,vis2D(5,5),17,s12506459,[])). 
pos(rhs(trn_1,c(3,11),sameR,black,vis2D(5,5),17,s12506459,[reversed(rot180^rot180),rot90])). 
pos(rhs(trn_1,c(5,4),flipDHV,red,vis2D(5,6),20,s12406422,[c_r(copy_row_ntimes(2,2))])). 
pos(rhs(trn_1,c(5,4),sameR,black,vis2D(5,6),20,s12406422,[rot180,copy_row_ntimes(4,2)])). 
pos(rhs(trn_1,c(2,10),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(trn_1,c(4,3),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(trn_1,c(6,3),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(trn_1,c(10,6),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(trn_2,c(5,3),rot90,black,vis2D(3,1),3,sid_21,[and([],make_solid_object(rect,1,3))])). 
pos(rhs(trn_2,c(7,10),sameR,black,vis2D(1,3),3,sid_21,[and([],make_solid_object(rect,1,3))])). 
pos(rhs(trn_2,c(12,12),sameR,blue,vis2D(3,3),8,sid_323,[])). 
pos(rhs(trn_2,c(12,12),sameR,black,vis2D(3,3),8,sid_323,[])). 
pos(rhs(trn_2,c(5,3),sameR,blue,vis2D(5,3),12,sid_323,[c_r(copy_row_ntimes(2,3))])). 
pos(rhs(trn_2,c(5,3),rot90,black,vis2D(5,3),12,sid_323,[copy_row_ntimes(2,3)])). 
pos(rhs(trn_2,c(11,4),rot90,red,vis2D(3,7),18,s15984027,[])). 
pos(rhs(trn_2,c(11,4),sameR,black,vis2D(3,7),18,s8039464,[])). 
pos(rhs(trn_2,c(6,10),sameR,green,vis2D(5,5),17,s16173246,[])). 
pos(rhs(trn_2,c(6,10),sameR,black,vis2D(5,5),17,s16173246,[rot90,rot270])). 
pos(rhs(trn_2,c(5,10),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(trn_2,c(11,2),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(trn_2,c(11,4),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(trn_2,c(11,6),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(trn_2,c(12,12),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(trn_3,c(4,8),rot90,black,vis2D(2,1),2,sid_21,[])). 
pos(rhs(trn_3,c(4,10),rot90,black,vis2D(2,1),2,sid_21,[])). 
pos(rhs(trn_3,c(9,3),rot90,black,vis2D(2,1),2,sid_21,[])). 
pos(rhs(trn_3,c(11,13),rot90,black,vis2D(2,1),2,sid_21,[])). 
pos(rhs(trn_3,c(12,9),sameR,black,vis2D(2,2),4,sid_11,[make_solid_object(square,2,2)])). 
pos(rhs(trn_3,c(4,14),sameR,blue,vis2D(3,3),8,sid_323,[])). 
pos(rhs(trn_3,c(4,14),sameR,black,vis2D(3,3),8,sid_323,[])). 
pos(rhs(trn_3,c(4,9),rot90,green,vis2D(4,5),16,s16201681,[copy_row_ntimes(2,2)])). 
pos(rhs(trn_3,c(4,9),sameR,black,vis2D(4,5),16,s15446593,[c_r(copy_row_ntimes(2,2))])). 
pos(rhs(trn_3,c(7,3),sameR,yellow,vis2D(10,4),26,s14431835,[c_r(copy_row_ntimes(6,2))])). 
pos(rhs(trn_3,c(11,11),rot270,red,vis2D(5,8),25,s1448007,[c_r(copy_row_ntimes(2,2))])). 
pos(rhs(trn_3,c(11,11),sameR,black,vis2D(5,8),25,s10298472,[flipH,copy_row_ntimes(2,2)])). 
pos(rhs(trn_3,c(7,3),rot90,black,vis2D(10,4),26,s234479,[flipH,copy_row_ntimes(6,2)])). 
pos(rhs(trn_3,c(4,2),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(trn_3,c(4,14),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(trn_3,c(6,3),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(trn_3,c(10,11),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(trn_3,c(11,3),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(tst_0,c(5,3),rot90,black,vis2D(2,1),2,sid_21,[])). 
pos(rhs(tst_0,c(15,8),rot90,black,vis2D(2,1),2,sid_21,[])). 
pos(rhs(tst_0,c(10,5),sameR,black,vis2D(1,2),2,sid_21,[])). 
pos(rhs(tst_0,c(15,6),sameR,black,vis2D(1,2),2,sid_21,[])). 
pos(rhs(tst_0,c(13,14),sameR,black,vis2D(2,2),4,sid_11,[make_solid_object(square,2,2)])). 
pos(rhs(tst_0,c(16,14),sameR,black,vis2D(2,2),4,sid_11,[make_solid_object(square,2,2)])). 
pos(rhs(tst_0,c(6,12),rot90,black,vis2D(4,2),8,sid_21,[and([],make_solid_object(rect,2,4))])). 
pos(rhs(tst_0,c(6,12),sameR,blue,vis2D(6,4),16,sid_323,[c_r(copy_row_ntimes(2,4)),copy_row_ntimes(2,2)])). 
pos(rhs(tst_0,c(14,14),sameR,green,vis2D(7,4),20,s16201681,[c_r(and(copy_row_ntimes(4,2),copy_row_ntimes(2,2))),copy_row_ntimes(2,2)])). 
pos(rhs(tst_0,c(15,6),flipD,red,vis2D(4,8),22,s5270230,[c_r(copy_row_ntimes(4,2))])). 
pos(rhs(tst_0,c(7,4),sameR,yellow,vis2D(9,5),28,s1838558,[])). 
pos(rhs(tst_0,c(6,5),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(tst_0,c(8,5),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(tst_0,c(15,3),sameR,black,vis2D(1,1),1,sid_11,[])). 
