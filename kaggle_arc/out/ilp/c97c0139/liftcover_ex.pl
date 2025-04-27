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
output(rhs/3). 
input_cw(lhs_peice/2). 
input_cw(lhs_rot2D/2). 
input_cw(lhs_gis/2). 
input_cw(lhs_child_c/2). 
input_cw(lhs/4). 
modeh(*,rhs_peice(+scope,+peice)). 
modeh(*,rhs_rot2D(+peice,+rot2D)). 
modeh(*,rhs_gis(+peice,+gis)). 
modeh(*,rhs(+peice,+rhs,+rhs)). 
modeb(*,lhs_peice(+scope,+peice)). 
modeb(*,lhs_rot2D(+peice,-rot2D)). 
modeb(*,lhs_gis(+peice,-gis)). 
modeb(*,lhs_child_c(+peice,-c)). 
modeb(*,lhs(+peice,-lhs,-lhs,-lhs)). 
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
lhs(in0_red14_10_8,sameR,sid_12,no_child). 
lhs(in0_black0_10_8,rot90,sid_323,no_child). 
lhs(in1_red9_14_13,sameR,sid_12,no_child). 
lhs(in1_red5_5_5,rot90,sid_12,no_child). 
lhs(in1_black0_14_13,rot90,sid_323,no_child). 
lhs(in1_black0_5_5,sameR,sid_323,no_child). 
lhs(in0_red7_6_15,rot90,sid_12,no_child). 
lhs(in0_red10_17_10,sameR,sid_12,no_child). 
lhs(in0_red6_6_5,sameR,sid_12,no_child). 
lhs(in0_black0_6_15,sameR,sid_323,no_child). 
lhs(in0_black0_17_10,rot90,sid_323,no_child). 
lhs(in0_black0_6_5,rot90,sid_323,no_child). 
begin(model(trn_0)). 
lhs_peice(trn_0,obj_0_731_in). 
lhs_rot2D(obj_0_731_in,sameR). 
lhs_gis(obj_0_731_in,sid_12). 
lhs_child_c(obj_0_731_in,no_child). 
lhs_peice(trn_0,obj_0_348_in). 
lhs_rot2D(obj_0_348_in,rot90). 
lhs_gis(obj_0_348_in,sid_323). 
lhs_child_c(obj_0_348_in,no_child). 
rhs_peice(trn_0,obj_0_732_out). 
rhs_rot2D(obj_0_732_out,rot180). 
rhs_gis(obj_0_732_out,s794528). 
rhs_peice(trn_0,obj_0_731_out). 
rhs_rot2D(obj_0_731_out,sameR). 
rhs_gis(obj_0_731_out,sid_12). 
rhs_peice(trn_0,obj_0_452_out). 
rhs_rot2D(obj_0_452_out,sameR). 
rhs_gis(obj_0_452_out,s794528). 
rhs_peice(trn_0,obj_0_196_out). 
rhs_rot2D(obj_0_196_out,rot90). 
rhs_gis(obj_0_196_out,s9870679). 
end(model(trn_0)). 
begin(model(trn_1)). 
lhs_peice(trn_1,obj_1_346_in). 
lhs_rot2D(obj_1_346_in,sameR). 
lhs_gis(obj_1_346_in,sid_12). 
lhs_child_c(obj_1_346_in,no_child). 
lhs_peice(trn_1,obj_1_506_in). 
lhs_rot2D(obj_1_506_in,rot90). 
lhs_gis(obj_1_506_in,sid_12). 
lhs_child_c(obj_1_506_in,no_child). 
lhs_peice(trn_1,obj_1_720_in). 
lhs_rot2D(obj_1_720_in,rot90). 
lhs_gis(obj_1_720_in,sid_323). 
lhs_child_c(obj_1_720_in,no_child). 
lhs_peice(trn_1,obj_1_191_in). 
lhs_rot2D(obj_1_191_in,sameR). 
lhs_gis(obj_1_191_in,sid_323). 
lhs_child_c(obj_1_191_in,no_child). 
rhs_peice(trn_1,obj_1_495_out). 
rhs_rot2D(obj_1_495_out,rot180). 
rhs_gis(obj_1_495_out,s99936). 
rhs_peice(trn_1,obj_1_346_out). 
rhs_rot2D(obj_1_346_out,sameR). 
rhs_gis(obj_1_346_out,sid_12). 
rhs_peice(trn_1,obj_1_637_out). 
rhs_rot2D(obj_1_637_out,sameR). 
rhs_gis(obj_1_637_out,s99936). 
rhs_peice(trn_1,obj_1_6_out). 
rhs_rot2D(obj_1_6_out,rot270). 
rhs_gis(obj_1_6_out,s15307279). 
rhs_peice(trn_1,obj_1_208_out). 
rhs_rot2D(obj_1_208_out,rot90). 
rhs_gis(obj_1_208_out,s15307279). 
rhs_peice(trn_1,obj_1_506_out). 
rhs_rot2D(obj_1_506_out,rot90). 
rhs_gis(obj_1_506_out,sid_12). 
rhs_peice(trn_1,obj_1_635_out). 
rhs_rot2D(obj_1_635_out,sameR). 
rhs_gis(obj_1_635_out,s13242417). 
rhs_peice(trn_1,obj_1_95_out). 
rhs_rot2D(obj_1_95_out,sameR). 
rhs_gis(obj_1_95_out,s7055667). 
end(model(trn_1)). 
begin(model(tst_0)). 
lhs_peice(tst_0,obj_0_66_in). 
lhs_rot2D(obj_0_66_in,rot90). 
lhs_gis(obj_0_66_in,sid_12). 
lhs_child_c(obj_0_66_in,no_child). 
lhs_peice(tst_0,obj_0_788_in). 
lhs_rot2D(obj_0_788_in,sameR). 
lhs_gis(obj_0_788_in,sid_12). 
lhs_child_c(obj_0_788_in,no_child). 
lhs_peice(tst_0,obj_0_564_in). 
lhs_rot2D(obj_0_564_in,sameR). 
lhs_gis(obj_0_564_in,sid_12). 
lhs_child_c(obj_0_564_in,no_child). 
lhs_peice(tst_0,obj_0_264_in). 
lhs_rot2D(obj_0_264_in,sameR). 
lhs_gis(obj_0_264_in,sid_323). 
lhs_child_c(obj_0_264_in,no_child). 
lhs_peice(tst_0,obj_0_395_in). 
lhs_rot2D(obj_0_395_in,rot90). 
lhs_gis(obj_0_395_in,sid_323). 
lhs_child_c(obj_0_395_in,no_child). 
lhs_peice(tst_0,obj_0_283_in). 
lhs_rot2D(obj_0_283_in,rot90). 
lhs_gis(obj_0_283_in,sid_323). 
lhs_child_c(obj_0_283_in,no_child). 
rhs_peice(tst_0,obj_0_162_out). 
rhs_rot2D(obj_0_162_out,rot270). 
rhs_gis(obj_0_162_out,s2597236). 
rhs_peice(tst_0,obj_0_680_out). 
rhs_rot2D(obj_0_680_out,rot90). 
rhs_gis(obj_0_680_out,s2597236). 
rhs_peice(tst_0,obj_0_66_out). 
rhs_rot2D(obj_0_66_out,rot90). 
rhs_gis(obj_0_66_out,sid_12). 
rhs_peice(tst_0,obj_0_194_out). 
rhs_rot2D(obj_0_194_out,rot180). 
rhs_gis(obj_0_194_out,s99936). 
rhs_peice(tst_0,obj_0_788_out). 
rhs_rot2D(obj_0_788_out,sameR). 
rhs_gis(obj_0_788_out,sid_12). 
rhs_peice(tst_0,obj_0_347_out). 
rhs_rot2D(obj_0_347_out,sameR). 
rhs_gis(obj_0_347_out,s99936). 
rhs_peice(tst_0,obj_0_166_out). 
rhs_rot2D(obj_0_166_out,rot180). 
rhs_gis(obj_0_166_out,s15307279). 
rhs_peice(tst_0,obj_0_564_out). 
rhs_rot2D(obj_0_564_out,sameR). 
rhs_gis(obj_0_564_out,sid_12). 
rhs_peice(tst_0,obj_0_69_out). 
rhs_rot2D(obj_0_69_out,sameR). 
rhs_gis(obj_0_69_out,s15307279). 
rhs_peice(tst_0,obj_0_472_out). 
rhs_rot2D(obj_0_472_out,sameR). 
rhs_gis(obj_0_472_out,s9562242). 
rhs_peice(tst_0,obj_0_10_out). 
rhs_rot2D(obj_0_10_out,rot90). 
rhs_gis(obj_0_10_out,s13242417). 
rhs_peice(tst_0,obj_0_362_out). 
rhs_rot2D(obj_0_362_out,rot90). 
rhs_gis(obj_0_362_out,s7055667). 
end(model(tst_0)). 
