% =======================================

Riddle t(264363fd)

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




Title: t(264363fd)

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


%  Objects of Example 1 for input grid (1,1)-(30,30)
lhs(in0_green5_25_4_27_6,sameR,sid_X_3x3,cxy(26,5),txy(26,5),green,no_child). 
lhs(in0_red8_24_3_28_7,sameR,sid_hollow_diamond_3x3,cxy(26,5),txy(26,5),red,no_child). 
lhs(in0_blue161_9_19_26_27,rot180,sid_hollow_3x3,cxy(17,23),txy(17,23),blue,no_child). 
lhs(in0_blue254_3_2_19_16,sameR,sid_hollow_3x3,cxy(11,9),txy(11,9),blue,no_child). 
lhs(in0_green1_6_6_6_6,sameR,sid_1x1,cxy(6,6),txy(6,6),green,no_child). 
lhs(in0_green1_18_26_18_26,sameR,sid_1x1,cxy(18,26),txy(18,26),green,no_child). 
lhs(in0_cyan470_1_1_30_30,rot270,s3656352,cxy(17,17),txy(1,1),cyan,no_child). 


%  Objects of Example 1 for output grid (1,1)-(30,30)
rhs(out0_blue7_20_27_26_27,sameR,sid_2x1,cxy(23,27),txy(23,27),blue). 
rhs(out0_blue8_9_27_16_27,sameR,sid_2x1,cxy(13,27),txy(13,27),blue). 
rhs(out0_green5_5_5_7_7,sameR,sid_X_3x3,cxy(6,6),txy(6,6),green). 
rhs(out0_green5_17_25_19_27,sameR,sid_X_3x3,cxy(18,26),txy(18,26),green). 
rhs(out0_blue11_3_2_5_5,flipDHV,sid_tetris_Z_270_Rotated_2x3,cxy(4,3),txy(3,5),blue). 
rhs(out0_blue29_3_7_5_16,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(4,12),txy(3,7),blue). 
rhs(out0_blue51_7_2_19_5,flipV,sid_tetris_Z_270_Rotated_2x3,cxy(13,3),txy(19,5),blue). 
rhs(out0_blue55_19_19_26_25,flipV,sid_tetris_Z_270_Rotated_2x3,cxy(23,22),txy(19,19),blue). 
rhs(out0_blue62_9_19_17_25,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(13,22),txy(13,22),blue). 
rhs(out0_blue129_7_7_19_16,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(13,12),txy(19,7),blue). 
rhs(out0_red25_9_19_26_27,flipD,sid_hollow_diamond_3x3,cxy(18,25),txy(9,26),red). 
rhs(out0_red30_3_2_19_16,flipDHV,sid_hollow_diamond_3x3,cxy(9,8),txy(6,16),red). 
rhs(out0_cyan483_1_1_30_30,rot90,s13252453,cxy(17,16),txy(1,1),cyan). 


%  Objects of Example 2 for input grid (1,1)-(30,30)
lhs(in1_green8_23_4_27_8,sameR,sid_hollow_diamond_3x3,cxy(25,6),txy(25,6),green,no_child). 
lhs(in1_red151_2_6_18_14,sameR,s5449797,cxy(10,10),txy(10,10),red,no_child). 
lhs(in1_red233_7_16_24_28,rot180,sid_hollow_3x3,cxy(15,22),txy(15,22),red,no_child). 
lhs(in1_yellow1_6_11_6_11,sameR,sid_1x1,cxy(6,11),txy(6,11),yellow,no_child). 
lhs(in1_yellow1_15_8_15_8,sameR,sid_1x1,cxy(15,8),txy(15,8),yellow,no_child). 
lhs(in1_yellow1_17_25_17_25,sameR,sid_1x1,cxy(17,25),txy(17,25),yellow,no_child). 
lhs(in1_yellow1_25_6_25_6,sameR,sid_1x1,cxy(25,6),txy(25,6),yellow,no_child). 
lhs(in1_blue504_1_1_30_30,sameR,s5190770,cxy(17,14),txy(1,30),blue,no_child). 


