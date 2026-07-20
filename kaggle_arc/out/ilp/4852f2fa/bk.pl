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
lhs(in0_yellow1_7_6_7_6,sameR,sid_1x1,cxy(7,6),txy(7,6),no_child). 
lhs(in0_yellow1_7_3_7_3,sameR,sid_1x1,cxy(7,3),txy(7,3),no_child). 
lhs(in0_cyan6_2_2_4_4,rot90,s12760807,cxy(3,3),txy(4,2),no_child). 
lhs(in1_yellow1_5_3_5_3,sameR,sid_1x1,cxy(5,3),txy(5,3),no_child). 
lhs(in1_cyan5_2_6_4_8,sameR,s11068904,cxy(3,7),txy(4,8),no_child). 
lhs(in1_black0_1_2_6_9,sameR,s3895578,cxy(4,6),txy(6,2),no_child). 
lhs(in2_yellow1_4_8_4_8,sameR,sid_1x1,cxy(4,8),txy(4,8),no_child). 
lhs(in2_yellow1_7_6_7_6,sameR,sid_1x1,cxy(7,6),txy(7,6),no_child). 
lhs(in2_yellow1_6_2_6_2,sameR,sid_1x1,cxy(6,2),txy(6,2),no_child). 
lhs(in2_cyan4_2_4_4_5,rot180,sid_t180_3x2,cxy(3,4),txy(3,4),no_child). 
lhs(in3_yellow1_4_7_4_7,sameR,sid_1x1,cxy(4,7),txy(4,7),no_child). 
lhs(in3_yellow1_6_5_6_5,sameR,sid_1x1,cxy(6,5),txy(6,5),no_child). 
lhs(in3_cyan1_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2),no_child). 
lhs(in3_yellow1_6_1_6_1,sameR,sid_1x1,cxy(6,1),txy(6,1),no_child). 
lhs(in3_cyan4_1_3_2_4,sameR,sid_1x1,cxy(2,4),txy(1,3),no_child). 
lhs(in4_yellow1_6_9_6_9,sameR,sid_1x1,cxy(6,9),txy(6,9),no_child). 
lhs(in4_yellow1_2_6_2_6,sameR,sid_1x1,cxy(2,6),txy(2,6),no_child). 
lhs(in4_yellow1_7_4_7_4,sameR,sid_1x1,cxy(7,4),txy(7,4),no_child). 
lhs(in4_yellow1_5_2_5_2,sameR,sid_1x1,cxy(5,2),txy(5,2),no_child). 
lhs(in4_cyan5_1_1_3_3,rot90,s11869152,cxy(2,2),txy(3,1),1). 
lhs(in4_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),no_child). 
lhs(in4_black0_5_8_7_9,rot90,s11778174,cxy(6,8),txy(6,8),no_child). 
lhs(in0_yellow1_4_8_4_8,sameR,sid_1x1,cxy(4,8),txy(4,8),no_child). 
lhs(in0_yellow1_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5),no_child). 
lhs(in0_cyan6_6_1_8_3,rot270,s12258848,cxy(7,2),txy(7,2),1). 
lhs(in0_black0_7_2_7_2,sameR,sid_1x1,cxy(7,2),txy(7,2),no_child). 
lhs(in0_black0_3_7_5_9,sameR,sid_hollow_3x3,cxy(4,8),txy(4,8),no_child). 
lhs(in0_black0_1_4_2_6,sameR,s11778174,cxy(2,5),txy(2,5),no_child). 
lhs(in0_black0_5_1_9_4,rot90,s4210796,cxy(7,3),txy(7,3),no_child). 
lhs(in1_yellow1_5_9_5_9,sameR,sid_1x1,cxy(5,9),txy(5,9),no_child). 
lhs(in1_yellow1_2_5_2_5,sameR,sid_1x1,cxy(2,5),txy(2,5),no_child). 
lhs(in1_yellow1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),no_child). 
lhs(in1_yellow1_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1),no_child). 
lhs(in1_cyan5_5_4_7_6,sameR,sid_plus_3x3,cxy(6,5),txy(6,5),no_child). 
