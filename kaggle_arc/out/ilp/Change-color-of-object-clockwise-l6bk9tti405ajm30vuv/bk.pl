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
lhs(in0_red1_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),red,no_child). 
lhs(in0_yellow9_2_1_5_5,flipDHV,s15813757,cxy(3,3),txy(3,3),pen([cc(yellow,2),cc(green,1),cc(cyan,2),cc(green,2),cc(cyan,1),cc(green,1)]),no_child). 
lhs(in0_black0_1_1_5_5,sameR,s2216519,cxy(3,3),txy(3,3),black,no_child). 
lhs(in1_red3_1_3_1_5,rot90,sid_2x1,cxy(1,4),txy(1,4),red,no_child). 
lhs(in1_green4_3_1_4_2,sameR,sid_1x1,cxy(4,2),txy(3,1),green,no_child). 
lhs(in1_purple3_4_4_5_5,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(5,5),txy(5,5),purple,no_child). 
lhs(in1_silver1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),silver,no_child). 
lhs(in1_black0_1_1_5_5,sameR,s5414677,cxy(3,3),txy(5,1),black,no_child). 
lhs(in2_brown2_3_4_3_5,rot90,sid_2x1,cxy(3,5),txy(3,5),brown,no_child). 
lhs(in2_yellow4_1_1_2_2,sameR,sid_1x1,cxy(2,2),txy(1,1),yellow,no_child). 
lhs(in2_orange4_4_1_5_3,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(5,2),txy(4,1),orange,no_child). 
lhs(in2_black0_1_1_5_5,sameR,s12632815,cxy(3,4),txy(3,4),black,no_child). 
lhs(in0_blue2_1_5_2_5,sameR,sid_2x1,cxy(2,5),txy(2,5),blue,no_child). 
lhs(in0_silver4_1_1_2_2,sameR,sid_1x1,cxy(2,2),txy(1,1),silver,no_child). 
lhs(in0_cyan4_4_2_5_4,rot90,sid_t180_3x2,cxy(5,3),txy(5,3),cyan,no_child). 
lhs(in0_black0_1_1_5_5,sameR,s875086,cxy(3,3),txy(3,3),black,no_child). 
