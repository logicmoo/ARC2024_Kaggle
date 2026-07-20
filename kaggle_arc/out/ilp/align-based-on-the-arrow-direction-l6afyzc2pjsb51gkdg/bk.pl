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
lhs(in0_black0_1_1_4_4,sameR,s5668778,cxy(3,3),txy(3,3),black,no_child). 
lhs(in0_blue13_1_1_5_5,sameR,s61820,cxy(3,3),txy(3,3),blue,1). 
lhs(in1_black0_2_1_5_4,sameR,s5668778,cxy(4,3),txy(2,1),black,no_child). 
lhs(in1_red13_1_1_5_5,rot270,s61820,cxy(3,3),txy(3,3),red,1). 
lhs(in2_black0_2_2_5_5,sameR,s5668778,cxy(4,4),txy(4,4),black,no_child). 
lhs(in2_green13_1_1_5_5,rot180,s61820,cxy(3,3),txy(3,3),green,1). 
lhs(in3_black0_1_2_4_5,sameR,s5668778,cxy(3,4),txy(1,2),black,no_child). 
lhs(in3_cyan13_1_1_5_5,rot90,s61820,cxy(3,3),txy(3,3),cyan,1). 
lhs(in0_black0_2_1_5_4,sameR,s5668778,cxy(4,3),txy(2,1),black,no_child). 
lhs(in0_orange13_1_1_5_5,rot270,s61820,cxy(3,3),txy(3,3),orange,1). 
