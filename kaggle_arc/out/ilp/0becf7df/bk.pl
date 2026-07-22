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
lhs(in0_yellow5_7_2_8_5,flipDHV,sid_tetris_Triple_East_and_North_2x2,cxy(8,3),txy(7,2),yellow,no_child). 
lhs(in0_orange6_4_5_5_8,rot270,sid_u_3x2,cxy(4,7),txy(5,5),orange,no_child). 
lhs(in0_green5_5_3_6_6,flipD,sid_tetris_Z_270_Rotated_2x3,cxy(6,5),txy(5,6),green,no_child). 
lhs(in0_red5_7_4_8_7,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(7,6),txy(8,7),red,no_child). 
lhs(in0_yellow1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),yellow,no_child). 
lhs(in0_green1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),green,no_child). 
lhs(in0_red1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),red,no_child). 
lhs(in0_orange1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),orange,no_child). 
lhs(in0_black0_1_1_10_10,sameR,s15084955,cxy(6,6),txy(5,7),black,no_child). 
lhs(in1_red4_5_6_5_9,rot90,sid_2x1,cxy(5,8),txy(5,8),red,no_child). 
lhs(in1_cyan5_7_5_8_7,flipD,sid_tetris_Z_270_Rotated_2x3,cxy(8,6),txy(7,7),cyan,no_child). 
lhs(in1_green6_3_5_6_6,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(4,5),txy(3,6),green,no_child). 
lhs(in1_blue8_5_2_7_5,rot90,sid_t180_3x2,cxy(6,4),txy(7,2),blue,no_child). 
lhs(in1_blue1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),blue,no_child). 
lhs(in1_red1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),red,no_child). 
lhs(in1_green1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),green,no_child). 
lhs(in1_cyan1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),cyan,no_child). 
lhs(in1_black0_1_1_10_10,sameR,s1874425,cxy(6,6),txy(6,6),black,no_child). 
lhs(in2_yellow2_6_4_6_5,rot90,sid_2x1,cxy(6,5),txy(6,5),yellow,no_child). 
lhs(in2_orange2_5_5_6_6,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(6,6),txy(5,5),orange,no_child). 
lhs(in2_brown3_6_2_7_3,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(7,2),txy(7,2),brown,no_child). 
lhs(in2_purple4_4_6_6_7,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(5,7),txy(4,6),purple,no_child). 
lhs(in2_brown1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),brown,no_child). 
lhs(in2_orange1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),orange,no_child). 
lhs(in2_yellow1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),yellow,no_child). 
lhs(in2_purple1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),purple,no_child). 
lhs(in2_orange1_4_7_4_7,sameR,sid_1x1,cxy(4,7),txy(4,7),orange,no_child). 
lhs(in2_orange1_6_3_6_3,sameR,sid_1x1,cxy(6,3),txy(6,3),orange,no_child). 
lhs(in2_black0_1_1_10_10,sameR,s2354895,cxy(6,6),txy(6,6),black,no_child). 
lhs(in0_cyan5_4_3_6_4,flipV,sid_tetris_Z_270_Rotated_2x3,cxy(5,3),txy(6,4),cyan,no_child). 
lhs(in0_brown4_6_2_7_4,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(7,3),txy(6,2),brown,no_child). 
lhs(in0_yellow7_5_5_6_9,flipD,s6607543,cxy(6,7),txy(5,5),yellow,no_child). 
lhs(in0_red6_4_4_6_7,rot270,sid_t180_3x2,cxy(5,6),txy(4,4),red,no_child). 
lhs(in0_cyan1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),cyan,no_child). 
lhs(in0_red1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),red,no_child). 
lhs(in0_brown1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),brown,no_child). 
lhs(in0_yellow1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),yellow,no_child). 
lhs(in0_brown1_4_8_4_8,sameR,sid_1x1,cxy(4,8),txy(4,8),brown,no_child). 
lhs(in0_black0_1_1_10_10,sameR,s11567348,cxy(6,6),txy(6,6),black,no_child). 
