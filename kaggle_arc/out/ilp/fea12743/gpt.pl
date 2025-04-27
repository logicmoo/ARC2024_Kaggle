% =======================================

Riddle v(fea12743)

Always: 

 * object(...) are objects on an input grid and object(...) are objects on an output grid
 * Northwest corner of those grids are at nw_loc(1,1)
 * You will always receive enough information to predict the object/8 of Exam 1. This means it is not possible that there might be additional transformation rules or exceptions not covered in the provided examples. 
 * This riddle operates in a world defined by certain rules and relationships between objects on an input and output grid.  
 * Input objects are often copied or a transformation is applied to the objects which modifies some of their properties.
 * Relocation transformations will usually be relative to some input object

Sometimes: 
 * Each input group will contain an outlier object and so the output transformation rule likely involves a combination of properties in outliers combined with rest of input objects.
 * New objects will make contact with grid edges

We are going to create a depeandany mapping



Create an up to three level deep dependancy tree of LHS/RHS objects that would show the order in which they would be deduced.
The first level will be made of only RHS
2nd Level will be made of LHS objects that are require to deduce the first level
Next are 


 ¦    +- object(trn_0,nw_loc(10,10),se_loc(10,10),sameR,blue,1,sid_11,[])

Most RHS would be deduced by one or more LHS. Once a RHS is deduced it may be used deduce later RHSs.
Show these corispondances.

Some RHS objects can be deduced directly from one or more LHS objects (Some LHS objects will not be used)
Some RHS objects can be deduced directly from one or more RHS objects (these objects are often closest together vs the previous were farther apart).
Some RHS objects will be deduced from both.


To create such a dependency chart, we must identify the objects on the left-hand side (LHS) that contribute to the creation of each right-hand side (RHS) object. 

Based on the given examples you will give a comprehensive order deplicting the order of creating the RHS objects based on the provided transformations.

* Direct Copy LHS to RHS
* Copy LHS to RHS but change one property: location, color, orientation or shape
* Copy RHS to RHS changing only location
* Copy RHS to RHS changing only location and orientation
* Copy LHS to RHS but change two properties: location, color, orientation or shape
* Create a new RHS object combining properties from two objects
* Create a new RHS object combining properties from three objects
* Copy RHS to RHS but changing location but also change color or shape
* Copy but change two properties: location, color or shape



1. **ObjectID**: A unique identifier for each object that denotes color, size and center location.
2. **Northwest corner location on grid**: The grid coordinates for the northwesternmost point of the object.
3. **Southeast corner location on grid**: The grid coordinates for the southeasternmost point of the object.
4. **Rotation**: The rotation of the object which can be no rotation (sameR), 90-degree rotation (rot90), or 180-degree rotation (rot180).
5. **Color**: The color of the object.
6. **Size**: The size of the object. 
7. **Shape ID**: An identifier for the shape of the object.
In the left-hand-side (lhs) facts can be longer and mean:
8. **Child Count** 




Title: v(fea12743)

The provided facts represent transformations from an initial state (lhs) to a final state (rhs).
These transformations might involve changes in color, rotation, and size of objects.

Each fact describes an object in a 2-dimensional grid with the following properties:


1. **ObjectID**: A unique identifier that denotes color, size, xy of NW corner, xy of SE corner
2. **Rotation**:
3. **Shape ID**: An identifier for the normalized shape of the object.
4. **CenterXY**: Center of Mass
5. **TipXY**: Uniquely distanced point farthest from center of Mass
In the left-hand-side (lhs) facts can be longer and specialize the normalized shape


