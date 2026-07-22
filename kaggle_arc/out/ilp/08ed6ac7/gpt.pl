% =======================================

Riddle t(08ed6ac7)

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





% Example 1 Group Input for grid (1,1)-(9,9)
lhs(trn_0,nw_loc(8,7),se_loc(8,9),rot90,silver,3,sid_12,[make_solid_object(rect,3,1)],no_child). 
lhs(trn_0,nw_loc(4,4),se_loc(4,9),rot90,silver,6,sid_12,[make_solid_object(rect,6,1)],no_child). 
lhs(trn_0,nw_loc(2,2),se_loc(2,9),rot90,silver,8,sid_12,[make_solid_object(rect,8,1)],no_child). 
lhs(trn_0,nw_loc(6,1),se_loc(6,9),rot90,silver,9,sid_12,[make_solid_object(rect,9,1)],no_child). 


% Example 1 Group Output for grid (1,1)-(9,9)
rhs(trn_0,nw_loc(8,7),se_loc(8,9),rot90,yellow,3,sid_12,[make_solid_object(rect,3,1)]). 
rhs(trn_0,nw_loc(4,4),se_loc(4,9),rot90,green,6,sid_12,[make_solid_object(rect,6,1)]). 
rhs(trn_0,nw_loc(2,2),se_loc(2,9),rot90,red,8,sid_12,[make_solid_object(rect,8,1)]). 
rhs(trn_0,nw_loc(6,1),se_loc(6,9),rot90,blue,9,sid_12,[make_solid_object(rect,9,1)]). 


% Example 2 Group Input for grid (1,1)-(9,9)
lhs(trn_1,nw_loc(2,8),se_loc(2,9),rot90,silver,2,sid_12,[],no_child). 
lhs(trn_1,nw_loc(6,6),se_loc(6,9),rot90,silver,4,sid_12,[make_solid_object(rect,4,1)],no_child). 
lhs(trn_1,nw_loc(4,5),se_loc(4,9),rot90,silver,5,sid_12,[make_solid_object(rect,5,1)],no_child). 
lhs(trn_1,nw_loc(8,2),se_loc(8,9),rot90,silver,8,sid_12,[make_solid_object(rect,8,1)],no_child). 


% Example 2 Group Output for grid (1,1)-(9,9)
rhs(trn_1,nw_loc(2,8),se_loc(2,9),rot90,yellow,2,sid_12,[]). 
rhs(trn_1,nw_loc(6,6),se_loc(6,9),rot90,green,4,sid_12,[make_solid_object(rect,4,1)]). 
rhs(trn_1,nw_loc(4,5),se_loc(4,9),rot90,red,5,sid_12,[make_solid_object(rect,5,1)]). 
rhs(trn_1,nw_loc(8,2),se_loc(8,9),rot90,blue,8,sid_12,[make_solid_object(rect,8,1)]). 


% Exam 1 Group Input for grid (1,1)-(9,9)
lhs(tst_0,nw_loc(4,7),se_loc(4,9),rot90,silver,3,sid_12,[make_solid_object(rect,3,1)],no_child). 
lhs(tst_0,nw_loc(8,5),se_loc(8,9),rot90,silver,5,sid_12,[make_solid_object(rect,5,1)],no_child). 
lhs(tst_0,nw_loc(6,3),se_loc(6,9),rot90,silver,7,sid_12,[make_solid_object(rect,7,1)],no_child). 
lhs(tst_0,nw_loc(2,2),se_loc(2,9),rot90,silver,8,sid_12,[make_solid_object(rect,8,1)],no_child). 


Explain the transformation rules and then show the resulting rhs/8 of Exam 1 in a codeblock
```prolog

% Exam 1 Group Output for grid (1,1)-(9,9)
```



Grade your response from:
```prolog
rhs(tst_0,nw_loc(4,7),se_loc(4,9),rot90,yellow,3,sid_12,[make_solid_object(rect,3,1)]). 
rhs(tst_0,nw_loc(8,5),se_loc(8,9),rot90,green,5,sid_12,[make_solid_object(rect,5,1)]). 
rhs(tst_0,nw_loc(6,3),se_loc(6,9),rot90,red,7,sid_12,[make_solid_object(rect,7,1)]). 
rhs(tst_0,nw_loc(2,2),se_loc(2,9),rot90,blue,8,sid_12,[make_solid_object(rect,8,1)]). 
```
if wrong, what rules did you miss?
