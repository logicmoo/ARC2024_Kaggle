% =======================================

Riddle v(4e45f183)

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


%  Objects of Example 1 for input grid (1,1)-(19,19)
lhs(in0_cyan3_11_17_12_18,sameR,s11261491,cxy(12,18),txy(12,18),no_child). 
lhs(in0_cyan3_5_17_6_18,sameR,s11261491,cxy(6,18),txy(6,18),no_child). 
lhs(in0_cyan3_2_17_3_18,rot270,s11261491,cxy(2,18),txy(2,18),no_child). 
lhs(in0_cyan3_17_14_18_15,rot90,s11261491,cxy(18,14),txy(18,14),no_child). 
lhs(in0_blue22_14_14_18_18,rot270,sid_right_triangle_se_3x3,cxy(16,16),txy(16,16),1). 
lhs(in0_blue22_8_14_12_18,rot180,sid_right_triangle_se_3x3,cxy(10,16),txy(10,16),1). 
lhs(in0_blue19_2_14_6_18,rot90,s2597236,cxy(4,15),txy(4,15),2). 
lhs(in0_cyan3_14_11_15_12,rot270,s11261491,cxy(14,12),txy(14,12),no_child). 
lhs(in0_cyan3_11_11_12_12,sameR,s11261491,cxy(12,12),txy(12,12),no_child). 
lhs(in0_blue19_14_8_18_12,sameR,s2597236,cxy(17,10),txy(17,10),2). 
lhs(in0_cyan3_14_8_15_9,rot180,s11261491,cxy(14,8),txy(14,8),no_child). 
lhs(in0_cyan3_11_8_12_9,rot90,s11261491,cxy(12,8),txy(12,8),no_child). 
lhs(in0_blue19_8_8_12_12,rot270,s2597236,cxy(9,10),txy(9,10),2). 
lhs(in0_cyan3_5_8_6_9,rot90,s11261491,cxy(6,8),txy(6,8),no_child). 
lhs(in0_blue19_2_8_6_12,sameR,s2597236,cxy(4,11),txy(4,11),2). 
lhs(in0_cyan3_2_8_3_9,rot180,s11261491,cxy(2,8),txy(2,8),no_child). 
lhs(in0_cyan3_14_5_15_6,rot270,s11261491,cxy(14,6),txy(14,6),no_child). 
lhs(in0_cyan3_5_5_6_6,sameR,s11261491,cxy(6,6),txy(6,6),no_child). 
lhs(in0_cyan3_2_5_3_6,rot270,s11261491,cxy(2,6),txy(2,6),no_child). 
lhs(in0_blue22_14_2_18_6,rot90,sid_right_triangle_se_3x3,cxy(16,4),txy(16,4),1). 
lhs(in0_blue22_8_2_12_6,sameR,sid_right_triangle_se_3x3,cxy(10,4),txy(10,4),1). 
lhs(in0_cyan3_8_2_9_3,rot180,s11261491,cxy(8,2),txy(8,2),no_child). 
lhs(in0_cyan3_5_2_6_3,rot90,s11261491,cxy(6,2),txy(6,2),no_child). 
lhs(in0_blue13_2_2_6_6,sameR,s16703854,cxy(4,4),txy(4,4),4). 
lhs(in0_cyan3_2_2_3_3,rot180,s11261491,cxy(2,2),txy(2,2),no_child). 


