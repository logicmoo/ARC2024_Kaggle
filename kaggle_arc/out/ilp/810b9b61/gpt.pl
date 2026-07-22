% Riddle t(810b9b61)



% Example 1

Inputs:
lhs(trn_0,c(4,8),sameR,blue,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_0,c(7,14),sameR,blue,vis2D(2,1),2,sid_12,[],missing). 
lhs(trn_0,c(13,14),sameR,blue,vis2D(4,3),10,sid_323,[c_r(copy_row_ntimes(2,2))],1). 
lhs(trn_0,c(2,13),rot90,blue,vis2D(3,4),10,sid_323,[c_r(copy_row_ntimes(2,2))],1). 
lhs(trn_0,c(9,10),sameR,blue,vis2D(4,4),12,sid_323,[c_r(copy_row_ntimes(2,2)),copy_row_ntimes(2,2)],1). 
lhs(trn_0,c(13,7),rot180,blue,vis2D(2,2),3,s11261491,[],missing). 
lhs(trn_0,c(5,4),sameR,blue,vis2D(4,3),10,sid_323,[c_r(copy_row_ntimes(2,2))],1). 
lhs(trn_0,c(12,3),rot90,blue,vis2D(3,3),7,s1201147,[c_r(copy_row_ntimes(1,2)),rot90],missing). 

Outputs:
rhs(trn_0,c(4,8),sameR,blue,vis2D(1,1),1,sid_11,[]). 
rhs(trn_0,c(7,14),sameR,blue,vis2D(2,1),2,sid_12,[]). 
rhs(trn_0,c(13,14),sameR,green,vis2D(4,3),10,sid_323,[c_r(copy_row_ntimes(2,2))]). 
rhs(trn_0,c(2,13),rot90,green,vis2D(3,4),10,sid_323,[c_r(copy_row_ntimes(2,2))]). 
rhs(trn_0,c(9,10),sameR,green,vis2D(4,4),12,sid_323,[c_r(copy_row_ntimes(2,2)),copy_row_ntimes(2,2)]). 
rhs(trn_0,c(13,7),rot180,blue,vis2D(2,2),3,s11261491,[]). 
rhs(trn_0,c(5,4),sameR,green,vis2D(4,3),10,sid_323,[c_r(copy_row_ntimes(2,2))]). 
rhs(trn_0,c(12,3),rot90,blue,vis2D(3,3),7,s1201147,[c_r(copy_row_ntimes(1,2)),rot90]). 



% Example 2

Inputs:
lhs(trn_1,c(5,9),sameR,blue,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_1,c(12,10),sameR,blue,vis2D(4,3),9,s15380612,[],missing). 
lhs(trn_1,c(11,5),rot90,blue,vis2D(1,2),2,sid_12,[],missing). 
lhs(trn_1,c(6,5),sameR,blue,vis2D(3,3),8,sid_323,[],1). 

Outputs:
rhs(trn_1,c(5,9),sameR,blue,vis2D(1,1),1,sid_11,[]). 
rhs(trn_1,c(12,10),sameR,blue,vis2D(4,3),9,s15380612,[]). 
rhs(trn_1,c(11,5),rot90,blue,vis2D(1,2),2,sid_12,[]). 
rhs(trn_1,c(6,5),sameR,green,vis2D(3,3),8,sid_323,[]). 



% Example 3

Inputs:
lhs(trn_2,c(6,8),sameR,blue,vis2D(2,1),2,sid_12,[],missing). 
lhs(trn_2,c(2,8),rot90,blue,vis2D(2,3),4,s11261491,[c_r(copy_row_ntimes(1,2))],1). 
lhs(trn_2,c(4,4),sameR,blue,vis2D(5,3),12,sid_323,[c_r(copy_row_ntimes(2,3))],1). 

Outputs:
rhs(trn_2,c(6,8),sameR,blue,vis2D(2,1),2,sid_12,[]). 
rhs(trn_2,c(2,8),rot90,blue,vis2D(2,3),4,s11261491,[c_r(copy_row_ntimes(1,2))]). 
rhs(trn_2,c(4,4),sameR,green,vis2D(5,3),12,sid_323,[c_r(copy_row_ntimes(2,3))]). 



% Exam 1

Inputs:
lhs(tst_0,c(12,9),sameR,blue,vis2D(1,1),1,sid_11,[],missing). 
lhs(tst_0,c(2,9),sameR,blue,vis2D(1,1),1,sid_11,[],missing). 
lhs(tst_0,c(7,10),sameR,blue,vis2D(5,4),14,sid_323,[c_r(copy_row_ntimes(2,3)),copy_row_ntimes(2,2)],1). 
lhs(tst_0,c(3,7),sameR,blue,vis2D(2,1),2,sid_12,[],missing). 
lhs(tst_0,c(4,3),sameR,blue,vis2D(4,3),10,sid_323,[c_r(copy_row_ntimes(2,2))],1). 
lhs(tst_0,c(10,3),rot90,blue,vis2D(5,5),15,s8244041,[c_r(copy_row_ntimes(2,3)),rot90],missing). 

Sometimes misleading advice: 
 maybe identify one outlier object in each input different than the rest as far as how it transforms.   
 the transformation rule likely involves a combination of other property in the outlier when combined with rest of object.

You have complete enough information so predict the rhs/8.


How was your response differnt from:
rhs(tst_0,c(12,9),sameR,blue,vis2D(1,1),1,sid_11,[]). 
rhs(tst_0,c(2,9),sameR,blue,vis2D(1,1),1,sid_11,[]). 
rhs(tst_0,c(7,10),sameR,green,vis2D(5,4),14,sid_323,[c_r(copy_row_ntimes(2,3)),copy_row_ntimes(2,2)]). 
rhs(tst_0,c(3,7),sameR,blue,vis2D(2,1),2,sid_12,[]). 
rhs(tst_0,c(4,3),sameR,green,vis2D(4,3),10,sid_323,[c_r(copy_row_ntimes(2,2))]). 
rhs(tst_0,c(10,3),rot90,blue,vis2D(5,5),15,s8244041,[c_r(copy_row_ntimes(2,3)),rot90]). 