%  Objects of Example 2 for output grid (1,1)-(30,30)
rhs(out1_red6_16_6_18_7,sameR,sid_2x1,cxy(17,7),txy(17,7),red). 
rhs(out1_red6_16_9_18_10,sameR,sid_2x1,cxy(17,10),txy(17,10),red). 
rhs(out1_red8_2_6_5_7,sameR,sid_2x1,cxy(4,7),txy(2,6),red). 
rhs(out1_red8_2_9_5_10,sameR,sid_2x1,cxy(4,10),txy(2,9),red). 
rhs(out1_red9_16_12_18_14,sameR,sid_1x1,cxy(17,13),txy(17,13),red). 
rhs(out1_red12_2_12_5_14,sameR,sid_2x1,cxy(4,13),txy(4,13),red). 
rhs(out1_red16_7_6_14_7,sameR,sid_2x1,cxy(11,7),txy(7,6),red). 
rhs(out1_red16_7_9_14_10,sameR,sid_2x1,cxy(11,10),txy(7,9),red). 
rhs(out1_red21_18_26_24_28,sameR,sid_2x1,cxy(21,27),txy(21,27),red). 
rhs(out1_red24_7_12_14_14,sameR,sid_2x1,cxy(11,13),txy(11,13),red). 
rhs(out1_red30_7_26_16_28,sameR,sid_2x1,cxy(12,27),txy(12,27),red). 
rhs(out1_red63_18_16_24_24,rot90,sid_2x1,cxy(21,20),txy(21,20),red). 
rhs(out1_red90_7_16_16_24,sameR,sid_2x1,cxy(12,20),txy(12,20),red). 
rhs(out1_green46_2_6_18_14,rot90,s1956623,cxy(10,10),txy(10,10),green). 
rhs(out1_green29_7_16_24_28,flipD,sid_hollow_diamond_3x3,cxy(16,24),txy(7,25),green). 
rhs(out1_yellow1_6_11_6_11,sameR,sid_1x1,cxy(6,11),txy(6,11),yellow). 
rhs(out1_yellow1_15_8_15_8,sameR,sid_1x1,cxy(15,8),txy(15,8),yellow). 
rhs(out1_yellow1_17_25_17_25,sameR,sid_1x1,cxy(17,25),txy(17,25),yellow). 
rhs(out1_blue513_1_1_30_30,rot90,s13252453,cxy(17,14),txy(1,30),blue). 


%  Objects of Example 3 for input grid (1,1)-(30,30)
lhs(in2_silver2_25_25_25_26,rot90,sid_2x1,cxy(25,26),txy(25,26),silver,no_child). 
lhs(in2_silver2_25_28_25_29,rot90,sid_2x1,cxy(25,29),txy(25,29),silver,no_child). 
lhs(in2_purple3_24_26_24_28,rot90,sid_2x1,cxy(24,27),txy(24,27),purple,no_child). 
lhs(in2_purple3_26_26_26_28,rot90,sid_2x1,cxy(26,27),txy(26,27),purple,no_child). 
lhs(in2_green69_13_17_22_23,rot180,sid_hollow_3x3,cxy(17,20),txy(17,20),green,no_child). 
lhs(in2_green134_2_10_10_24,flipD,sid_hollow_3x3,cxy(6,17),txy(6,17),green,no_child). 
lhs(in2_green206_12_3_27_15,rot180,s5449797,cxy(19,9),txy(19,9),green,no_child). 
lhs(in2_yellow1_5_13_5_13,sameR,sid_1x1,cxy(5,13),txy(5,13),yellow,no_child). 
lhs(in2_yellow1_16_11_16_11,sameR,sid_1x1,cxy(16,11),txy(16,11),yellow,no_child). 
lhs(in2_yellow1_19_21_19_21,sameR,sid_1x1,cxy(19,21),txy(19,21),yellow,no_child). 
lhs(in2_yellow1_24_7_24_7,sameR,sid_1x1,cxy(24,7),txy(24,7),yellow,no_child). 
lhs(in2_yellow1_25_27_25_27,sameR,sid_1x1,cxy(25,27),txy(25,27),yellow,no_child). 
lhs(in2_cyan476_1_1_30_30,rot180,s413424,cxy(16,17),txy(1,1),cyan,no_child). 


