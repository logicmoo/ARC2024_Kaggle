% =======================================

Riddle v(00dbd492)

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




Title: v(00dbd492)

The provided facts represent transformations from an initial state (lhs) to a final state (rhs).
These transformations might involve changes in color, rotation, and size of objects.

Each fact describes an object in a 2-dimensional grid with the following properties:


1. **ObjectID**: A unique identifier that denotes color, size, xy of NW corner, xy of SE corner
2. **Rotation**:
3. **Shape ID**: An identifier for the normalized shape of the object.
4. **CenterXY**: Center of Mass
5. **TipXY**: Uniquely distanced point farthest from center of Mass
6. **Colors**: All the colors of the object (not just the first)
In the left-hand-side (lhs) facts can be longer and specialize the normalized shape


```prolog


%  Objects of Example 1 for input grid (1,1)-(7,7)
lhs(in0_red1_2_2_4_4,sameR,sid_1x1,cxy(3,3),txy(3,3),red,no_child). 
lhs(in0_red2_2_2_4_4,sameR,sid_tetris_T_Stretched_3x3,cxy(4,4),txy(4,4),red,1). 
lhs(in0_black0_2_2_4_4,sameR,sid_hollow_3x3,cxy(3,3),txy(3,3),black,no_child). 
lhs(in0_red17_1_1_5_5,sameR,s6353595,cxy(3,3),txy(3,3),red,4). 
lhs(in0_red16_1_1_5_5,sameR,sid_hollow_3x3,cxy(3,3),txy(3,3),red,3). 
lhs(in0_red1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),red,no_child). 


%  Objects of Example 1 for output grid (1,1)-(7,7)
rhs(out0_cyan9_2_2_4_4,sameR,sid_3x3,cxy(3,3),txy(3,3),pen([cc(cyan,4),cc(red,1),cc(cyan,4)])). 
rhs(out0_cyan8_2_2_4_4,sameR,sid_hollow_3x3,cxy(3,3),txy(3,3),cyan). 
rhs(out0_red25_1_1_5_5,sameR,s7993947,cxy(3,3),txy(3,3),pen([cc(red,6),cc(cyan,3),cc(red,2),cc(cyan,1),cc(red,1),cc(cyan,1),cc(red,2),cc(cyan,3),cc(red,6)])). 
rhs(out0_red16_1_1_5_5,sameR,sid_hollow_3x3,cxy(3,3),txy(3,3),red). 
rhs(out0_red1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),red). 


%  Objects of Example 2 for input grid (1,1)-(9,9)
lhs(in1_red2_3_3_5_5,sameR,sid_tetris_T_Stretched_3x3,cxy(6,6),txy(4,4),red,1). 
lhs(in1_red1_2_2_6_6,sameR,sid_1x1,cxy(4,4),txy(4,4),red,no_child). 
lhs(in1_black0_2_2_6_6,sameR,sid_hollow_3x3,cxy(4,4),txy(4,4),black,no_child). 
lhs(in1_red25_1_1_7_7,sameR,s6353595,cxy(4,4),txy(4,4),red,4). 
lhs(in1_red24_1_1_7_7,sameR,sid_hollow_3x3,cxy(4,4),txy(4,4),red,3). 
lhs(in1_red1_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),red,no_child). 


%  Objects of Example 2 for output grid (1,1)-(9,9)
rhs(out1_yellow8_3_3_5_5,sameR,sid_hollow_3x3,cxy(4,4),txy(4,4),yellow). 
rhs(out1_yellow25_2_2_6_6,sameR,sid_3x3,cxy(4,4),txy(4,4),pen([cc(yellow,12),cc(red,1),cc(yellow,12)])). 
rhs(out1_red49_1_1_7_7,sameR,s7993947,cxy(4,4),txy(4,4),pen([cc(red,8),cc(yellow,5),cc(red,2),cc(yellow,5),cc(red,2),cc(yellow,2),cc(red,1),cc(yellow,2),cc(red,2),cc(yellow,5),cc(red,2),cc(yellow,5),cc(red,8)])). 
rhs(out1_red24_1_1_7_7,sameR,sid_hollow_3x3,cxy(4,4),txy(4,4),red). 
rhs(out1_red1_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),red). 


%  Objects of Example 3 for input grid (1,1)-(15,15)
lhs(in2_black0_3_12_5_14,sameR,sid_hollow_3x3,cxy(4,13),txy(4,13),black,no_child). 
lhs(in2_red16_2_11_6_15,sameR,sid_hollow_3x3,cxy(4,13),txy(4,13),red,2). 
lhs(in2_black0_8_2_14_8,sameR,sid_hollow_3x3,cxy(11,5),txy(11,5),black,no_child). 
lhs(in2_red32_7_1_15_9,sameR,sid_hollow_3x3,cxy(11,5),txy(11,5),red,2). 
lhs(in2_red1_4_13_4_13,sameR,sid_1x1,cxy(4,13),txy(4,13),red,no_child). 
lhs(in2_red1_11_5_11_5,sameR,sid_1x1,cxy(11,5),txy(11,5),red,no_child). 
lhs(in2_black0_1_1_15_15,sameR,s16744804,cxy(7,9),txy(7,9),black,no_child). 


%  Objects of Example 3 for output grid (1,1)-(15,15)
rhs(out2_cyan8_3_12_5_14,sameR,sid_hollow_3x3,cxy(4,13),txy(4,13),cyan). 
rhs(out2_red16_2_11_6_15,sameR,sid_hollow_3x3,cxy(4,13),txy(4,13),red). 
rhs(out2_green48_8_2_14_8,sameR,sid_hollow_3x3,cxy(11,5),txy(11,5),green). 
rhs(out2_red32_7_1_15_9,sameR,sid_hollow_3x3,cxy(11,5),txy(11,5),red). 
rhs(out2_red1_4_13_4_13,sameR,sid_1x1,cxy(4,13),txy(4,13),red). 
rhs(out2_red1_11_5_11_5,sameR,sid_1x1,cxy(11,5),txy(11,5),red). 
rhs(out2_black0_1_1_15_15,sameR,s16744804,cxy(7,9),txy(7,9),black). 


%  Objects of Example 4 for input grid (1,1)-(13,13)
lhs(in3_black0_3_2_5_4,sameR,sid_hollow_3x3,cxy(4,3),txy(4,3),black,no_child). 
lhs(in3_red16_2_1_6_5,sameR,sid_hollow_3x3,cxy(4,3),txy(4,3),red,2). 
lhs(in3_black0_7_8_11_12,sameR,sid_hollow_3x3,cxy(9,10),txy(9,10),black,no_child). 
lhs(in3_red24_6_7_12_13,sameR,sid_hollow_3x3,cxy(9,10),txy(9,10),red,2). 
lhs(in3_red1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),red,no_child). 
lhs(in3_red1_9_10_9_10,sameR,sid_1x1,cxy(9,10),txy(9,10),red,no_child). 
lhs(in3_black0_1_1_13_13,sameR,s5566047,cxy(7,7),txy(7,7),black,no_child). 


%  Objects of Example 4 for output grid (1,1)-(13,13)
rhs(out3_cyan8_3_2_5_4,sameR,sid_hollow_3x3,cxy(4,3),txy(4,3),cyan). 
rhs(out3_yellow24_7_8_11_12,sameR,sid_hollow_3x3,cxy(9,10),txy(9,10),yellow). 
rhs(out3_red16_2_1_6_5,sameR,sid_hollow_3x3,cxy(4,3),txy(4,3),red). 
rhs(out3_red24_6_7_12_13,sameR,sid_hollow_3x3,cxy(9,10),txy(9,10),red). 
rhs(out3_red1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),red). 
rhs(out3_red1_9_10_9_10,sameR,sid_1x1,cxy(9,10),txy(9,10),red). 
rhs(out3_black0_1_1_13_13,sameR,s5566047,cxy(7,7),txy(7,7),black). 

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



%  Objects of Exam 1 for input grid (1,1)-(20,20)
lhs(in0_black0_13_2_15_4,sameR,sid_hollow_3x3,cxy(14,3),txy(14,3),black,no_child). 
lhs(in0_black0_15_9_17_11,sameR,sid_hollow_3x3,cxy(16,10),txy(16,10),black,no_child). 
lhs(in0_red16_12_1_16_5,sameR,sid_hollow_3x3,cxy(14,3),txy(14,3),red,2). 
lhs(in0_red16_14_8_18_12,sameR,sid_hollow_3x3,cxy(16,10),txy(16,10),red,2). 
lhs(in0_black0_7_14_11_18,sameR,sid_hollow_3x3,cxy(9,16),txy(9,16),black,no_child). 
lhs(in0_red24_6_13_12_19,sameR,sid_hollow_3x3,cxy(9,16),txy(9,16),red,2). 
lhs(in0_black0_3_3_9_9,sameR,sid_hollow_3x3,cxy(6,6),txy(6,6),black,no_child). 
lhs(in0_red32_2_2_10_10,sameR,sid_hollow_3x3,cxy(6,6),txy(6,6),red,2). 
lhs(in0_red1_6_6_6_6,sameR,sid_1x1,cxy(6,6),txy(6,6),red,no_child). 
lhs(in0_red1_9_16_9_16,sameR,sid_1x1,cxy(9,16),txy(9,16),red,no_child). 
lhs(in0_red1_14_3_14_3,sameR,sid_1x1,cxy(14,3),txy(14,3),red,no_child). 
lhs(in0_red1_16_10_16_10,sameR,sid_1x1,cxy(16,10),txy(16,10),red,no_child). 
lhs(in0_black0_1_1_20_20,sameR,s15230487,cxy(11,12),txy(1,1),black,no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(20,20)
```

