% Riddle t(aedd82e4)



% Example 1

Inputs:
lhs(trn_0,c(3,3),rot90,black,vis2D(2,1),2,sid_21,[],missing). 
lhs(trn_0,c(1,2),sameR,black,vis2D(1,2),2,sid_21,[],missing). 
lhs(trn_0,c(3,2),sameR,red,vis2D(2,2),4,sid_11,[make_solid_object(square,2,2)],missing). 
lhs(trn_0,c(1,3),sameR,red,vis2D(1,1),1,sid_11,[],missing). 

Outputs:
rhs(trn_0,c(1,3),sameR,blue,vis2D(1,1),1,sid_11,[]). 



% Example 2

Inputs:
lhs(trn_1,c(2,1),rot180,red,vis2D(3,2),4,s15307279,[],missing). 
lhs(trn_1,c(2,4),sameR,red,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_1,c(4,3),sameR,red,vis2D(1,1),1,sid_11,[],missing). 

Outputs:
rhs(trn_1,c(2,4),sameR,blue,vis2D(1,1),1,sid_11,[]). 
rhs(trn_1,c(4,3),sameR,blue,vis2D(1,1),1,sid_11,[]). 



% Example 3

Inputs:
lhs(trn_2,c(3,5),sameR,red,vis2D(3,1),3,sid_12,[make_solid_object(rect,3,1)],missing). 
lhs(trn_2,c(2,2),rot90,red,vis2D(2,3),5,s1201147,[],1). 
lhs(trn_2,c(1,2),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_2,c(4,3),sameR,red,vis2D(1,1),1,sid_11,[],missing). 

Outputs:
rhs(trn_2,c(4,3),sameR,blue,vis2D(1,1),1,sid_11,[]). 



% Example 4

Inputs:
lhs(trn_3,c(3,3),rot90,red,vis2D(2,2),2,s1961242,[rot180,as_rot(rollD,rollDR,copy_row_ntimes(1,2))],2). 
lhs(trn_3,c(1,1),rot180,red,vis2D(2,2),3,s11261491,[],1). 
lhs(trn_3,c(1,3),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_3,c(2,2),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_3,c(3,1),sameR,black,vis2D(1,1),1,sid_11,[],missing). 
lhs(trn_3,c(3,3),sameR,black,vis2D(1,1),1,sid_11,[],missing). 

Outputs:
rhs(trn_3,c(3,3),rot90,blue,vis2D(2,2),2,s1961242,[rot180,as_rot(rollD,rollDR,copy_row_ntimes(1,2))]). 
rhs(trn_3,c(3,3),sameR,black,vis2D(1,1),1,sid_11,[]). 



% Exam 1

Inputs:
lhs(tst_0,c(4,5),sameR,red,vis2D(2,1),2,sid_12,[],missing). 
lhs(tst_0,c(2,1),rot90,red,vis2D(2,2),3,s11261491,[],missing). 
lhs(tst_0,c(1,4),sameR,red,vis2D(1,1),1,sid_11,[],missing). 
lhs(tst_0,c(3,3),sameR,red,vis2D(1,1),1,sid_11,[],missing). 
lhs(tst_0,c(4,1),sameR,red,vis2D(1,1),1,sid_11,[],missing). 

Sometimes misleading advice: 
 maybe identify one outlier object in each input different than the rest as far as how it transforms.   
 the transformation rule likely involves a combination of other property in the outlier when combined with rest of object.

You have complete enough information so predict the rhs/8.


How was your response differnt from:
rhs(tst_0,c(4,5),sameR,red,vis2D(2,1),2,sid_12,[]). 
rhs(tst_0,c(2,1),rot90,red,vis2D(2,2),3,s11261491,[]). 
rhs(tst_0,c(1,4),sameR,blue,vis2D(1,1),1,sid_11,[]). 
rhs(tst_0,c(3,3),sameR,blue,vis2D(1,1),1,sid_11,[]). 
rhs(tst_0,c(4,1),sameR,blue,vis2D(1,1),1,sid_11,[]). 
