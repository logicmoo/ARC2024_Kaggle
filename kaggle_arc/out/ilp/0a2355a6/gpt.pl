% Riddle v(0a2355a6)




% Example 1

Inputs:
lhs(trn_0,c(4,4),sameR,cyan,vis2D(3,3),8,sid_323,[],childs(1)). 
lhs(trn_0,c(10,2),sameR,cyan,vis2D(4,3),10,sid_323,[c_r(copy_row_ntimes(2,2))],childs(1)). 
lhs(trn_0,c(8,7),rot90,cyan,vis2D(3,5),13,s16201681,[],childs(2)). 

Outputs:
rhs(trn_0,c(4,4),sameR,blue,vis2D(3,3),8,sid_323,[]). 
rhs(trn_0,c(10,2),sameR,blue,vis2D(4,3),10,sid_323,[c_r(copy_row_ntimes(2,2))]). 
rhs(trn_0,c(8,7),rot90,green,vis2D(3,5),13,s16201681,[]). 



% Example 2

Inputs:
lhs(trn_1,c(10,6),sameR,cyan,vis2D(3,3),8,sid_323,[],childs(1)). 
lhs(trn_1,c(9,12),sameR,cyan,vis2D(4,4),12,sid_323,[c_r(copy_row_ntimes(2,2)),copy_row_ntimes(2,2)],childs(1)). 
lhs(trn_1,c(3,11),rot270,cyan,vis2D(5,5),17,s12506459,[],childs(2)). 
lhs(trn_1,c(5,4),flipDHV,cyan,vis2D(5,6),20,s12406422,[c_r(copy_row_ntimes(2,2))],childs(3)). 

Outputs:
rhs(trn_1,c(10,6),sameR,blue,vis2D(3,3),8,sid_323,[]). 
rhs(trn_1,c(9,12),sameR,blue,vis2D(4,4),12,sid_323,[c_r(copy_row_ntimes(2,2)),copy_row_ntimes(2,2)]). 
rhs(trn_1,c(3,11),rot270,green,vis2D(5,5),17,s12506459,[]). 
rhs(trn_1,c(5,4),flipDHV,red,vis2D(5,6),20,s12406422,[c_r(copy_row_ntimes(2,2))]). 



% Example 3

Inputs:
lhs(trn_2,c(12,12),sameR,cyan,vis2D(3,3),8,sid_323,[],childs(1)). 
lhs(trn_2,c(5,3),sameR,cyan,vis2D(5,3),12,sid_323,[c_r(copy_row_ntimes(2,3))],childs(1)). 
lhs(trn_2,c(11,4),rot90,cyan,vis2D(3,7),18,s15984027,[],childs(3)). 
lhs(trn_2,c(6,10),sameR,cyan,vis2D(5,5),17,s16173246,[],childs(2)). 

Outputs:
rhs(trn_2,c(12,12),sameR,blue,vis2D(3,3),8,sid_323,[]). 
rhs(trn_2,c(5,3),sameR,blue,vis2D(5,3),12,sid_323,[c_r(copy_row_ntimes(2,3))]). 
rhs(trn_2,c(11,4),rot90,red,vis2D(3,7),18,s15984027,[]). 
rhs(trn_2,c(6,10),sameR,green,vis2D(5,5),17,s16173246,[]). 



% Example 4

Inputs:
lhs(trn_3,c(4,14),sameR,cyan,vis2D(3,3),8,sid_323,[],childs(1)). 
lhs(trn_3,c(4,9),rot90,cyan,vis2D(4,5),16,s16201681,[copy_row_ntimes(2,2)],childs(2)). 
lhs(trn_3,c(11,11),rot270,cyan,vis2D(5,8),25,s1448007,[c_r(copy_row_ntimes(2,2))],childs(3)). 

Outputs:
rhs(trn_3,c(4,14),sameR,blue,vis2D(3,3),8,sid_323,[]). 
rhs(trn_3,c(4,9),rot90,green,vis2D(4,5),16,s16201681,[copy_row_ntimes(2,2)]). 
rhs(trn_3,c(7,3),sameR,yellow,vis2D(10,4),26,s14431835,[c_r(copy_row_ntimes(6,2))]). 
rhs(trn_3,c(11,11),rot270,red,vis2D(5,8),25,s1448007,[c_r(copy_row_ntimes(2,2))]). 



% Exam 1

Inputs:
lhs(tst_0,c(6,12),sameR,cyan,vis2D(6,4),16,sid_323,[c_r(copy_row_ntimes(2,4)),copy_row_ntimes(2,2)],childs(1)). 
lhs(tst_0,c(14,14),sameR,cyan,vis2D(7,4),20,s16201681,[c_r(and(copy_row_ntimes(4,2),copy_row_ntimes(2,2))),copy_row_ntimes(2,2)],childs(2)). 
lhs(tst_0,c(15,6),flipD,cyan,vis2D(4,8),22,s5270230,[c_r(copy_row_ntimes(4,2))],childs(3)). 
lhs(tst_0,c(7,4),sameR,cyan,vis2D(9,5),28,s1838558,[],childs(4)). 

Outputs:

%guess the rhs


% rhs(tst_0,c(6,12),sameR,blue,vis2D(6,4),16,sid_323,[c_r(copy_row_ntimes(2,4)),copy_row_ntimes(2,2)]). 
% rhs(tst_0,c(14,14),sameR,green,vis2D(7,4),20,s16201681,[c_r(and(copy_row_ntimes(4,2),copy_row_ntimes(2,2))),copy_row_ntimes(2,2)]). 
% rhs(tst_0,c(15,6),flipD,red,vis2D(4,8),22,s5270230,[c_r(copy_row_ntimes(4,2))]). 
% rhs(tst_0,c(7,4),sameR,yellow,vis2D(9,5),28,s1838558,[]). 
