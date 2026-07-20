% =======================================

Riddle v(ae58858e)

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





% Example 1 Group Input for grid (1,1)-(8,10)
lhs(trn_0,nw_loc(6,7),se_loc(6,7),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(6,7),h_v_size=vis2D(1,1)). 
lhs(trn_0,nw_loc(7,9),se_loc(8,9),sameR,red,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(8,9),h_v_size=vis2D(2,1)). 
lhs(trn_0,nw_loc(1,9),se_loc(1,10),rot90,red,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(1,10),h_v_size=vis2D(1,2)). 
lhs(trn_0,nw_loc(3,8),se_loc(4,9),sameR,red,4,shapeid=sid_11,[make_solid_object(square,2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(4,9),h_v_size=vis2D(2,2)). 
lhs(trn_0,nw_loc(2,6),se_loc(4,6),sameR,red,3,shapeid=sid_12,[make_solid_object(rect,3,1)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(3,6),h_v_size=vis2D(3,1)). 
lhs(trn_0,nw_loc(6,2),se_loc(8,4),rot180,red,6,shapeid=s1961242,[copy_column_ntimes(1,2),as_rot(rollD,rollDR,copy_row_ntimes(1,2)),copy_row_ntimes(2,2),rot180],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242,center(7,3),h_v_size=vis2D(3,3)). 
lhs(trn_0,nw_loc(1,2),se_loc(3,3),sameR,red,4,shapeid=s1961242,[rot180,copy_column_ntimes(1,2),as_rot(rollD,rollDR,copy_row_ntimes(1,2))],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242,center(2,3),h_v_size=vis2D(3,2)). 


% Example 1 Group Output for grid (1,1)-(8,10)
rhs(trn_0,nw_loc(6,7),se_loc(6,7),sameR,red,1,shapeid=sid_11,[]). 
rhs(trn_0,nw_loc(7,9),se_loc(8,9),sameR,red,2,shapeid=sid_12,[]). 
rhs(trn_0,nw_loc(1,9),se_loc(1,10),rot90,red,2,shapeid=sid_12,[]). 
rhs(trn_0,nw_loc(3,8),se_loc(4,9),sameR,purple,4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_0,nw_loc(2,6),se_loc(4,6),sameR,red,3,shapeid=sid_12,[make_solid_object(rect,3,1)]). 
rhs(trn_0,nw_loc(6,2),se_loc(8,4),rot180,purple,6,shapeid=s1961242,[copy_column_ntimes(1,2),as_rot(rollD,rollDR,copy_row_ntimes(1,2)),copy_row_ntimes(2,2),rot180]). 
rhs(trn_0,nw_loc(1,2),se_loc(3,3),sameR,purple,4,shapeid=s1961242,[rot180,copy_column_ntimes(1,2),as_rot(rollD,rollDR,copy_row_ntimes(1,2))]). 


% Example 2 Group Input for grid (1,1)-(12,10)
lhs(trn_1,nw_loc(8,9),se_loc(8,9),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(8,9),h_v_size=vis2D(1,1)). 
lhs(trn_1,nw_loc(3,9),se_loc(3,9),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(3,9),h_v_size=vis2D(1,1)). 
lhs(trn_1,nw_loc(2,7),se_loc(2,7),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(2,7),h_v_size=vis2D(1,1)). 
lhs(trn_1,nw_loc(6,10),se_loc(7,10),sameR,red,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(7,10),h_v_size=vis2D(2,1)). 
lhs(trn_1,nw_loc(10,7),se_loc(12,9),rot90,red,7,shapeid=s15307279,[copy_column_ntimes(2,2),rot90],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=10000,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=s15307279,center(11,8),h_v_size=vis2D(3,3)). 
lhs(trn_1,nw_loc(5,6),se_loc(6,7),sameR,red,3,shapeid=s11261491,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491,center(6,7),h_v_size=vis2D(2,2)). 
lhs(trn_1,nw_loc(11,4),se_loc(11,5),rot90,red,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(11,5),h_v_size=vis2D(1,2)). 
lhs(trn_1,nw_loc(7,2),se_loc(8,4),rot270,red,5,shapeid=s11261491,[copy_column_ntimes(2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491,center(7,3),h_v_size=vis2D(2,3)). 
lhs(trn_1,nw_loc(1,2),se_loc(4,4),sameR,red,8,shapeid=s14864972,[copy_column_ntimes(2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=10020,'sym_node_*_+_@_~'=0],compressed_shapeid=s14864972,center(3,3),h_v_size=vis2D(4,3)). 


% Example 2 Group Output for grid (1,1)-(12,10)
rhs(trn_1,nw_loc(8,9),se_loc(8,9),sameR,red,1,shapeid=sid_11,[]). 
rhs(trn_1,nw_loc(3,9),se_loc(3,9),sameR,red,1,shapeid=sid_11,[]). 
rhs(trn_1,nw_loc(2,7),se_loc(2,7),sameR,red,1,shapeid=sid_11,[]). 
rhs(trn_1,nw_loc(6,10),se_loc(7,10),sameR,red,2,shapeid=sid_12,[]). 
rhs(trn_1,nw_loc(10,7),se_loc(12,9),rot90,purple,7,shapeid=s15307279,[copy_column_ntimes(2,2),rot90]). 
rhs(trn_1,nw_loc(5,6),se_loc(6,7),sameR,red,3,shapeid=s11261491,[]). 
rhs(trn_1,nw_loc(11,4),se_loc(11,5),rot90,red,2,shapeid=sid_12,[]). 
rhs(trn_1,nw_loc(7,2),se_loc(8,4),rot270,purple,5,shapeid=s11261491,[copy_column_ntimes(2,2)]). 
rhs(trn_1,nw_loc(1,2),se_loc(4,4),sameR,purple,8,shapeid=s14864972,[copy_column_ntimes(2,2)]). 


% Example 3 Group Input for grid (1,1)-(6,6)
lhs(trn_2,nw_loc(6,5),se_loc(6,5),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(6,5),h_v_size=vis2D(1,1)). 
lhs(trn_2,nw_loc(2,4),se_loc(2,4),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(2,4),h_v_size=vis2D(1,1)). 
lhs(trn_2,nw_loc(4,3),se_loc(4,3),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(4,3),h_v_size=vis2D(1,1)). 
lhs(trn_2,nw_loc(2,5),se_loc(4,6),sameR,red,4,shapeid=s11261491,[copy_column_ntimes(1,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491,center(3,6),h_v_size=vis2D(3,2)). 
lhs(trn_2,nw_loc(6,1),se_loc(6,2),rot90,red,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(6,2),h_v_size=vis2D(1,2)). 
lhs(trn_2,nw_loc(1,1),se_loc(2,2),sameR,red,4,shapeid=sid_11,[make_solid_object(square,2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(2,2),h_v_size=vis2D(2,2)). 


% Example 3 Group Output for grid (1,1)-(6,6)
rhs(trn_2,nw_loc(6,5),se_loc(6,5),sameR,red,1,shapeid=sid_11,[]). 
rhs(trn_2,nw_loc(2,4),se_loc(2,4),sameR,red,1,shapeid=sid_11,[]). 
rhs(trn_2,nw_loc(4,3),se_loc(4,3),sameR,red,1,shapeid=sid_11,[]). 
rhs(trn_2,nw_loc(2,5),se_loc(4,6),sameR,purple,4,shapeid=s11261491,[copy_column_ntimes(1,2)]). 
rhs(trn_2,nw_loc(6,1),se_loc(6,2),rot90,red,2,shapeid=sid_12,[]). 
rhs(trn_2,nw_loc(1,1),se_loc(2,2),sameR,purple,4,shapeid=sid_11,[make_solid_object(square,2,2)]). 


% Example 4 Group Input for grid (1,1)-(9,10)
lhs(trn_3,nw_loc(4,10),se_loc(4,10),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(4,10),h_v_size=vis2D(1,1)). 
lhs(trn_3,nw_loc(4,6),se_loc(4,6),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(4,6),h_v_size=vis2D(1,1)). 
lhs(trn_3,nw_loc(8,8),se_loc(8,9),rot90,red,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(8,9),h_v_size=vis2D(1,2)). 
lhs(trn_3,nw_loc(2,7),se_loc(3,7),sameR,red,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(3,7),h_v_size=vis2D(2,1)). 
lhs(trn_3,nw_loc(6,3),se_loc(8,4),flipV,red,4,shapeid=s1961242,[rot180,copy_column_ntimes(1,2),as_rot(rollD,rollDR,copy_row_ntimes(1,2))],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242,center(7,4),h_v_size=vis2D(3,2)). 
lhs(trn_3,nw_loc(2,2),se_loc(3,3),rot90,red,3,shapeid=s11261491,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491,center(3,2),h_v_size=vis2D(2,2)). 


% Example 4 Group Output for grid (1,1)-(9,10)
rhs(trn_3,nw_loc(4,10),se_loc(4,10),sameR,red,1,shapeid=sid_11,[]). 
rhs(trn_3,nw_loc(4,6),se_loc(4,6),sameR,red,1,shapeid=sid_11,[]). 
rhs(trn_3,nw_loc(8,8),se_loc(8,9),rot90,red,2,shapeid=sid_12,[]). 
rhs(trn_3,nw_loc(2,7),se_loc(3,7),sameR,red,2,shapeid=sid_12,[]). 
rhs(trn_3,nw_loc(6,3),se_loc(8,4),flipV,purple,4,shapeid=s1961242,[rot180,copy_column_ntimes(1,2),as_rot(rollD,rollDR,copy_row_ntimes(1,2))]). 
rhs(trn_3,nw_loc(2,2),se_loc(3,3),rot90,red,3,shapeid=s11261491,[]). 


% Exam 1 Group Input for grid (1,1)-(8,6)
lhs(tst_0,nw_loc(8,6),se_loc(8,6),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(8,6),h_v_size=vis2D(1,1)). 
lhs(tst_0,nw_loc(1,6),se_loc(1,6),sameR,red,1,shapeid=sid_11,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(1,6),h_v_size=vis2D(1,1)). 
lhs(tst_0,nw_loc(3,6),se_loc(4,6),sameR,red,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(4,6),h_v_size=vis2D(2,1)). 
lhs(tst_0,nw_loc(6,3),se_loc(7,4),sameR,red,4,shapeid=sid_11,[make_solid_object(square,2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(7,4),h_v_size=vis2D(2,2)). 
lhs(tst_0,nw_loc(1,2),se_loc(3,4),rot180,red,5,shapeid=s11068904,[flipH,as_rot(rollD,rollDR,copy_row_ntimes(2,2))],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11068904,center(2,3),h_v_size=vis2D(3,3)). 
lhs(tst_0,nw_loc(5,1),se_loc(7,1),sameR,red,3,shapeid=sid_12,[make_solid_object(rect,3,1)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(6,1),h_v_size=vis2D(3,1)). 


Explain the transformation rules and then show the resulting rhs/8 of Exam 1 in a codeblock
```prolog

% Exam 1 Group Output for grid (1,1)-(8,6)
```



Grade your response from:
```prolog
rhs(tst_0,nw_loc(8,6),se_loc(8,6),sameR,red,1,shapeid=sid_11,[]). 
rhs(tst_0,nw_loc(1,6),se_loc(1,6),sameR,red,1,shapeid=sid_11,[]). 
rhs(tst_0,nw_loc(3,6),se_loc(4,6),sameR,red,2,shapeid=sid_12,[]). 
rhs(tst_0,nw_loc(6,3),se_loc(7,4),sameR,purple,4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(tst_0,nw_loc(1,2),se_loc(3,4),rot180,purple,5,shapeid=s11068904,[flipH,as_rot(rollD,rollDR,copy_row_ntimes(2,2))]). 
rhs(tst_0,nw_loc(5,1),se_loc(7,1),sameR,red,3,shapeid=sid_12,[make_solid_object(rect,3,1)]). 
```
if wrong, what rules did you miss?
