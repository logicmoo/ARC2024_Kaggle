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
lhs(trn_0,c(4,8),sameR,blue,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_0,c(7,14),sameR,blue,vis2D(2,1),2,sid_12,[],missing). 
lhs(trn_0,c(13,14),sameR,blue,vis2D(4,3),10,sid_323,[c_r(copy_row_ntimes(2,2))],1). 
lhs(trn_0,c(2,13),rot90,blue,vis2D(3,4),10,sid_323,[c_r(copy_row_ntimes(2,2))],1). 
lhs(trn_0,c(9,10),sameR,blue,vis2D(4,4),12,sid_323,[c_r(copy_row_ntimes(2,2)),copy_row_ntimes(2,2)],1). 
lhs(trn_0,c(13,7),rot180,blue,vis2D(2,2),3,s11261491,[],missing). 
lhs(trn_0,c(5,4),sameR,blue,vis2D(4,3),10,sid_323,[c_r(copy_row_ntimes(2,2))],1). 
lhs(trn_0,c(12,3),rot90,blue,vis2D(3,3),7,s1201147,[c_r(copy_row_ntimes(1,2)),rot90],missing). 
lhs(trn_0,c(13,14),rot90,black,vis2D(2,1),2,sid_21,[],missing). 
lhs(trn_0,c(2,13),sameR,black,vis2D(1,2),2,sid_21,[],missing). 
lhs(trn_0,c(9,10),sameR,black,vis2D(2,2),4,sid_11,[make_solid_object(square,2,2)],missing). 
lhs(trn_0,c(5,4),rot90,black,vis2D(2,1),2,sid_21,[],missing). 
lhs(trn_1,c(5,9),sameR,blue,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_1,c(12,10),sameR,blue,vis2D(4,3),9,s15380612,[],missing). 
lhs(trn_1,c(11,5),rot90,blue,vis2D(1,2),2,sid_12,[],missing). 
lhs(trn_1,c(6,5),sameR,blue,vis2D(3,3),8,sid_323,[],1). 
lhs(trn_1,c(6,5),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_1,c(11,10),rot90,black,vis2D(6,5),21,s16692585,[reversed(rot180^rot180),flipD],missing). 
lhs(trn_1,c(11,5),sameR,black,vis2D(3,4),10,sid_323,[copy_row_ntimes(2,2)],missing). 
lhs(trn_1,c(6,6),sameR,black,vis2D(5,8),24,s6478655,[rot180,copy_row_ntimes(2,3)],missing). 
lhs(trn_2,c(6,8),sameR,blue,vis2D(2,1),2,sid_12,[],missing). 
lhs(trn_2,c(2,8),rot90,blue,vis2D(2,3),4,s11261491,[c_r(copy_row_ntimes(1,2))],1). 
lhs(trn_2,c(4,4),sameR,blue,vis2D(5,3),12,sid_323,[c_r(copy_row_ntimes(2,3))],1). 
lhs(trn_2,c(1,9),sameR,black,vis2D(1,2),2,sid_21,[],missing). 
lhs(trn_2,c(4,4),rot90,black,vis2D(3,1),3,sid_21,[make_solid_object(rect,1,3)],missing). 
lhs(tst_0,c(12,9),sameR,blue,vis2D(1,1),1,sid_11,[],missing). 
lhs(tst_0,c(2,9),sameR,blue,vis2D(1,1),1,sid_11,[],missing). 
lhs(tst_0,c(7,10),sameR,blue,vis2D(5,4),14,sid_323,[c_r(copy_row_ntimes(2,3)),copy_row_ntimes(2,2)],1). 
lhs(tst_0,c(3,7),sameR,blue,vis2D(2,1),2,sid_12,[],missing). 
lhs(tst_0,c(4,3),sameR,blue,vis2D(4,3),10,sid_323,[c_r(copy_row_ntimes(2,2))],1). 
lhs(tst_0,c(10,3),rot90,blue,vis2D(5,5),15,s8244041,[c_r(copy_row_ntimes(2,3)),rot90],missing). 
lhs(tst_0,c(7,10),rot90,black,vis2D(3,2),6,sid_21,[make_solid_object(rect,2,3)],missing). 
lhs(tst_0,c(4,3),rot90,black,vis2D(2,1),2,sid_21,[],missing). 
pos(rhs(trn_0,c(4,8),sameR,blue,vis2D(1,1),1,sid_11,[])). 
pos(rhs(trn_0,c(7,14),sameR,blue,vis2D(2,1),2,sid_12,[])). 
pos(rhs(trn_0,c(13,14),sameR,green,vis2D(4,3),10,sid_323,[c_r(copy_row_ntimes(2,2))])). 
pos(rhs(trn_0,c(2,13),rot90,green,vis2D(3,4),10,sid_323,[c_r(copy_row_ntimes(2,2))])). 
pos(rhs(trn_0,c(9,10),sameR,green,vis2D(4,4),12,sid_323,[c_r(copy_row_ntimes(2,2)),copy_row_ntimes(2,2)])). 
pos(rhs(trn_0,c(13,7),rot180,blue,vis2D(2,2),3,s11261491,[])). 
pos(rhs(trn_0,c(5,4),sameR,green,vis2D(4,3),10,sid_323,[c_r(copy_row_ntimes(2,2))])). 
pos(rhs(trn_0,c(12,3),rot90,blue,vis2D(3,3),7,s1201147,[c_r(copy_row_ntimes(1,2)),rot90])). 
pos(rhs(trn_0,c(13,14),rot90,black,vis2D(2,1),2,sid_21,[])). 
pos(rhs(trn_0,c(2,13),sameR,black,vis2D(1,2),2,sid_21,[])). 
pos(rhs(trn_0,c(9,10),sameR,black,vis2D(2,2),4,sid_11,[make_solid_object(square,2,2)])). 
pos(rhs(trn_0,c(5,4),rot90,black,vis2D(2,1),2,sid_21,[])). 
pos(rhs(trn_1,c(5,9),sameR,blue,vis2D(1,1),1,sid_11,[])). 
pos(rhs(trn_1,c(12,10),sameR,blue,vis2D(4,3),9,s15380612,[])). 
pos(rhs(trn_1,c(11,5),rot90,blue,vis2D(1,2),2,sid_12,[])). 
pos(rhs(trn_1,c(6,5),sameR,green,vis2D(3,3),8,sid_323,[])). 
pos(rhs(trn_1,c(6,5),sameR,black,vis2D(1,1),1,sid_11,[])). 
pos(rhs(trn_1,c(11,10),rot90,black,vis2D(6,5),21,s16692585,[reversed(rot180^rot180),flipD])). 
pos(rhs(trn_1,c(11,5),sameR,black,vis2D(3,4),10,sid_323,[copy_row_ntimes(2,2)])). 
pos(rhs(trn_1,c(6,6),sameR,black,vis2D(5,8),24,s6478655,[rot180,copy_row_ntimes(2,3)])). 
pos(rhs(trn_2,c(6,8),sameR,blue,vis2D(2,1),2,sid_12,[])). 
pos(rhs(trn_2,c(2,8),rot90,blue,vis2D(2,3),4,s11261491,[c_r(copy_row_ntimes(1,2))])). 
pos(rhs(trn_2,c(4,4),sameR,green,vis2D(5,3),12,sid_323,[c_r(copy_row_ntimes(2,3))])). 
pos(rhs(trn_2,c(1,9),sameR,black,vis2D(1,2),2,sid_21,[])). 
pos(rhs(trn_2,c(4,4),rot90,black,vis2D(3,1),3,sid_21,[make_solid_object(rect,1,3)])). 
pos(rhs(tst_0,c(12,9),sameR,blue,vis2D(1,1),1,sid_11,[])). 
pos(rhs(tst_0,c(2,9),sameR,blue,vis2D(1,1),1,sid_11,[])). 
pos(rhs(tst_0,c(7,10),sameR,green,vis2D(5,4),14,sid_323,[c_r(copy_row_ntimes(2,3)),copy_row_ntimes(2,2)])). 
pos(rhs(tst_0,c(3,7),sameR,blue,vis2D(2,1),2,sid_12,[])). 
pos(rhs(tst_0,c(4,3),sameR,green,vis2D(4,3),10,sid_323,[c_r(copy_row_ntimes(2,2))])). 
pos(rhs(tst_0,c(10,3),rot90,blue,vis2D(5,5),15,s8244041,[c_r(copy_row_ntimes(2,3)),rot90])). 
pos(rhs(tst_0,c(7,10),rot90,black,vis2D(3,2),6,sid_21,[make_solid_object(rect,2,3)])). 
pos(rhs(tst_0,c(4,3),rot90,black,vis2D(2,1),2,sid_21,[])). 
