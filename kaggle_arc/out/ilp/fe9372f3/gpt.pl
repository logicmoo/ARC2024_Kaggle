% =======================================

Riddle v(fe9372f3)

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




Title: v(fe9372f3)

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


%  Objects of Example 1 for input grid (1,1)-(10,12)
lhs(in0_red5_4_4_6_6,sameR,sid_plus_3x3,cxy(5,5),txy(5,5),no_child). 
lhs(in0_black0_1_1_4_4,sameR,sid_1x1,cxy(3,3),txy(1,1),no_child). 
lhs(in0_black0_6_1_10_4,rot90,sid_1x2,cxy(8,3),txy(8,3),no_child). 
lhs(in0_red5_3_3_7_7,sameR,s6151086,cxy(5,5),txy(5,5),no_child). 


%  Objects of Example 1 for output grid (1,1)-(10,12)
rhs(out0_cyan2_5_10_5_11,rot90,sid_2x1,cxy(5,11),txy(5,11)). 
rhs(out0_black0_6_1_7_2,sameR,sid_1x1,cxy(7,2),txy(6,1)). 
rhs(out0_black0_1_3_2_4,sameR,sid_1x1,cxy(2,4),txy(1,3)). 
rhs(out0_black0_1_6_2_7,sameR,sid_1x1,cxy(2,8),txy(1,6)). 
rhs(out0_black0_3_1_4_2,sameR,sid_1x1,cxy(4,2),txy(3,1)). 
rhs(out0_black0_8_3_10_4,rot90,sid_1x2,cxy(9,4),txy(9,4)). 
rhs(out0_black0_8_6_10_7,rot90,sid_1x2,cxy(9,7),txy(9,7)). 
rhs(out0_black0_9_2_10_4,sameR,sid_1x2,cxy(10,3),txy(10,3)). 
rhs(out0_black0_9_6_10_8,sameR,sid_1x2,cxy(10,7),txy(10,7)). 
rhs(out0_blue9_4_4_6_6,sameR,sid_3x3,cxy(5,5),txy(5,5)). 
rhs(out0_black0_1_2_3_4,sameR,sid_RtTriagle_se_3x3,cxy(2,3),txy(2,3)). 
rhs(out0_black0_1_6_3_8,sameR,sid_RtTriagle_se_3x3,cxy(2,7),txy(2,7)). 
rhs(out0_black0_2_1_4_3,sameR,sid_RtTriagle_se_3x3,cxy(3,2),txy(3,2)). 
rhs(out0_black0_6_1_8_3,sameR,sid_RtTriagle_se_3x3,cxy(7,2),txy(7,2)). 
rhs(out0_black0_6_11_10_12,rot90,sid_1x2,cxy(8,12),txy(8,12)). 
rhs(out0_black0_3_8_4_12,sameR,sid_1x2,cxy(4,10),txy(4,10)). 
rhs(out0_black0_6_8_7_12,sameR,sid_1x2,cxy(7,10),txy(7,10)). 
rhs(out0_black0_1_10_4_12,rot90,sid_1x2,cxy(3,11),txy(3,11)). 
rhs(out0_black0_6_10_9_12,rot90,sid_1x2,cxy(8,11),txy(8,11)). 
rhs(out0_black0_2_9_4_12,sameR,sid_1x2,cxy(3,11),txy(3,11)). 
rhs(out0_black0_6_9_8_12,sameR,sid_1x2,cxy(7,11),txy(7,11)). 
rhs(out0_black0_7_1_10_4,sameR,s12620050,cxy(9,3),txy(9,3)). 
rhs(out0_black0_7_6_10_9,sameR,s12620050,cxy(9,7),txy(9,7)). 
rhs(out0_black0_1_7_4_12,sameR,s12620050,cxy(3,10),txy(1,12)). 
rhs(out0_blue17_3_3_7_7,sameR,s11084416,cxy(5,5),txy(5,5)). 
rhs(out0_black0_6_7_10_12,sameR,s7134580,cxy(8,10),txy(6,7)). 
rhs(out0_blue33_1_1_9_9,sameR,s11610902,cxy(5,5),txy(5,5)). 
rhs(out0_yellow1_5_12_5_12,sameR,sid_1x1,cxy(5,12),txy(5,12)). 
rhs(out0_cyan1_10_5_10_5,sameR,sid_1x1,cxy(10,5),txy(10,5)). 
rhs(out0_blue1_10_10_10_10,sameR,sid_1x1,cxy(10,10),txy(10,10)). 


