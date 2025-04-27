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
lhs(in0_red4_2_4_3_5,sameR,sid_1x1,cxy(3,5),txy(2,4),no_child). 
lhs(in0_red4_5_4_6_5,sameR,sid_1x1,cxy(6,5),txy(5,4),no_child). 
lhs(in0_blue1_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5),no_child). 
lhs(in0_blue1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5),no_child). 
lhs(in0_blue1_7_5_7_5,sameR,sid_1x1,cxy(7,5),txy(7,5),no_child). 
lhs(in1_green2_1_5_2_5,sameR,sid_2x1,cxy(2,5),txy(2,5),no_child). 
lhs(in1_green2_5_5_6_5,sameR,sid_2x1,cxy(6,5),txy(6,5),no_child). 
lhs(in1_red3_3_3_3_5,rot90,sid_2x1,cxy(3,4),txy(3,4),no_child). 
lhs(in1_red3_7_3_7_5,rot90,sid_2x1,cxy(7,4),txy(7,4),no_child). 
lhs(in1_blue1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5),no_child). 
lhs(in1_blue1_8_5_8_5,sameR,sid_1x1,cxy(8,5),txy(8,5),no_child). 
lhs(in2_green2_2_4_2_5,rot90,sid_2x1,cxy(2,5),txy(2,5),no_child). 
lhs(in2_green2_5_4_5_5,rot90,sid_2x1,cxy(5,5),txy(5,5),no_child). 
lhs(in2_green2_8_4_8_5,rot90,sid_2x1,cxy(8,5),txy(8,5),no_child). 
lhs(in2_red2_3_5_4_5,sameR,sid_2x1,cxy(4,5),txy(4,5),no_child). 
lhs(in2_yellow2_6_3_7_3,sameR,sid_2x1,cxy(7,3),txy(7,3),no_child). 
lhs(in2_red2_9_5_10_5,sameR,sid_2x1,cxy(10,5),txy(10,5),no_child). 
lhs(in2_yellow3_1_3_1_5,rot90,sid_2x1,cxy(1,4),txy(1,4),no_child). 
lhs(in2_black0_1_1_2_3,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(2,2),txy(1,1),no_child). 
lhs(in2_green8_5_4_8_5,sameR,sid_3x1,cxy(7,5),txy(5,4),2). 
lhs(in2_green6_2_4_5_5,sameR,sid_u_3x2,cxy(4,5),txy(2,4),3). 
lhs(in2_black0_3_1_4_4,sameR,sid_1x2,cxy(4,3),txy(4,3),no_child). 
lhs(in2_black0_5_1_7_3,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(6,2),txy(6,2),no_child). 
lhs(in2_green12_2_4_8_5,sameR,s1894223,cxy(5,5),txy(7,4),6). 
lhs(in2_black0_8_1_15_3,rot90,sid_1x2,cxy(12,2),txy(22,3),no_child). 
lhs(in2_black0_11_1_15_5,sameR,sid_1x1,cxy(13,3),txy(25,5),no_child). 
lhs(in2_black0_9_1_15_4,rot90,sid_1x2,cxy(12,3),txy(23,4),no_child). 
lhs(in0_black0_3_1_3_2,sameR,sid_1x2,cxy(3,2),txy(3,2),no_child). 
lhs(in0_black0_7_1_7_2,sameR,sid_1x2,cxy(7,2),txy(7,2),no_child). 
lhs(in0_purple3_1_4_2_5,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(1,5),txy(1,5),no_child). 
lhs(in0_purple3_5_4_6_5,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(5,5),txy(5,5),no_child). 
lhs(in0_purple3_9_4_10_5,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(9,5),txy(9,5),1). 
lhs(in0_red4_2_3_3_5,rot90,sid_t180_3x2,cxy(3,4),txy(3,4),no_child). 
lhs(in0_red4_6_3_7_5,rot90,sid_t180_3x2,cxy(7,4),txy(7,4),no_child). 
lhs(in0_black0_1_1_2_3,sameR,sid_1x2,cxy(2,2),txy(2,2),no_child). 
lhs(in0_black0_4_1_6_3,sameR,sid_1x1,cxy(5,2),txy(9,3),no_child). 
lhs(in0_black0_8_1_15_3,rot90,sid_1x2,cxy(12,2),txy(22,3),no_child). 
lhs(in0_black0_11_1_15_5,sameR,sid_1x1,cxy(13,3),txy(25,5),no_child). 
lhs(in0_black0_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),no_child). 
lhs(in0_green1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5),no_child). 
lhs(in0_black0_8_4_8_4,sameR,sid_1x1,cxy(8,4),txy(8,4),no_child). 
lhs(in0_green1_8_5_8_5,sameR,sid_1x1,cxy(8,5),txy(8,5),no_child). 
lhs(in0_red1_10_4_10_4,sameR,sid_1x1,cxy(10,4),txy(10,4),no_child). 
