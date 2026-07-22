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
lhs(trn_0,c(3,3),rot90,black,vis2D(2,1),2,sid_21,[],missing). 
lhs(trn_0,c(1,2),sameR,black,vis2D(1,2),2,sid_21,[],missing). 
lhs(trn_0,c(3,2),sameR,red,vis2D(2,2),4,sid_11,[make_solid_object(square,2,2)],missing). 
lhs(trn_0,c(1,3),sameR,red,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_1,c(2,1),rot180,red,vis2D(3,2),4,s15307279,[],missing). 
lhs(trn_1,c(2,4),sameR,red,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_1,c(4,3),sameR,red,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_2,c(3,5),sameR,red,vis2D(3,1),3,sid_12,[make_solid_object(rect,3,1)],missing). 
lhs(trn_2,c(2,2),rot90,red,vis2D(2,3),5,s1201147,[],1). 
lhs(trn_2,c(1,2),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_2,c(4,3),sameR,red,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_3,c(3,3),rot90,red,vis2D(2,2),2,s1961242,[rot180,as_rot(rollD,rollDR,copy_row_ntimes(1,2))],2). 
lhs(trn_3,c(1,1),rot180,red,vis2D(2,2),3,s11261491,[],1). 
lhs(trn_3,c(1,3),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_3,c(2,2),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_3,c(3,1),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_3,c(3,3),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(tst_0,c(4,5),sameR,red,vis2D(2,1),2,sid_12,[],missing). 
lhs(tst_0,c(2,1),rot90,red,vis2D(2,2),3,s11261491,[],missing). 
lhs(tst_0,c(1,4),sameR,red,vis2D(1,1),1,sid_11,[],missing). 
lhs(tst_0,c(3,3),sameR,red,vis2D(1,1),1,sid_11,[],missing). 
lhs(tst_0,c(4,1),sameR,red,vis2D(1,1),1,sid_11,[],missing). 