Grade your response from:
```prolog
rhs(out0_cyan8_13_2_15_4,sameR,sid_hollow_3x3,cxy(14,3),txy(14,3),cyan). 
rhs(out0_cyan8_15_9_17_11,sameR,sid_hollow_3x3,cxy(16,10),txy(16,10),cyan). 
rhs(out0_yellow24_7_14_11_18,sameR,sid_hollow_3x3,cxy(9,16),txy(9,16),yellow). 
rhs(out0_red16_12_1_16_5,sameR,sid_hollow_3x3,cxy(14,3),txy(14,3),red). 
rhs(out0_red16_14_8_18_12,sameR,sid_hollow_3x3,cxy(16,10),txy(16,10),red). 
rhs(out0_green48_3_3_9_9,sameR,sid_hollow_3x3,cxy(6,6),txy(6,6),green). 
rhs(out0_red24_6_13_12_19,sameR,sid_hollow_3x3,cxy(9,16),txy(9,16),red). 
rhs(out0_red32_2_2_10_10,sameR,sid_hollow_3x3,cxy(6,6),txy(6,6),red). 
rhs(out0_red1_6_6_6_6,sameR,sid_1x1,cxy(6,6),txy(6,6),red). 
rhs(out0_red1_9_16_9_16,sameR,sid_1x1,cxy(9,16),txy(9,16),red). 
rhs(out0_red1_14_3_14_3,sameR,sid_1x1,cxy(14,3),txy(14,3),red). 
rhs(out0_red1_16_10_16_10,sameR,sid_1x1,cxy(16,10),txy(16,10),red). 
rhs(out0_black0_1_1_20_20,sameR,s15230487,cxy(11,12),txy(1,1),black). 
```
if wrong, what rules did you miss?
