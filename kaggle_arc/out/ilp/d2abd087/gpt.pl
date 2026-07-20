% =======================================

Riddle t(d2abd087)

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





% Example 1 Group Input for grid (1,1)-(10,10)
lhs(trn_0,nw_loc(2,8),se_loc(4,9),flipH,silver,5,shapeid=s11261491,[copy_column_ntimes(2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491,center(3,9),h_v_size=vis2D(3,2)). 
lhs(trn_0,nw_loc(6,6),se_loc(8,8),rot90,silver,6,shapeid=s12760807,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=10000],compressed_shapeid=s12760807,center(7,7),h_v_size=vis2D(3,3)). 
lhs(trn_0,nw_loc(3,3),se_loc(5,4),sameR,silver,6,shapeid=sid_12,[make_solid_object(rect,3,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(4,4),h_v_size=vis2D(3,2)). 


% Example 1 Group Output for grid (1,1)-(10,10)
rhs(trn_0,nw_loc(2,8),se_loc(4,9),flipH,blue,5,shapeid=s11261491,[copy_column_ntimes(2,2)]). 
rhs(trn_0,nw_loc(6,6),se_loc(8,8),rot90,red,6,shapeid=s12760807,[]). 
rhs(trn_0,nw_loc(3,3),se_loc(5,4),sameR,red,6,shapeid=sid_12,[make_solid_object(rect,3,2)]). 


% Example 2 Group Input for grid (1,1)-(10,10)
lhs(trn_1,nw_loc(2,8),se_loc(3,9),sameR,silver,4,shapeid=sid_11,[make_solid_object(square,2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(3,9),h_v_size=vis2D(2,2)). 
lhs(trn_1,nw_loc(6,7),se_loc(7,9),rot90,silver,6,shapeid=sid_12,[make_solid_object(rect,3,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(7,8),h_v_size=vis2D(2,3)). 
lhs(trn_1,nw_loc(9,5),se_loc(9,6),rot90,silver,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(9,6),h_v_size=vis2D(1,2)). 
lhs(trn_1,nw_loc(3,5),se_loc(6,5),sameR,silver,4,shapeid=sid_12,[make_solid_object(rect,4,1)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(5,5),h_v_size=vis2D(4,1)). 
lhs(trn_1,nw_loc(1,2),se_loc(4,3),sameR,silver,6,shapeid=s15307279,[copy_column_ntimes(2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=10000,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=s15307279,center(3,3),h_v_size=vis2D(4,2)). 
lhs(trn_1,nw_loc(7,1),se_loc(9,3),sameR,silver,5,shapeid=s15307279,[rot90,copy_column_ntimes(1,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=10000,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=s15307279,center(8,2),h_v_size=vis2D(3,3)). 


% Example 2 Group Output for grid (1,1)-(10,10)
rhs(trn_1,nw_loc(2,8),se_loc(3,9),sameR,blue,4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_1,nw_loc(6,7),se_loc(7,9),rot90,red,6,shapeid=sid_12,[make_solid_object(rect,3,2)]). 
rhs(trn_1,nw_loc(9,5),se_loc(9,6),rot90,blue,2,shapeid=sid_12,[]). 
rhs(trn_1,nw_loc(3,5),se_loc(6,5),sameR,blue,4,shapeid=sid_12,[make_solid_object(rect,4,1)]). 
rhs(trn_1,nw_loc(1,2),se_loc(4,3),sameR,red,6,shapeid=s15307279,[copy_column_ntimes(2,2)]). 
rhs(trn_1,nw_loc(7,1),se_loc(9,3),sameR,blue,5,shapeid=s15307279,[rot90,copy_column_ntimes(1,2)]). 


% Example 3 Group Input for grid (1,1)-(10,10)
lhs(trn_2,nw_loc(2,8),se_loc(5,10),rot270,silver,7,shapeid=s10665738,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=10000,'sym_extend_-_/_\\_|'=10000,'sym_node_*_+_@_~'=10000],compressed_shapeid=s841047,center(3,9),h_v_size=vis2D(4,3)). 
lhs(trn_2,nw_loc(2,6),se_loc(3,6),sameR,silver,2,shapeid=sid_12,[],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(3,6),h_v_size=vis2D(2,1)). 
lhs(trn_2,nw_loc(10,5),se_loc(10,7),rot90,silver,3,shapeid=sid_12,[make_solid_object(rect,3,1)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(10,6),h_v_size=vis2D(1,3)). 
lhs(trn_2,nw_loc(5,5),se_loc(7,7),sameR,silver,6,shapeid=s1961242,[rot180,copy_column_ntimes(1,2),as_rot(rollD,rollDR,copy_row_ntimes(1,2)),copy_row_ntimes(2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242,center(6,6),h_v_size=vis2D(3,3)). 
lhs(trn_2,nw_loc(5,2),se_loc(6,3),sameR,silver,4,shapeid=sid_11,[make_solid_object(square,2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11,center(6,3),h_v_size=vis2D(2,2)). 
lhs(trn_2,nw_loc(8,1),se_loc(10,4),flipDHV,silver,6,shapeid=s11261491,[copy_column_ntimes(1,3),copy_row_ntimes(1,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491,center(9,2),h_v_size=vis2D(3,4)). 
lhs(trn_2,nw_loc(1,1),se_loc(3,4),rot90,silver,7,shapeid=s7610329,[copy_column_ntimes(1,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=21000,'sym_extend_-_/_\\_|'=10110,'sym_node_*_+_@_~'=0],compressed_shapeid=s7610329,center(2,2),h_v_size=vis2D(3,4)). 


% Example 3 Group Output for grid (1,1)-(10,10)
rhs(trn_2,nw_loc(2,8),se_loc(5,10),rot270,blue,7,shapeid=s10665738,[]). 
rhs(trn_2,nw_loc(2,6),se_loc(3,6),sameR,blue,2,shapeid=sid_12,[]). 
rhs(trn_2,nw_loc(10,5),se_loc(10,7),rot90,blue,3,shapeid=sid_12,[make_solid_object(rect,3,1)]). 
rhs(trn_2,nw_loc(5,5),se_loc(7,7),sameR,red,6,shapeid=s1961242,[rot180,copy_column_ntimes(1,2),as_rot(rollD,rollDR,copy_row_ntimes(1,2)),copy_row_ntimes(2,2)]). 
rhs(trn_2,nw_loc(5,2),se_loc(6,3),sameR,blue,4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_2,nw_loc(8,1),se_loc(10,4),flipDHV,red,6,shapeid=s11261491,[copy_column_ntimes(1,3),copy_row_ntimes(1,2)]). 
rhs(trn_2,nw_loc(1,1),se_loc(3,4),rot90,blue,7,shapeid=s7610329,[copy_column_ntimes(1,2)]). 


% Exam 1 Group Input for grid (1,1)-(10,10)
lhs(tst_0,nw_loc(2,9),se_loc(6,9),sameR,silver,5,shapeid=sid_12,[make_solid_object(rect,5,1)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(4,9),h_v_size=vis2D(5,1)). 
lhs(tst_0,nw_loc(8,5),se_loc(8,8),rot90,silver,4,shapeid=sid_12,[make_solid_object(rect,4,1)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_12,center(8,7),h_v_size=vis2D(1,4)). 
lhs(tst_0,nw_loc(2,5),se_loc(5,6),flipH,silver,6,shapeid=s11261491,[c_r(and(copy_row_ntimes(2,2),copy_row_ntimes(1,2)))],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491,center(3,6),h_v_size=vis2D(4,2)). 
lhs(tst_0,nw_loc(6,1),se_loc(8,3),rot90,silver,6,shapeid=s12561063,[flipDHV,copy_column_ntimes(2,2)],no_child,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242,center(7,2),h_v_size=vis2D(3,3)). 
lhs(tst_0,nw_loc(1,1),se_loc(4,3),sameR,silver,8,shapeid=s15307279,[copy_column_ntimes(2,2),copy_row_ntimes(1,2)],1,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=10000,'sym_extend_-_/_\\_|'=20,'sym_node_*_+_@_~'=0],compressed_shapeid=s15307279,center(3,2),h_v_size=vis2D(4,3)). 


Explain the transformation rules and then show the resulting rhs/8 of Exam 1 in a codeblock
```prolog

% Exam 1 Group Output for grid (1,1)-(10,10)
```



Grade your response from:
```prolog
rhs(tst_0,nw_loc(2,9),se_loc(6,9),sameR,blue,5,shapeid=sid_12,[make_solid_object(rect,5,1)]). 
rhs(tst_0,nw_loc(8,5),se_loc(8,8),rot90,blue,4,shapeid=sid_12,[make_solid_object(rect,4,1)]). 
rhs(tst_0,nw_loc(2,5),se_loc(5,6),flipH,red,6,shapeid=s11261491,[c_r(and(copy_row_ntimes(2,2),copy_row_ntimes(1,2)))]). 
rhs(tst_0,nw_loc(6,1),se_loc(8,3),rot90,red,6,shapeid=s12561063,[flipDHV,copy_column_ntimes(2,2)]). 
rhs(tst_0,nw_loc(1,1),se_loc(4,3),sameR,blue,8,shapeid=s15307279,[copy_column_ntimes(2,2),copy_row_ntimes(1,2)]). 
```
if wrong, what rules did you miss?
