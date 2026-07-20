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
lhs(in0_green2_1_1_2_1,sameR,sid_2x1,cxy(2,1),txy(2,1),green,no_child). 
lhs(in0_green5_3_3_5_5,sameR,s16125018,cxy(4,4),txy(4,4),pen([cc(green,1),cc(blue,1),cc(yellow,1),cc(blue,2)]),no_child). 
lhs(in0_black0_1_1_5_5,sameR,s14079424,cxy(3,3),txy(3,3),black,no_child). 
lhs(in1_green8_1_2_5_5,sameR,s5658204,cxy(3,4),txy(3,4),pen([cc(green,4),cc(blue,3),cc(yellow,1)]),no_child). 
lhs(in1_black0_1_1_5_5,sameR,s4489915,cxy(3,3),txy(3,3),black,no_child). 
lhs(in2_green7_1_2_5_5,sameR,s14168824,cxy(3,4),txy(1,2),pen([cc(green,3),cc(blue,2),cc(yellow,1),cc(blue,1)]),no_child). 
lhs(in2_black0_1_1_5_5,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(3,3),txy(3,3),black,no_child). 
lhs(in0_black0_1_1_2_1,rot90,sid_1x2,cxy(2,1),txy(2,1),black,no_child). 
lhs(in0_blue4_4_4_5_5,rot180,sid_2x2,cxy(5,5),txy(4,4),pen([cc(blue,3),cc(yellow,1)]),no_child). 
lhs(in0_green4_1_1_3_2,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(2,2),txy(3,1),green,1). 
lhs(in0_black0_1_1_5_5,sameR,s13770256,cxy(3,3),txy(3,3),black,no_child). 
