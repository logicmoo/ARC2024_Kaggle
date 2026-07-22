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
lhs(trn_0,center2D(9,8),rot90,silver,hv(rotSize2D(grav),3,1),vis2D(1,3),3,sid_13,sid_12,sid_12). 
lhs(trn_0,center2D(5,8),rot90,silver,hv(rotSize2D(grav),4,1),vis2D(1,4),4,sid_14,sid_12,sid_12). 
lhs(trn_0,center2D(1,7),rot90,silver,hv(rotSize2D(grav),6,1),vis2D(1,6),6,s11156184,sid_12,sid_12). 
lhs(trn_0,center2D(7,6),rot90,silver,hv(rotSize2D(grav),7,1),vis2D(1,7),7,s2476004,sid_12,sid_12). 
lhs(trn_0,center2D(3,6),rot90,silver,hv(rotSize2D(grav),8,1),vis2D(1,8),8,s16658777,sid_12,sid_12). 
lhs(trn_1,center2D(3,9),rot90,silver,hv(rotSize2D(grav),2,1),vis2D(1,2),2,sid_12,sid_12,sid_12). 
lhs(trn_1,center2D(7,7),rot90,silver,hv(rotSize2D(grav),6,1),vis2D(1,6),6,s11156184,sid_12,sid_12). 
lhs(trn_1,center2D(1,6),rot90,silver,hv(rotSize2D(grav),7,1),vis2D(1,7),7,s2476004,sid_12,sid_12). 
lhs(trn_1,center2D(5,5),rot90,silver,hv(rotSize2D(grav),9,1),vis2D(1,9),9,s13578114,sid_12,sid_12). 
lhs(trn_1,center2D(3,4),sameR,black,hv(rotSize2D(grav),4,9),vis2D(4,9),27,s2245337,s3368314,s14863325). 
lhs(trn_1,center2D(8,5),sameR,black,hv(rotSize2D(grav),4,9),vis2D(4,9),30,s2245337,s11778174,s442920). 
lhs(tst_0,center2D(6,7),rot90,silver,hv(rotSize2D(grav),5,1),vis2D(1,5),5,s1265795,sid_12,sid_12). 
lhs(tst_0,center2D(4,6),rot90,silver,hv(rotSize2D(grav),7,1),vis2D(1,7),7,s2476004,sid_12,sid_12). 
lhs(tst_0,center2D(8,6),rot90,silver,hv(rotSize2D(grav),8,1),vis2D(1,8),8,s16658777,sid_12,sid_12). 
lhs(tst_0,center2D(2,9),sameR,silver,hv(rotSize2D(grav),1,1),vis2D(1,1),1,sid_11,sid_11,sid_11). 
