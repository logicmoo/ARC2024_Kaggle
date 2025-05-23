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
output(rhs_c2d/2). 
output(rhs_rot2D/2). 
output(rhs_pen_color/2). 
output(rhs_vis2D/3). 
output(rhs_mass/2). 
output(rhs_gis/2). 
output(rhs_gon/2). 
output(rhs/8). 
output(rhs_peice/2). 
output(rhs_c2d/2). 
output(rhs_rot2D/2). 
output(rhs_pen_color/2). 
output(rhs_vis2D/3). 
output(rhs_mass/2). 
output(rhs_gis/2). 
output(rhs_gon/2). 
output(rhs/8). 
input_cw(lhs_peice/2). 
input_cw(lhs_c2d/2). 
input_cw(lhs_rot2D/2). 
input_cw(lhs_pen_color/2). 
input_cw(lhs_vis2D/3). 
input_cw(lhs_mass/2). 
input_cw(lhs_gis/2). 
input_cw(lhs_gon/2). 
input_cw(lhs_child_c/2). 
input_cw(lhs/9). 
input_cw(lhs_peice/2). 
input_cw(lhs_c2d/2). 
input_cw(lhs_rot2D/2). 
input_cw(lhs_pen_color/2). 
input_cw(lhs_vis2D/3). 
input_cw(lhs_mass/2). 
input_cw(lhs_gis/2). 
input_cw(lhs_gon/2). 
input_cw(lhs_child_c/2). 
input_cw(lhs/9). 
modeh(*,rhs_peice(+scope,+peice)). 
modeh(*,rhs_c2d(+peice,+c2d)). 
modeh(*,rhs_rot2D(+peice,+rot2D)). 
modeh(*,rhs_pen_color(+peice,+ #(color))). 
modeh(*,rhs_vis2D(+peice,+nat30,+nat30)). 
modeh(*,rhs_mass(+peice,nat900)). 
modeh(*,rhs_gis(+peice,+gis)). 
modeh(*,rhs_gon(+peice,+gon)). 
modeh(*,rhs(+peice,+rhs,+rhs,+ #(color),+rhs,+nat30,+rhs,+rhs)). 
modeh(*,rhs_peice(+scope,+peice)). 
modeh(*,rhs_c2d(+peice,+c2d)). 
modeh(*,rhs_rot2D(+peice,+rot2D)). 
modeh(*,rhs_pen_color(+peice,+ #(color))). 
modeh(*,rhs_vis2D(+peice,+nat30,+nat30)). 
modeh(*,rhs_mass(+peice,nat900)). 
modeh(*,rhs_gis(+peice,+gis)). 
modeh(*,rhs_gon(+peice,+gon)). 
modeh(*,rhs(+peice,+rhs,+rhs,+ #(color),+rhs,+nat30,+rhs,+rhs)). 
modeb(*,lhs_peice(+scope,+peice)). 
modeb(*,lhs_c2d(+peice,-c2d)). 
modeb(*,lhs_rot2D(+peice,-rot2D)). 
modeb(*,lhs_pen_color(+peice,+ #(color))). 
modeb(*,lhs_vis2D(+peice,+nat30,+nat30)). 
modeb(*,lhs_mass(+peice,nat900)). 
modeb(*,lhs_gis(+peice,-gis)). 
modeb(*,lhs_gon(+peice,-gon)). 
modeb(*,lhs_child_c(+peice,-c)). 
modeb(*,lhs(+peice,-lhs,-lhs,+ #(color),-lhs,+nat30,-lhs,-lhs,-lhs)). 
modeb(*,lhs_peice(+scope,+peice)). 
modeb(*,lhs_c2d(+peice,-c2d)). 
modeb(*,lhs_rot2D(+peice,-rot2D)). 
modeb(*,lhs_pen_color(+peice,+ #(color))). 
modeb(*,lhs_vis2D(+peice,+nat30,+nat30)). 
modeb(*,lhs_mass(+peice,nat900)). 
modeb(*,lhs_gis(+peice,-gis)). 
modeb(*,lhs_gon(+peice,-gon)). 
modeb(*,lhs_child_c(+peice,-c)). 
modeb(*,lhs(+peice,-lhs,-lhs,+ #(color),-lhs,+nat30,-lhs,-lhs,-lhs)). 
modeb(*,lhs_child_c(+peice,+nat30)). 
modeb(*,lhs(+peice,-lhs,-lhs,+ #(color),-lhs,+nat30,-lhs,-lhs,+nat30)). 
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
lhs(trn_0,c(3,3),rot90,black,vis2D(2,1),2,sid_21,[],missing). 
lhs(trn_0,c(1,2),sameR,black,vis2D(1,2),2,sid_21,[],missing). 
lhs(trn_0,c(3,2),sameR,red,vis2D(2,2),4,sid_11,[make_solid_object(square,2,2)],missing). 
lhs(trn_0,c(1,3),sameR,red,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_1,c(2,1),rot180,red,vis2D(3,2),4,s15307279,[],missing). 
lhs(trn_1,c(2,4),sameR,red,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_1,c(4,3),sameR,red,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_2,c(3,5),sameR,red,vis2D(3,1),3,sid_12,[make_solid_object(rect,3,1)],missing). 
lhs(trn_2,c(2,2),rot90,red,vis2D(2,3),5,s1201147,[],1). 
lhs(trn_2,c(1,2),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_2,c(4,3),sameR,red,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_3,c(3,3),rot90,red,vis2D(2,2),2,s1961242,[rot180,as_rot(rollD,rollDR,copy_row_ntimes(1,2))],2). 
lhs(trn_3,c(1,1),rot180,red,vis2D(2,2),3,s11261491,[],1). 
lhs(trn_3,c(1,3),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_3,c(2,2),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_3,c(3,1),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_3,c(3,3),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(tst_0,c(4,5),sameR,red,vis2D(2,1),2,sid_12,[],missing). 
lhs(tst_0,c(2,1),rot90,red,vis2D(2,2),3,s11261491,[],missing). 
lhs(tst_0,c(1,4),sameR,red,vis2D(1,1),1,sid_11,[],missing). 
lhs(tst_0,c(3,3),sameR,red,vis2D(1,1),1,sid_11,[],missing). 
lhs(tst_0,c(4,1),sameR,red,vis2D(1,1),1,sid_11,[],missing). 
begin(model(trn_0)). 
lhs_peice(trn_0,obj_0_689_in). 
lhs_c2d(obj_0_689_in,c(3,3)). 
lhs_rot2D(obj_0_689_in,rot90). 
lhs_pen_color(obj_0_689_in,black). 
lhs_vis2D(obj_0_689_in,2,1). 
lhs_mass(obj_0_689_in,2). 
lhs_gis(obj_0_689_in,sid_21). 
lhs_gon(obj_0_689_in,[]). 
lhs_child_c(obj_0_689_in,missing). 
lhs_peice(trn_0,obj_0_792_in). 
lhs_c2d(obj_0_792_in,c(1,2)). 
lhs_rot2D(obj_0_792_in,sameR). 
lhs_pen_color(obj_0_792_in,black). 
lhs_vis2D(obj_0_792_in,1,2). 
lhs_mass(obj_0_792_in,2). 
lhs_gis(obj_0_792_in,sid_21). 
lhs_gon(obj_0_792_in,[]). 
lhs_child_c(obj_0_792_in,missing). 
lhs_peice(trn_0,obj_0_772_in). 
lhs_c2d(obj_0_772_in,c(3,2)). 
lhs_rot2D(obj_0_772_in,sameR). 
lhs_pen_color(obj_0_772_in,red). 
lhs_vis2D(obj_0_772_in,2,2). 
lhs_mass(obj_0_772_in,4). 
lhs_gis(obj_0_772_in,sid_11). 
lhs_gon(obj_0_772_in,[make_solid_object(square,2,2)]). 
lhs_child_c(obj_0_772_in,missing). 
lhs_peice(trn_0,obj_0_32_in). 
lhs_c2d(obj_0_32_in,c(1,3)). 
lhs_rot2D(obj_0_32_in,sameR). 
lhs_pen_color(obj_0_32_in,red). 
lhs_vis2D(obj_0_32_in,1,1). 
lhs_mass(obj_0_32_in,1). 
lhs_gis(obj_0_32_in,sid_11). 
lhs_gon(obj_0_32_in,[]). 
lhs_child_c(obj_0_32_in,missing). 
rhs_peice(trn_0,obj_0_516_out). 
rhs_c2d(obj_0_516_out,c(1,3)). 
rhs_rot2D(obj_0_516_out,sameR). 
rhs_pen_color(obj_0_516_out,blue). 
rhs_vis2D(obj_0_516_out,1,1). 
rhs_mass(obj_0_516_out,1). 
rhs_gis(obj_0_516_out,sid_11). 
rhs_gon(obj_0_516_out,[]). 
end(model(trn_0)). 
begin(model(trn_1)). 
lhs_peice(trn_1,obj_1_473_in). 
lhs_c2d(obj_1_473_in,c(2,1)). 
lhs_rot2D(obj_1_473_in,rot180). 
lhs_pen_color(obj_1_473_in,red). 
lhs_vis2D(obj_1_473_in,3,2). 
lhs_mass(obj_1_473_in,4). 
lhs_gis(obj_1_473_in,s15307279). 
lhs_gon(obj_1_473_in,[]). 
lhs_child_c(obj_1_473_in,missing). 
lhs_peice(trn_1,obj_1_124_in). 
lhs_c2d(obj_1_124_in,c(2,4)). 
lhs_rot2D(obj_1_124_in,sameR). 
lhs_pen_color(obj_1_124_in,red). 
lhs_vis2D(obj_1_124_in,1,1). 
lhs_mass(obj_1_124_in,1). 
lhs_gis(obj_1_124_in,sid_11). 
lhs_gon(obj_1_124_in,[]). 
lhs_child_c(obj_1_124_in,missing). 
lhs_peice(trn_1,obj_1_90_in). 
lhs_c2d(obj_1_90_in,c(4,3)). 
lhs_rot2D(obj_1_90_in,sameR). 
lhs_pen_color(obj_1_90_in,red). 
lhs_vis2D(obj_1_90_in,1,1). 
lhs_mass(obj_1_90_in,1). 
lhs_gis(obj_1_90_in,sid_11). 
lhs_gon(obj_1_90_in,[]). 
lhs_child_c(obj_1_90_in,missing). 
rhs_peice(trn_1,obj_1_608_out). 
rhs_c2d(obj_1_608_out,c(2,4)). 
rhs_rot2D(obj_1_608_out,sameR). 
rhs_pen_color(obj_1_608_out,blue). 
rhs_vis2D(obj_1_608_out,1,1). 
rhs_mass(obj_1_608_out,1). 
rhs_gis(obj_1_608_out,sid_11). 
rhs_gon(obj_1_608_out,[]). 
rhs_peice(trn_1,obj_1_601_out). 
rhs_c2d(obj_1_601_out,c(4,3)). 
rhs_rot2D(obj_1_601_out,sameR). 
rhs_pen_color(obj_1_601_out,blue). 
rhs_vis2D(obj_1_601_out,1,1). 
rhs_mass(obj_1_601_out,1). 
rhs_gis(obj_1_601_out,sid_11). 
rhs_gon(obj_1_601_out,[]). 
end(model(trn_1)). 
begin(model(trn_2)). 
lhs_peice(trn_2,obj_2_407_in). 
lhs_c2d(obj_2_407_in,c(3,5)). 
lhs_rot2D(obj_2_407_in,sameR). 
lhs_pen_color(obj_2_407_in,red). 
lhs_vis2D(obj_2_407_in,3,1). 
lhs_mass(obj_2_407_in,3). 
lhs_gis(obj_2_407_in,sid_12). 
lhs_gon(obj_2_407_in,[make_solid_object(rect,3,1)]). 
lhs_child_c(obj_2_407_in,missing). 
lhs_peice(trn_2,obj_2_266_in). 
lhs_c2d(obj_2_266_in,c(2,2)). 
lhs_rot2D(obj_2_266_in,rot90). 
lhs_pen_color(obj_2_266_in,red). 
lhs_vis2D(obj_2_266_in,2,3). 
lhs_mass(obj_2_266_in,5). 
lhs_gis(obj_2_266_in,s1201147). 
lhs_gon(obj_2_266_in,[]). 
lhs_child_c(obj_2_266_in,1). 
lhs_peice(trn_2,obj_2_245_in). 
lhs_c2d(obj_2_245_in,c(1,2)). 
lhs_rot2D(obj_2_245_in,sameR). 
lhs_pen_color(obj_2_245_in,black). 
lhs_vis2D(obj_2_245_in,1,1). 
lhs_mass(obj_2_245_in,1). 
lhs_gis(obj_2_245_in,sid_11). 
lhs_gon(obj_2_245_in,[]). 
lhs_child_c(obj_2_245_in,missing). 
lhs_peice(trn_2,obj_2_90_in). 
lhs_c2d(obj_2_90_in,c(4,3)). 
lhs_rot2D(obj_2_90_in,sameR). 
lhs_pen_color(obj_2_90_in,red). 
lhs_vis2D(obj_2_90_in,1,1). 
lhs_mass(obj_2_90_in,1). 
lhs_gis(obj_2_90_in,sid_11). 
lhs_gon(obj_2_90_in,[]). 
lhs_child_c(obj_2_90_in,missing). 
rhs_peice(trn_2,obj_2_601_out). 
rhs_c2d(obj_2_601_out,c(4,3)). 
rhs_rot2D(obj_2_601_out,sameR). 
rhs_pen_color(obj_2_601_out,blue). 
rhs_vis2D(obj_2_601_out,1,1). 
rhs_mass(obj_2_601_out,1). 
rhs_gis(obj_2_601_out,sid_11). 
rhs_gon(obj_2_601_out,[]). 
end(model(trn_2)). 
begin(model(trn_3)). 
lhs_peice(trn_3,obj_3_547_in). 
lhs_c2d(obj_3_547_in,c(3,3)). 
lhs_rot2D(obj_3_547_in,rot90). 
lhs_pen_color(obj_3_547_in,red). 
lhs_vis2D(obj_3_547_in,2,2). 
lhs_mass(obj_3_547_in,2). 
lhs_gis(obj_3_547_in,s1961242). 
lhs_gon(obj_3_547_in,[rot180,as_rot(rollD,rollDR,copy_row_ntimes(1,2))]). 
lhs_child_c(obj_3_547_in,2). 
lhs_peice(trn_3,obj_3_702_in). 
lhs_c2d(obj_3_702_in,c(1,1)). 
lhs_rot2D(obj_3_702_in,rot180). 
lhs_pen_color(obj_3_702_in,red). 
lhs_vis2D(obj_3_702_in,2,2). 
lhs_mass(obj_3_702_in,3). 
lhs_gis(obj_3_702_in,s11261491). 
lhs_gon(obj_3_702_in,[]). 
lhs_child_c(obj_3_702_in,1). 
lhs_peice(trn_3,obj_3_253_in). 
lhs_c2d(obj_3_253_in,c(1,3)). 
lhs_rot2D(obj_3_253_in,sameR). 
lhs_pen_color(obj_3_253_in,black). 
lhs_vis2D(obj_3_253_in,1,1). 
lhs_mass(obj_3_253_in,1). 
lhs_gis(obj_3_253_in,sid_11). 
lhs_gon(obj_3_253_in,[]). 
lhs_child_c(obj_3_253_in,missing). 
lhs_peice(trn_3,obj_3_219_in). 
lhs_c2d(obj_3_219_in,c(2,2)). 
lhs_rot2D(obj_3_219_in,sameR). 
lhs_pen_color(obj_3_219_in,black). 
lhs_vis2D(obj_3_219_in,1,1). 
lhs_mass(obj_3_219_in,1). 
lhs_gis(obj_3_219_in,sid_11). 
lhs_gon(obj_3_219_in,[]). 
lhs_child_c(obj_3_219_in,missing). 
lhs_peice(trn_3,obj_3_129_in). 
lhs_c2d(obj_3_129_in,c(3,1)). 
lhs_rot2D(obj_3_129_in,sameR). 
lhs_pen_color(obj_3_129_in,black). 
lhs_vis2D(obj_3_129_in,1,1). 
lhs_mass(obj_3_129_in,1). 
lhs_gis(obj_3_129_in,sid_11). 
lhs_gon(obj_3_129_in,[]). 
lhs_child_c(obj_3_129_in,missing). 
lhs_peice(trn_3,obj_3_220_in). 
lhs_c2d(obj_3_220_in,c(3,3)). 
lhs_rot2D(obj_3_220_in,sameR). 
lhs_pen_color(obj_3_220_in,black). 
lhs_vis2D(obj_3_220_in,1,1). 
lhs_mass(obj_3_220_in,1). 
lhs_gis(obj_3_220_in,sid_11). 
lhs_gon(obj_3_220_in,[]). 
lhs_child_c(obj_3_220_in,missing). 
rhs_peice(trn_3,obj_3_606_out). 
rhs_c2d(obj_3_606_out,c(3,3)). 
rhs_rot2D(obj_3_606_out,rot90). 
rhs_pen_color(obj_3_606_out,blue). 
rhs_vis2D(obj_3_606_out,2,2). 
rhs_mass(obj_3_606_out,2). 
rhs_gis(obj_3_606_out,s1961242). 
rhs_gon(obj_3_606_out,[rot180,as_rot(rollD,rollDR,copy_row_ntimes(1,2))]). 
rhs_peice(trn_3,obj_3_220_out). 
rhs_c2d(obj_3_220_out,c(3,3)). 
rhs_rot2D(obj_3_220_out,sameR). 
rhs_pen_color(obj_3_220_out,black). 
rhs_vis2D(obj_3_220_out,1,1). 
rhs_mass(obj_3_220_out,1). 
rhs_gis(obj_3_220_out,sid_11). 
rhs_gon(obj_3_220_out,[]). 
end(model(trn_3)). 
begin(model(tst_0)). 
lhs_peice(tst_0,obj_0_530_in). 
lhs_c2d(obj_0_530_in,c(4,5)). 
lhs_rot2D(obj_0_530_in,sameR). 
lhs_pen_color(obj_0_530_in,red). 
lhs_vis2D(obj_0_530_in,2,1). 
lhs_mass(obj_0_530_in,2). 
lhs_gis(obj_0_530_in,sid_12). 
lhs_gon(obj_0_530_in,[]). 
lhs_child_c(obj_0_530_in,missing). 
lhs_peice(tst_0,obj_0_133_in). 
lhs_c2d(obj_0_133_in,c(2,1)). 
lhs_rot2D(obj_0_133_in,rot90). 
lhs_pen_color(obj_0_133_in,red). 
lhs_vis2D(obj_0_133_in,2,2). 
lhs_mass(obj_0_133_in,3). 
lhs_gis(obj_0_133_in,s11261491). 
lhs_gon(obj_0_133_in,[]). 
lhs_child_c(obj_0_133_in,missing). 
lhs_peice(tst_0,obj_0_336_in). 
lhs_c2d(obj_0_336_in,c(1,4)). 
lhs_rot2D(obj_0_336_in,sameR). 
lhs_pen_color(obj_0_336_in,red). 
lhs_vis2D(obj_0_336_in,1,1). 
lhs_mass(obj_0_336_in,1). 
lhs_gis(obj_0_336_in,sid_11). 
lhs_gon(obj_0_336_in,[]). 
lhs_child_c(obj_0_336_in,missing). 
lhs_peice(tst_0,obj_0_724_in). 
lhs_c2d(obj_0_724_in,c(3,3)). 
lhs_rot2D(obj_0_724_in,sameR). 
lhs_pen_color(obj_0_724_in,red). 
lhs_vis2D(obj_0_724_in,1,1). 
lhs_mass(obj_0_724_in,1). 
lhs_gis(obj_0_724_in,sid_11). 
lhs_gon(obj_0_724_in,[]). 
lhs_child_c(obj_0_724_in,missing). 
lhs_peice(tst_0,obj_0_370_in). 
lhs_c2d(obj_0_370_in,c(4,1)). 
lhs_rot2D(obj_0_370_in,sameR). 
lhs_pen_color(obj_0_370_in,red). 
lhs_vis2D(obj_0_370_in,1,1). 
lhs_mass(obj_0_370_in,1). 
lhs_gis(obj_0_370_in,sid_11). 
lhs_gon(obj_0_370_in,[]). 
lhs_child_c(obj_0_370_in,missing). 
rhs_peice(tst_0,obj_0_530_out). 
rhs_c2d(obj_0_530_out,c(4,5)). 
rhs_rot2D(obj_0_530_out,sameR). 
rhs_pen_color(obj_0_530_out,red). 
rhs_vis2D(obj_0_530_out,2,1). 
rhs_mass(obj_0_530_out,2). 
rhs_gis(obj_0_530_out,sid_12). 
rhs_gon(obj_0_530_out,[]). 
rhs_peice(tst_0,obj_0_133_out). 
rhs_c2d(obj_0_133_out,c(2,1)). 
rhs_rot2D(obj_0_133_out,rot90). 
rhs_pen_color(obj_0_133_out,red). 
rhs_vis2D(obj_0_133_out,2,2). 
rhs_mass(obj_0_133_out,3). 
rhs_gis(obj_0_133_out,s11261491). 
rhs_gon(obj_0_133_out,[]). 
rhs_peice(tst_0,obj_0_565_out). 
rhs_c2d(obj_0_565_out,c(1,4)). 
rhs_rot2D(obj_0_565_out,sameR). 
rhs_pen_color(obj_0_565_out,blue). 
rhs_vis2D(obj_0_565_out,1,1). 
rhs_mass(obj_0_565_out,1). 
rhs_gis(obj_0_565_out,sid_11). 
rhs_gon(obj_0_565_out,[]). 
rhs_peice(tst_0,obj_0_60_out). 
rhs_c2d(obj_0_60_out,c(3,3)). 
rhs_rot2D(obj_0_60_out,sameR). 
rhs_pen_color(obj_0_60_out,blue). 
rhs_vis2D(obj_0_60_out,1,1). 
rhs_mass(obj_0_60_out,1). 
rhs_gis(obj_0_60_out,sid_11). 
rhs_gon(obj_0_60_out,[]). 
rhs_peice(tst_0,obj_0_123_out). 
rhs_c2d(obj_0_123_out,c(4,1)). 
rhs_rot2D(obj_0_123_out,sameR). 
rhs_pen_color(obj_0_123_out,blue). 
rhs_vis2D(obj_0_123_out,1,1). 
rhs_mass(obj_0_123_out,1). 
rhs_gis(obj_0_123_out,sid_11). 
rhs_gon(obj_0_123_out,[]). 
end(model(tst_0)). 
