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
lhs(in0_blue5_1_2_3_4,sameR,s11068904,cxy(2,3),txy(3,4),no_child). 
lhs(in0_red21_1_1_11_11,sameR,s7753066,cxy(6,6),txy(6,6),5). 
lhs(in0_black0_7_7_11_11,sameR,s11261491,cxy(8,8),txy(8,8),no_child). 
lhs(in0_black0_1_7_5_11,sameR,s11261491,cxy(4,8),txy(4,8),no_child). 
lhs(in0_black0_7_1_11_5,sameR,s11261491,cxy(8,4),txy(8,4),no_child). 
lhs(in0_black0_1_1_5_5,sameR,s4362436,cxy(3,3),txy(4,4),no_child). 
lhs(in1_green1_3_1_3_1,sameR,sid_11,cxy(3,1),txy(3,1),no_child). 
lhs(in1_cyan17_1_1_9_9,sameR,s7753066,cxy(5,5),txy(5,5),7). 
lhs(in1_green4_1_1_2_3,rot270,s15307279,cxy(1,2),txy(1,2),1). 
lhs(in1_black0_2_1_2_1,sameR,sid_11,cxy(2,1),txy(2,1),no_child). 
lhs(in1_black0_6_6_9_9,sameR,s11261491,cxy(7,7),txy(7,7),no_child). 
lhs(in1_black0_1_6_4_9,sameR,s11261491,cxy(3,7),txy(3,7),no_child). 
lhs(in1_black0_6_1_9_4,sameR,s11261491,cxy(7,3),txy(7,3),no_child). 
lhs(in1_black0_1_1_4_4,sameR,s12620050,cxy(3,3),txy(3,3),no_child). 
lhs(in2_red1_1_1_1_1,sameR,sid_11,cxy(1,1),txy(1,1),no_child). 
lhs(in2_red3_2_2_3_3,rot180,s11261491,cxy(2,2),txy(2,2),1). 
lhs(in2_yellow13_1_1_7_7,sameR,s7753066,cxy(4,4),txy(4,4),8). 
lhs(in2_black0_3_3_3_3,sameR,sid_11,cxy(3,3),txy(3,3),no_child). 
lhs(in2_black0_5_5_7_7,sameR,s11261491,cxy(6,6),txy(6,6),no_child). 
lhs(in2_black0_1_5_3_7,sameR,s11261491,cxy(2,6),txy(2,6),no_child). 
lhs(in2_black0_1_2_1_3,sameR,sid_21,cxy(1,3),txy(1,3),no_child). 
lhs(in2_black0_5_1_7_3,sameR,s11261491,cxy(6,2),txy(6,2),no_child). 
lhs(in2_black0_2_1_3_1,rot90,sid_21,cxy(3,1),txy(3,1),no_child). 
lhs(in0_cyan1_1_3_1_3,sameR,sid_11,cxy(1,3),txy(1,3),no_child). 
lhs(in0_cyan1_2_2_2_2,sameR,sid_11,cxy(2,2),txy(2,2),no_child). 
lhs(in0_cyan1_3_1_3_1,sameR,sid_11,cxy(3,1),txy(3,1),no_child). 
lhs(in0_cyan4_3_3_4_5,rot270,s11261491,cxy(3,4),txy(4,5),no_child). 
lhs(in0_green25_1_1_13_13,sameR,s7753066,cxy(7,7),txy(7,7),9). 
lhs(in0_black0_8_8_13_13,sameR,s11261491,cxy(9,9),txy(9,9),no_child). 
lhs(in0_black0_1_8_6_13,sameR,s11261491,cxy(5,9),txy(5,9),no_child). 
lhs(in0_black0_8_1_13_6,sameR,s11261491,cxy(9,5),txy(9,5),no_child). 
lhs(in0_black0_1_1_6_6,sameR,s6236936,cxy(4,4),txy(5,5),no_child). 
lhs(in0_black0_1_1_2_2,sameR,s11261491,cxy(1,1),txy(1,1),no_child). 
