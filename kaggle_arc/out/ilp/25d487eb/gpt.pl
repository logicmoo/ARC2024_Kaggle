% =======================================

Riddle t(25d487eb)

Always: 

 * lhs(...) are objects on an input grid and rhs(...) are objects on an output grid
 * Northwest corner of those grids are at nw_loc(1,1)
 * You will always receive enough information to predict the rhs/8 of Exam 1. This means it is not possible that there might be additional transformation rules or exceptions not covered in the provided examples. 
 * RHS Args
      Transformation ID
      Northwest corner location on grid
      Southeast corner location on grid
      Rotation
      Color
      Size
      Shape ID
      Actions that alter the Shape

 * LHS extends the RHS to include
      Child object count
      Internal Symbol counts printed on objects
      If a shape was compressed sometimes this changes the intial shape
      Center location
      object hight/width

 * This riddle operates in a world defined by certain rules and relationships between objects on an input and output grid.  
 * Input objects are often copied or a transformation is applied to the objects which modifies some of their properties.
 * Relocation transformations will usually be relative to some input object

Sometimes: 
 * Each input group will contain an outlier object and so the output transformation rule likely involves a combination of properties in outliers combined with rest of input objects.
 * New objects will make contact with grid edges





% Example 1 Group Input for grid (1,1)-(15,10)
lhs(trn_0,nw_loc(4,5),se_loc(4,5),sameR,blue,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(4,5),h_v_size=vis2D(1,1)). 
lhs(trn_0,nw_loc(4,3),se_loc(6,7),rot270,red,8,shapeid=s15750913,[],1,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=12000,'sym_extend_-_/_\\_|'=1120,'sym_node_*_+_@_~'=0],compressed_shapeid=s3724257,center(5,5),h_v_size=vis2D(3,5)). 


% Example 1 Group Output for grid (1,1)-(15,10)
rhs(trn_0,nw_loc(4,5),se_loc(4,5),sameR,blue,1,shapeid=sid_11,[]). 
rhs(trn_0,nw_loc(7,5),se_loc(15,5),sameR,blue,9,shapeid=sid_12,[make_solid_object(rect,9,1)]). 
rhs(trn_0,nw_loc(4,3),se_loc(6,7),rot270,red,8,shapeid=s15750913,[]). 


% Example 2 Group Input for grid (1,1)-(12,12)
lhs(trn_1,nw_loc(7,9),se_loc(7,9),sameR,green,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(7,9),h_v_size=vis2D(1,1)). 
lhs(trn_1,nw_loc(4,6),se_loc(10,9),sameR,cyan,15,shapeid=s8952751,[],1,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=20000,'sym_extend_-_/_\\_|'=3420,'sym_node_*_+_@_~'=10000],compressed_shapeid=s8860813,center(7,8),h_v_size=vis2D(7,4)). 


% Example 2 Group Output for grid (1,1)-(12,12)
rhs(trn_1,nw_loc(7,9),se_loc(7,9),sameR,green,1,shapeid=sid_11,[]). 
rhs(trn_1,nw_loc(4,6),se_loc(10,9),sameR,cyan,15,shapeid=s8952751,[]). 
rhs(trn_1,nw_loc(7,1),se_loc(7,5),rot90,green,5,shapeid=sid_12,[make_solid_object(rect,5,1)]). 


% Example 3 Group Input for grid (1,1)-(12,15)
lhs(trn_2,nw_loc(5,3),se_loc(5,3),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(5,3),h_v_size=vis2D(1,1)). 
lhs(trn_2,nw_loc(3,3),se_loc(7,5),rot180,green,8,shapeid=s15750913,[],1,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=12000,'sym_extend_-_/_\\_|'=1120,'sym_node_*_+_@_~'=0],compressed_shapeid=s3724257,center(5,4),h_v_size=vis2D(5,3)). 


% Example 3 Group Output for grid (1,1)-(12,15)
rhs(trn_2,nw_loc(5,3),se_loc(5,3),sameR,red,1,shapeid=sid_11,[]). 
rhs(trn_2,nw_loc(5,6),se_loc(5,15),rot90,red,10,shapeid=sid_12,[make_solid_object(rect,10,1)]). 
rhs(trn_2,nw_loc(3,3),se_loc(7,5),rot180,green,8,shapeid=s15750913,[]). 


% Exam 1 Group Input for grid (1,1)-(11,16)
lhs(tst_0,nw_loc(5,15),se_loc(5,15),sameR,cyan,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(5,15),h_v_size=vis2D(1,1)). 
lhs(tst_0,nw_loc(2,12),se_loc(8,15),sameR,yellow,15,shapeid=s8952751,[],1,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=20000,'sym_extend_-_/_\\_|'=3420,'sym_node_*_+_@_~'=10000],compressed_shapeid=s8860813,center(5,14),h_v_size=vis2D(7,4)). 


Explain the transformation rules and then show the resulting rhs/8 of Exam 1 in a codeblock
```prolog

% Exam 1 Group Output for grid (1,1)-(11,16)
```



Grade your response from:
```prolog
rhs(tst_0,nw_loc(5,15),se_loc(5,15),sameR,cyan,1,shapeid=sid_11,[]). 
rhs(tst_0,nw_loc(2,12),se_loc(8,15),sameR,yellow,15,shapeid=s8952751,[]). 
rhs(tst_0,nw_loc(5,1),se_loc(5,11),rot90,cyan,11,shapeid=sid_12,[make_solid_object(rect,11,1)]). 
```
if wrong, what rules did you miss?