%  Objects of Example 3 for output grid (1,1)-(30,30)
rhs(out2_silver2_19_22_19_23,rot90,sid_2x1,cxy(19,23),txy(19,23),silver). 
rhs(out2_purple3_4_12_4_14,rot90,sid_2x1,cxy(4,13),txy(4,13),purple). 
rhs(out2_silver3_5_10_5_12,rot90,sid_2x1,cxy(5,11),txy(5,11),silver). 
rhs(out2_purple3_6_12_6_14,rot90,sid_2x1,cxy(6,13),txy(6,13),purple). 
rhs(out2_purple3_15_10_15_12,rot90,sid_2x1,cxy(15,11),txy(15,11),purple). 
rhs(out2_purple3_17_10_17_12,rot90,sid_2x1,cxy(17,11),txy(17,11),purple). 
rhs(out2_purple3_18_20_18_22,rot90,sid_2x1,cxy(18,21),txy(18,21),purple). 
rhs(out2_purple3_20_20_20_22,rot90,sid_2x1,cxy(20,21),txy(20,21),purple). 
rhs(out2_purple3_23_6_23_8,rot90,sid_2x1,cxy(23,7),txy(23,7),purple). 
rhs(out2_purple3_25_6_25_8,rot90,sid_2x1,cxy(25,7),txy(25,7),purple). 
rhs(out2_silver4_16_12_16_15,rot90,sid_2x1,cxy(16,14),txy(16,14),silver). 
rhs(out2_silver4_19_17_19_20,rot90,sid_2x1,cxy(19,19),txy(19,19),silver). 
rhs(out2_silver4_24_3_24_6,rot90,sid_2x1,cxy(24,5),txy(24,5),silver). 
rhs(out2_silver8_16_3_16_10,rot90,sid_2x1,cxy(16,7),txy(16,7),silver). 
rhs(out2_silver8_24_8_24_15,rot90,sid_2x1,cxy(24,12),txy(24,12),silver). 
rhs(out2_silver11_5_14_5_24,rot90,sid_2x1,cxy(5,19),txy(5,19),silver). 
rhs(out2_green18_20_17_22_23,rot90,sid_u_3x2,cxy(21,20),txy(21,20),green). 
rhs(out2_green36_25_3_27_15,flipD,sid_u_3x2,cxy(26,9),txy(26,9),green). 
rhs(out2_green39_13_17_18_23,flipDHV,sid_u_3x2,cxy(15,20),txy(15,20),green). 
rhs(out2_green42_2_10_4_24,rot270,sid_u_3x2,cxy(3,17),txy(3,17),green). 
rhs(out2_green49_12_3_15_15,flipDHV,sid_u_3x2,cxy(13,9),txy(13,9),green). 
rhs(out2_green72_6_10_10_24,flipD,sid_u_3x2,cxy(8,17),txy(8,17),green). 
rhs(out2_green85_17_3_23_15,flipDHV,s7728596,cxy(20,9),txy(20,9),green). 
rhs(out2_yellow1_5_13_5_13,sameR,sid_1x1,cxy(5,13),txy(5,13),yellow). 
rhs(out2_yellow1_16_11_16_11,sameR,sid_1x1,cxy(16,11),txy(16,11),yellow). 
rhs(out2_yellow1_19_21_19_21,sameR,sid_1x1,cxy(19,21),txy(19,21),yellow). 
rhs(out2_yellow1_24_7_24_7,sameR,sid_1x1,cxy(24,7),txy(24,7),yellow). 
rhs(out2_cyan487_1_1_30_30,sameR,s10828854,cxy(16,17),txy(1,1),cyan). 

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