%  Objects of Example 1 for output grid (1,1)-(19,19)
rhs(out0_cyan3_17_17_18_18,sameR,s11261491,cxy(18,18),txy(18,18)). 
rhs(out0_cyan3_11_17_12_18,sameR,s11261491,cxy(12,18),txy(12,18)). 
rhs(out0_cyan3_8_17_9_18,rot270,s11261491,cxy(8,18),txy(8,18)). 
rhs(out0_cyan3_2_17_3_18,rot270,s11261491,cxy(2,18),txy(2,18)). 
rhs(out0_blue22_14_14_18_18,rot180,sid_right_triangle_se_3x3,cxy(16,16),txy(16,16)). 
rhs(out0_blue19_8_14_12_18,rot90,s2597236,cxy(10,15),txy(10,15)). 
rhs(out0_blue22_2_14_6_18,rot90,sid_right_triangle_se_3x3,cxy(4,16),txy(4,16)). 
rhs(out0_cyan3_17_11_18_12,sameR,s11261491,cxy(18,12),txy(18,12)). 
rhs(out0_cyan3_11_11_12_12,sameR,s11261491,cxy(12,12),txy(12,12)). 
rhs(out0_cyan3_8_11_9_12,rot270,s11261491,cxy(8,12),txy(8,12)). 
rhs(out0_cyan3_2_11_3_12,rot270,s11261491,cxy(2,12),txy(2,12)). 
rhs(out0_cyan3_17_8_18_9,rot90,s11261491,cxy(18,8),txy(18,8)). 
rhs(out0_blue19_14_8_18_12,rot270,s2597236,cxy(15,10),txy(15,10)). 
rhs(out0_cyan3_11_8_12_9,rot90,s11261491,cxy(12,8),txy(12,8)). 
rhs(out0_blue13_8_8_12_12,sameR,s16703854,cxy(10,10),txy(10,10)). 
rhs(out0_cyan3_8_8_9_9,rot180,s11261491,cxy(8,8),txy(8,8)). 
rhs(out0_blue19_2_8_6_12,sameR,s2597236,cxy(5,10),txy(5,10)). 
rhs(out0_cyan3_2_8_3_9,rot180,s11261491,cxy(2,8),txy(2,8)). 
rhs(out0_cyan3_17_2_18_3,rot90,s11261491,cxy(18,2),txy(18,2)). 
rhs(out0_blue22_14_2_18_6,rot270,sid_right_triangle_se_3x3,cxy(16,4),txy(16,4)). 
rhs(out0_cyan3_11_2_12_3,rot90,s11261491,cxy(12,2),txy(12,2)). 
rhs(out0_blue19_8_2_12_6,sameR,s2597236,cxy(10,5),txy(10,5)). 
rhs(out0_cyan3_8_2_9_3,rot180,s11261491,cxy(8,2),txy(8,2)). 
rhs(out0_blue22_2_2_6_6,sameR,sid_right_triangle_se_3x3,cxy(4,4),txy(4,4)). 
rhs(out0_cyan3_2_2_3_3,rot180,s11261491,cxy(2,2),txy(2,2)). 


