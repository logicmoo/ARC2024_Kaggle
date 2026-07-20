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
lhs(in0_cyan17_1_1_6_5,flipD,s10866090,cxy(4,3),txy(1,2),2). 
lhs(in0_black0_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),no_child). 
lhs(in0_black0_1_1_2_1,rot90,sid_1x2,cxy(2,1),txy(2,1),no_child). 
lhs(in1_cyan17_1_1_6_6,rot90,s8882126,cxy(4,3),txy(2,1),2). 
lhs(in1_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),no_child). 
lhs(in1_black0_3_1_4_4,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(4,2),txy(3,1),no_child). 
lhs(in2_cyan13_1_1_4_4,rot180,s5612495,cxy(2,2),txy(4,4),1). 
lhs(in2_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),no_child). 
lhs(in0_cyan16_1_1_6_4,flipV,s1281831,cxy(4,2),txy(4,2),3). 
lhs(in0_black0_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),no_child). 
lhs(in0_black0_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1),no_child). 
lhs(in0_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),no_child). 
begin(model(trn_0)). 
lhs_peice(trn_0,obj_0_595_in). 
lhs_rot2D(obj_0_595_in,flipD). 
lhs_gis(obj_0_595_in,s10866090). 
lhs_c2d(obj_0_595_in,cxy(4,3)). 
lhs_t2d(obj_0_595_in,txy(1,2)). 
lhs_child_c(obj_0_595_in,2). 
lhs_peice(trn_0,obj_0_730_in). 
lhs_rot2D(obj_0_730_in,sameR). 
lhs_gis(obj_0_730_in,sid_1x1). 
lhs_c2d(obj_0_730_in,cxy(4,3)). 
lhs_t2d(obj_0_730_in,txy(4,3)). 
lhs_child_c(obj_0_730_in,no_child). 
lhs_peice(trn_0,obj_0_243_in). 
lhs_rot2D(obj_0_243_in,rot90). 
lhs_gis(obj_0_243_in,sid_1x2). 
lhs_c2d(obj_0_243_in,cxy(2,1)). 
lhs_t2d(obj_0_243_in,txy(2,1)). 
lhs_child_c(obj_0_243_in,no_child). 
rhs_peice(trn_0,obj_0_581_out). 
rhs_rot2D(obj_0_581_out,flipD). 
rhs_gis(obj_0_581_out,s10866090). 
rhs_c2d(obj_0_581_out,cxy(4,3)). 
rhs_t2d(obj_0_581_out,txy(1,2)). 
rhs_peice(trn_0,obj_0_730_out). 
rhs_rot2D(obj_0_730_out,sameR). 
rhs_gis(obj_0_730_out,sid_1x1). 
rhs_c2d(obj_0_730_out,cxy(4,3)). 
rhs_t2d(obj_0_730_out,txy(4,3)). 
rhs_peice(trn_0,obj_0_243_out). 
rhs_rot2D(obj_0_243_out,rot90). 
rhs_gis(obj_0_243_out,sid_1x2). 
rhs_c2d(obj_0_243_out,cxy(2,1)). 
rhs_t2d(obj_0_243_out,txy(2,1)). 
end(model(trn_0)). 
begin(model(trn_1)). 
lhs_peice(trn_1,obj_1_241_in). 
lhs_rot2D(obj_1_241_in,rot90). 
lhs_gis(obj_1_241_in,s8882126). 
lhs_c2d(obj_1_241_in,cxy(4,3)). 
lhs_t2d(obj_1_241_in,txy(2,1)). 
lhs_child_c(obj_1_241_in,2). 
lhs_peice(trn_1,obj_1_157_in). 
lhs_rot2D(obj_1_157_in,sameR). 
lhs_gis(obj_1_157_in,sid_1x1). 
lhs_c2d(obj_1_157_in,cxy(1,1)). 
lhs_t2d(obj_1_157_in,txy(1,1)). 
lhs_child_c(obj_1_157_in,no_child). 
lhs_peice(trn_1,obj_1_556_in). 
lhs_rot2D(obj_1_556_in,sameR). 
lhs_gis(obj_1_556_in,sid_tetris_Z_270_Rotated_2x3). 
lhs_c2d(obj_1_556_in,cxy(4,2)). 
lhs_t2d(obj_1_556_in,txy(3,1)). 
lhs_child_c(obj_1_556_in,no_child). 
rhs_peice(trn_1,obj_1_609_out). 
rhs_rot2D(obj_1_609_out,rot90). 
rhs_gis(obj_1_609_out,s8882126). 
rhs_c2d(obj_1_609_out,cxy(4,3)). 
rhs_t2d(obj_1_609_out,txy(2,1)). 
rhs_peice(trn_1,obj_1_157_out). 
rhs_rot2D(obj_1_157_out,sameR). 
rhs_gis(obj_1_157_out,sid_1x1). 
rhs_c2d(obj_1_157_out,cxy(1,1)). 
rhs_t2d(obj_1_157_out,txy(1,1)). 
rhs_peice(trn_1,obj_1_556_out). 
rhs_rot2D(obj_1_556_out,sameR). 
rhs_gis(obj_1_556_out,sid_tetris_Z_270_Rotated_2x3). 
rhs_c2d(obj_1_556_out,cxy(4,2)). 
rhs_t2d(obj_1_556_out,txy(3,1)). 
end(model(trn_1)). 
begin(model(trn_2)). 
lhs_peice(trn_2,obj_2_755_in). 
lhs_rot2D(obj_2_755_in,rot180). 
lhs_gis(obj_2_755_in,s5612495). 
lhs_c2d(obj_2_755_in,cxy(2,2)). 
lhs_t2d(obj_2_755_in,txy(4,4)). 
lhs_child_c(obj_2_755_in,1). 
lhs_peice(trn_2,obj_2_220_in). 
lhs_rot2D(obj_2_220_in,sameR). 
lhs_gis(obj_2_220_in,sid_1x1). 
lhs_c2d(obj_2_220_in,cxy(3,3)). 
lhs_t2d(obj_2_220_in,txy(3,3)). 
lhs_child_c(obj_2_220_in,no_child). 
rhs_peice(trn_2,obj_2_390_out). 
rhs_rot2D(obj_2_390_out,rot180). 
rhs_gis(obj_2_390_out,s5612495). 
rhs_c2d(obj_2_390_out,cxy(2,2)). 
rhs_t2d(obj_2_390_out,txy(4,4)). 
rhs_peice(trn_2,obj_2_220_out). 
rhs_rot2D(obj_2_220_out,sameR). 
rhs_gis(obj_2_220_out,sid_1x1). 
rhs_c2d(obj_2_220_out,cxy(3,3)). 
rhs_t2d(obj_2_220_out,txy(3,3)). 
end(model(trn_2)). 
begin(model(tst_0)). 
lhs_peice(tst_0,obj_0_591_in). 
lhs_rot2D(obj_0_591_in,flipV). 
lhs_gis(obj_0_591_in,s1281831). 
lhs_c2d(obj_0_591_in,cxy(4,2)). 
lhs_t2d(obj_0_591_in,txy(4,2)). 
lhs_child_c(obj_0_591_in,3). 
lhs_peice(tst_0,obj_0_730_in). 
lhs_rot2D(obj_0_730_in,sameR). 
lhs_gis(obj_0_730_in,sid_1x1). 
lhs_c2d(obj_0_730_in,cxy(4,3)). 
lhs_t2d(obj_0_730_in,txy(4,3)). 
lhs_child_c(obj_0_730_in,no_child). 
lhs_peice(tst_0,obj_0_131_in). 
lhs_rot2D(obj_0_131_in,sameR). 
lhs_gis(obj_0_131_in,sid_1x1). 
lhs_c2d(obj_0_131_in,cxy(4,1)). 
lhs_t2d(obj_0_131_in,txy(4,1)). 
lhs_child_c(obj_0_131_in,no_child). 
lhs_peice(tst_0,obj_0_157_in). 
lhs_rot2D(obj_0_157_in,sameR). 
lhs_gis(obj_0_157_in,sid_1x1). 
lhs_c2d(obj_0_157_in,cxy(1,1)). 
lhs_t2d(obj_0_157_in,txy(1,1)). 
lhs_child_c(obj_0_157_in,no_child). 
rhs_peice(tst_0,obj_0_253_out). 
rhs_rot2D(obj_0_253_out,flipV). 
rhs_gis(obj_0_253_out,s1281831). 
rhs_c2d(obj_0_253_out,cxy(4,2)). 
rhs_t2d(obj_0_253_out,txy(4,2)). 
rhs_peice(tst_0,obj_0_730_out). 
rhs_rot2D(obj_0_730_out,sameR). 
rhs_gis(obj_0_730_out,sid_1x1). 
rhs_c2d(obj_0_730_out,cxy(4,3)). 
rhs_t2d(obj_0_730_out,txy(4,3)). 
rhs_peice(tst_0,obj_0_131_out). 
rhs_rot2D(obj_0_131_out,sameR). 
rhs_gis(obj_0_131_out,sid_1x1). 
rhs_c2d(obj_0_131_out,cxy(4,1)). 
rhs_t2d(obj_0_131_out,txy(4,1)). 
rhs_peice(tst_0,obj_0_157_out). 
rhs_rot2D(obj_0_157_out,sameR). 
rhs_gis(obj_0_157_out,sid_1x1). 
rhs_c2d(obj_0_157_out,cxy(1,1)). 
rhs_t2d(obj_0_157_out,txy(1,1)). 
end(model(tst_0)). 