```prolog


%  Objects of Example 1 for input grid (1,1)-(11,16)
lhs(in0_black0_9_13_9_14,sameR,sid_1x2,cxy(9,14),txy(9,14),no_child). 
lhs(in0_red12_7_12_10_15,sameR,s14011369,cxy(9,14),txy(7,12),1). 
lhs(in0_red10_7_7_10_10,sameR,s5187905,cxy(9,9),txy(7,7),no_child). 
lhs(in0_red10_2_7_5_10,sameR,sid_u_3x2,cxy(4,9),txy(2,7),no_child). 
lhs(in0_red10_2_12_5_15,rot270,s16715379,cxy(3,14),txy(5,12),no_child). 
lhs(in0_red10_7_2_10_5,rot270,s16715379,cxy(8,4),txy(10,2),no_child). 
lhs(in0_red10_2_2_5_5,rot270,sid_u_3x2,cxy(3,4),txy(5,2),no_child). 


%  Objects of Example 1 for output grid (1,1)-(11,16)
rhs(out0_black0_9_13_9_14,sameR,sid_1x2,cxy(9,14),txy(9,14)). 
rhs(out0_black0_1_13_2_14,sameR,sid_1x1,cxy(2,14),txy(1,13)). 
rhs(out0_black0_10_8_11_9,sameR,sid_1x1,cxy(11,9),txy(10,8)). 
rhs(out0_black0_6_8_8_9,rot90,sid_1x2,cxy(7,9),txy(7,9)). 
rhs(out0_black0_9_3_11_4,rot90,sid_1x2,cxy(10,4),txy(10,4)). 
rhs(out0_black0_4_13_7_14,rot90,sid_1x2,cxy(6,14),txy(4,13)). 
rhs(out0_black0_1_8_4_9,rot90,sid_1x2,cxy(3,9),txy(4,16)). 
rhs(out0_black0_3_3_7_4,rot90,sid_1x2,cxy(5,4),txy(9,6)). 
rhs(out0_green12_7_12_10_15,sameR,s14011369,cxy(9,14),txy(7,12)). 
rhs(out0_red10_7_7_10_10,sameR,s5187905,cxy(9,9),txy(7,7)). 
rhs(out0_cyan10_2_7_5_10,sameR,sid_u_3x2,cxy(4,9),txy(2,7)). 
rhs(out0_red10_2_12_5_15,rot270,s16715379,cxy(3,14),txy(5,12)). 
rhs(out0_cyan10_7_2_10_5,rot270,s16715379,cxy(8,4),txy(10,2)). 
rhs(out0_red10_2_2_5_5,rot270,sid_u_3x2,cxy(3,4),txy(5,2)). 


%  Objects of Example 2 for input grid (1,1)-(11,16)
lhs(in1_red4_2_9_3_10,sameR,sid_1x1,cxy(3,10),txy(2,9),no_child). 
lhs(in1_red4_2_12_3_13,sameR,sid_1x1,cxy(3,13),txy(2,12),no_child). 
lhs(in1_red4_4_2_5_3,sameR,sid_1x1,cxy(5,3),txy(4,2),no_child). 
lhs(in1_red4_7_9_8_10,sameR,sid_1x1,cxy(8,10),txy(7,9),no_child). 
lhs(in1_red4_9_4_10_5,sameR,sid_1x1,cxy(10,5),txy(9,4),no_child). 
lhs(in1_red4_9_7_10_8,sameR,sid_1x1,cxy(10,8),txy(9,7),no_child). 
lhs(in1_red4_9_14_10_15,sameR,sid_1x1,cxy(10,15),txy(9,14),no_child). 
lhs(in1_red3_7_7_8_8,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(7,7),txy(7,7),1). 
lhs(in1_red3_9_9_10_10,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(10,10),txy(10,10),1). 
lhs(in1_black0_3_3_4_4,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(3,4),txy(3,4),no_child). 
lhs(in1_black0_3_8_4_9,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(4,8),txy(4,8),no_child). 
lhs(in1_black0_3_13_4_14,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(4,14),txy(4,14),no_child). 
lhs(in1_black0_8_3_9_4,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(8,3),txy(8,3),no_child). 
lhs(in1_black0_8_13_9_14,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(8,13),txy(8,13),no_child). 
lhs(in1_red9_7_2_10_5,rot180,s15713804,cxy(8,3),txy(8,3),2). 
lhs(in1_red9_7_12_10_15,rot180,s15713804,cxy(8,13),txy(8,13),2). 
lhs(in1_red9_2_2_5_5,rot270,s15713804,cxy(3,4),txy(3,4),2). 
lhs(in1_red9_2_7_5_10,rot90,s15713804,cxy(4,8),txy(4,8),2). 
lhs(in1_red9_2_12_5_15,sameR,s15713804,cxy(4,14),txy(4,14),2). 
lhs(in1_black0_8_8_8_8,sameR,sid_1x1,cxy(8,8),txy(8,8),no_child). 
lhs(in1_black0_9_9_9_9,sameR,sid_1x1,cxy(9,9),txy(9,9),no_child). 


%  Objects of Example 2 for output grid (1,1)-(11,16)
rhs(out1_cyan4_2_9_3_10,sameR,sid_1x1,cxy(3,10),txy(2,9)). 
rhs(out1_red4_2_12_3_13,sameR,sid_1x1,cxy(3,13),txy(2,12)). 
rhs(out1_cyan4_4_2_5_3,sameR,sid_1x1,cxy(5,3),txy(4,2)). 
rhs(out1_green4_7_9_8_10,sameR,sid_1x1,cxy(8,10),txy(7,9)). 
rhs(out1_red4_9_4_10_5,sameR,sid_1x1,cxy(10,5),txy(9,4)). 
rhs(out1_green4_9_7_10_8,sameR,sid_1x1,cxy(10,8),txy(9,7)). 
rhs(out1_red4_9_14_10_15,sameR,sid_1x1,cxy(10,15),txy(9,14)). 
rhs(out1_green3_7_7_8_8,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(7,7),txy(7,7)). 
rhs(out1_green3_9_9_10_10,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(10,10),txy(10,10)). 
rhs(out1_black0_3_3_4_4,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(3,4),txy(3,4)). 
rhs(out1_black0_3_8_4_9,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(4,8),txy(4,8)). 
rhs(out1_black0_3_13_4_14,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(4,14),txy(4,14)). 
rhs(out1_black0_8_3_9_4,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(8,3),txy(8,3)). 
rhs(out1_black0_8_13_9_14,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(8,13),txy(8,13)). 
rhs(out1_red9_7_2_10_5,rot180,s15713804,cxy(8,3),txy(8,3)). 
rhs(out1_red9_7_12_10_15,rot180,s15713804,cxy(8,13),txy(8,13)). 
rhs(out1_cyan9_2_2_5_5,rot270,s15713804,cxy(3,4),txy(3,4)). 
rhs(out1_cyan9_2_7_5_10,rot90,s15713804,cxy(4,8),txy(4,8)). 
rhs(out1_red9_2_12_5_15,sameR,s15713804,cxy(4,14),txy(4,14)). 
rhs(out1_black0_8_8_8_8,sameR,sid_1x1,cxy(8,8),txy(8,8)). 
rhs(out1_black0_9_9_9_9,sameR,sid_1x1,cxy(9,9),txy(9,9)). 


%  Objects of Example 3 for input grid (1,1)-(11,16)
lhs(in2_red2_7_3_7_4,rot90,sid_2x1,cxy(7,4),txy(7,4),no_child). 
lhs(in2_red2_10_3_10_4,rot90,sid_2x1,cxy(10,4),txy(10,4),no_child). 
lhs(in2_red2_8_7_9_7,sameR,sid_2x1,cxy(9,7),txy(9,7),no_child). 
lhs(in2_red2_8_10_9_10,sameR,sid_2x1,cxy(9,10),txy(9,10),no_child). 
lhs(in2_red4_3_2_4_3,sameR,sid_1x1,cxy(4,3),txy(3,2),no_child). 
lhs(in2_red4_3_9_4_10,sameR,sid_1x1,cxy(4,10),txy(3,9),no_child). 
lhs(in2_red4_3_14_4_15,sameR,sid_1x1,cxy(4,15),txy(3,14),no_child). 
lhs(in2_red4_4_3_5_4,sameR,sid_1x1,cxy(5,4),txy(4,3),no_child). 
lhs(in2_red4_7_13_8_14,sameR,sid_1x1,cxy(8,14),txy(7,13),no_child). 
lhs(in2_red4_8_2_9_3,sameR,sid_1x1,cxy(9,3),txy(8,2),no_child). 
lhs(in2_red4_9_8_10_9,sameR,sid_1x1,cxy(10,9),txy(9,8),no_child). 
lhs(in2_black0_1_1_2_2,sameR,sid_1x1,cxy(2,2),txy(1,1),no_child). 
lhs(in2_black0_1_15_2_16,sameR,sid_1x1,cxy(2,16),txy(1,15),no_child). 
lhs(in2_black0_10_1_11_2,sameR,sid_1x1,cxy(11,2),txy(10,1),no_child). 
lhs(in2_black0_10_15_11_16,sameR,sid_1x1,cxy(11,16),txy(10,15),no_child). 
lhs(in2_black0_5_15_7_16,rot90,sid_1x2,cxy(6,16),txy(6,16),no_child). 
lhs(in2_black0_6_8_8_9,rot90,sid_1x2,cxy(7,9),txy(7,9),no_child). 
lhs(in2_black0_8_4_9_6,sameR,sid_1x2,cxy(9,5),txy(9,5),no_child). 
lhs(in2_black0_10_5_11_7,sameR,sid_1x2,cxy(11,6),txy(11,6),no_child). 
lhs(in2_black0_10_10_11_12,sameR,sid_1x2,cxy(11,11),txy(11,11),no_child). 
lhs(in2_black0_5_1_7_2,rot90,sid_1x2,cxy(7,2),txy(5,1),no_child). 
lhs(in2_red4_8_13_10_15,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(9,14),txy(9,14),no_child). 
lhs(in2_red4_2_3_4_5,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(3,4),txy(3,4),1). 
lhs(in2_red4_2_12_4_14,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(3,13),txy(3,13),no_child). 
lhs(in2_red4_3_7_5_9,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(4,8),txy(4,8),no_child). 
lhs(in2_black0_5_10_7_12,sameR,sid_1x1,cxy(6,11),txy(6,11),no_child). 
lhs(in2_black0_5_5_7_7,sameR,sid_1x1,cxy(7,7),txy(11,11),no_child). 
lhs(in2_black0_5_5_11_6,rot90,sid_1x2,cxy(8,6),txy(8,6),no_child). 
lhs(in2_black0_5_11_11_12,rot90,sid_1x2,cxy(8,12),txy(8,12),no_child). 
lhs(in2_black0_5_10_6_16,sameR,sid_1x2,cxy(6,13),txy(6,13),no_child). 
lhs(in2_black0_6_5_7_12,sameR,sid_1x2,cxy(7,9),txy(6,5),no_child). 
lhs(in2_black0_1_5_2_12,sameR,sid_1x2,cxy(2,9),txy(1,5),no_child). 
lhs(in2_black0_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4),no_child). 


%  Objects of Example 3 for output grid (1,1)-(11,16)
rhs(out2_cyan2_7_3_7_4,rot90,sid_2x1,cxy(7,4),txy(7,4)). 
rhs(out2_cyan2_10_3_10_4,rot90,sid_2x1,cxy(10,4),txy(10,4)). 
rhs(out2_cyan2_8_7_9_7,sameR,sid_2x1,cxy(9,7),txy(9,7)). 
rhs(out2_cyan2_8_10_9_10,sameR,sid_2x1,cxy(9,10),txy(9,10)). 
rhs(out2_green4_3_2_4_3,sameR,sid_1x1,cxy(4,3),txy(3,2)). 
rhs(out2_red4_3_9_4_10,sameR,sid_1x1,cxy(4,10),txy(3,9)). 
rhs(out2_red4_3_14_4_15,sameR,sid_1x1,cxy(4,15),txy(3,14)). 
rhs(out2_green4_4_3_5_4,sameR,sid_1x1,cxy(5,4),txy(4,3)). 
rhs(out2_red4_7_13_8_14,sameR,sid_1x1,cxy(8,14),txy(7,13)). 
rhs(out2_cyan4_8_2_9_3,sameR,sid_1x1,cxy(9,3),txy(8,2)). 
rhs(out2_cyan4_9_8_10_9,sameR,sid_1x1,cxy(10,9),txy(9,8)). 
rhs(out2_black0_1_1_2_2,sameR,sid_1x1,cxy(2,2),txy(1,1)). 
rhs(out2_black0_1_15_2_16,sameR,sid_1x1,cxy(2,16),txy(1,15)). 
rhs(out2_black0_10_1_11_2,sameR,sid_1x1,cxy(11,2),txy(10,1)). 
rhs(out2_black0_10_15_11_16,sameR,sid_1x1,cxy(11,16),txy(10,15)). 
rhs(out2_black0_5_15_7_16,rot90,sid_1x2,cxy(6,16),txy(6,16)). 
rhs(out2_black0_6_8_8_9,rot90,sid_1x2,cxy(7,9),txy(7,9)). 
rhs(out2_black0_8_4_9_6,sameR,sid_1x2,cxy(9,5),txy(9,5)). 
rhs(out2_black0_10_5_11_7,sameR,sid_1x2,cxy(11,6),txy(11,6)). 
rhs(out2_black0_10_10_11_12,sameR,sid_1x2,cxy(11,11),txy(11,11)). 
rhs(out2_black0_5_1_7_2,rot90,sid_1x2,cxy(7,2),txy(5,1)). 
rhs(out2_red4_8_13_10_15,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(9,14),txy(9,14)). 
rhs(out2_green4_2_3_4_5,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(3,4),txy(3,4)). 
rhs(out2_red4_2_12_4_14,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(3,13),txy(3,13)). 
rhs(out2_red4_3_7_5_9,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(4,8),txy(4,8)). 
rhs(out2_black0_5_10_7_12,sameR,sid_1x1,cxy(6,11),txy(6,11)). 
rhs(out2_black0_5_5_7_7,sameR,sid_1x1,cxy(7,7),txy(11,11)). 
rhs(out2_black0_5_5_11_6,rot90,sid_1x2,cxy(8,6),txy(8,6)). 
rhs(out2_black0_5_11_11_12,rot90,sid_1x2,cxy(8,12),txy(8,12)). 
rhs(out2_black0_5_10_6_16,sameR,sid_1x2,cxy(6,13),txy(6,13)). 
rhs(out2_black0_6_5_7_12,sameR,sid_1x2,cxy(7,9),txy(6,5)). 
rhs(out2_black0_1_5_2_12,sameR,sid_1x2,cxy(2,9),txy(1,5)). 
rhs(out2_black0_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4)). 

```

