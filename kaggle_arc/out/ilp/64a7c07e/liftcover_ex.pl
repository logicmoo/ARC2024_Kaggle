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
modeb(*,lhs_peice(+scope,+peice)). 
modeb(*,lhs_rot2D(+peice,-rot2D)). 
modeb(*,lhs_gis(+peice,-gis)). 
modeb(*,lhs_c2d(+peice,-c2d)). 
modeb(*,lhs_t2d(+peice,-t2d)). 
modeb(*,lhs_child_c(+peice,+nat30)). 
modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,+nat30)). 
modeb(*,lhs_child_c(+peice,-c)). 
modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,-lhs)). 
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
lhs(in0_cyan8_2_2_4_4,sameR,sid_hollow_3x3,cxy(3,3),txy(3,3),1). 
lhs(in0_cyan1_2_7_2_7,sameR,sid_1x1,cxy(2,7),txy(2,7),no_child). 
lhs(in0_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),no_child). 
lhs(in1_cyan4_1_2_2_3,sameR,sid_1x1,cxy(2,3),txy(1,2),no_child). 
lhs(in2_cyan4_5_9_6_10,sameR,sid_1x1,cxy(6,10),txy(5,9),no_child). 
lhs(in2_cyan12_2_2_5_5,sameR,sid_u_3x2,cxy(4,4),txy(2,2),no_child). 
lhs(in0_black0_4_4_4_5,sameR,sid_1x2,cxy(4,5),txy(4,5),no_child). 
lhs(in0_cyan3_5_9_6_10,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(6,10),txy(6,10),no_child). 
lhs(in0_cyan13_2_2_6_6,rot90,s10632248,cxy(4,4),txy(4,4),1). 
begin(model(trn_0)). 
lhs_peice(trn_0,obj_0_244_in). 
lhs_rot2D(obj_0_244_in,sameR). 
lhs_gis(obj_0_244_in,sid_hollow_3x3). 
lhs_c2d(obj_0_244_in,cxy(3,3)). 
lhs_t2d(obj_0_244_in,txy(3,3)). 
lhs_child_c(obj_0_244_in,1). 
lhs_peice(trn_0,obj_0_239_in). 
lhs_rot2D(obj_0_239_in,sameR). 
lhs_gis(obj_0_239_in,sid_1x1). 
lhs_c2d(obj_0_239_in,cxy(2,7)). 
lhs_t2d(obj_0_239_in,txy(2,7)). 
lhs_child_c(obj_0_239_in,no_child). 
lhs_peice(trn_0,obj_0_220_in). 
lhs_rot2D(obj_0_220_in,sameR). 
lhs_gis(obj_0_220_in,sid_1x1). 
lhs_c2d(obj_0_220_in,cxy(3,3)). 
lhs_t2d(obj_0_220_in,txy(3,3)). 
lhs_child_c(obj_0_220_in,no_child). 
rhs_peice(trn_0,obj_0_55_out). 
rhs_rot2D(obj_0_55_out,sameR). 
rhs_gis(obj_0_55_out,sid_hollow_3x3). 
rhs_c2d(obj_0_55_out,cxy(6,3)). 
rhs_t2d(obj_0_55_out,txy(6,3)). 
rhs_peice(trn_0,obj_0_226_out). 
rhs_rot2D(obj_0_226_out,sameR). 
rhs_gis(obj_0_226_out,sid_1x1). 
rhs_c2d(obj_0_226_out,cxy(3,7)). 
rhs_t2d(obj_0_226_out,txy(3,7)). 
rhs_peice(trn_0,obj_0_333_out). 
rhs_rot2D(obj_0_333_out,sameR). 
rhs_gis(obj_0_333_out,sid_1x1). 
rhs_c2d(obj_0_333_out,cxy(6,3)). 
rhs_t2d(obj_0_333_out,txy(6,3)). 
end(model(trn_0)). 
begin(model(trn_1)). 
lhs_peice(trn_1,obj_1_6_in). 
lhs_rot2D(obj_1_6_in,sameR). 
lhs_gis(obj_1_6_in,sid_1x1). 
lhs_c2d(obj_1_6_in,cxy(2,3)). 
lhs_t2d(obj_1_6_in,txy(1,2)). 
lhs_child_c(obj_1_6_in,no_child). 
rhs_peice(trn_1,obj_1_162_out). 
rhs_rot2D(obj_1_162_out,sameR). 
rhs_gis(obj_1_162_out,sid_1x1). 
rhs_c2d(obj_1_162_out,cxy(4,3)). 
rhs_t2d(obj_1_162_out,txy(3,2)). 
end(model(trn_1)). 
begin(model(trn_2)). 
lhs_peice(trn_2,obj_2_305_in). 
lhs_rot2D(obj_2_305_in,sameR). 
lhs_gis(obj_2_305_in,sid_1x1). 
lhs_c2d(obj_2_305_in,cxy(6,10)). 
lhs_t2d(obj_2_305_in,txy(5,9)). 
lhs_child_c(obj_2_305_in,no_child). 
lhs_peice(trn_2,obj_2_388_in). 
lhs_rot2D(obj_2_388_in,sameR). 
lhs_gis(obj_2_388_in,sid_u_3x2). 
lhs_c2d(obj_2_388_in,cxy(4,4)). 
lhs_t2d(obj_2_388_in,txy(2,2)). 
lhs_child_c(obj_2_388_in,no_child). 
rhs_peice(trn_2,obj_2_302_out). 
rhs_rot2D(obj_2_302_out,sameR). 
rhs_gis(obj_2_302_out,sid_1x1). 
rhs_c2d(obj_2_302_out,cxy(8,10)). 
rhs_t2d(obj_2_302_out,txy(7,9)). 
rhs_peice(trn_2,obj_2_448_out). 
rhs_rot2D(obj_2_448_out,sameR). 
rhs_gis(obj_2_448_out,sid_u_3x2). 
rhs_c2d(obj_2_448_out,cxy(8,4)). 
rhs_t2d(obj_2_448_out,txy(6,2)). 
end(model(trn_2)). 
begin(model(tst_0)). 
lhs_peice(tst_0,obj_0_498_in). 
lhs_rot2D(obj_0_498_in,sameR). 
lhs_gis(obj_0_498_in,sid_1x2). 
lhs_c2d(obj_0_498_in,cxy(4,5)). 
lhs_t2d(obj_0_498_in,txy(4,5)). 
lhs_child_c(obj_0_498_in,no_child). 
lhs_peice(tst_0,obj_0_337_in). 
lhs_rot2D(obj_0_337_in,sameR). 
lhs_gis(obj_0_337_in,sid_tetris_Z_270_Rotated_2x3). 
lhs_c2d(obj_0_337_in,cxy(6,10)). 
lhs_t2d(obj_0_337_in,txy(6,10)). 
lhs_child_c(obj_0_337_in,no_child). 
lhs_peice(tst_0,obj_0_220_in). 
lhs_rot2D(obj_0_220_in,rot90). 
lhs_gis(obj_0_220_in,s10632248). 
lhs_c2d(obj_0_220_in,cxy(4,4)). 
lhs_t2d(obj_0_220_in,txy(4,4)). 
lhs_child_c(obj_0_220_in,1). 
rhs_peice(tst_0,obj_0_94_out). 
rhs_rot2D(obj_0_94_out,sameR). 
rhs_gis(obj_0_94_out,sid_1x2). 
rhs_c2d(obj_0_94_out,cxy(9,5)). 
rhs_t2d(obj_0_94_out,txy(9,5)). 
rhs_peice(tst_0,obj_0_38_out). 
rhs_rot2D(obj_0_38_out,sameR). 
rhs_gis(obj_0_38_out,sid_tetris_Z_270_Rotated_2x3). 
rhs_c2d(obj_0_38_out,cxy(8,10)). 
rhs_t2d(obj_0_38_out,txy(8,10)). 
rhs_peice(tst_0,obj_0_156_out). 
rhs_rot2D(obj_0_156_out,rot90). 
rhs_gis(obj_0_156_out,s10632248). 
rhs_c2d(obj_0_156_out,cxy(9,4)). 
rhs_t2d(obj_0_156_out,txy(9,4)). 
end(model(tst_0)). 
