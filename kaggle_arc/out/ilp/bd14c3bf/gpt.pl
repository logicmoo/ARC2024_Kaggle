% Riddle v(bd14c3bf)
Sometimes misleading advice: 
 maybe identify one outlier object in each input different than the rest as far as how it transforms.   the transformation rule likely involves a combination of other property in the outlier when combined with rest of object.



% Example 1

Inputs:
lhs(trn_0,c(2,2),rot270,red,vis2D(3,3),7,s1201147,[copy_row_ntimes(1,2)],missing). 
lhs(trn_0,c(3,7),sameR,blue,vis2D(3,3),7,s1201147,[copy_row_ntimes(1,2)],missing). 
lhs(trn_0,c(4,14),sameR,blue,vis2D(4,3),10,s14011369,[],1). 
lhs(trn_0,c(7,9),rot270,blue,vis2D(3,4),9,s5187905,[c_r(copy_row_ntimes(1,2))],missing). 
lhs(trn_0,c(14,3),rot90,blue,vis2D(3,4),9,s5187905,[c_r(copy_row_ntimes(1,2))],missing). 
lhs(trn_0,c(10,3),rot90,blue,vis2D(3,4),9,s1201147,[c_r(copy_row_ntimes(1,3)),rot90],missing). 
lhs(trn_0,c(13,11),sameR,blue,vis2D(4,4),10,s1201147,[rot90,c_r(copy_row_ntimes(1,3)),copy_row_ntimes(2,2)],missing). 

Outputs:
rhs(trn_0,c(3,7),sameR,red,vis2D(3,3),7,s1201147,[copy_row_ntimes(1,2)]). 
rhs(trn_0,c(10,3),rot90,red,vis2D(3,4),9,s1201147,[c_r(copy_row_ntimes(1,3)),rot90]). 
rhs(trn_0,c(13,11),sameR,red,vis2D(4,4),10,s1201147,[rot90,c_r(copy_row_ntimes(1,3)),copy_row_ntimes(2,2)]). 



% Example 2

Inputs:
lhs(trn_1,c(4,16),rot90,blue,vis2D(3,3),7,s1201147,[c_r(copy_row_ntimes(1,2)),rot90],missing). 
lhs(trn_1,c(2,2),sameR,red,vis2D(3,3),7,s16715379,[],1). 
lhs(trn_1,c(15,2),sameR,blue,vis2D(3,3),7,s16715379,[],1). 
lhs(trn_1,c(12,14),sameR,blue,vis2D(4,3),8,s16715379,[c_r(copy_row_ntimes(2,2))],missing). 
lhs(trn_1,c(14,8),sameR,blue,vis2D(4,3),8,s12561063,[flipV,as_rot(rollD,rollDR,copy_row_ntimes(2,2)),c_r(copy_row_ntimes(3,2))],missing). 
lhs(trn_1,c(8,5),sameR,blue,vis2D(5,3),11,s5187905,[c_r(and(copy_row_ntimes(3,2),copy_row_ntimes(1,2)))],missing). 
lhs(trn_1,c(16,16),rot270,blue,vis2D(4,5),11,s7732729,[copy_row_ntimes(1,3)],2). 
lhs(trn_1,c(4,11),sameR,blue,vis2D(7,4),16,s5187905,[c_r(and(copy_row_ntimes(3,3),copy_row_ntimes(1,3))),copy_row_ntimes(2,2)],1). 

Outputs:
rhs(trn_1,c(15,2),sameR,red,vis2D(3,3),7,s16715379,[]). 
rhs(trn_1,c(12,14),sameR,red,vis2D(4,3),8,s16715379,[c_r(copy_row_ntimes(2,2))]). 
rhs(trn_1,c(8,5),sameR,red,vis2D(5,3),11,s5187905,[c_r(and(copy_row_ntimes(3,2),copy_row_ntimes(1,2)))]). 
rhs(trn_1,c(4,11),sameR,red,vis2D(7,4),16,s5187905,[c_r(and(copy_row_ntimes(3,3),copy_row_ntimes(1,3))),copy_row_ntimes(2,2)]). 



% Example 3