%  Objects of Example 2 for input grid (1,1)-(19,19)
lhs(in1_red1_6_18_6_18,sameR,sid_1x1,cxy(6,18),txy(6,18),no_child). 
lhs(in1_red1_2_18_2_18,sameR,sid_1x1,cxy(2,18),txy(2,18),no_child). 
lhs(in1_red1_5_17_5_17,sameR,sid_1x1,cxy(5,17),txy(5,17),no_child). 
lhs(in1_red1_3_17_3_17,sameR,sid_1x1,cxy(3,17),txy(3,17),no_child). 
lhs(in1_red1_5_15_5_15,sameR,sid_1x1,cxy(5,15),txy(5,15),no_child). 
lhs(in1_red1_3_15_3_15,sameR,sid_1x1,cxy(3,15),txy(3,15),no_child). 
lhs(in1_red1_6_14_6_14,sameR,sid_1x1,cxy(6,14),txy(6,14),no_child). 
lhs(in1_red1_2_14_2_14,sameR,sid_1x1,cxy(2,14),txy(2,14),no_child). 
lhs(in1_red1_8_12_8_12,sameR,sid_1x1,cxy(8,12),txy(8,12),no_child). 
lhs(in1_red1_9_11_9_11,sameR,sid_1x1,cxy(9,11),txy(9,11),no_child). 
lhs(in1_red1_5_9_5_9,sameR,sid_1x1,cxy(5,9),txy(5,9),no_child). 
lhs(in1_red1_6_8_6_8,sameR,sid_1x1,cxy(6,8),txy(6,8),no_child). 
lhs(in1_red1_18_6_18_6,sameR,sid_1x1,cxy(18,6),txy(18,6),no_child). 
lhs(in1_red1_17_5_17_5,sameR,sid_1x1,cxy(17,5),txy(17,5),no_child). 
lhs(in1_red1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),no_child). 
lhs(in1_red1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),no_child). 
lhs(in1_red2_10_17_10_18,rot90,sid_2x1,cxy(10,18),txy(10,18),no_child). 
lhs(in1_red2_16_14_16_15,rot90,sid_2x1,cxy(16,15),txy(16,15),no_child). 
lhs(in1_green23_14_14_18_18,sameR,s1201147,cxy(16,16),txy(16,16),1). 
lhs(in1_green23_8_14_12_18,rot90,s1201147,cxy(10,16),txy(10,16),1). 
lhs(in1_green17_2_14_6_18,sameR,s2328861,cxy(4,16),txy(4,16),8). 
lhs(in1_red2_17_10_18_10,sameR,sid_2x1,cxy(18,10),txy(18,10),no_child). 
lhs(in1_green23_14_8_18_12,rot270,s1201147,cxy(16,10),txy(16,10),1). 
lhs(in1_green23_8_8_12_12,rot90,s11261491,cxy(10,10),txy(10,10),2). 
lhs(in1_green23_2_8_6_12,rot270,s11261491,cxy(4,10),txy(4,10),2). 
lhs(in1_red2_8_4_9_4,sameR,sid_2x1,cxy(9,4),txy(9,4),no_child). 
lhs(in1_green23_14_2_18_6,rot180,s11261491,cxy(16,4),txy(16,4),2). 
lhs(in1_green23_8_2_12_6,sameR,s1201147,cxy(10,4),txy(10,4),1). 
lhs(in1_green23_2_2_6_6,sameR,s11261491,cxy(4,4),txy(4,4),2). 


%  Objects of Example 2 for output grid (1,1)-(19,19)
rhs(out1_red1_18_18_18_18,sameR,sid_1x1,cxy(18,18),txy(18,18)). 
rhs(out1_red1_2_18_2_18,sameR,sid_1x1,cxy(2,18),txy(2,18)). 
rhs(out1_red1_17_17_17_17,sameR,sid_1x1,cxy(17,17),txy(17,17)). 
rhs(out1_red1_3_17_3_17,sameR,sid_1x1,cxy(3,17),txy(3,17)). 
rhs(out1_red1_12_12_12_12,sameR,sid_1x1,cxy(12,12),txy(12,12)). 
rhs(out1_red1_8_12_8_12,sameR,sid_1x1,cxy(8,12),txy(8,12)). 
rhs(out1_red1_11_11_11_11,sameR,sid_1x1,cxy(11,11),txy(11,11)). 
rhs(out1_red1_9_11_9_11,sameR,sid_1x1,cxy(9,11),txy(9,11)). 
rhs(out1_red1_11_9_11_9,sameR,sid_1x1,cxy(11,9),txy(11,9)). 
rhs(out1_red1_9_9_9_9,sameR,sid_1x1,cxy(9,9),txy(9,9)). 
rhs(out1_red1_12_8_12_8,sameR,sid_1x1,cxy(12,8),txy(12,8)). 
rhs(out1_red1_8_8_8_8,sameR,sid_1x1,cxy(8,8),txy(8,8)). 
rhs(out1_red1_17_3_17_3,sameR,sid_1x1,cxy(17,3),txy(17,3)). 
rhs(out1_red1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3)). 
rhs(out1_red1_18_2_18_2,sameR,sid_1x1,cxy(18,2),txy(18,2)). 
rhs(out1_red1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2)). 
rhs(out1_red2_10_17_10_18,rot90,sid_2x1,cxy(10,18),txy(10,18)). 
rhs(out1_green23_14_14_18_18,rot180,s11261491,cxy(16,16),txy(16,16)). 
rhs(out1_green23_8_14_12_18,rot90,s1201147,cxy(10,16),txy(10,16)). 
rhs(out1_green23_2_14_6_18,rot90,s11261491,cxy(4,16),txy(4,16)). 
rhs(out1_red2_17_10_18_10,sameR,sid_2x1,cxy(18,10),txy(18,10)). 
rhs(out1_red2_2_10_3_10,sameR,sid_2x1,cxy(3,10),txy(3,10)). 
rhs(out1_green23_14_8_18_12,rot270,s1201147,cxy(16,10),txy(16,10)). 
rhs(out1_green17_8_8_12_12,sameR,s2328861,cxy(10,10),txy(10,10)). 
rhs(out1_green23_2_8_6_12,sameR,s1201147,cxy(4,10),txy(4,10)). 
rhs(out1_green23_14_2_18_6,rot270,s11261491,cxy(16,4),txy(16,4)). 
rhs(out1_red2_10_2_10_3,rot90,sid_2x1,cxy(10,3),txy(10,3)). 
rhs(out1_green23_8_2_12_6,sameR,s1201147,cxy(10,4),txy(10,4)). 
rhs(out1_green23_2_2_6_6,sameR,s11261491,cxy(4,4),txy(4,4)). 


