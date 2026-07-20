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
lhs(trn_0,c(8,6),rot90,silver,vis2D(1,3),3,sid_12,[make_solid_object(rect,3,1)],childs(0)). 
lhs(trn_0,c(5,5),rot90,silver,vis2D(1,5),5,sid_12,[make_solid_object(rect,5,1)],childs(0)). 
lhs(trn_0,c(2,5),rot90,silver,vis2D(1,6),6,sid_12,[make_solid_object(rect,6,1)],childs(0)). 
lhs(trn_1,c(8,7),rot90,silver,vis2D(1,2),2,sid_12,[],childs(0)). 
lhs(trn_1,c(2,6),rot90,silver,vis2D(1,4),4,sid_12,[make_solid_object(rect,4,1)],childs(0)). 
lhs(trn_1,c(5,5),rot90,silver,vis2D(1,6),6,sid_12,[make_solid_object(rect,6,1)],childs(0)). 
lhs(trn_2,c(4,8),sameR,silver,vis2D(3,1),3,sid_12,[make_solid_object(rect,3,1)],childs(0)). 
lhs(trn_2,c(8,6),rot90,silver,vis2D(1,5),5,sid_12,[make_solid_object(rect,5,1)],childs(0)). 
lhs(trn_2,c(4,3),sameR,silver,vis2D(6,1),6,sid_12,[make_solid_object(rect,6,1)],childs(0)). 
lhs(trn_3,c(4,3),sameR,silver,vis2D(4,1),4,sid_12,[make_solid_object(rect,4,1)],childs(0)). 
lhs(trn_3,c(4,6),sameR,silver,vis2D(5,1),5,sid_12,[make_solid_object(rect,5,1)],childs(0)). 
lhs(trn_3,c(8,5),rot90,silver,vis2D(1,7),7,sid_12,[make_solid_object(rect,7,1)],childs(0)). 
lhs(tst_0,c(4,3),rot90,silver,vis2D(1,3),3,sid_12,[make_solid_object(rect,3,1)],childs(0)). 
lhs(tst_0,c(3,9),sameR,silver,vis2D(5,1),5,sid_12,[make_solid_object(rect,5,1)],childs(0)). 
lhs(tst_0,c(8,6),sameR,silver,vis2D(6,1),6,sid_12,[make_solid_object(rect,6,1)],childs(0)). 
