:-use_module(library(slipcover)). 
:-if(current_predicate(use_rendering/1)). 
:-use_rendering(prolog). 
:-endif. 
:-sc. 
:-set_sc(verbosity,3). 
:-set_sc(depth_bound,false). 
:-set_sc(neg_ex,given). 
bg([]). 
in([]). 
input_cw(incr_nat30/2). 
input_cw(color_change/2). 
determination(P/Q,R/S):-input_cw(R/S),output(P/Q). 
fold(trn_0,[trn_0]). 
fold(trn_1,[trn_1]). 
fold(trn_2,[trn_2]). 
% modeh(*,rhs(+state,+nat30,+nat30,+color,+nat30,+nat30,+rotation,+nat900,+shape,+list)). 
% modeb(*,lhs(+state,+nat30,+nat30,#(color),+nat30,+nat30,+rotation,+nat900,+shape,+list)). 
% modeb(*,my_geq(+nat30,-#(nat30))). 
% modeb(*,my_leq(+nat30,-#(nat30))). 
% modeb(*,my_add(+nat30,+nat30,-nat30)). 
% modeb(*,my_mult(+nat30,#(nat30),-nat30)). 
% lazy_evaluate(my_add/3). 
% lazy_evaluate(my_geq/2). 
% lazy_evaluate(my_leq/2). 
% lazy_evaluate(my_mult/3). 
% determination(rhs/7,lhs/7). 
% determination(rhs/7,color_change/2). 
% determination(rhs/7,incr_nat30/2). 
% determination(rhs/7,my_geq/2). 
% determination(rhs/7,my_leq/2). 
% determination(rhs/7,my_add/3). 
% determination(rhs/7,my_mult/3). 
output(rhs_peice/2). 
output(rhs_rot2D/2). 
output(rhs_gis/2). 
output(rhs_c2d/2). 
output(rhs_t2d/2). 
output(rhs_pen_color/2). 
output(rhs/6). 
input_cw(lhs_peice/2). 
input_cw(lhs_rot2D/2). 
input_cw(lhs_gis/2). 
input_cw(lhs_c2d/2). 
input_cw(lhs_t2d/2). 
input_cw(lhs_pen_color/2). 
input_cw(lhs_child_c/2). 
input_cw(lhs/7). 
modeh(*,rhs_peice(+scope,+peice)). 
modeh(*,rhs_rot2D(+peice,+rot2D)). 
modeh(*,rhs_gis(+peice,+gis)). 
modeh(*,rhs_c2d(+peice,+c2d)). 
modeh(*,rhs_t2d(+peice,+t2d)). 
modeh(*,rhs_pen_color(+peice,+ #(color))). 
modeh(*,rhs(+peice,+rhs,+rhs,+rhs,+rhs,+ #(color))). 
modeb(*,lhs_peice(+scope,+peice)). 
modeb(*,lhs_rot2D(+peice,-rot2D)). 
modeb(*,lhs_gis(+peice,-gis)). 
modeb(*,lhs_c2d(+peice,-c2d)). 
modeb(*,lhs_t2d(+peice,-t2d)). 
modeb(*,lhs_pen_color(+peice,+ #(color))). 
modeb(*,lhs_child_c(+peice,-c)). 
modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,+ #(color),-lhs)). 
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
lhs(in0_green5_25_4_27_6,sameR,sid_X_3x3,cxy(26,5),txy(26,5),green,no_child). 
lhs(in0_red8_24_3_28_7,sameR,sid_hollow_diamond_3x3,cxy(26,5),txy(26,5),red,no_child). 
lhs(in0_blue161_9_19_26_27,rot180,sid_hollow_3x3,cxy(17,23),txy(17,23),blue,no_child). 
lhs(in0_blue254_3_2_19_16,sameR,sid_hollow_3x3,cxy(11,9),txy(11,9),blue,no_child). 
lhs(in0_green1_6_6_6_6,sameR,sid_1x1,cxy(6,6),txy(6,6),green,no_child). 
lhs(in0_green1_18_26_18_26,sameR,sid_1x1,cxy(18,26),txy(18,26),green,no_child). 
lhs(in0_cyan470_1_1_30_30,rot270,s3656352,cxy(17,17),txy(1,1),cyan,no_child). 
lhs(in1_green8_23_4_27_8,sameR,sid_hollow_diamond_3x3,cxy(25,6),txy(25,6),green,no_child). 
lhs(in1_red151_2_6_18_14,sameR,s5449797,cxy(10,10),txy(10,10),red,no_child). 
lhs(in1_red233_7_16_24_28,rot180,sid_hollow_3x3,cxy(15,22),txy(15,22),red,no_child). 
lhs(in1_yellow1_6_11_6_11,sameR,sid_1x1,cxy(6,11),txy(6,11),yellow,no_child). 
lhs(in1_yellow1_15_8_15_8,sameR,sid_1x1,cxy(15,8),txy(15,8),yellow,no_child). 
lhs(in1_yellow1_17_25_17_25,sameR,sid_1x1,cxy(17,25),txy(17,25),yellow,no_child). 
lhs(in1_yellow1_25_6_25_6,sameR,sid_1x1,cxy(25,6),txy(25,6),yellow,no_child). 
lhs(in1_blue504_1_1_30_30,sameR,s5190770,cxy(17,14),txy(1,30),blue,no_child). 
lhs(in2_silver2_25_25_25_26,rot90,sid_2x1,cxy(25,26),txy(25,26),silver,no_child). 
lhs(in2_silver2_25_28_25_29,rot90,sid_2x1,cxy(25,29),txy(25,29),silver,no_child). 
lhs(in2_purple3_24_26_24_28,rot90,sid_2x1,cxy(24,27),txy(24,27),purple,no_child). 
lhs(in2_purple3_26_26_26_28,rot90,sid_2x1,cxy(26,27),txy(26,27),purple,no_child). 
lhs(in2_green69_13_17_22_23,rot180,sid_hollow_3x3,cxy(17,20),txy(17,20),green,no_child). 
lhs(in2_green134_2_10_10_24,flipD,sid_hollow_3x3,cxy(6,17),txy(6,17),green,no_child). 
lhs(in2_green206_12_3_27_15,rot180,s5449797,cxy(19,9),txy(19,9),green,no_child). 
lhs(in2_yellow1_5_13_5_13,sameR,sid_1x1,cxy(5,13),txy(5,13),yellow,no_child). 
lhs(in2_yellow1_16_11_16_11,sameR,sid_1x1,cxy(16,11),txy(16,11),yellow,no_child). 
lhs(in2_yellow1_19_21_19_21,sameR,sid_1x1,cxy(19,21),txy(19,21),yellow,no_child). 
lhs(in2_yellow1_24_7_24_7,sameR,sid_1x1,cxy(24,7),txy(24,7),yellow,no_child). 
lhs(in2_yellow1_25_27_25_27,sameR,sid_1x1,cxy(25,27),txy(25,27),yellow,no_child). 
lhs(in2_cyan476_1_1_30_30,rot180,s413424,cxy(16,17),txy(1,1),cyan,no_child). 
lhs(in0_cyan2_2_24_3_24,sameR,sid_2x1,cxy(3,24),txy(3,24),cyan,no_child). 
lhs(in0_cyan2_5_24_6_24,sameR,sid_2x1,cxy(6,24),txy(6,24),cyan,no_child). 
lhs(in0_green3_3_23_5_23,sameR,sid_2x1,cxy(4,23),txy(4,23),green,no_child). 
lhs(in0_green3_3_25_5_25,sameR,sid_2x1,cxy(4,25),txy(4,25),green,no_child). 
lhs(in0_blue119_4_3_15_12,flipV,sid_hollow_3x3,cxy(10,7),txy(4,12),blue,no_child). 
lhs(in0_blue236_13_15_29_28,rot180,s5449797,cxy(21,22),txy(21,22),blue,no_child). 
lhs(in0_red1_4_24_4_24,sameR,sid_1x1,cxy(4,24),txy(4,24),red,no_child). 
lhs(in0_red1_7_10_7_10,sameR,sid_1x1,cxy(7,10),txy(7,10),red,no_child). 
lhs(in0_red1_19_25_19_25,sameR,sid_1x1,cxy(19,25),txy(19,25),red,no_child). 
lhs(in0_red1_24_18_24_18,sameR,sid_1x1,cxy(24,18),txy(24,18),red,no_child). 
lhs(in0_yellow531_1_1_30_30,rot90,s856546,cxy(15,14),txy(30,30),yellow,no_child). 
begin(model(trn_0)). 
lhs_peice(trn_0,obj_0_115_in). 
lhs_rot2D(obj_0_115_in,sameR). 
lhs_gis(obj_0_115_in,sid_X_3x3). 
lhs_c2d(obj_0_115_in,cxy(26,5)). 
lhs_t2d(obj_0_115_in,txy(26,5)). 
lhs_pen_color(obj_0_115_in,green). 
lhs_child_c(obj_0_115_in,no_child). 
lhs_peice(trn_0,obj_0_97_in). 
lhs_rot2D(obj_0_97_in,sameR). 
lhs_gis(obj_0_97_in,sid_hollow_diamond_3x3). 
lhs_c2d(obj_0_97_in,cxy(26,5)). 
lhs_t2d(obj_0_97_in,txy(26,5)). 
lhs_pen_color(obj_0_97_in,red). 
lhs_child_c(obj_0_97_in,no_child). 
lhs_peice(trn_0,obj_0_236_in). 
lhs_rot2D(obj_0_236_in,rot180). 
lhs_gis(obj_0_236_in,sid_hollow_3x3). 
lhs_c2d(obj_0_236_in,cxy(17,23)). 
lhs_t2d(obj_0_236_in,txy(17,23)). 
lhs_pen_color(obj_0_236_in,blue). 
lhs_child_c(obj_0_236_in,no_child). 
lhs_peice(trn_0,obj_0_423_in). 
lhs_rot2D(obj_0_423_in,sameR). 
lhs_gis(obj_0_423_in,sid_hollow_3x3). 
lhs_c2d(obj_0_423_in,cxy(11,9)). 
lhs_t2d(obj_0_423_in,txy(11,9)). 
lhs_pen_color(obj_0_423_in,blue). 
lhs_child_c(obj_0_423_in,no_child). 
lhs_peice(trn_0,obj_0_642_in). 
lhs_rot2D(obj_0_642_in,sameR). 
lhs_gis(obj_0_642_in,sid_1x1). 
lhs_c2d(obj_0_642_in,cxy(6,6)). 
lhs_t2d(obj_0_642_in,txy(6,6)). 
lhs_pen_color(obj_0_642_in,green). 
lhs_child_c(obj_0_642_in,no_child). 
lhs_peice(trn_0,obj_0_131_in). 
lhs_rot2D(obj_0_131_in,sameR). 
lhs_gis(obj_0_131_in,sid_1x1). 
lhs_c2d(obj_0_131_in,cxy(18,26)). 
lhs_t2d(obj_0_131_in,txy(18,26)). 
lhs_pen_color(obj_0_131_in,green). 
lhs_child_c(obj_0_131_in,no_child). 
lhs_peice(trn_0,obj_0_165_in). 
lhs_rot2D(obj_0_165_in,rot270). 
lhs_gis(obj_0_165_in,s3656352). 
lhs_c2d(obj_0_165_in,cxy(17,17)). 
lhs_t2d(obj_0_165_in,txy(1,1)). 
lhs_pen_color(obj_0_165_in,cyan). 
lhs_child_c(obj_0_165_in,no_child). 
rhs_peice(trn_0,obj_0_533_out). 
rhs_rot2D(obj_0_533_out,sameR). 
rhs_gis(obj_0_533_out,sid_2x1). 
rhs_c2d(obj_0_533_out,cxy(23,27)). 
rhs_t2d(obj_0_533_out,txy(23,27)). 
rhs_pen_color(obj_0_533_out,blue). 
rhs_peice(trn_0,obj_0_537_out). 
rhs_rot2D(obj_0_537_out,sameR). 
rhs_gis(obj_0_537_out,sid_2x1). 
rhs_c2d(obj_0_537_out,cxy(13,27)). 
rhs_t2d(obj_0_537_out,txy(13,27)). 
rhs_pen_color(obj_0_537_out,blue). 
rhs_peice(trn_0,obj_0_4_out). 
rhs_rot2D(obj_0_4_out,sameR). 
rhs_gis(obj_0_4_out,sid_X_3x3). 
rhs_c2d(obj_0_4_out,cxy(6,6)). 
rhs_t2d(obj_0_4_out,txy(6,6)). 
rhs_pen_color(obj_0_4_out,green). 
rhs_peice(trn_0,obj_0_705_out). 
rhs_rot2D(obj_0_705_out,sameR). 
rhs_gis(obj_0_705_out,sid_X_3x3). 
rhs_c2d(obj_0_705_out,cxy(18,26)). 
rhs_t2d(obj_0_705_out,txy(18,26)). 
rhs_pen_color(obj_0_705_out,green). 
rhs_peice(trn_0,obj_0_113_out). 
rhs_rot2D(obj_0_113_out,flipDHV). 
rhs_gis(obj_0_113_out,sid_tetris_Z_270_Rotated_2x3). 
rhs_c2d(obj_0_113_out,cxy(4,3)). 
rhs_t2d(obj_0_113_out,txy(3,5)). 
rhs_pen_color(obj_0_113_out,blue). 
rhs_peice(trn_0,obj_0_447_out). 
rhs_rot2D(obj_0_447_out,rot270). 
rhs_gis(obj_0_447_out,sid_tetris_Z_270_Rotated_2x3). 
rhs_c2d(obj_0_447_out,cxy(4,12)). 
rhs_t2d(obj_0_447_out,txy(3,7)). 
rhs_pen_color(obj_0_447_out,blue). 
rhs_peice(trn_0,obj_0_511_out). 
rhs_rot2D(obj_0_511_out,flipV). 
rhs_gis(obj_0_511_out,sid_tetris_Z_270_Rotated_2x3). 
rhs_c2d(obj_0_511_out,cxy(13,3)). 
rhs_t2d(obj_0_511_out,txy(19,5)). 
rhs_pen_color(obj_0_511_out,blue). 
rhs_peice(trn_0,obj_0_46_out). 
rhs_rot2D(obj_0_46_out,flipV). 
rhs_gis(obj_0_46_out,sid_tetris_Z_270_Rotated_2x3). 
rhs_c2d(obj_0_46_out,cxy(23,22)). 
rhs_t2d(obj_0_46_out,txy(19,19)). 
rhs_pen_color(obj_0_46_out,blue). 
rhs_peice(trn_0,obj_0_422_out). 
rhs_rot2D(obj_0_422_out,rot180). 
rhs_gis(obj_0_422_out,sid_tetris_Z_270_Rotated_2x3). 
rhs_c2d(obj_0_422_out,cxy(13,22)). 
rhs_t2d(obj_0_422_out,txy(13,22)). 
rhs_pen_color(obj_0_422_out,blue). 
rhs_peice(trn_0,obj_0_244_out). 
rhs_rot2D(obj_0_244_out,sameR). 
rhs_gis(obj_0_244_out,sid_tetris_Z_270_Rotated_2x3). 
rhs_c2d(obj_0_244_out,cxy(13,12)). 
rhs_t2d(obj_0_244_out,txy(19,7)). 
rhs_pen_color(obj_0_244_out,blue). 
rhs_peice(trn_0,obj_0_24_out). 
rhs_rot2D(obj_0_24_out,flipD). 
rhs_gis(obj_0_24_out,sid_hollow_diamond_3x3). 
rhs_c2d(obj_0_24_out,cxy(18,25)). 
rhs_t2d(obj_0_24_out,txy(9,26)). 
rhs_pen_color(obj_0_24_out,red). 
rhs_peice(trn_0,obj_0_356_out). 
rhs_rot2D(obj_0_356_out,flipDHV). 
rhs_gis(obj_0_356_out,sid_hollow_diamond_3x3). 
rhs_c2d(obj_0_356_out,cxy(9,8)). 
rhs_t2d(obj_0_356_out,txy(6,16)). 
rhs_pen_color(obj_0_356_out,red). 
rhs_peice(trn_0,obj_0_720_out). 
rhs_rot2D(obj_0_720_out,rot90). 
rhs_gis(obj_0_720_out,s13252453). 
rhs_c2d(obj_0_720_out,cxy(17,16)). 
rhs_t2d(obj_0_720_out,txy(1,1)). 
rhs_pen_color(obj_0_720_out,cyan). 
end(model(trn_0)). 
begin(model(trn_1)). 
lhs_peice(trn_1,obj_1_484_in). 
lhs_rot2D(obj_1_484_in,sameR). 
lhs_gis(obj_1_484_in,sid_hollow_diamond_3x3). 
lhs_c2d(obj_1_484_in,cxy(25,6)). 
lhs_t2d(obj_1_484_in,txy(25,6)). 
lhs_pen_color(obj_1_484_in,green). 
lhs_child_c(obj_1_484_in,no_child). 
lhs_peice(trn_1,obj_1_287_in). 
lhs_rot2D(obj_1_287_in,sameR). 
lhs_gis(obj_1_287_in,s5449797). 
lhs_c2d(obj_1_287_in,cxy(10,10)). 
lhs_t2d(obj_1_287_in,txy(10,10)). 
lhs_pen_color(obj_1_287_in,red). 
lhs_child_c(obj_1_287_in,no_child). 
lhs_peice(trn_1,obj_1_224_in). 
lhs_rot2D(obj_1_224_in,rot180). 
lhs_gis(obj_1_224_in,sid_hollow_3x3). 
lhs_c2d(obj_1_224_in,cxy(15,22)). 
lhs_t2d(obj_1_224_in,txy(15,22)). 
lhs_pen_color(obj_1_224_in,red). 
lhs_child_c(obj_1_224_in,no_child). 
lhs_peice(trn_1,obj_1_240_in). 
lhs_rot2D(obj_1_240_in,sameR). 
lhs_gis(obj_1_240_in,sid_1x1). 
lhs_c2d(obj_1_240_in,cxy(6,11)). 
lhs_t2d(obj_1_240_in,txy(6,11)). 
lhs_pen_color(obj_1_240_in,yellow). 
lhs_child_c(obj_1_240_in,no_child). 
lhs_peice(trn_1,obj_1_601_in). 
lhs_rot2D(obj_1_601_in,sameR). 
lhs_gis(obj_1_601_in,sid_1x1). 
lhs_c2d(obj_1_601_in,cxy(15,8)). 
lhs_t2d(obj_1_601_in,txy(15,8)). 
lhs_pen_color(obj_1_601_in,yellow). 
lhs_child_c(obj_1_601_in,no_child). 
lhs_peice(trn_1,obj_1_222_in). 
lhs_rot2D(obj_1_222_in,sameR). 
lhs_gis(obj_1_222_in,sid_1x1). 
lhs_c2d(obj_1_222_in,cxy(17,25)). 
lhs_t2d(obj_1_222_in,txy(17,25)). 
lhs_pen_color(obj_1_222_in,yellow). 
lhs_child_c(obj_1_222_in,no_child). 
lhs_peice(trn_1,obj_1_312_in). 
lhs_rot2D(obj_1_312_in,sameR). 
lhs_gis(obj_1_312_in,sid_1x1). 
lhs_c2d(obj_1_312_in,cxy(25,6)). 
lhs_t2d(obj_1_312_in,txy(25,6)). 
lhs_pen_color(obj_1_312_in,yellow). 
lhs_child_c(obj_1_312_in,no_child). 
lhs_peice(trn_1,obj_1_480_in). 
lhs_rot2D(obj_1_480_in,sameR). 
lhs_gis(obj_1_480_in,s5190770). 
lhs_c2d(obj_1_480_in,cxy(17,14)). 
lhs_t2d(obj_1_480_in,txy(1,30)). 
lhs_pen_color(obj_1_480_in,blue). 
lhs_child_c(obj_1_480_in,no_child). 
rhs_peice(trn_1,obj_1_169_out). 
rhs_rot2D(obj_1_169_out,sameR). 
rhs_gis(obj_1_169_out,sid_2x1). 
rhs_c2d(obj_1_169_out,cxy(17,7)). 
rhs_t2d(obj_1_169_out,txy(17,7)). 
rhs_pen_color(obj_1_169_out,red). 
rhs_peice(trn_1,obj_1_53_out). 
rhs_rot2D(obj_1_53_out,sameR). 
rhs_gis(obj_1_53_out,sid_2x1). 
rhs_c2d(obj_1_53_out,cxy(17,10)). 
rhs_t2d(obj_1_53_out,txy(17,10)). 
rhs_pen_color(obj_1_53_out,red). 
rhs_peice(trn_1,obj_1_406_out). 
rhs_rot2D(obj_1_406_out,sameR). 
rhs_gis(obj_1_406_out,sid_2x1). 
rhs_c2d(obj_1_406_out,cxy(4,7)). 
rhs_t2d(obj_1_406_out,txy(2,6)). 
rhs_pen_color(obj_1_406_out,red). 
rhs_peice(trn_1,obj_1_259_out). 
rhs_rot2D(obj_1_259_out,sameR). 
rhs_gis(obj_1_259_out,sid_2x1). 
rhs_c2d(obj_1_259_out,cxy(4,10)). 
rhs_t2d(obj_1_259_out,txy(2,9)). 
rhs_pen_color(obj_1_259_out,red). 
rhs_peice(trn_1,obj_1_44_out). 
rhs_rot2D(obj_1_44_out,sameR). 
rhs_gis(obj_1_44_out,sid_1x1). 
rhs_c2d(obj_1_44_out,cxy(17,13)). 
rhs_t2d(obj_1_44_out,txy(17,13)). 
rhs_pen_color(obj_1_44_out,red). 
rhs_peice(trn_1,obj_1_207_out). 
rhs_rot2D(obj_1_207_out,sameR). 
rhs_gis(obj_1_207_out,sid_2x1). 
rhs_c2d(obj_1_207_out,cxy(4,13)). 
rhs_t2d(obj_1_207_out,txy(4,13)). 
rhs_pen_color(obj_1_207_out,red). 
rhs_peice(trn_1,obj_1_533_out). 
rhs_rot2D(obj_1_533_out,sameR). 
rhs_gis(obj_1_533_out,sid_2x1). 
rhs_c2d(obj_1_533_out,cxy(11,7)). 
rhs_t2d(obj_1_533_out,txy(7,6)). 
rhs_pen_color(obj_1_533_out,red). 
rhs_peice(trn_1,obj_1_754_out). 
rhs_rot2D(obj_1_754_out,sameR). 
rhs_gis(obj_1_754_out,sid_2x1). 
rhs_c2d(obj_1_754_out,cxy(11,10)). 
rhs_t2d(obj_1_754_out,txy(7,9)). 
rhs_pen_color(obj_1_754_out,red). 
rhs_peice(trn_1,obj_1_375_out). 
rhs_rot2D(obj_1_375_out,sameR). 
rhs_gis(obj_1_375_out,sid_2x1). 
rhs_c2d(obj_1_375_out,cxy(21,27)). 
rhs_t2d(obj_1_375_out,txy(21,27)). 
rhs_pen_color(obj_1_375_out,red). 
rhs_peice(trn_1,obj_1_489_out). 
rhs_rot2D(obj_1_489_out,sameR). 
rhs_gis(obj_1_489_out,sid_2x1). 
rhs_c2d(obj_1_489_out,cxy(11,13)). 
rhs_t2d(obj_1_489_out,txy(11,13)). 
rhs_pen_color(obj_1_489_out,red). 
rhs_peice(trn_1,obj_1_50_out). 
rhs_rot2D(obj_1_50_out,sameR). 
rhs_gis(obj_1_50_out,sid_2x1). 
rhs_c2d(obj_1_50_out,cxy(12,27)). 
rhs_t2d(obj_1_50_out,txy(12,27)). 
rhs_pen_color(obj_1_50_out,red). 
rhs_peice(trn_1,obj_1_317_out). 
rhs_rot2D(obj_1_317_out,rot90). 
rhs_gis(obj_1_317_out,sid_2x1). 
rhs_c2d(obj_1_317_out,cxy(21,20)). 
rhs_t2d(obj_1_317_out,txy(21,20)). 
rhs_pen_color(obj_1_317_out,red). 
rhs_peice(trn_1,obj_1_527_out). 
rhs_rot2D(obj_1_527_out,sameR). 
rhs_gis(obj_1_527_out,sid_2x1). 
rhs_c2d(obj_1_527_out,cxy(12,20)). 
rhs_t2d(obj_1_527_out,txy(12,20)). 
rhs_pen_color(obj_1_527_out,red). 
rhs_peice(trn_1,obj_1_442_out). 
rhs_rot2D(obj_1_442_out,rot90). 
rhs_gis(obj_1_442_out,s1956623). 
rhs_c2d(obj_1_442_out,cxy(10,10)). 
rhs_t2d(obj_1_442_out,txy(10,10)). 
rhs_pen_color(obj_1_442_out,green). 
rhs_peice(trn_1,obj_1_488_out). 
rhs_rot2D(obj_1_488_out,flipD). 
rhs_gis(obj_1_488_out,sid_hollow_diamond_3x3). 
rhs_c2d(obj_1_488_out,cxy(16,24)). 
rhs_t2d(obj_1_488_out,txy(7,25)). 
rhs_pen_color(obj_1_488_out,green). 
rhs_peice(trn_1,obj_1_240_out). 
rhs_rot2D(obj_1_240_out,sameR). 
rhs_gis(obj_1_240_out,sid_1x1). 
rhs_c2d(obj_1_240_out,cxy(6,11)). 
rhs_t2d(obj_1_240_out,txy(6,11)). 
rhs_pen_color(obj_1_240_out,yellow). 
rhs_peice(trn_1,obj_1_601_out). 
rhs_rot2D(obj_1_601_out,sameR). 
rhs_gis(obj_1_601_out,sid_1x1). 
rhs_c2d(obj_1_601_out,cxy(15,8)). 
rhs_t2d(obj_1_601_out,txy(15,8)). 
rhs_pen_color(obj_1_601_out,yellow). 
rhs_peice(trn_1,obj_1_222_out). 
rhs_rot2D(obj_1_222_out,sameR). 
rhs_gis(obj_1_222_out,sid_1x1). 
rhs_c2d(obj_1_222_out,cxy(17,25)). 
rhs_t2d(obj_1_222_out,txy(17,25)). 
rhs_pen_color(obj_1_222_out,yellow). 
rhs_peice(trn_1,obj_1_88_out). 
rhs_rot2D(obj_1_88_out,rot90). 
rhs_gis(obj_1_88_out,s13252453). 
rhs_c2d(obj_1_88_out,cxy(17,14)). 
rhs_t2d(obj_1_88_out,txy(1,30)). 
rhs_pen_color(obj_1_88_out,blue). 
end(model(trn_1)). 
begin(model(trn_2)). 
lhs_peice(trn_2,obj_2_402_in). 
lhs_rot2D(obj_2_402_in,rot90). 
lhs_gis(obj_2_402_in,sid_2x1). 
lhs_c2d(obj_2_402_in,cxy(25,26)). 
lhs_t2d(obj_2_402_in,txy(25,26)). 
lhs_pen_color(obj_2_402_in,silver). 
lhs_child_c(obj_2_402_in,no_child). 
lhs_peice(trn_2,obj_2_359_in). 
lhs_rot2D(obj_2_359_in,rot90). 
lhs_gis(obj_2_359_in,sid_2x1). 
lhs_c2d(obj_2_359_in,cxy(25,29)). 
lhs_t2d(obj_2_359_in,txy(25,29)). 
lhs_pen_color(obj_2_359_in,silver). 
lhs_child_c(obj_2_359_in,no_child). 
lhs_peice(trn_2,obj_2_21_in). 
lhs_rot2D(obj_2_21_in,rot90). 
lhs_gis(obj_2_21_in,sid_2x1). 
lhs_c2d(obj_2_21_in,cxy(24,27)). 
lhs_t2d(obj_2_21_in,txy(24,27)). 
lhs_pen_color(obj_2_21_in,purple). 
lhs_child_c(obj_2_21_in,no_child). 
lhs_peice(trn_2,obj_2_375_in). 
lhs_rot2D(obj_2_375_in,rot90). 
lhs_gis(obj_2_375_in,sid_2x1). 
lhs_c2d(obj_2_375_in,cxy(26,27)). 
lhs_t2d(obj_2_375_in,txy(26,27)). 
lhs_pen_color(obj_2_375_in,purple). 
lhs_child_c(obj_2_375_in,no_child). 
lhs_peice(trn_2,obj_2_201_in). 
lhs_rot2D(obj_2_201_in,rot180). 
lhs_gis(obj_2_201_in,sid_hollow_3x3). 
lhs_c2d(obj_2_201_in,cxy(17,20)). 
lhs_t2d(obj_2_201_in,txy(17,20)). 
lhs_pen_color(obj_2_201_in,green). 
lhs_child_c(obj_2_201_in,no_child). 
lhs_peice(trn_2,obj_2_696_in). 
lhs_rot2D(obj_2_696_in,flipD). 
lhs_gis(obj_2_696_in,sid_hollow_3x3). 
lhs_c2d(obj_2_696_in,cxy(6,17)). 
lhs_t2d(obj_2_696_in,txy(6,17)). 
lhs_pen_color(obj_2_696_in,green). 
lhs_child_c(obj_2_696_in,no_child). 
lhs_peice(trn_2,obj_2_396_in). 
lhs_rot2D(obj_2_396_in,rot180). 
lhs_gis(obj_2_396_in,s5449797). 
lhs_c2d(obj_2_396_in,cxy(19,9)). 
lhs_t2d(obj_2_396_in,txy(19,9)). 
lhs_pen_color(obj_2_396_in,green). 
lhs_child_c(obj_2_396_in,no_child). 
lhs_peice(trn_2,obj_2_107_in). 
lhs_rot2D(obj_2_107_in,sameR). 
lhs_gis(obj_2_107_in,sid_1x1). 
lhs_c2d(obj_2_107_in,cxy(5,13)). 
lhs_t2d(obj_2_107_in,txy(5,13)). 
lhs_pen_color(obj_2_107_in,yellow). 
lhs_child_c(obj_2_107_in,no_child). 
lhs_peice(trn_2,obj_2_303_in). 
lhs_rot2D(obj_2_303_in,sameR). 
lhs_gis(obj_2_303_in,sid_1x1). 
lhs_c2d(obj_2_303_in,cxy(16,11)). 
lhs_t2d(obj_2_303_in,txy(16,11)). 
lhs_pen_color(obj_2_303_in,yellow). 
lhs_child_c(obj_2_303_in,no_child). 
lhs_peice(trn_2,obj_2_512_in). 
lhs_rot2D(obj_2_512_in,sameR). 
lhs_gis(obj_2_512_in,sid_1x1). 
lhs_c2d(obj_2_512_in,cxy(19,21)). 
lhs_t2d(obj_2_512_in,txy(19,21)). 
lhs_pen_color(obj_2_512_in,yellow). 
lhs_child_c(obj_2_512_in,no_child). 
lhs_peice(trn_2,obj_2_247_in). 
lhs_rot2D(obj_2_247_in,sameR). 
lhs_gis(obj_2_247_in,sid_1x1). 
lhs_c2d(obj_2_247_in,cxy(24,7)). 
lhs_t2d(obj_2_247_in,txy(24,7)). 
lhs_pen_color(obj_2_247_in,yellow). 
lhs_child_c(obj_2_247_in,no_child). 
lhs_peice(trn_2,obj_2_290_in). 
lhs_rot2D(obj_2_290_in,sameR). 
lhs_gis(obj_2_290_in,sid_1x1). 
lhs_c2d(obj_2_290_in,cxy(25,27)). 
lhs_t2d(obj_2_290_in,txy(25,27)). 
lhs_pen_color(obj_2_290_in,yellow). 
lhs_child_c(obj_2_290_in,no_child). 
lhs_peice(trn_2,obj_2_228_in). 
lhs_rot2D(obj_2_228_in,rot180). 
lhs_gis(obj_2_228_in,s413424). 
lhs_c2d(obj_2_228_in,cxy(16,17)). 
lhs_t2d(obj_2_228_in,txy(1,1)). 
lhs_pen_color(obj_2_228_in,cyan). 
lhs_child_c(obj_2_228_in,no_child). 
rhs_peice(trn_2,obj_2_603_out). 
rhs_rot2D(obj_2_603_out,rot90). 
rhs_gis(obj_2_603_out,sid_2x1). 
rhs_c2d(obj_2_603_out,cxy(19,23)). 
rhs_t2d(obj_2_603_out,txy(19,23)). 
rhs_pen_color(obj_2_603_out,silver). 
rhs_peice(trn_2,obj_2_732_out). 
rhs_rot2D(obj_2_732_out,rot90). 
rhs_gis(obj_2_732_out,sid_2x1). 
rhs_c2d(obj_2_732_out,cxy(4,13)). 
rhs_t2d(obj_2_732_out,txy(4,13)). 
rhs_pen_color(obj_2_732_out,purple). 
rhs_peice(trn_2,obj_2_583_out). 
rhs_rot2D(obj_2_583_out,rot90). 
rhs_gis(obj_2_583_out,sid_2x1). 
rhs_c2d(obj_2_583_out,cxy(5,11)). 
rhs_t2d(obj_2_583_out,txy(5,11)). 
rhs_pen_color(obj_2_583_out,silver). 
rhs_peice(trn_2,obj_2_109_out). 
rhs_rot2D(obj_2_109_out,rot90). 
rhs_gis(obj_2_109_out,sid_2x1). 
rhs_c2d(obj_2_109_out,cxy(6,13)). 
rhs_t2d(obj_2_109_out,txy(6,13)). 
rhs_pen_color(obj_2_109_out,purple). 
rhs_peice(trn_2,obj_2_113_out). 
rhs_rot2D(obj_2_113_out,rot90). 
rhs_gis(obj_2_113_out,sid_2x1). 
rhs_c2d(obj_2_113_out,cxy(15,11)). 
rhs_t2d(obj_2_113_out,txy(15,11)). 
rhs_pen_color(obj_2_113_out,purple). 
rhs_peice(trn_2,obj_2_635_out). 
rhs_rot2D(obj_2_635_out,rot90). 
rhs_gis(obj_2_635_out,sid_2x1). 
rhs_c2d(obj_2_635_out,cxy(17,11)). 
rhs_t2d(obj_2_635_out,txy(17,11)). 
rhs_pen_color(obj_2_635_out,purple). 
rhs_peice(trn_2,obj_2_608_out). 
rhs_rot2D(obj_2_608_out,rot90). 
rhs_gis(obj_2_608_out,sid_2x1). 
rhs_c2d(obj_2_608_out,cxy(18,21)). 
rhs_t2d(obj_2_608_out,txy(18,21)). 
rhs_pen_color(obj_2_608_out,purple). 
rhs_peice(trn_2,obj_2_642_out). 
rhs_rot2D(obj_2_642_out,rot90). 
rhs_gis(obj_2_642_out,sid_2x1). 
rhs_c2d(obj_2_642_out,cxy(20,21)). 
rhs_t2d(obj_2_642_out,txy(20,21)). 
rhs_pen_color(obj_2_642_out,purple). 
rhs_peice(trn_2,obj_2_346_out). 
rhs_rot2D(obj_2_346_out,rot90). 
rhs_gis(obj_2_346_out,sid_2x1). 
rhs_c2d(obj_2_346_out,cxy(23,7)). 
rhs_t2d(obj_2_346_out,txy(23,7)). 
rhs_pen_color(obj_2_346_out,purple). 
rhs_peice(trn_2,obj_2_218_out). 
rhs_rot2D(obj_2_218_out,rot90). 
rhs_gis(obj_2_218_out,sid_2x1). 
rhs_c2d(obj_2_218_out,cxy(25,7)). 
rhs_t2d(obj_2_218_out,txy(25,7)). 
rhs_pen_color(obj_2_218_out,purple). 
rhs_peice(trn_2,obj_2_535_out). 
rhs_rot2D(obj_2_535_out,rot90). 
rhs_gis(obj_2_535_out,sid_2x1). 
rhs_c2d(obj_2_535_out,cxy(16,14)). 
rhs_t2d(obj_2_535_out,txy(16,14)). 
rhs_pen_color(obj_2_535_out,silver). 
rhs_peice(trn_2,obj_2_305_out). 
rhs_rot2D(obj_2_305_out,rot90). 
rhs_gis(obj_2_305_out,sid_2x1). 
rhs_c2d(obj_2_305_out,cxy(19,19)). 
rhs_t2d(obj_2_305_out,txy(19,19)). 
rhs_pen_color(obj_2_305_out,silver). 
rhs_peice(trn_2,obj_2_717_out). 
rhs_rot2D(obj_2_717_out,rot90). 
rhs_gis(obj_2_717_out,sid_2x1). 
rhs_c2d(obj_2_717_out,cxy(24,5)). 
rhs_t2d(obj_2_717_out,txy(24,5)). 
rhs_pen_color(obj_2_717_out,silver). 
rhs_peice(trn_2,obj_2_20_out). 
rhs_rot2D(obj_2_20_out,rot90). 
rhs_gis(obj_2_20_out,sid_2x1). 
rhs_c2d(obj_2_20_out,cxy(16,7)). 
rhs_t2d(obj_2_20_out,txy(16,7)). 
rhs_pen_color(obj_2_20_out,silver). 
rhs_peice(trn_2,obj_2_4_out). 
rhs_rot2D(obj_2_4_out,rot90). 
rhs_gis(obj_2_4_out,sid_2x1). 
rhs_c2d(obj_2_4_out,cxy(24,12)). 
rhs_t2d(obj_2_4_out,txy(24,12)). 
rhs_pen_color(obj_2_4_out,silver). 
rhs_peice(trn_2,obj_2_483_out). 
rhs_rot2D(obj_2_483_out,rot90). 
rhs_gis(obj_2_483_out,sid_2x1). 
rhs_c2d(obj_2_483_out,cxy(5,19)). 
rhs_t2d(obj_2_483_out,txy(5,19)). 
rhs_pen_color(obj_2_483_out,silver). 
rhs_peice(trn_2,obj_2_106_out). 
rhs_rot2D(obj_2_106_out,rot90). 
rhs_gis(obj_2_106_out,sid_u_3x2). 
rhs_c2d(obj_2_106_out,cxy(21,20)). 
rhs_t2d(obj_2_106_out,txy(21,20)). 
rhs_pen_color(obj_2_106_out,green). 
rhs_peice(trn_2,obj_2_713_out). 
rhs_rot2D(obj_2_713_out,flipD). 
rhs_gis(obj_2_713_out,sid_u_3x2). 
rhs_c2d(obj_2_713_out,cxy(26,9)). 
rhs_t2d(obj_2_713_out,txy(26,9)). 
rhs_pen_color(obj_2_713_out,green). 
rhs_peice(trn_2,obj_2_503_out). 
rhs_rot2D(obj_2_503_out,flipDHV). 
rhs_gis(obj_2_503_out,sid_u_3x2). 
rhs_c2d(obj_2_503_out,cxy(15,20)). 
rhs_t2d(obj_2_503_out,txy(15,20)). 
rhs_pen_color(obj_2_503_out,green). 
rhs_peice(trn_2,obj_2_46_out). 
rhs_rot2D(obj_2_46_out,rot270). 
rhs_gis(obj_2_46_out,sid_u_3x2). 
rhs_c2d(obj_2_46_out,cxy(3,17)). 
rhs_t2d(obj_2_46_out,txy(3,17)). 
rhs_pen_color(obj_2_46_out,green). 
rhs_peice(trn_2,obj_2_434_out). 
rhs_rot2D(obj_2_434_out,flipDHV). 
rhs_gis(obj_2_434_out,sid_u_3x2). 
rhs_c2d(obj_2_434_out,cxy(13,9)). 
rhs_t2d(obj_2_434_out,txy(13,9)). 
rhs_pen_color(obj_2_434_out,green). 
rhs_peice(trn_2,obj_2_616_out). 
rhs_rot2D(obj_2_616_out,flipD). 
rhs_gis(obj_2_616_out,sid_u_3x2). 
rhs_c2d(obj_2_616_out,cxy(8,17)). 
rhs_t2d(obj_2_616_out,txy(8,17)). 
rhs_pen_color(obj_2_616_out,green). 
rhs_peice(trn_2,obj_2_757_out). 
rhs_rot2D(obj_2_757_out,flipDHV). 
rhs_gis(obj_2_757_out,s7728596). 
rhs_c2d(obj_2_757_out,cxy(20,9)). 
rhs_t2d(obj_2_757_out,txy(20,9)). 
rhs_pen_color(obj_2_757_out,green). 
rhs_peice(trn_2,obj_2_107_out). 
rhs_rot2D(obj_2_107_out,sameR). 
rhs_gis(obj_2_107_out,sid_1x1). 
rhs_c2d(obj_2_107_out,cxy(5,13)). 
rhs_t2d(obj_2_107_out,txy(5,13)). 
rhs_pen_color(obj_2_107_out,yellow). 
rhs_peice(trn_2,obj_2_303_out). 
rhs_rot2D(obj_2_303_out,sameR). 
rhs_gis(obj_2_303_out,sid_1x1). 
rhs_c2d(obj_2_303_out,cxy(16,11)). 
rhs_t2d(obj_2_303_out,txy(16,11)). 
rhs_pen_color(obj_2_303_out,yellow). 
rhs_peice(trn_2,obj_2_512_out). 
rhs_rot2D(obj_2_512_out,sameR). 
rhs_gis(obj_2_512_out,sid_1x1). 
rhs_c2d(obj_2_512_out,cxy(19,21)). 
rhs_t2d(obj_2_512_out,txy(19,21)). 
rhs_pen_color(obj_2_512_out,yellow). 
rhs_peice(trn_2,obj_2_247_out). 
rhs_rot2D(obj_2_247_out,sameR). 
rhs_gis(obj_2_247_out,sid_1x1). 
rhs_c2d(obj_2_247_out,cxy(24,7)). 
rhs_t2d(obj_2_247_out,txy(24,7)). 
rhs_pen_color(obj_2_247_out,yellow). 
rhs_peice(trn_2,obj_2_539_out). 
rhs_rot2D(obj_2_539_out,sameR). 
rhs_gis(obj_2_539_out,s10828854). 
rhs_c2d(obj_2_539_out,cxy(16,17)). 
rhs_t2d(obj_2_539_out,txy(1,1)). 
rhs_pen_color(obj_2_539_out,cyan). 
end(model(trn_2)). 
begin(model(tst_0)). 
lhs_peice(tst_0,obj_0_557_in). 
lhs_rot2D(obj_0_557_in,sameR). 
lhs_gis(obj_0_557_in,sid_2x1). 
lhs_c2d(obj_0_557_in,cxy(3,24)). 
lhs_t2d(obj_0_557_in,txy(3,24)). 
lhs_pen_color(obj_0_557_in,cyan). 
lhs_child_c(obj_0_557_in,no_child). 
lhs_peice(tst_0,obj_0_53_in). 
lhs_rot2D(obj_0_53_in,sameR). 
lhs_gis(obj_0_53_in,sid_2x1). 
lhs_c2d(obj_0_53_in,cxy(6,24)). 
lhs_t2d(obj_0_53_in,txy(6,24)). 
lhs_pen_color(obj_0_53_in,cyan). 
lhs_child_c(obj_0_53_in,no_child). 
lhs_peice(tst_0,obj_0_119_in). 
lhs_rot2D(obj_0_119_in,sameR). 
lhs_gis(obj_0_119_in,sid_2x1). 
lhs_c2d(obj_0_119_in,cxy(4,23)). 
lhs_t2d(obj_0_119_in,txy(4,23)). 
lhs_pen_color(obj_0_119_in,green). 
lhs_child_c(obj_0_119_in,no_child). 
lhs_peice(tst_0,obj_0_720_in). 
lhs_rot2D(obj_0_720_in,sameR). 
lhs_gis(obj_0_720_in,sid_2x1). 
lhs_c2d(obj_0_720_in,cxy(4,25)). 
lhs_t2d(obj_0_720_in,txy(4,25)). 
lhs_pen_color(obj_0_720_in,green). 
lhs_child_c(obj_0_720_in,no_child). 
lhs_rot2D(obj_0_53_in,flipV). 
lhs_gis(obj_0_53_in,sid_hollow_3x3). 
lhs_c2d(obj_0_53_in,cxy(10,7)). 
lhs_t2d(obj_0_53_in,txy(4,12)). 
lhs_pen_color(obj_0_53_in,blue). 
lhs_peice(tst_0,obj_0_517_in). 
lhs_rot2D(obj_0_517_in,rot180). 
lhs_gis(obj_0_517_in,s5449797). 
lhs_c2d(obj_0_517_in,cxy(21,22)). 
lhs_t2d(obj_0_517_in,txy(21,22)). 
lhs_pen_color(obj_0_517_in,blue). 
lhs_child_c(obj_0_517_in,no_child). 
lhs_peice(tst_0,obj_0_40_in). 
lhs_rot2D(obj_0_40_in,sameR). 
lhs_gis(obj_0_40_in,sid_1x1). 
lhs_c2d(obj_0_40_in,cxy(4,24)). 
lhs_t2d(obj_0_40_in,txy(4,24)). 
lhs_pen_color(obj_0_40_in,red). 
lhs_child_c(obj_0_40_in,no_child). 
lhs_peice(tst_0,obj_0_106_in). 
lhs_rot2D(obj_0_106_in,sameR). 
lhs_gis(obj_0_106_in,sid_1x1). 
lhs_c2d(obj_0_106_in,cxy(7,10)). 
lhs_t2d(obj_0_106_in,txy(7,10)). 
lhs_pen_color(obj_0_106_in,red). 
lhs_child_c(obj_0_106_in,no_child). 
lhs_peice(tst_0,obj_0_529_in). 
lhs_rot2D(obj_0_529_in,sameR). 
lhs_gis(obj_0_529_in,sid_1x1). 
lhs_c2d(obj_0_529_in,cxy(19,25)). 
lhs_t2d(obj_0_529_in,txy(19,25)). 
lhs_pen_color(obj_0_529_in,red). 
lhs_child_c(obj_0_529_in,no_child). 
lhs_peice(tst_0,obj_0_308_in). 
lhs_rot2D(obj_0_308_in,sameR). 
lhs_gis(obj_0_308_in,sid_1x1). 
lhs_c2d(obj_0_308_in,cxy(24,18)). 
lhs_t2d(obj_0_308_in,txy(24,18)). 
lhs_pen_color(obj_0_308_in,red). 
lhs_child_c(obj_0_308_in,no_child). 
lhs_peice(tst_0,obj_0_528_in). 
lhs_rot2D(obj_0_528_in,rot90). 
lhs_gis(obj_0_528_in,s856546). 
lhs_c2d(obj_0_528_in,cxy(15,14)). 
lhs_t2d(obj_0_528_in,txy(30,30)). 
lhs_pen_color(obj_0_528_in,yellow). 
lhs_child_c(obj_0_528_in,no_child). 
rhs_peice(tst_0,obj_0_463_out). 
rhs_rot2D(obj_0_463_out,sameR). 
rhs_gis(obj_0_463_out,sid_2x1). 
rhs_c2d(obj_0_463_out,cxy(5,10)). 
rhs_t2d(obj_0_463_out,txy(5,10)). 
rhs_pen_color(obj_0_463_out,cyan). 
rhs_peice(tst_0,obj_0_209_out). 
rhs_rot2D(obj_0_209_out,sameR). 
rhs_gis(obj_0_209_out,sid_2x1). 
rhs_c2d(obj_0_209_out,cxy(7,9)). 
rhs_t2d(obj_0_209_out,txy(7,9)). 
rhs_pen_color(obj_0_209_out,green). 
rhs_peice(tst_0,obj_0_396_out). 
rhs_rot2D(obj_0_396_out,sameR). 
rhs_gis(obj_0_396_out,sid_2x1). 
rhs_c2d(obj_0_396_out,cxy(7,11)). 
rhs_t2d(obj_0_396_out,txy(7,11)). 
rhs_pen_color(obj_0_396_out,green). 
rhs_peice(tst_0,obj_0_178_out). 
rhs_rot2D(obj_0_178_out,sameR). 
rhs_gis(obj_0_178_out,sid_2x1). 
rhs_c2d(obj_0_178_out,cxy(19,24)). 
rhs_t2d(obj_0_178_out,txy(19,24)). 
rhs_pen_color(obj_0_178_out,green). 
rhs_peice(tst_0,obj_0_357_out). 
rhs_rot2D(obj_0_357_out,sameR). 
rhs_gis(obj_0_357_out,sid_2x1). 
rhs_c2d(obj_0_357_out,cxy(19,26)). 
rhs_t2d(obj_0_357_out,txy(19,26)). 
rhs_pen_color(obj_0_357_out,green). 
rhs_peice(tst_0,obj_0_420_out). 
rhs_rot2D(obj_0_420_out,sameR). 
rhs_gis(obj_0_420_out,sid_2x1). 
rhs_c2d(obj_0_420_out,cxy(24,17)). 
rhs_t2d(obj_0_420_out,txy(24,17)). 
rhs_pen_color(obj_0_420_out,green). 
rhs_peice(tst_0,obj_0_167_out). 
rhs_rot2D(obj_0_167_out,sameR). 
rhs_gis(obj_0_167_out,sid_2x1). 
rhs_c2d(obj_0_167_out,cxy(24,19)). 
rhs_t2d(obj_0_167_out,txy(24,19)). 
rhs_pen_color(obj_0_167_out,green). 
rhs_peice(tst_0,obj_0_634_out). 
rhs_rot2D(obj_0_634_out,sameR). 
rhs_gis(obj_0_634_out,sid_2x1). 
rhs_c2d(obj_0_634_out,cxy(27,18)). 
rhs_t2d(obj_0_634_out,txy(27,18)). 
rhs_pen_color(obj_0_634_out,cyan). 
rhs_peice(tst_0,obj_0_220_out). 
rhs_rot2D(obj_0_220_out,sameR). 
rhs_gis(obj_0_220_out,sid_2x1). 
rhs_c2d(obj_0_220_out,cxy(16,25)). 
rhs_t2d(obj_0_220_out,txy(16,25)). 
rhs_pen_color(obj_0_220_out,cyan). 
rhs_peice(tst_0,obj_0_705_out). 
rhs_rot2D(obj_0_705_out,sameR). 
rhs_gis(obj_0_705_out,sid_2x1). 
rhs_c2d(obj_0_705_out,cxy(12,10)). 
rhs_t2d(obj_0_705_out,txy(12,10)). 
rhs_pen_color(obj_0_705_out,cyan). 
rhs_peice(tst_0,obj_0_14_out). 
rhs_rot2D(obj_0_14_out,sameR). 
rhs_gis(obj_0_14_out,sid_2x1). 
rhs_c2d(obj_0_14_out,cxy(25,25)). 
rhs_t2d(obj_0_14_out,txy(25,25)). 
rhs_pen_color(obj_0_14_out,cyan). 
rhs_peice(tst_0,obj_0_37_out). 
rhs_rot2D(obj_0_37_out,sameR). 
rhs_gis(obj_0_37_out,sid_2x1). 
rhs_c2d(obj_0_37_out,cxy(18,18)). 
rhs_t2d(obj_0_37_out,txy(18,18)). 
rhs_pen_color(obj_0_37_out,cyan). 
rhs_peice(tst_0,obj_0_159_out). 
rhs_rot2D(obj_0_159_out,sameR). 
rhs_gis(obj_0_159_out,sid_u_3x2). 
rhs_c2d(obj_0_159_out,cxy(10,12)). 
rhs_t2d(obj_0_159_out,txy(4,11)). 
rhs_pen_color(obj_0_159_out,blue). 
rhs_peice(tst_0,obj_0_584_out). 
rhs_rot2D(obj_0_584_out,sameR). 
rhs_gis(obj_0_584_out,sid_u_3x2). 
rhs_c2d(obj_0_584_out,cxy(21,27)). 
rhs_t2d(obj_0_584_out,txy(21,27)). 
rhs_pen_color(obj_0_584_out,blue). 
rhs_peice(tst_0,obj_0_295_out). 
rhs_rot2D(obj_0_295_out,rot180). 
rhs_gis(obj_0_295_out,sid_u_3x2). 
rhs_c2d(obj_0_295_out,cxy(21,16)). 
rhs_t2d(obj_0_295_out,txy(21,16)). 
rhs_pen_color(obj_0_295_out,blue). 
rhs_peice(tst_0,obj_0_139_out). 
rhs_rot2D(obj_0_139_out,flipV). 
rhs_gis(obj_0_139_out,sid_u_3x2). 
rhs_c2d(obj_0_139_out,cxy(10,6)). 
rhs_t2d(obj_0_139_out,txy(10,6)). 
rhs_pen_color(obj_0_139_out,blue). 
rhs_peice(tst_0,obj_0_140_out). 
rhs_rot2D(obj_0_140_out,rot180). 
rhs_gis(obj_0_140_out,s7728596). 
rhs_c2d(obj_0_140_out,cxy(21,22)). 
rhs_t2d(obj_0_140_out,txy(18,19)). 
rhs_pen_color(obj_0_140_out,blue). 
rhs_peice(tst_0,obj_0_106_out). 
rhs_rot2D(obj_0_106_out,sameR). 
rhs_gis(obj_0_106_out,sid_1x1). 
rhs_c2d(obj_0_106_out,cxy(7,10)). 
rhs_t2d(obj_0_106_out,txy(7,10)). 
rhs_pen_color(obj_0_106_out,red). 
rhs_peice(tst_0,obj_0_529_out). 
rhs_rot2D(obj_0_529_out,sameR). 
rhs_gis(obj_0_529_out,sid_1x1). 
rhs_c2d(obj_0_529_out,cxy(19,25)). 
rhs_t2d(obj_0_529_out,txy(19,25)). 
rhs_pen_color(obj_0_529_out,red). 
rhs_peice(tst_0,obj_0_308_out). 
rhs_rot2D(obj_0_308_out,sameR). 
rhs_gis(obj_0_308_out,sid_1x1). 
rhs_c2d(obj_0_308_out,cxy(24,18)). 
rhs_t2d(obj_0_308_out,txy(24,18)). 
rhs_pen_color(obj_0_308_out,red). 
rhs_peice(tst_0,obj_0_450_out). 
rhs_rot2D(obj_0_450_out,rot90). 
rhs_gis(obj_0_450_out,s13252453). 
rhs_c2d(obj_0_450_out,cxy(14,15)). 
rhs_t2d(obj_0_450_out,txy(30,30)). 
rhs_pen_color(obj_0_450_out,yellow). 
end(model(tst_0)). 