%  Objects of Example 3 for input grid (1,1)-(19,19)
lhs(in2_purple5_14_18_18_18,sameR,sid_2x1,cxy(16,18),txy(16,18),no_child). 
lhs(in2_cyan20_14_14_18_17,sameR,sid_2x1,cxy(16,16),txy(16,16),no_child). 
lhs(in2_cyan21_8_14_12_18,sameR,s11261491,cxy(10,16),txy(10,16),1). 
lhs(in2_purple4_8_14_9_15,sameR,sid_1x1,cxy(9,15),txy(8,14),no_child). 
lhs(in2_cyan20_3_14_6_18,rot90,sid_2x1,cxy(5,16),txy(5,16),no_child). 
lhs(in2_purple5_2_14_2_18,rot90,sid_2x1,cxy(2,16),txy(2,16),no_child). 
lhs(in2_purple4_11_11_12_12,sameR,sid_1x1,cxy(12,12),txy(11,11),no_child). 
lhs(in2_purple4_8_11_9_12,sameR,sid_1x1,cxy(9,12),txy(8,11),no_child). 
lhs(in2_purple4_2_11_3_12,sameR,sid_1x1,cxy(3,12),txy(2,11),no_child). 
lhs(in2_purple4_17_8_18_9,sameR,sid_1x1,cxy(18,9),txy(17,8),no_child). 
lhs(in2_cyan21_14_8_18_12,rot270,s11261491,cxy(16,10),txy(16,10),1). 
lhs(in2_purple4_11_8_12_9,sameR,sid_1x1,cxy(12,9),txy(11,8),no_child). 
lhs(in2_cyan9_8_8_12_12,sameR,sid_plus_3x3,cxy(10,10),txy(10,10),4). 
lhs(in2_purple4_8_8_9_9,sameR,sid_1x1,cxy(9,9),txy(8,8),no_child). 
lhs(in2_cyan21_2_8_6_12,rot90,s11261491,cxy(4,10),txy(4,10),1). 
lhs(in2_purple4_11_5_12_6,sameR,sid_1x1,cxy(12,6),txy(11,5),no_child). 
lhs(in2_cyan20_2_3_6_6,sameR,sid_2x1,cxy(4,5),txy(4,5),no_child). 
lhs(in2_purple5_18_2_18_6,rot90,sid_2x1,cxy(18,4),txy(18,4),no_child). 
lhs(in2_cyan20_14_2_17_6,rot90,sid_2x1,cxy(16,4),txy(16,4),no_child). 
lhs(in2_cyan21_8_2_12_6,rot180,s11261491,cxy(10,4),txy(10,4),1). 
lhs(in2_purple5_2_2_6_2,sameR,sid_2x1,cxy(4,2),txy(4,2),no_child). 