Inputs:
lhs(trn_2,c(10,10),rot180,blue,vis2D(3,2),5,s1201147,[],missing). 
lhs(trn_2,c(2,2),sameR,red,vis2D(3,3),8,sid_323,[],1). 
lhs(trn_2,c(16,11),sameR,blue,vis2D(3,3),8,sid_323,[],1). 
lhs(trn_2,c(4,6),sameR,blue,vis2D(3,3),7,s1201147,[rot90,c_r(copy_row_ntimes(1,2))],missing). 
lhs(trn_2,c(15,2),sameR,blue,vis2D(3,3),7,s16715379,[],1). 
lhs(trn_2,c(10,6),rot90,blue,vis2D(3,4),10,sid_323,[c_r(copy_row_ntimes(2,2))],1). 
lhs(trn_2,c(4,10),sameR,blue,vis2D(4,3),10,sid_323,[c_r(copy_row_ntimes(2,2))],1). 
lhs(trn_2,c(7,16),sameR,blue,vis2D(4,4),12,sid_323,[c_r(copy_row_ntimes(2,2)),copy_row_ntimes(2,2)],1). 
lhs(trn_2,c(13,16),rot90,blue,vis2D(4,4),10,s5187905,[c_r(copy_row_ntimes(1,2)),copy_row_ntimes(2,2)],1). 

Outputs:
rhs(trn_2,c(16,11),sameR,red,vis2D(3,3),8,sid_323,[]). 
rhs(trn_2,c(10,6),rot90,red,vis2D(3,4),10,sid_323,[c_r(copy_row_ntimes(2,2))]). 
rhs(trn_2,c(4,10),sameR,red,vis2D(4,3),10,sid_323,[c_r(copy_row_ntimes(2,2))]). 
rhs(trn_2,c(7,16),sameR,red,vis2D(4,4),12,sid_323,[c_r(copy_row_ntimes(2,2)),copy_row_ntimes(2,2)]). 



% Exam 1

Inputs:
lhs(tst_0,c(10,3),sameR,blue,vis2D(3,3),8,sid_323,[],1). 
lhs(tst_0,c(10,16),rot90,blue,vis2D(3,4),10,sid_323,[c_r(copy_row_ntimes(2,2))],1). 
lhs(tst_0,c(17,4),rot270,blue,vis2D(3,4),9,s5187905,[c_r(copy_row_ntimes(1,2))],missing). 
lhs(tst_0,c(15,9),sameR,blue,vis2D(4,3),9,s1201147,[rot90,c_r(copy_row_ntimes(1,3))],missing). 
lhs(tst_0,c(3,2),sameR,red,vis2D(5,3),13,s16201681,[],2). 
lhs(tst_0,c(4,8),sameR,blue,vis2D(4,4),10,s1201147,[rot90,c_r(copy_row_ntimes(1,3)),copy_row_ntimes(2,2)],missing). 
lhs(tst_0,c(4,17),sameR,blue,vis2D(5,4),16,s16201681,[copy_row_ntimes(2,2)],2). 
lhs(tst_0,c(15,16),sameR,blue,vis2D(5,5),19,s16201681,[rot90,c_r(copy_row_ntimes(2,3))],2). 


You have complete enough information so predict the rhs/8.


How was your response differnt from:
rhs(tst_0,c(10,3),sameR,blue,vis2D(3,3),8,sid_323,[]). 
rhs(tst_0,c(10,16),rot90,blue,vis2D(3,4),10,sid_323,[c_r(copy_row_ntimes(2,2))]). 
rhs(tst_0,c(17,4),rot270,blue,vis2D(3,4),9,s5187905,[c_r(copy_row_ntimes(1,2))]). 
rhs(tst_0,c(15,9),sameR,blue,vis2D(4,3),9,s1201147,[rot90,c_r(copy_row_ntimes(1,3))]). 
rhs(tst_0,c(9,10),rot90,red,vis2D(3,5),13,s16201681,[]). 
rhs(tst_0,c(3,2),sameR,red,vis2D(5,3),13,s16201681,[]). 
rhs(tst_0,c(4,8),sameR,blue,vis2D(4,4),10,s1201147,[rot90,c_r(copy_row_ntimes(1,3)),copy_row_ntimes(2,2)]). 
rhs(tst_0,c(4,17),sameR,red,vis2D(5,4),16,s16201681,[copy_row_ntimes(2,2)]). 
rhs(tst_0,c(15,16),sameR,red,vis2D(5,5),19,s16201681,[rot90,c_r(copy_row_ntimes(2,3))]). 