%  Objects of Example 2 for input grid (1,1)-(16,7)
lhs(in1_wbg0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),no_child). 
lhs(in1_red1_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4),no_child). 
lhs(in1_wbg0_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5),no_child). 
lhs(in1_red1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),no_child). 
lhs(in1_red1_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),no_child). 
lhs(in1_red1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5),no_child). 
lhs(in1_wbg0_5_3_5_3,sameR,sid_1x1,cxy(5,3),txy(5,3),no_child). 
lhs(in1_red1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),no_child). 
lhs(in1_wbg0_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5),no_child). 


%  Objects of Example 2 for output grid (1,1)-(16,7)
rhs(out1_cyan2_9_4_10_4,sameR,sid_2x1,cxy(10,4),txy(10,4)). 
rhs(out1_cyan2_12_4_13_4,sameR,sid_2x1,cxy(13,4),txy(13,4)). 
rhs(out1_cyan2_15_4_16_4,sameR,sid_2x1,cxy(16,4),txy(16,4)). 
rhs(out1_black0_1_2_2_3,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(1,3),txy(1,3)). 
rhs(out1_black0_1_5_2_6,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(1,5),txy(1,5)). 
rhs(out1_black0_2_1_3_2,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(3,1),txy(3,1)). 
rhs(out1_black0_2_6_3_7,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(3,7),txy(3,7)). 
rhs(out1_black0_5_1_6_2,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(5,1),txy(5,1)). 
rhs(out1_black0_5_6_6_7,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(5,7),txy(5,7)). 
rhs(out1_blue9_3_3_5_5,sameR,sid_3x3,cxy(4,4),txy(4,4)). 
rhs(out1_black0_7_2_16_3,rot90,sid_1x2,cxy(12,3),txy(7,2)). 
rhs(out1_black0_7_5_16_6,rot90,sid_1x2,cxy(12,6),txy(7,5)). 
rhs(out1_blue17_2_2_6_6,sameR,s11084416,cxy(4,4),txy(4,4)). 
rhs(out1_black0_6_1_16_3,rot90,sid_RtTriagle_se_3x3,cxy(11,2),txy(11,2)). 
rhs(out1_black0_6_5_16_7,rot90,sid_RtTriagle_se_3x3,cxy(11,6),txy(11,6)). 
rhs(out1_blue1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1)). 
rhs(out1_cyan1_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4)). 
rhs(out1_blue1_1_7_1_7,sameR,sid_1x1,cxy(1,7),txy(1,7)). 
rhs(out1_cyan1_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1)). 
rhs(out1_cyan1_4_7_4_7,sameR,sid_1x1,cxy(4,7),txy(4,7)). 
rhs(out1_blue1_7_1_7_1,sameR,sid_1x1,cxy(7,1),txy(7,1)). 
rhs(out1_cyan1_7_4_7_4,sameR,sid_1x1,cxy(7,4),txy(7,4)). 
rhs(out1_blue1_7_7_7_7,sameR,sid_1x1,cxy(7,7),txy(7,7)). 
rhs(out1_yellow1_8_4_8_4,sameR,sid_1x1,cxy(8,4),txy(8,4)). 
rhs(out1_yellow1_11_4_11_4,sameR,sid_1x1,cxy(11,4),txy(11,4)). 
rhs(out1_yellow1_14_4_14_4,sameR,sid_1x1,cxy(14,4),txy(14,4)). 

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