%  Objects of Exam 1 for input grid (1,1)-(30,30)
lhs(in0_cyan2_2_24_3_24,sameR,sid_2x1,cxy(3,24),txy(3,24),cyan,no_child). 
lhs(in0_cyan2_5_24_6_24,sameR,sid_2x1,cxy(6,24),txy(6,24),cyan,no_child). 
lhs(in0_green3_3_23_5_23,sameR,sid_2x1,cxy(4,23),txy(4,23),green,no_child). 
lhs(in0_green3_3_25_5_25,sameR,sid_2x1,cxy(4,25),txy(4,25),green,no_child). 
lhs(in0_blue119_4_3_15_12,flipV,sid_hollow_3x3,cxy(10,7),txy(4,12),blue,no_child). 
lhs(in0_blue236_13_15_29_28,rot180,s5449797,cxy(21,22),txy(21,22),blue,no_child). 
lhs(in0_red1_4_24_4_24,sameR,sid_1x1,cxy(4,24),txy(4,24),red,no_child). 
lhs(in0_red1_7_10_7_10,sameR,sid_1x1,cxy(7,10),txy(7,10),red,no_child). 
lhs(in0_red1_19_25_19_25,sameR,sid_1x1,cxy(19,25),txy(19,25),red,no_child). 
lhs(in0_red1_24_18_24_18,sameR,sid_1x1,cxy(24,18),txy(24,18),red,no_child). 
lhs(in0_yellow531_1_1_30_30,rot90,s856546,cxy(15,14),txy(30,30),yellow,no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(30,30)
```

Grade your response from:
```prolog
rhs(out0_cyan3_4_10_6_10,sameR,sid_2x1,cxy(5,10),txy(5,10),cyan). 
rhs(out0_green3_6_9_8_9,sameR,sid_2x1,cxy(7,9),txy(7,9),green). 
rhs(out0_green3_6_11_8_11,sameR,sid_2x1,cxy(7,11),txy(7,11),green). 
rhs(out0_green3_18_24_20_24,sameR,sid_2x1,cxy(19,24),txy(19,24),green). 
rhs(out0_green3_18_26_20_26,sameR,sid_2x1,cxy(19,26),txy(19,26),green). 
rhs(out0_green3_23_17_25_17,sameR,sid_2x1,cxy(24,17),txy(24,17),green). 
rhs(out0_green3_23_19_25_19,sameR,sid_2x1,cxy(24,19),txy(24,19),green). 
rhs(out0_cyan5_25_18_29_18,sameR,sid_2x1,cxy(27,18),txy(27,18),cyan). 
rhs(out0_cyan6_13_25_18_25,sameR,sid_2x1,cxy(16,25),txy(16,25),cyan). 
rhs(out0_cyan8_8_10_15_10,sameR,sid_2x1,cxy(12,10),txy(12,10),cyan). 
rhs(out0_cyan10_20_25_29_25,sameR,sid_2x1,cxy(25,25),txy(25,25),cyan). 
rhs(out0_cyan11_13_18_23_18,sameR,sid_2x1,cxy(18,18),txy(18,18),cyan). 
rhs(out0_blue21_4_11_15_12,sameR,sid_u_3x2,cxy(10,12),txy(4,11),blue). 
rhs(out0_blue48_13_26_29_28,sameR,sid_u_3x2,cxy(21,27),txy(21,27),blue). 
rhs(out0_blue48_13_15_29_17,rot180,sid_u_3x2,cxy(21,16),txy(21,16),blue). 
rhs(out0_blue81_4_3_15_9,flipV,sid_u_3x2,cxy(10,6),txy(10,6),blue). 
rhs(out0_blue96_13_19_29_24,rot180,s7728596,cxy(21,22),txy(18,19),blue). 
rhs(out0_red1_7_10_7_10,sameR,sid_1x1,cxy(7,10),txy(7,10),red). 
rhs(out0_red1_19_25_19_25,sameR,sid_1x1,cxy(19,25),txy(19,25),red). 
rhs(out0_red1_24_18_24_18,sameR,sid_1x1,cxy(24,18),txy(24,18),red). 
rhs(out0_yellow542_1_1_30_30,rot90,s13252453,cxy(14,15),txy(30,30),yellow). 
```
if wrong, what rules did you miss?