%  Objects of Example 3 for output grid (1,1)-(19,19)
rhs(out2_purple5_8_18_12_18,sameR,sid_2x1,cxy(10,18),txy(10,18)). 
rhs(out2_purple4_17_17_18_18,sameR,sid_1x1,cxy(18,18),txy(17,17)). 
rhs(out2_purple4_2_17_3_18,sameR,sid_1x1,cxy(3,18),txy(2,17)). 
rhs(out2_cyan21_14_14_18_18,rot180,s11261491,cxy(16,16),txy(16,16)). 
rhs(out2_cyan20_8_14_12_17,sameR,sid_2x1,cxy(10,16),txy(10,16)). 
rhs(out2_cyan21_2_14_6_18,rot90,s11261491,cxy(4,16),txy(4,16)). 
rhs(out2_purple4_11_11_12_12,sameR,sid_1x1,cxy(12,12),txy(11,11)). 
rhs(out2_purple4_8_11_9_12,sameR,sid_1x1,cxy(9,12),txy(8,11)). 
rhs(out2_purple5_18_8_18_12,rot90,sid_2x1,cxy(18,10),txy(18,10)). 
rhs(out2_cyan20_14_8_17_12,rot90,sid_2x1,cxy(16,10),txy(16,10)). 
rhs(out2_purple4_11_8_12_9,sameR,sid_1x1,cxy(12,9),txy(11,8)). 
rhs(out2_cyan9_8_8_12_12,sameR,sid_plus_3x3,cxy(10,10),txy(10,10)). 
rhs(out2_purple4_8_8_9_9,sameR,sid_1x1,cxy(9,9),txy(8,8)). 
rhs(out2_cyan20_3_8_6_12,rot90,sid_2x1,cxy(5,10),txy(5,10)). 
rhs(out2_purple5_2_8_2_12,rot90,sid_2x1,cxy(2,10),txy(2,10)). 
rhs(out2_cyan20_8_3_12_6,sameR,sid_2x1,cxy(10,5),txy(10,5)). 
rhs(out2_purple4_17_2_18_3,sameR,sid_1x1,cxy(18,3),txy(17,2)). 
rhs(out2_cyan21_14_2_18_6,rot270,s11261491,cxy(16,4),txy(16,4)). 
rhs(out2_purple5_8_2_12_2,sameR,sid_2x1,cxy(10,2),txy(10,2)). 
rhs(out2_cyan21_2_2_6_6,sameR,s11261491,cxy(4,4),txy(4,4)). 
rhs(out2_purple4_2_2_3_3,sameR,sid_1x1,cxy(3,3),txy(2,2)). 

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