%  Objects of Exam 1 for input grid (1,1)-(17,30)
lhs(in0_red5_7_11_9_13,sameR,sid_plus_3x3,cxy(8,12),txy(8,12),no_child). 
lhs(in0_red5_6_10_10_14,sameR,s6151086,cxy(8,12),txy(8,12),no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(17,30)
```

Grade your response from:
```prolog
rhs(out0_cyan2_8_3_8_4,rot90,sid_2x1,cxy(8,4),txy(8,4)). 
rhs(out0_cyan2_8_6_8_7,rot90,sid_2x1,cxy(8,7),txy(8,7)). 
rhs(out0_cyan2_8_17_8_18,rot90,sid_2x1,cxy(8,18),txy(8,18)). 
rhs(out0_cyan2_8_20_8_21,rot90,sid_2x1,cxy(8,21),txy(8,21)). 
rhs(out0_cyan2_8_23_8_24,rot90,sid_2x1,cxy(8,24),txy(8,24)). 
rhs(out0_cyan2_8_26_8_27,rot90,sid_2x1,cxy(8,27),txy(8,27)). 
rhs(out0_cyan2_8_29_8_30,rot90,sid_2x1,cxy(8,30),txy(8,30)). 
rhs(out0_cyan2_2_12_3_12,sameR,sid_2x1,cxy(3,12),txy(3,12)). 
rhs(out0_cyan2_13_12_14_12,sameR,sid_2x1,cxy(14,12),txy(14,12)). 
rhs(out0_cyan2_16_12_17_12,sameR,sid_2x1,cxy(17,12),txy(17,12)). 
rhs(out0_blue9_7_11_9_13,sameR,sid_3x3,cxy(8,12),txy(8,12)). 
rhs(out0_blue3_1_17_3_19,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(2,18),txy(2,18)). 
rhs(out0_blue3_1_5_3_7,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(2,6),txy(2,6)). 
rhs(out0_blue5_13_3_17_7,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(15,5),txy(15,5)). 
rhs(out0_blue5_13_17_17_21,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(15,19),txy(15,19)). 
rhs(out0_blue17_6_10_10_14,sameR,s11084416,cxy(8,12),txy(8,12)). 
rhs(out0_black0_1_6_6_11,sameR,s7454907,cxy(3,9),txy(3,9)). 
rhs(out0_black0_1_13_6_18,sameR,s7454907,cxy(3,15),txy(3,15)). 
rhs(out0_black0_10_4_17_11,sameR,s11751144,cxy(15,9),txy(15,9)). 
rhs(out0_black0_10_13_17_20,sameR,s11751144,cxy(15,15),txy(15,15)). 
rhs(out0_black0_1_1_7_10,sameR,s2033427,cxy(5,4),txy(7,9)). 
rhs(out0_blue33_4_8_12_16,sameR,s11610902,cxy(8,12),txy(8,12)). 
rhs(out0_black0_9_1_17_10,sameR,s12186356,cxy(12,4),txy(9,10)). 
rhs(out0_black0_1_14_7_30,sameR,s2033427,cxy(4,23),txy(7,14)). 
rhs(out0_black0_9_14_17_30,sameR,s12186356,cxy(12,24),txy(9,15)). 
rhs(out0_yellow1_1_12_1_12,sameR,sid_1x1,cxy(1,12),txy(1,12)). 
rhs(out0_cyan1_8_1_8_1,sameR,sid_1x1,cxy(8,1),txy(8,1)). 
rhs(out0_yellow1_8_2_8_2,sameR,sid_1x1,cxy(8,2),txy(8,2)). 
rhs(out0_yellow1_8_5_8_5,sameR,sid_1x1,cxy(8,5),txy(8,5)). 
rhs(out0_yellow1_8_19_8_19,sameR,sid_1x1,cxy(8,19),txy(8,19)). 
rhs(out0_yellow1_8_22_8_22,sameR,sid_1x1,cxy(8,22),txy(8,22)). 
rhs(out0_yellow1_8_25_8_25,sameR,sid_1x1,cxy(8,25),txy(8,25)). 
rhs(out0_yellow1_8_28_8_28,sameR,sid_1x1,cxy(8,28),txy(8,28)). 
rhs(out0_yellow1_15_12_15_12,sameR,sid_1x1,cxy(15,12),txy(15,12)). 
```
if wrong, what rules did you miss?
