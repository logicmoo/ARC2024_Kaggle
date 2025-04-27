% =======================================

Riddle v(639f5a19)

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




Title: v(639f5a19)

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


%  Objects of Example 1 for input grid (1,1)-(23,23)
lhs(in0_cyan64_3_2_10_9,sameR,sid_1x1,cxy(7,6),txy(3,2),no_child). 
lhs(in0_cyan120_8_11_19_20,sameR,sid_2x1,cxy(14,16),txy(8,11),no_child). 


%  Objects of Example 1 for output grid (1,1)-(23,23)
rhs(out0_yellow16_5_4_8_7,sameR,sid_1x1,cxy(7,6),txy(5,4)). 
rhs(out0_purple12_3_2_6_5,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(4,3),txy(4,3)). 
rhs(out0_red12_3_6_6_9,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(4,8),txy(4,8)). 
rhs(out0_blue12_7_2_10_5,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(9,3),txy(9,3)). 
rhs(out0_green12_7_6_10_9,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(9,8),txy(9,8)). 
rhs(out0_red18_8_16_13_20,flipH,sid_tetris_Z_270_Rotated_2x3,cxy(10,19),txy(8,16)). 
rhs(out0_blue18_14_11_19_15,flipV,sid_tetris_Z_270_Rotated_2x3,cxy(17,12),txy(19,15)). 
rhs(out0_purple18_8_11_13_15,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(10,12),txy(8,15)). 
rhs(out0_green18_14_16_19_20,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(17,19),txy(19,16)). 
rhs(out0_yellow48_10_13_17_18,sameR,sid_2x1,cxy(14,16),txy(10,13)). 


%  Objects of Example 2 for input grid (1,1)-(23,23)
lhs(in1_cyan96_2_15_13_22,sameR,sid_2x1,cxy(8,19),txy(2,15),no_child). 
lhs(in1_cyan120_6_2_17_11,sameR,sid_2x1,cxy(12,7),txy(6,2),no_child). 


%  Objects of Example 2 for output grid (1,1)-(23,23)
rhs(out1_red16_2_19_7_22,flipH,sid_tetris_Z_270_Rotated_2x3,cxy(4,21),txy(2,19)). 
rhs(out1_blue16_8_15_13_18,flipV,sid_tetris_Z_270_Rotated_2x3,cxy(11,16),txy(13,18)). 
rhs(out1_purple16_2_15_7_18,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(4,16),txy(2,18)). 
rhs(out1_green16_8_19_13_22,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(11,21),txy(13,19)). 
rhs(out1_red18_6_7_11_11,flipH,sid_tetris_Z_270_Rotated_2x3,cxy(8,10),txy(6,7)). 
rhs(out1_blue18_12_2_17_6,flipV,sid_tetris_Z_270_Rotated_2x3,cxy(15,3),txy(17,6)). 
rhs(out1_purple18_6_2_11_6,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(8,3),txy(6,6)). 
rhs(out1_green18_12_7_17_11,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(15,10),txy(17,7)). 
rhs(out1_yellow32_4_17_11_20,sameR,sid_2x1,cxy(8,19),txy(4,17)). 
rhs(out1_yellow48_8_4_15_9,sameR,sid_2x1,cxy(12,7),txy(8,4)). 

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



%  Objects of Exam 1 for input grid (1,1)-(23,23)
lhs(in0_cyan36_4_16_9_21,sameR,sid_1x1,cxy(7,19),txy(4,16),no_child). 
lhs(in0_cyan60_4_2_9_11,rot90,sid_2x1,cxy(7,7),txy(4,2),no_child). 
lhs(in0_cyan140_13_5_22_18,rot90,sid_2x1,cxy(18,12),txy(13,5),no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(23,23)
```

Grade your response from:
```prolog
rhs(out0_yellow4_6_18_7_19,sameR,sid_1x1,cxy(7,19),txy(6,18)). 
rhs(out0_purple8_4_16_6_18,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(5,17),txy(5,17)). 
rhs(out0_red8_4_19_6_21,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(5,20),txy(5,20)). 
rhs(out0_blue8_7_16_9_18,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(8,17),txy(8,17)). 
rhs(out0_green8_7_19_9_21,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(8,20),txy(8,20)). 
rhs(out0_yellow12_6_4_7_9,rot90,sid_2x1,cxy(7,7),txy(6,4)). 
rhs(out0_green12_7_7_9_11,flipD,sid_tetris_Z_270_Rotated_2x3,cxy(8,9),txy(8,9)). 
rhs(out0_purple12_4_2_6_6,flipDHV,sid_tetris_Z_270_Rotated_2x3,cxy(5,4),txy(5,4)). 
rhs(out0_red12_4_7_6_11,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(5,9),txy(5,9)). 
rhs(out0_blue12_7_2_9_6,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(8,4),txy(8,4)). 
rhs(out0_green20_18_12_22_18,flipD,sid_tetris_Z_270_Rotated_2x3,cxy(21,16),txy(18,18)). 
rhs(out0_purple20_13_5_17_11,flipDHV,sid_tetris_Z_270_Rotated_2x3,cxy(14,7),txy(17,5)). 
rhs(out0_red20_13_12_17_18,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(14,16),txy(17,18)). 
rhs(out0_blue20_18_5_22_11,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(21,7),txy(18,5)). 
rhs(out0_yellow60_15_7_20_16,rot90,sid_2x1,cxy(18,12),txy(15,7)). 
```
if wrong, what rules did you miss?
