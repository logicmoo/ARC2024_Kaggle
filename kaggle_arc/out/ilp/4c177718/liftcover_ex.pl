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
lhs(in1_blue5_6_10_8_12,sameR,s2822656,cxy(7,11),txy(7,11),no_child). 
lhs(in1_silver15_1_6_15_6,sameR,sid_12,cxy(8,6),txy(8,6),no_child). 
lhs(in1_yellow7_11_2_13_4,rot90,s15307279,cxy(12,3),txy(12,3),no_child). 
lhs(in1_red5_7_2_9_4,sameR,s15307279,cxy(8,3),txy(8,3),no_child). 
lhs(in1_blue5_3_2_5_4,sameR,s2822656,cxy(4,3),txy(4,3),no_child). 
lhs(in1_black0_5_9_9_13,sameR,s4705663,cxy(7,11),txy(7,11),no_child). 
lhs(in1_black0_1_7_15_7,rot90,sid_21,cxy(8,7),txy(8,7),no_child). 
lhs(in1_black0_1_1_15_5,rot90,s12974445,cxy(8,3),txy(13,4),no_child). 
begin(model(trn_0)). 
end(model(trn_0)). 
begin(model(trn_1)). 
lhs_peice(trn_1,obj_1_626_in). 
lhs_rot2D(obj_1_626_in,sameR). 
lhs_gis(obj_1_626_in,s2822656). 
lhs_c2d(obj_1_626_in,cxy(7,11)). 
lhs_t2d(obj_1_626_in,txy(7,11)). 
lhs_child_c(obj_1_626_in,no_child). 
lhs_peice(trn_1,obj_1_657_in). 
lhs_rot2D(obj_1_657_in,sameR). 
lhs_gis(obj_1_657_in,sid_12). 
lhs_c2d(obj_1_657_in,cxy(8,6)). 
lhs_t2d(obj_1_657_in,txy(8,6)). 
lhs_child_c(obj_1_657_in,no_child). 
lhs_peice(trn_1,obj_1_384_in). 
lhs_rot2D(obj_1_384_in,rot90). 
lhs_gis(obj_1_384_in,s15307279). 
lhs_c2d(obj_1_384_in,cxy(12,3)). 
lhs_t2d(obj_1_384_in,txy(12,3)). 
lhs_child_c(obj_1_384_in,no_child). 
lhs_peice(trn_1,obj_1_370_in). 
lhs_rot2D(obj_1_370_in,sameR). 
lhs_gis(obj_1_370_in,s15307279). 
lhs_c2d(obj_1_370_in,cxy(8,3)). 
lhs_t2d(obj_1_370_in,txy(8,3)). 
lhs_child_c(obj_1_370_in,no_child). 
lhs_peice(trn_1,obj_1_464_in). 
lhs_rot2D(obj_1_464_in,sameR). 
lhs_gis(obj_1_464_in,s2822656). 
lhs_c2d(obj_1_464_in,cxy(4,3)). 
lhs_t2d(obj_1_464_in,txy(4,3)). 
lhs_child_c(obj_1_464_in,no_child). 
lhs_peice(trn_1,obj_1_744_in). 
lhs_rot2D(obj_1_744_in,sameR). 
lhs_gis(obj_1_744_in,s4705663). 
lhs_c2d(obj_1_744_in,cxy(7,11)). 
lhs_t2d(obj_1_744_in,txy(7,11)). 
lhs_child_c(obj_1_744_in,no_child). 
lhs_peice(trn_1,obj_1_132_in). 
lhs_rot2D(obj_1_132_in,rot90). 
lhs_gis(obj_1_132_in,sid_21). 
lhs_c2d(obj_1_132_in,cxy(8,7)). 
lhs_t2d(obj_1_132_in,txy(8,7)). 
lhs_child_c(obj_1_132_in,no_child). 
lhs_peice(trn_1,obj_1_517_in). 
lhs_rot2D(obj_1_517_in,rot90). 
lhs_gis(obj_1_517_in,s12974445). 
lhs_c2d(obj_1_517_in,cxy(8,3)). 
lhs_t2d(obj_1_517_in,txy(13,4)). 
lhs_child_c(obj_1_517_in,no_child). 
rhs_peice(trn_1,obj_1_126_out). 
rhs_rot2D(obj_1_126_out,sameR). 
rhs_gis(obj_1_126_out,sid_11). 
rhs_c2d(obj_1_126_out,cxy(8,6)). 
rhs_t2d(obj_1_126_out,txy(8,6)). 
rhs_peice(trn_1,obj_1_564_out). 
rhs_rot2D(obj_1_564_out,sameR). 
rhs_gis(obj_1_564_out,sid_11). 
rhs_c2d(obj_1_564_out,cxy(6,6)). 
rhs_t2d(obj_1_564_out,txy(6,6)). 
rhs_peice(trn_1,obj_1_590_out). 
rhs_rot2D(obj_1_590_out,sameR). 
rhs_gis(obj_1_590_out,sid_11). 
rhs_c2d(obj_1_590_out,cxy(7,5)). 
rhs_t2d(obj_1_590_out,txy(7,5)). 
rhs_peice(trn_1,obj_1_445_out). 
rhs_rot2D(obj_1_445_out,sameR). 
rhs_gis(obj_1_445_out,sid_11). 
rhs_c2d(obj_1_445_out,cxy(8,4)). 
rhs_t2d(obj_1_445_out,txy(8,4)). 
rhs_peice(trn_1,obj_1_643_out). 
rhs_rot2D(obj_1_643_out,sameR). 
rhs_gis(obj_1_643_out,sid_11). 
rhs_c2d(obj_1_643_out,cxy(6,4)). 
rhs_t2d(obj_1_643_out,txy(6,4)). 
rhs_peice(trn_1,obj_1_537_out). 
rhs_rot2D(obj_1_537_out,rot90). 
rhs_gis(obj_1_537_out,s15307279). 
rhs_c2d(obj_1_537_out,cxy(7,2)). 
rhs_t2d(obj_1_537_out,txy(7,2)). 
rhs_peice(trn_1,obj_1_582_out). 
rhs_rot2D(obj_1_582_out,sameR). 
rhs_gis(obj_1_582_out,sid_11). 
rhs_c2d(obj_1_582_out,cxy(7,4)). 
rhs_t2d(obj_1_582_out,txy(7,4)). 
rhs_peice(trn_1,obj_1_381_out). 
rhs_rot2D(obj_1_381_out,sameR). 
rhs_gis(obj_1_381_out,s14764600). 
rhs_c2d(obj_1_381_out,cxy(7,5)). 
rhs_t2d(obj_1_381_out,txy(7,5)). 
end(model(trn_1)). 
begin(model(trn_2)). 
end(model(trn_2)). 
begin(model(trn_3)). 
end(model(trn_3)). 
begin(model(tst_0)). 
end(model(tst_0)). 
begin(model(tst_1)). 
end(model(tst_1)). 