%  Objects of Exam 1 for input grid (1,1)-(19,19)
lhs(in0_blue3_8_17_9_18,rot270,s11261491,cxy(8,18),txy(8,18),no_child). 
lhs(in0_blue4_17_15_18_17,rot90,sid_t180_2x3,cxy(18,16),txy(18,16),no_child). 
lhs(in0_blue4_2_15_3_17,rot270,sid_t180_2x3,cxy(2,16),txy(2,16),no_child). 
lhs(in0_yellow21_14_14_18_18,rot270,s7326025,cxy(16,16),txy(16,16),1). 
lhs(in0_yellow22_8_14_12_18,rot90,sid_right_triangle_se_3x3,cxy(10,16),txy(10,16),1). 
lhs(in0_yellow21_2_14_6_18,sameR,s7326025,cxy(4,16),txy(4,16),1). 
lhs(in0_blue3_17_11_18_12,sameR,s11261491,cxy(18,12),txy(18,12),no_child). 
lhs(in0_blue3_14_11_15_12,rot270,s11261491,cxy(14,12),txy(14,12),no_child). 
lhs(in0_blue3_17_8_18_9,rot90,s11261491,cxy(18,8),txy(18,8),no_child). 
lhs(in0_yellow13_14_8_18_12,sameR,s16703854,cxy(16,10),txy(16,10),4). 
lhs(in0_blue3_14_8_15_9,rot180,s11261491,cxy(14,8),txy(14,8),no_child). 
lhs(in0_blue4_9_8_11_9,rot180,sid_t180_2x3,cxy(10,8),txy(10,8),no_child). 
lhs(in0_yellow21_8_8_12_12,sameR,s7326025,cxy(10,10),txy(10,10),1). 
lhs(in0_blue3_5_8_6_9,rot90,s11261491,cxy(6,8),txy(6,8),no_child). 
lhs(in0_yellow22_2_8_6_12,rot270,sid_right_triangle_se_3x3,cxy(4,10),txy(4,10),1). 
lhs(in0_blue4_15_5_17_6,sameR,sid_t180_2x3,cxy(16,6),txy(16,6),no_child). 
lhs(in0_blue3_11_5_12_6,sameR,s11261491,cxy(12,6),txy(12,6),no_child). 
lhs(in0_yellow21_14_2_18_6,rot90,s7326025,cxy(16,4),txy(16,4),1). 
lhs(in0_yellow22_8_2_12_6,rot180,sid_right_triangle_se_3x3,cxy(10,4),txy(10,4),2). 
lhs(in0_yellow22_2_2_6_6,sameR,sid_right_triangle_se_3x3,cxy(4,4),txy(4,4),no_child). 
lhs(in0_blue3_2_2_3_3,rot180,s11261491,cxy(2,2),txy(2,2),no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(19,19)
```

Grade your response from:
```prolog
rhs(out0_blue3_17_17_18_18,sameR,s11261491,cxy(18,18),txy(18,18)). 
rhs(out0_blue4_9_17_11_18,sameR,sid_t180_2x3,cxy(10,18),txy(10,18)). 
rhs(out0_blue3_2_17_3_18,rot270,s11261491,cxy(2,18),txy(2,18)). 
rhs(out0_yellow22_14_14_18_18,rot180,sid_right_triangle_se_3x3,cxy(16,16),txy(16,16)). 
rhs(out0_yellow21_8_14_12_18,rot90,s7326025,cxy(10,16),txy(10,16)). 
rhs(out0_yellow22_2_14_6_18,rot90,sid_right_triangle_se_3x3,cxy(4,16),txy(4,16)). 
rhs(out0_blue3_11_11_12_12,sameR,s11261491,cxy(12,12),txy(12,12)). 
rhs(out0_blue3_8_11_9_12,rot270,s11261491,cxy(8,12),txy(8,12)). 
rhs(out0_blue4_17_9_18_11,rot90,sid_t180_2x3,cxy(18,10),txy(18,10)). 
rhs(out0_blue4_2_9_3_11,rot270,sid_t180_2x3,cxy(2,10),txy(2,10)). 
rhs(out0_yellow21_14_8_18_12,rot270,s7326025,cxy(16,10),txy(16,10)). 
rhs(out0_blue3_11_8_12_9,rot90,s11261491,cxy(12,8),txy(12,8)). 
rhs(out0_yellow13_8_8_12_12,sameR,s16703854,cxy(10,10),txy(10,10)). 
rhs(out0_blue3_8_8_9_9,rot180,s11261491,cxy(8,8),txy(8,8)). 
rhs(out0_yellow21_2_8_6_12,sameR,s7326025,cxy(4,10),txy(4,10)). 
rhs(out0_blue3_17_2_18_3,rot90,s11261491,cxy(18,2),txy(18,2)). 
rhs(out0_yellow22_14_2_18_6,rot270,sid_right_triangle_se_3x3,cxy(16,4),txy(16,4)). 
rhs(out0_blue4_9_2_11_3,rot180,sid_t180_2x3,cxy(10,2),txy(10,2)). 
rhs(out0_yellow21_8_2_12_6,sameR,s7326025,cxy(10,4),txy(10,4)). 
rhs(out0_yellow22_2_2_6_6,sameR,sid_right_triangle_se_3x3,cxy(4,4),txy(4,4)). 
rhs(out0_blue3_2_2_3_3,rot180,s11261491,cxy(2,2),txy(2,2)). 
```
if wrong, what rules did you miss?
