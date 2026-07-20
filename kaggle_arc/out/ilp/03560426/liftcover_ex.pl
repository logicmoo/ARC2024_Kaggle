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
output(rhs_peice/2). 
output(rhs_rot2D/2). 
output(rhs_gis/2). 
output(rhs_c2d/2). 
output(rhs_t2d/2). 
output(rhs_pen_color/2). 
output(rhs/6). 
output(rhs_peice/2). 
output(rhs_rot2D/2). 
output(rhs_gis/2). 
output(rhs_c2d/2). 
output(rhs_t2d/2). 
output(rhs_pen_color/2). 
output(rhs/6). 
output(rhs_peice/2). 
output(rhs_rot2D/2). 
output(rhs_gis/2). 
output(rhs_c2d/2). 
output(rhs_t2d/2). 
output(rhs_pen_color/2). 
output(rhs/6). 
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
input_cw(lhs_peice/2). 
input_cw(lhs_rot2D/2). 
input_cw(lhs_gis/2). 
input_cw(lhs_c2d/2). 
input_cw(lhs_t2d/2). 
input_cw(lhs_pen_color/2). 
input_cw(lhs_child_c/2). 
input_cw(lhs/7). 
input_cw(lhs_peice/2). 
input_cw(lhs_rot2D/2). 
input_cw(lhs_gis/2). 
input_cw(lhs_c2d/2). 
input_cw(lhs_t2d/2). 
input_cw(lhs_pen_color/2). 
input_cw(lhs_child_c/2). 
input_cw(lhs/7). 
input_cw(lhs_peice/2). 
input_cw(lhs_rot2D/2). 
input_cw(lhs_gis/2). 
input_cw(lhs_c2d/2). 
input_cw(lhs_t2d/2). 
input_cw(lhs_pen_color/2). 
input_cw(lhs_child_c/2). 
input_cw(lhs/7). 
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
modeh(*,rhs_peice(+scope,+peice)). 
modeh(*,rhs_rot2D(+peice,+rot2D)). 
modeh(*,rhs_gis(+peice,+gis)). 
modeh(*,rhs_c2d(+peice,+c2d)). 
modeh(*,rhs_t2d(+peice,+t2d)). 
modeh(*,rhs_pen_color(+peice,+ #(color))). 
modeh(*,rhs(+peice,+rhs,+rhs,+rhs,+rhs,+ #(color))). 
modeh(*,rhs_peice(+scope,+peice)). 
modeh(*,rhs_rot2D(+peice,+rot2D)). 
modeh(*,rhs_gis(+peice,+gis)). 
modeh(*,rhs_c2d(+peice,+c2d)). 
modeh(*,rhs_t2d(+peice,+t2d)). 
modeh(*,rhs_pen_color(+peice,+ #(color))). 
modeh(*,rhs(+peice,+rhs,+rhs,+rhs,+rhs,+ #(color))). 
modeh(*,rhs_peice(+scope,+peice)). 
modeh(*,rhs_rot2D(+peice,+rot2D)). 
modeh(*,rhs_gis(+peice,+gis)). 
modeh(*,rhs_c2d(+peice,+c2d)). 
modeh(*,rhs_t2d(+peice,+t2d)). 
modeh(*,rhs_pen_color(+peice,+color)). 
modeh(*,rhs(+peice,+rhs,+rhs,+rhs,+rhs,+rhs)). 
modeh(*,rhs_pen_color(+peice,+ #(color))). 
modeh(*,rhs(+peice,+rhs,+rhs,+rhs,+rhs,+ #(color))). 
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
modeb(*,lhs_child_c(+peice,+nat30)). 
modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,+ #(color),+nat30)). 
modeb(*,lhs_peice(+scope,+peice)). 
modeb(*,lhs_rot2D(+peice,-rot2D)). 
modeb(*,lhs_gis(+peice,-gis)). 
modeb(*,lhs_c2d(+peice,-c2d)). 
modeb(*,lhs_t2d(+peice,-t2d)). 
modeb(*,lhs_pen_color(+peice,+ #(color))). 
modeb(*,lhs_child_c(+peice,-c)). 
modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,+ #(color),-lhs)). 
modeb(*,lhs_child_c(+peice,+nat30)). 
modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,+ #(color),+nat30)). 
modeb(*,lhs_peice(+scope,+peice)). 
modeb(*,lhs_rot2D(+peice,-rot2D)). 
modeb(*,lhs_gis(+peice,-gis)). 
modeb(*,lhs_c2d(+peice,-c2d)). 
modeb(*,lhs_t2d(+peice,-t2d)). 
modeb(*,lhs_pen_color(+peice,+ #(color))). 
modeb(*,lhs_child_c(+peice,-c)). 
modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,+ #(color),-lhs)). 
modeb(*,lhs_child_c(+peice,+nat30)). 
modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,+ #(color),+nat30)). 
modeb(*,lhs_peice(+scope,+peice)). 
modeb(*,lhs_rot2D(+peice,-rot2D)). 
modeb(*,lhs_gis(+peice,-gis)). 
modeb(*,lhs_c2d(+peice,-c2d)). 
modeb(*,lhs_t2d(+peice,-t2d)). 
modeb(*,lhs_pen_color(+peice,+ #(color))). 
modeb(*,lhs_child_c(+peice,-c)). 
modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,+ #(color),-lhs)). 
modeb(*,lhs_child_c(+peice,+nat30)). 
modeb(*,lhs(+peice,-lhs,-lhs,-lhs,-lhs,+ #(color),+nat30)). 
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
lhs(in0_red4_4_9_5_10,sameR,sid_1x1,cxy(5,10),txy(4,9),red,no_child). 
lhs(in0_green4_7_9_8_10,sameR,sid_1x1,cxy(8,10),txy(7,9),green,no_child). 
lhs(in0_yellow4_10_7_10_10,rot90,sid_2x1,cxy(10,9),txy(10,9),yellow,no_child). 
lhs(in0_blue6_1_8_2_10,rot90,sid_2x1,cxy(2,9),txy(2,9),blue,no_child). 
lhs(in0_black0_1_1_10_10,sameR,s15109119,cxy(6,5),txy(1,1),black,no_child). 
lhs(in1_orange4_5_9_6_10,sameR,sid_1x1,cxy(6,10),txy(5,9),orange,no_child). 
lhs(in1_red6_8_9_10_10,sameR,sid_2x1,cxy(9,10),txy(9,10),red,no_child). 
lhs(in1_cyan12_1_7_3_10,rot90,sid_2x1,cxy(2,9),txy(2,9),cyan,no_child). 
lhs(in1_black0_1_1_10_10,sameR,s15359499,cxy(6,5),txy(1,1),black,no_child). 
lhs(in2_red5_6_6_6_10,rot90,sid_2x1,cxy(6,8),txy(6,8),red,no_child). 
lhs(in2_yellow8_1_9_4_10,sameR,sid_2x1,cxy(3,10),txy(1,9),yellow,no_child). 
lhs(in2_green9_8_8_10_10,sameR,sid_1x1,cxy(9,9),txy(9,9),green,no_child). 
lhs(in2_black0_1_1_10_10,sameR,s8237827,cxy(5,5),txy(10,1),black,no_child). 
lhs(in0_purple3_6_8_6_10,rot90,sid_2x1,cxy(6,9),txy(6,9),purple,no_child). 
lhs(in0_green4_8_9_9_10,sameR,sid_1x1,cxy(9,10),txy(8,9),green,no_child). 
lhs(in0_orange4_1_7_1_10,rot90,sid_2x1,cxy(1,9),txy(1,9),orange,no_child). 
lhs(in0_cyan6_3_8_4_10,rot90,sid_2x1,cxy(4,9),txy(4,9),cyan,no_child). 
lhs(in0_black0_1_1_10_10,sameR,s12129420,cxy(6,5),txy(1,2),black,no_child). 
begin(model(trn_0)). 
lhs_peice(trn_0,obj_0_199_in). 
lhs_rot2D(obj_0_199_in,sameR). 
lhs_gis(obj_0_199_in,sid_1x1). 
lhs_c2d(obj_0_199_in,cxy(5,10)). 
lhs_t2d(obj_0_199_in,txy(4,9)). 
lhs_pen_color(obj_0_199_in,red). 
lhs_child_c(obj_0_199_in,no_child). 
lhs_peice(trn_0,obj_0_636_in). 
lhs_rot2D(obj_0_636_in,sameR). 
lhs_gis(obj_0_636_in,sid_1x1). 
lhs_c2d(obj_0_636_in,cxy(8,10)). 
lhs_t2d(obj_0_636_in,txy(7,9)). 
lhs_pen_color(obj_0_636_in,green). 
lhs_child_c(obj_0_636_in,no_child). 
lhs_peice(trn_0,obj_0_688_in). 
lhs_rot2D(obj_0_688_in,rot90). 
lhs_gis(obj_0_688_in,sid_2x1). 
lhs_c2d(obj_0_688_in,cxy(10,9)). 
lhs_t2d(obj_0_688_in,txy(10,9)). 
lhs_pen_color(obj_0_688_in,yellow). 
lhs_child_c(obj_0_688_in,no_child). 
lhs_peice(trn_0,obj_0_506_in). 
lhs_rot2D(obj_0_506_in,rot90). 
lhs_gis(obj_0_506_in,sid_2x1). 
lhs_c2d(obj_0_506_in,cxy(2,9)). 
lhs_t2d(obj_0_506_in,txy(2,9)). 
lhs_pen_color(obj_0_506_in,blue). 
lhs_child_c(obj_0_506_in,no_child). 
lhs_peice(trn_0,obj_0_492_in). 
lhs_rot2D(obj_0_492_in,sameR). 
lhs_gis(obj_0_492_in,s15109119). 
lhs_c2d(obj_0_492_in,cxy(6,5)). 
lhs_t2d(obj_0_492_in,txy(1,1)). 
lhs_pen_color(obj_0_492_in,black). 
lhs_child_c(obj_0_492_in,no_child). 
rhs_peice(trn_0,obj_0_33_out). 
rhs_rot2D(obj_0_33_out,rot90). 
rhs_gis(obj_0_33_out,sid_2x1). 
rhs_c2d(obj_0_33_out,cxy(4,7)). 
rhs_t2d(obj_0_33_out,txy(4,7)). 
rhs_pen_color(obj_0_33_out,yellow). 
rhs_peice(trn_0,obj_0_263_out). 
rhs_rot2D(obj_0_263_out,rot180). 
rhs_gis(obj_0_263_out,sid_tetris_Z_270_Rotated_2x3). 
rhs_c2d(obj_0_263_out,cxy(2,3)). 
rhs_t2d(obj_0_263_out,txy(2,3)). 
rhs_pen_color(obj_0_263_out,red). 
rhs_peice(trn_0,obj_0_588_out). 
rhs_rot2D(obj_0_588_out,rot180). 
rhs_gis(obj_0_588_out,sid_tetris_Z_270_Rotated_2x3). 
rhs_c2d(obj_0_588_out,cxy(3,4)). 
rhs_t2d(obj_0_588_out,txy(3,4)). 
rhs_pen_color(obj_0_588_out,green). 
rhs_peice(trn_0,obj_0_658_out). 
rhs_rot2D(obj_0_658_out,flipDHV). 
rhs_gis(obj_0_658_out,sid_tetris_Z_270_Rotated_2x3). 
rhs_c2d(obj_0_658_out,cxy(1,2)). 
rhs_t2d(obj_0_658_out,txy(2,1)). 
rhs_pen_color(obj_0_658_out,blue). 
rhs_peice(trn_0,obj_0_492_out). 
rhs_rot2D(obj_0_492_out,sameR). 
rhs_gis(obj_0_492_out,s15953543). 
rhs_c2d(obj_0_492_out,cxy(6,6)). 
rhs_t2d(obj_0_492_out,txy(6,6)). 
rhs_pen_color(obj_0_492_out,black). 
end(model(trn_0)). 
begin(model(trn_1)). 
lhs_peice(trn_1,obj_1_698_in). 
lhs_rot2D(obj_1_698_in,sameR). 
lhs_gis(obj_1_698_in,sid_1x1). 
lhs_c2d(obj_1_698_in,cxy(6,10)). 
lhs_t2d(obj_1_698_in,txy(5,9)). 
lhs_pen_color(obj_1_698_in,orange). 
lhs_child_c(obj_1_698_in,no_child). 
lhs_peice(trn_1,obj_1_115_in). 
lhs_rot2D(obj_1_115_in,sameR). 
lhs_gis(obj_1_115_in,sid_2x1). 
lhs_c2d(obj_1_115_in,cxy(9,10)). 
lhs_t2d(obj_1_115_in,txy(9,10)). 
lhs_pen_color(obj_1_115_in,red). 
lhs_child_c(obj_1_115_in,no_child). 
lhs_peice(trn_1,obj_1_24_in). 
lhs_rot2D(obj_1_24_in,rot90). 
lhs_gis(obj_1_24_in,sid_2x1). 
lhs_c2d(obj_1_24_in,cxy(2,9)). 
lhs_t2d(obj_1_24_in,txy(2,9)). 
lhs_pen_color(obj_1_24_in,cyan). 
lhs_child_c(obj_1_24_in,no_child). 
lhs_peice(trn_1,obj_1_492_in). 
lhs_rot2D(obj_1_492_in,sameR). 
lhs_gis(obj_1_492_in,s15359499). 
lhs_c2d(obj_1_492_in,cxy(6,5)). 
lhs_t2d(obj_1_492_in,txy(1,1)). 
lhs_pen_color(obj_1_492_in,black). 
lhs_child_c(obj_1_492_in,no_child). 
rhs_peice(trn_1,obj_1_136_out). 
rhs_rot2D(obj_1_136_out,rot180). 
rhs_gis(obj_1_136_out,sid_tetris_Z_270_Rotated_2x3). 
rhs_c2d(obj_1_136_out,cxy(3,4)). 
rhs_t2d(obj_1_136_out,txy(3,4)). 
rhs_pen_color(obj_1_136_out,orange). 
rhs_peice(trn_1,obj_1_463_out). 
rhs_rot2D(obj_1_463_out,sameR). 
rhs_gis(obj_1_463_out,sid_2x1). 
rhs_c2d(obj_1_463_out,cxy(5,6)). 
rhs_t2d(obj_1_463_out,txy(5,6)). 
rhs_pen_color(obj_1_463_out,red). 
rhs_peice(trn_1,obj_1_527_out). 
rhs_rot2D(obj_1_527_out,flipDHV). 
rhs_gis(obj_1_527_out,sid_tetris_Z_270_Rotated_2x3). 
rhs_c2d(obj_1_527_out,cxy(2,2)). 
rhs_t2d(obj_1_527_out,txy(1,4)). 
rhs_pen_color(obj_1_527_out,cyan). 
rhs_peice(trn_1,obj_1_492_out). 
rhs_rot2D(obj_1_492_out,sameR). 
rhs_gis(obj_1_492_out,s814721). 
rhs_c2d(obj_1_492_out,cxy(6,6)). 
rhs_t2d(obj_1_492_out,txy(6,6)). 
rhs_pen_color(obj_1_492_out,black). 
end(model(trn_1)). 
begin(model(trn_2)). 
lhs_peice(trn_2,obj_2_53_in). 
lhs_rot2D(obj_2_53_in,rot90). 
lhs_gis(obj_2_53_in,sid_2x1). 
lhs_c2d(obj_2_53_in,cxy(6,8)). 
lhs_t2d(obj_2_53_in,txy(6,8)). 
lhs_pen_color(obj_2_53_in,red). 
lhs_child_c(obj_2_53_in,no_child). 
lhs_peice(trn_2,obj_2_17_in). 
lhs_rot2D(obj_2_17_in,sameR). 
lhs_gis(obj_2_17_in,sid_2x1). 
lhs_c2d(obj_2_17_in,cxy(3,10)). 
lhs_t2d(obj_2_17_in,txy(1,9)). 
lhs_pen_color(obj_2_17_in,yellow). 
lhs_child_c(obj_2_17_in,no_child). 
lhs_peice(trn_2,obj_2_34_in). 
lhs_rot2D(obj_2_34_in,sameR). 
lhs_gis(obj_2_34_in,sid_1x1). 
lhs_c2d(obj_2_34_in,cxy(9,9)). 
lhs_t2d(obj_2_34_in,txy(9,9)). 
lhs_pen_color(obj_2_34_in,green). 
lhs_child_c(obj_2_34_in,no_child). 
lhs_peice(trn_2,obj_2_492_in). 
lhs_rot2D(obj_2_492_in,sameR). 
lhs_gis(obj_2_492_in,s8237827). 
lhs_c2d(obj_2_492_in,cxy(5,5)). 
lhs_t2d(obj_2_492_in,txy(10,1)). 
lhs_pen_color(obj_2_492_in,black). 
lhs_child_c(obj_2_492_in,no_child). 
rhs_peice(trn_2,obj_2_650_out). 
rhs_rot2D(obj_2_650_out,rot90). 
rhs_gis(obj_2_650_out,sid_2x1). 
rhs_c2d(obj_2_650_out,cxy(4,4)). 
rhs_t2d(obj_2_650_out,txy(4,4)). 
rhs_pen_color(obj_2_650_out,red). 
rhs_peice(trn_2,obj_2_52_out). 
rhs_rot2D(obj_2_52_out,rot180). 
rhs_gis(obj_2_52_out,sid_tetris_Z_270_Rotated_2x3). 
rhs_c2d(obj_2_52_out,cxy(2,1)). 
rhs_t2d(obj_2_52_out,txy(2,1)). 
rhs_pen_color(obj_2_52_out,yellow). 
rhs_peice(trn_2,obj_2_229_out). 
rhs_rot2D(obj_2_229_out,sameR). 
rhs_gis(obj_2_229_out,sid_1x1). 
rhs_c2d(obj_2_229_out,cxy(5,7)). 
rhs_t2d(obj_2_229_out,txy(5,7)). 
rhs_pen_color(obj_2_229_out,green). 
rhs_peice(trn_2,obj_2_492_out). 
rhs_rot2D(obj_2_492_out,sameR). 
rhs_gis(obj_2_492_out,s10807834). 
rhs_c2d(obj_2_492_out,cxy(6,6)). 
rhs_t2d(obj_2_492_out,txy(6,6)). 
rhs_pen_color(obj_2_492_out,black). 
end(model(trn_2)). 
begin(model(tst_0)). 
lhs_peice(tst_0,obj_0_530_in). 
lhs_rot2D(obj_0_530_in,rot90). 
lhs_gis(obj_0_530_in,sid_2x1). 
lhs_c2d(obj_0_530_in,cxy(6,9)). 
lhs_t2d(obj_0_530_in,txy(6,9)). 
lhs_pen_color(obj_0_530_in,purple). 
lhs_child_c(obj_0_530_in,no_child). 
lhs_peice(tst_0,obj_0_753_in). 
lhs_rot2D(obj_0_753_in,sameR). 
lhs_gis(obj_0_753_in,sid_1x1). 
lhs_c2d(obj_0_753_in,cxy(9,10)). 
lhs_t2d(obj_0_753_in,txy(8,9)). 
lhs_pen_color(obj_0_753_in,green). 
lhs_child_c(obj_0_753_in,no_child). 
lhs_peice(tst_0,obj_0_567_in). 
lhs_rot2D(obj_0_567_in,rot90). 
lhs_gis(obj_0_567_in,sid_2x1). 
lhs_c2d(obj_0_567_in,cxy(1,9)). 
lhs_t2d(obj_0_567_in,txy(1,9)). 
lhs_pen_color(obj_0_567_in,orange). 
lhs_child_c(obj_0_567_in,no_child). 
lhs_peice(tst_0,obj_0_355_in). 
lhs_rot2D(obj_0_355_in,rot90). 
lhs_gis(obj_0_355_in,sid_2x1). 
lhs_c2d(obj_0_355_in,cxy(4,9)). 
lhs_t2d(obj_0_355_in,txy(4,9)). 
lhs_pen_color(obj_0_355_in,cyan). 
lhs_child_c(obj_0_355_in,no_child). 
lhs_peice(tst_0,obj_0_492_in). 
lhs_rot2D(obj_0_492_in,sameR). 
lhs_gis(obj_0_492_in,s12129420). 
lhs_c2d(obj_0_492_in,cxy(6,5)). 
lhs_t2d(obj_0_492_in,txy(1,2)). 
lhs_pen_color(obj_0_492_in,black). 
lhs_child_c(obj_0_492_in,no_child). 
rhs_peice(tst_0,obj_0_321_out). 
rhs_rot2D(obj_0_321_out,rot90). 
rhs_gis(obj_0_321_out,sid_2x1). 
rhs_c2d(obj_0_321_out,cxy(2,7)). 
rhs_t2d(obj_0_321_out,txy(2,7)). 
rhs_pen_color(obj_0_321_out,purple). 
rhs_peice(tst_0,obj_0_454_out). 
rhs_rot2D(obj_0_454_out,rot90). 
rhs_gis(obj_0_454_out,sid_2x1). 
rhs_c2d(obj_0_454_out,cxy(1,2)). 
rhs_t2d(obj_0_454_out,txy(1,2)). 
rhs_pen_color(obj_0_454_out,orange). 
rhs_peice(tst_0,obj_0_102_out). 
rhs_rot2D(obj_0_102_out,sameR). 
rhs_gis(obj_0_102_out,sid_1x1). 
rhs_c2d(obj_0_102_out,cxy(3,9)). 
rhs_t2d(obj_0_102_out,txy(2,8)). 
rhs_pen_color(obj_0_102_out,green). 
rhs_peice(tst_0,obj_0_711_out). 
rhs_rot2D(obj_0_711_out,flipDHV). 
rhs_gis(obj_0_711_out,sid_tetris_Z_270_Rotated_2x3). 
rhs_c2d(obj_0_711_out,cxy(1,5)). 
rhs_t2d(obj_0_711_out,txy(2,4)). 
rhs_pen_color(obj_0_711_out,cyan). 
rhs_peice(tst_0,obj_0_492_out). 
rhs_rot2D(obj_0_492_out,sameR). 
rhs_gis(obj_0_492_out,s148978). 
rhs_c2d(obj_0_492_out,cxy(6,6)). 
rhs_t2d(obj_0_492_out,txy(6,6)). 
rhs_pen_color(obj_0_492_out,black). 
end(model(tst_0)). 