I am looking for transformations based on the provided facts in the Prolog aboves.
They are going to be ordered transformations in this order:

direct_copy(object(LhsId), object(RhsId)).
copy_lhs_change_one_property(object(LhsId), object(RhsId), property(Property,Value)).
copy_rhs_with_location_change(object(OriginalRhsId), object(NewRhsId), location(Location)).
copy_rhs_with_location_and_orientation_change(object(OriginalRhsId), object(NewRhsId), location(Location), orientation(Orientation)).
copy_lhs_change_two_properties(object(LhsId), object(RhsId), property(Property1,Value), property(Property2,Value)).
create_object_from_two_rhs_objects(object(RhsId1), object(RhsId2), object(NewRhsId), property(Property1,Value), property(Property2,Value)).
create_object_from_three_rhs_objects(object(RhsId1), object(RhsId2), object(RhsId3), object(NewRhsId), property(Property1,Value), property(Property2,Value), property(Property3)).
copy_rhs_with_location_and_other_change(object(OriginalRhsId), object(NewRhsId), location(Location), property(Property,Value)).
copy_and_change_properties(object(OriginalId), object(NewId), [property(Property1,Value1),property(Property2,Value2)|...]).
create_object_from_scratch(object(NewId), [property(Property1,Value1),property(Property2,Value2)|...]).


