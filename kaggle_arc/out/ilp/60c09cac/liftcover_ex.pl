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
output(rhs/5). 
output(rhs_peice/2). 
output(rhs_rot2D/2). 
output(rhs_gis/2). 
output(rhs_c2d/2). 
output(rhs_t2d/2). 
output(rhs/5). 
input_cw(lhs_peice/2). 
input_cw(lhs_rot2D/2). 
input_cw(lhs_gis/2). 
input_cw(lhs_c2d/2). 
input_cw(lhs_t2d/2). 
input_cw(lhs_child_c/2). 
input_cw(lhs/6). 
input_cw(lhs_peice/2). 
input_cw(lhs_rot2D/2). 
input_cw(lhs_gis/2). 
input_cw(lhs_c2d/2). 
input_cw(lhs_t2d/2). 
input_cw(lhs_child_c/2). 
input_cw(lhs/6). 
modeh(*,rhs_peice(+scope,+peice)). 
modeh(*,rhs_rot2D(+peice,+rot2D)). 
modeh(*,rhs_gis(+peice,+gis)). 
modeh(*,rhs_c2d(+peice,+c2d)). 
modeh(*,rhs_t2d(+peice,+t2d)). 
modeh(*,rhs(+peice,+rhs,+rhs,+rhs,+rhs)). 
modeh(*,rhs_peice(+scope,+peice)). 
modeh(*,rhs_rot2D(+peice,+rot2D)). 
modeh(*,rhs_gis(+peice,+gis)). 
modeh(*,rhs_c2d(+peice,+c2d)). 
modeh(*,rhs_t2d(+peice,+t2d)). 
modeh(*,rhs(+peice,+rhs,+rhs,+rhs,+rhs)). 
modeb(*,lhs_peice(+scope,+peice)). 
modeb(*,lhs_rot2D(+peice,-rot2D)). 
modeb(*,lhs_gis(+peice,-gis)). 
modeb(*,lhs_c2d(+peice,-c2d)). 
modeb(*,lhs_t2d(+peice,-t2d)). 
modeb(*,lhs_child_c(+peice,+nat30)). 
modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,+nat30)). 
modeb(*,lhs_child_c(+peice,-c)). 
modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,-lhs)). 
modeb(*,lhs_peice(+scope,+peice)). 
modeb(*,lhs_rot2D(+peice,-rot2D)). 
modeb(*,lhs_gis(+peice,-gis)). 
modeb(*,lhs_c2d(+peice,-c2d)). 
modeb(*,lhs_t2d(+peice,-t2d)). 
modeb(*,lhs_child_c(+peice,-c)). 
modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,-lhs)). 
modeb(*,lhs_child_c(+peice,+nat30)). 
modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,+nat30)). 
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
lhs(in0_orange2_2_2_3_2,sameR,sid_2x1,cxy(3,2),txy(3,2),no_child). 
lhs(in0_green1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),no_child). 
lhs(in0_black0_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1),no_child). 
lhs(in1_cyan2_2_1_3_2,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(3,2),txy(3,2),no_child). 
lhs(in1_silver3_3_2_4_3,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(4,2),txy(4,2),no_child). 
lhs(in1_black0_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1),no_child). 
lhs(in0_blue2_3_1_3_2,rot90,sid_2x1,cxy(3,2),txy(3,2),no_child). 
lhs(in0_purple4_2_3_4_4,flipV,sid_tetris_Z_270_Rotated_2x3,cxy(3,3),txy(4,4),1). 
lhs(in0_blue1_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4),no_child). 
begin(model(trn_0)). 
lhs_peice(trn_0,obj_0_728_in). 
lhs_rot2D(obj_0_728_in,sameR). 
lhs_gis(obj_0_728_in,sid_2x1). 
lhs_c2d(obj_0_728_in,cxy(3,2)). 
lhs_t2d(obj_0_728_in,txy(3,2)). 
lhs_child_c(obj_0_728_in,no_child). 
lhs_peice(trn_0,obj_0_151_in). 
lhs_rot2D(obj_0_151_in,sameR). 
lhs_gis(obj_0_151_in,sid_1x1). 
lhs_c2d(obj_0_151_in,cxy(2,1)). 
lhs_t2d(obj_0_151_in,txy(2,1)). 
lhs_child_c(obj_0_151_in,no_child). 
lhs_peice(trn_0,obj_0_129_in). 
lhs_rot2D(obj_0_129_in,sameR). 
lhs_gis(obj_0_129_in,sid_1x1). 
lhs_c2d(obj_0_129_in,cxy(3,1)). 
lhs_t2d(obj_0_129_in,txy(3,1)). 
lhs_child_c(obj_0_129_in,no_child). 
rhs_peice(trn_0,obj_0_780_out). 
rhs_rot2D(obj_0_780_out,sameR). 
rhs_gis(obj_0_780_out,sid_1x1). 
rhs_c2d(obj_0_780_out,cxy(4,2)). 
rhs_t2d(obj_0_780_out,txy(3,1)). 
rhs_peice(trn_0,obj_0_732_out). 
rhs_rot2D(obj_0_732_out,sameR). 
rhs_gis(obj_0_732_out,sid_1x1). 
rhs_c2d(obj_0_732_out,cxy(6,2)). 
rhs_t2d(obj_0_732_out,txy(5,1)). 
rhs_peice(trn_0,obj_0_459_out). 
rhs_rot2D(obj_0_459_out,sameR). 
rhs_gis(obj_0_459_out,sid_2x1). 
rhs_c2d(obj_0_459_out,cxy(5,4)). 
rhs_t2d(obj_0_459_out,txy(3,3)). 
end(model(trn_0)). 
begin(model(trn_1)). 
lhs_peice(trn_1,obj_1_571_in). 
lhs_rot2D(obj_1_571_in,rot90). 
lhs_gis(obj_1_571_in,sid_tetris_Triple_East_and_North_2x2). 
lhs_c2d(obj_1_571_in,cxy(3,2)). 
lhs_t2d(obj_1_571_in,txy(3,2)). 
lhs_child_c(obj_1_571_in,no_child). 
lhs_peice(trn_1,obj_1_640_in). 
lhs_rot2D(obj_1_640_in,rot90). 
lhs_gis(obj_1_640_in,sid_tetris_Z_270_Rotated_2x3). 
lhs_c2d(obj_1_640_in,cxy(4,2)). 
lhs_t2d(obj_1_640_in,txy(4,2)). 
lhs_child_c(obj_1_640_in,no_child). 
lhs_peice(trn_1,obj_1_131_in). 
lhs_rot2D(obj_1_131_in,sameR). 
lhs_gis(obj_1_131_in,sid_1x1). 
lhs_c2d(obj_1_131_in,cxy(4,1)). 
lhs_t2d(obj_1_131_in,txy(4,1)). 
lhs_child_c(obj_1_131_in,no_child). 
rhs_peice(trn_1,obj_1_303_out). 
rhs_rot2D(obj_1_303_out,sameR). 
rhs_gis(obj_1_303_out,sid_1x1). 
rhs_c2d(obj_1_303_out,cxy(8,2)). 
rhs_t2d(obj_1_303_out,txy(7,1)). 
rhs_peice(trn_1,obj_1_725_out). 
rhs_rot2D(obj_1_725_out,rot90). 
rhs_gis(obj_1_725_out,sid_tetris_Triple_East_and_North_2x2). 
rhs_c2d(obj_1_725_out,cxy(5,3)). 
rhs_t2d(obj_1_725_out,txy(5,3)). 
rhs_peice(trn_1,obj_1_7_out). 
rhs_rot2D(obj_1_7_out,rot90). 
rhs_gis(obj_1_7_out,sid_tetris_Z_270_Rotated_2x3). 
rhs_c2d(obj_1_7_out,cxy(7,4)). 
rhs_t2d(obj_1_7_out,txy(7,4)). 
end(model(trn_1)). 
begin(model(tst_0)). 
lhs_peice(tst_0,obj_0_110_in). 
lhs_rot2D(obj_0_110_in,rot90). 
lhs_gis(obj_0_110_in,sid_2x1). 
lhs_c2d(obj_0_110_in,cxy(3,2)). 
lhs_t2d(obj_0_110_in,txy(3,2)). 
lhs_child_c(obj_0_110_in,no_child). 
lhs_peice(tst_0,obj_0_371_in). 
lhs_rot2D(obj_0_371_in,flipV). 
lhs_gis(obj_0_371_in,sid_tetris_Z_270_Rotated_2x3). 
lhs_c2d(obj_0_371_in,cxy(3,3)). 
lhs_t2d(obj_0_371_in,txy(4,4)). 
lhs_child_c(obj_0_371_in,1). 
lhs_peice(tst_0,obj_0_313_in). 
lhs_rot2D(obj_0_313_in,sameR). 
lhs_gis(obj_0_313_in,sid_1x1). 
lhs_c2d(obj_0_313_in,cxy(3,4)). 
lhs_t2d(obj_0_313_in,txy(3,4)). 
lhs_child_c(obj_0_313_in,no_child). 
rhs_peice(tst_0,obj_0_757_out). 
rhs_rot2D(obj_0_757_out,sameR). 
rhs_gis(obj_0_757_out,sid_1x1). 
rhs_c2d(obj_0_757_out,cxy(6,8)). 
rhs_t2d(obj_0_757_out,txy(5,7)). 
rhs_peice(tst_0,obj_0_120_out). 
rhs_rot2D(obj_0_120_out,rot90). 
rhs_gis(obj_0_120_out,sid_2x1). 
rhs_c2d(obj_0_120_out,cxy(6,3)). 
rhs_t2d(obj_0_120_out,txy(5,1)). 
rhs_peice(tst_0,obj_0_389_out). 
rhs_rot2D(obj_0_389_out,flipV). 
rhs_gis(obj_0_389_out,sid_tetris_Z_270_Rotated_2x3). 
rhs_c2d(obj_0_389_out,cxy(6,6)). 
rhs_t2d(obj_0_389_out,txy(8,8)). 
end(model(tst_0)). 