For each example, List all possible pairings found in the transforms.

Dont respond in natural langauge, instead, create prolog syntax that would denote those transforms.



%  Objects of Exam 1 for input grid (1,1)-(11,16)
lhs(in0_red2_3_15_4_15,sameR,sid_2x1,cxy(4,15),txy(4,15),no_child). 
lhs(in0_red3_2_7_3_8,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(2,7),txy(2,7),no_child). 
lhs(in0_red3_7_4_8_5,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(7,5),txy(7,5),no_child). 
lhs(in0_red3_9_7_10_8,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(10,7),txy(10,7),no_child). 
lhs(in0_red3_4_4_5_5,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(5,5),txy(5,5),no_child). 
lhs(in0_red3_9_14_10_15,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(10,15),txy(10,15),no_child). 
lhs(in0_black0_3_13_4_14,sameR,sid_1x1,cxy(4,14),txy(3,13),no_child). 
lhs(in0_red4_3_8_5_10,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(4,9),txy(4,9),no_child). 
lhs(in0_red4_7_8_9_10,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(8,9),txy(8,9),no_child). 
lhs(in0_red4_2_2_4_4,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(3,3),txy(3,3),no_child). 
lhs(in0_red4_7_12_9_14,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(8,13),txy(8,13),no_child). 
lhs(in0_red4_8_2_10_4,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(9,3),txy(9,3),no_child). 
lhs(in0_red8_2_12_5_14,rot180,sid_u_3x2,cxy(4,13),txy(4,13),1). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(11,16)
```

Grade your response from:
```prolog
rhs(out0_green2_3_15_4_15,sameR,sid_2x1,cxy(4,15),txy(4,15)). 
rhs(out0_cyan3_2_7_3_8,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(2,7),txy(2,7)). 
rhs(out0_red3_7_4_8_5,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(7,5),txy(7,5)). 
rhs(out0_cyan3_9_7_10_8,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(10,7),txy(10,7)). 
rhs(out0_red3_4_4_5_5,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(5,5),txy(5,5)). 
rhs(out0_red3_9_14_10_15,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(10,15),txy(10,15)). 
rhs(out0_black0_3_13_4_14,sameR,sid_1x1,cxy(4,14),txy(3,13)). 
rhs(out0_cyan4_3_8_5_10,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(4,9),txy(4,9)). 
rhs(out0_cyan4_7_8_9_10,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(8,9),txy(8,9)). 
rhs(out0_red4_2_2_4_4,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(3,3),txy(3,3)). 
rhs(out0_red4_7_12_9_14,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(8,13),txy(8,13)). 
rhs(out0_red4_8_2_10_4,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(9,3),txy(9,3)). 
rhs(out0_green8_2_12_5_14,rot180,sid_u_3x2,cxy(4,13),txy(4,13)). 
```
if wrong, what rules did you miss?
