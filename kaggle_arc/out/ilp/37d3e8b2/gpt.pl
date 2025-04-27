% =======================================

Riddle v(37d3e8b2)

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




Title: v(37d3e8b2)

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


%  Objects of Example 1 for input grid (1,1)-(17,19)
lhs(in0_black0_11_11_12_11,rot90,sid_1x2,cxy(12,11),txy(12,11),black,no_child). 
lhs(in0_black0_13_15_14_15,rot90,sid_1x2,cxy(14,15),txy(14,15),black,no_child). 
lhs(in0_black0_14_11_15_11,rot90,sid_1x2,cxy(15,11),txy(15,11),black,no_child). 
lhs(in0_black0_11_5_11_6,sameR,sid_1x2,cxy(11,6),txy(11,6),black,no_child). 
lhs(in0_cyan11_2_2_4_5,rot270,sid_hollow_3x3,cxy(3,4),txy(3,4),cyan,1). 
lhs(in0_cyan19_4_11_7_15,rot90,sid_hollow_3x3,cxy(6,13),txy(6,13),cyan,1). 
lhs(in0_cyan17_12_14_15_18,flipD,s1774494,cxy(14,16),txy(14,16),cyan,2). 
lhs(in0_cyan17_10_10_16_12,sameR,s16201681,cxy(13,11),txy(13,11),cyan,2). 
lhs(in0_cyan31_6_4_12_8,rot180,s5123897,cxy(9,6),txy(9,6),cyan,3). 
lhs(in0_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),black,no_child). 
lhs(in0_black0_5_13_5_13,sameR,sid_1x1,cxy(5,13),txy(5,13),black,no_child). 
lhs(in0_black0_7_6_7_6,sameR,sid_1x1,cxy(7,6),txy(7,6),black,no_child). 
lhs(in0_black0_9_7_9_7,sameR,sid_1x1,cxy(9,7),txy(9,7),black,no_child). 
lhs(in0_black0_13_17_13_17,sameR,sid_1x1,cxy(13,17),txy(13,17),black,no_child). 
lhs(in0_black0_1_1_17_19,sameR,s60707,cxy(9,10),txy(14,5),black,no_child). 


%  Objects of Example 1 for output grid (1,1)-(17,19)
rhs(out0_black0_11_11_12_11,rot90,sid_1x2,cxy(12,11),txy(12,11),black). 
rhs(out0_black0_13_15_14_15,rot90,sid_1x2,cxy(14,15),txy(14,15),black). 
rhs(out0_black0_14_11_15_11,rot90,sid_1x2,cxy(15,11),txy(15,11),black). 
rhs(out0_black0_11_5_11_6,sameR,sid_1x2,cxy(11,6),txy(11,6),black). 
rhs(out0_blue11_2_2_4_5,rot270,sid_hollow_3x3,cxy(3,4),txy(3,4),blue). 
rhs(out0_blue19_4_11_7_15,rot90,sid_hollow_3x3,cxy(6,13),txy(6,13),blue). 
rhs(out0_red17_12_14_15_18,flipD,s1774494,cxy(14,16),txy(14,16),red). 
rhs(out0_red17_10_10_16_12,sameR,s16201681,cxy(13,11),txy(13,11),red). 
rhs(out0_green31_6_4_12_8,rot180,s5123897,cxy(9,6),txy(9,6),green). 
rhs(out0_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),black). 
rhs(out0_black0_5_13_5_13,sameR,sid_1x1,cxy(5,13),txy(5,13),black). 
rhs(out0_black0_7_6_7_6,sameR,sid_1x1,cxy(7,6),txy(7,6),black). 
rhs(out0_black0_9_7_9_7,sameR,sid_1x1,cxy(9,7),txy(9,7),black). 
rhs(out0_black0_13_17_13_17,sameR,sid_1x1,cxy(13,17),txy(13,17),black). 
rhs(out0_black0_1_1_17_19,sameR,s60707,cxy(9,10),txy(14,5),black). 


%  Objects of Example 2 for input grid (1,1)-(17,17)
lhs(in1_black0_7_8_8_8,rot90,sid_1x2,cxy(8,8),txy(8,8),black,no_child). 
lhs(in1_black0_13_9_14_9,rot90,sid_1x2,cxy(14,9),txy(14,9),black,no_child). 
lhs(in1_black0_15_14_15_15,sameR,sid_1x2,cxy(15,15),txy(15,15),black,no_child). 
lhs(in1_black0_4_3_5_4,sameR,sid_1x1,cxy(5,4),txy(4,3),black,no_child). 
lhs(in1_cyan14_12_8_15_11,sameR,sid_hollow_3x3,cxy(14,10),txy(12,8),cyan,1). 
lhs(in1_cyan18_2_13_6_16,sameR,s3896953,cxy(4,15),txy(4,15),cyan,2). 
lhs(in1_cyan17_6_7_9_11,rot270,s1774494,cxy(7,9),txy(7,9),cyan,2). 
lhs(in1_cyan19_3_2_8_5,sameR,s1774494,cxy(6,4),txy(3,2),cyan,2). 
lhs(in1_cyan22_12_2_16_6,sameR,s554292,cxy(14,4),txy(14,4),cyan,3). 
lhs(in1_cyan30_10_13_16_17,sameR,s7751306,cxy(13,15),txy(13,15),cyan,4). 
lhs(in1_black0_3_15_3_15,sameR,sid_1x1,cxy(3,15),txy(3,15),black,no_child). 
lhs(in1_black0_5_14_5_14,sameR,sid_1x1,cxy(5,14),txy(5,14),black,no_child). 
lhs(in1_black0_7_3_7_3,sameR,sid_1x1,cxy(7,3),txy(7,3),black,no_child). 
lhs(in1_black0_8_10_8_10,sameR,sid_1x1,cxy(8,10),txy(8,10),black,no_child). 
lhs(in1_black0_11_14_11_14,sameR,sid_1x1,cxy(11,14),txy(11,14),black,no_child). 
lhs(in1_black0_11_16_11_16,sameR,sid_1x1,cxy(11,16),txy(11,16),black,no_child). 
lhs(in1_black0_13_3_13_3,sameR,sid_1x1,cxy(13,3),txy(13,3),black,no_child). 
lhs(in1_black0_13_5_13_5,sameR,sid_1x1,cxy(13,5),txy(13,5),black,no_child). 
lhs(in1_black0_13_15_13_15,sameR,sid_1x1,cxy(13,15),txy(13,15),black,no_child). 
lhs(in1_black0_15_4_15_4,sameR,sid_1x1,cxy(15,4),txy(15,4),black,no_child). 
lhs(in1_black0_1_1_17_17,sameR,s2072561,cxy(8,9),txy(16,1),black,no_child). 


%  Objects of Example 2 for output grid (1,1)-(17,17)
rhs(out1_black0_7_8_8_8,rot90,sid_1x2,cxy(8,8),txy(8,8),black). 
rhs(out1_black0_13_9_14_9,rot90,sid_1x2,cxy(14,9),txy(14,9),black). 
rhs(out1_black0_15_14_15_15,sameR,sid_1x2,cxy(15,15),txy(15,15),black). 
rhs(out1_black0_4_3_5_4,sameR,sid_1x1,cxy(5,4),txy(4,3),black). 
rhs(out1_blue14_12_8_15_11,sameR,sid_hollow_3x3,cxy(14,10),txy(12,8),blue). 
rhs(out1_red18_2_13_6_16,sameR,s3896953,cxy(4,15),txy(4,15),red). 
rhs(out1_red17_6_7_9_11,rot270,s1774494,cxy(7,9),txy(7,9),red). 
rhs(out1_red19_3_2_8_5,sameR,s1774494,cxy(6,4),txy(3,2),red). 
rhs(out1_green22_12_2_16_6,sameR,s554292,cxy(14,4),txy(14,4),green). 
rhs(out1_orange30_10_13_16_17,sameR,s7751306,cxy(13,15),txy(13,15),orange). 
rhs(out1_black0_3_15_3_15,sameR,sid_1x1,cxy(3,15),txy(3,15),black). 
rhs(out1_black0_5_14_5_14,sameR,sid_1x1,cxy(5,14),txy(5,14),black). 
rhs(out1_black0_7_3_7_3,sameR,sid_1x1,cxy(7,3),txy(7,3),black). 
rhs(out1_black0_8_10_8_10,sameR,sid_1x1,cxy(8,10),txy(8,10),black). 
rhs(out1_black0_11_14_11_14,sameR,sid_1x1,cxy(11,14),txy(11,14),black). 
rhs(out1_black0_11_16_11_16,sameR,sid_1x1,cxy(11,16),txy(11,16),black). 
rhs(out1_black0_13_3_13_3,sameR,sid_1x1,cxy(13,3),txy(13,3),black). 
rhs(out1_black0_13_5_13_5,sameR,sid_1x1,cxy(13,5),txy(13,5),black). 
rhs(out1_black0_13_15_13_15,sameR,sid_1x1,cxy(13,15),txy(13,15),black). 
rhs(out1_black0_15_4_15_4,sameR,sid_1x1,cxy(15,4),txy(15,4),black). 
rhs(out1_black0_1_1_17_17,sameR,s2072561,cxy(8,9),txy(16,1),black). 


%  Objects of Example 3 for input grid (1,1)-(16,17)
lhs(in2_black0_5_15_6_15,rot90,sid_1x2,cxy(6,15),txy(6,15),black,no_child). 
lhs(in2_black0_10_5_11_5,rot90,sid_1x2,cxy(11,5),txy(11,5),black,no_child). 
lhs(in2_black0_11_7_12_7,rot90,sid_1x2,cxy(12,7),txy(12,7),black,no_child). 
lhs(in2_black0_14_16_15_16,rot90,sid_1x2,cxy(15,16),txy(15,16),black,no_child). 
lhs(in2_black0_4_9_4_10,sameR,sid_1x2,cxy(4,10),txy(4,10),black,no_child). 
lhs(in2_black0_6_10_6_11,sameR,sid_1x2,cxy(6,11),txy(6,11),black,no_child). 
lhs(in2_black0_3_3_4_4,sameR,sid_1x1,cxy(4,4),txy(3,3),black,no_child). 
lhs(in2_cyan25_11_13_16_17,flipV,s16667395,cxy(14,15),txy(14,15),cyan,4). 
lhs(in2_cyan24_2_2_7_6,flipH,s10132419,cxy(5,4),txy(4,5),cyan,3). 
lhs(in2_cyan25_9_4_14_8,sameR,s12420848,cxy(12,6),txy(13,7),cyan,3). 
lhs(in2_cyan38_3_8_7_16,rot270,s7428557,cxy(5,12),txy(5,12),cyan,4). 
lhs(in2_black0_4_13_4_13,sameR,sid_1x1,cxy(4,13),txy(4,13),black,no_child). 
lhs(in2_black0_6_3_6_3,sameR,sid_1x1,cxy(6,3),txy(6,3),black,no_child). 
lhs(in2_black0_6_5_6_5,sameR,sid_1x1,cxy(6,5),txy(6,5),black,no_child). 
lhs(in2_black0_12_14_12_14,sameR,sid_1x1,cxy(12,14),txy(12,14),black,no_child). 
lhs(in2_black0_12_16_12_16,sameR,sid_1x1,cxy(12,16),txy(12,16),black,no_child). 
lhs(in2_black0_13_5_13_5,sameR,sid_1x1,cxy(13,5),txy(13,5),black,no_child). 
lhs(in2_black0_14_14_14_14,sameR,sid_1x1,cxy(14,14),txy(14,14),black,no_child). 
lhs(in2_black0_1_1_16_17,sameR,s13398664,cxy(9,8),txy(1,17),black,no_child). 


%  Objects of Example 3 for output grid (1,1)-(16,17)
rhs(out2_black0_5_15_6_15,rot90,sid_1x2,cxy(6,15),txy(6,15),black). 
rhs(out2_black0_10_5_11_5,rot90,sid_1x2,cxy(11,5),txy(11,5),black). 
rhs(out2_black0_11_7_12_7,rot90,sid_1x2,cxy(12,7),txy(12,7),black). 
rhs(out2_black0_14_16_15_16,rot90,sid_1x2,cxy(15,16),txy(15,16),black). 
rhs(out2_black0_4_9_4_10,sameR,sid_1x2,cxy(4,10),txy(4,10),black). 
rhs(out2_black0_6_10_6_11,sameR,sid_1x2,cxy(6,11),txy(6,11),black). 
rhs(out2_black0_3_3_4_4,sameR,sid_1x1,cxy(4,4),txy(3,3),black). 
rhs(out2_orange25_11_13_16_17,flipV,s16667395,cxy(14,15),txy(14,15),orange). 
rhs(out2_green24_2_2_7_6,flipH,s10132419,cxy(5,4),txy(4,5),green). 
rhs(out2_green25_9_4_14_8,sameR,s12420848,cxy(12,6),txy(13,7),green). 
rhs(out2_orange38_3_8_7_16,rot270,s7428557,cxy(5,12),txy(5,12),orange). 
rhs(out2_black0_4_13_4_13,sameR,sid_1x1,cxy(4,13),txy(4,13),black). 
rhs(out2_black0_6_3_6_3,sameR,sid_1x1,cxy(6,3),txy(6,3),black). 
rhs(out2_black0_6_5_6_5,sameR,sid_1x1,cxy(6,5),txy(6,5),black). 
rhs(out2_black0_12_14_12_14,sameR,sid_1x1,cxy(12,14),txy(12,14),black). 
rhs(out2_black0_12_16_12_16,sameR,sid_1x1,cxy(12,16),txy(12,16),black). 
rhs(out2_black0_13_5_13_5,sameR,sid_1x1,cxy(13,5),txy(13,5),black). 
rhs(out2_black0_14_14_14_14,sameR,sid_1x1,cxy(14,14),txy(14,14),black). 
rhs(out2_black0_1_1_16_17,sameR,s13398664,cxy(9,8),txy(1,17),black). 

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



%  Objects of Exam 1 for input grid (1,1)-(18,17)
lhs(in0_black0_4_8_5_8,rot90,sid_1x2,cxy(5,8),txy(5,8),black,no_child). 
lhs(in0_black0_10_5_11_5,rot90,sid_1x2,cxy(11,5),txy(11,5),black,no_child). 
lhs(in0_black0_12_9_13_9,rot90,sid_1x2,cxy(13,9),txy(13,9),black,no_child). 
lhs(in0_black0_4_2_4_3,sameR,sid_1x2,cxy(4,3),txy(4,3),black,no_child). 
lhs(in0_black0_12_12_12_13,sameR,sid_1x2,cxy(12,13),txy(12,13),black,no_child). 
lhs(in0_black0_3_13_4_14,sameR,sid_1x1,cxy(4,14),txy(3,13),black,no_child). 
lhs(in0_black0_13_3_14_4,sameR,sid_1x1,cxy(14,4),txy(13,3),black,no_child). 
lhs(in0_black0_14_14_15_15,sameR,sid_1x1,cxy(15,15),txy(14,14),black,no_child). 
lhs(in0_black0_15_10_16_11,sameR,sid_1x1,cxy(16,11),txy(15,10),black,no_child). 
lhs(in0_cyan10_3_7_6_9,sameR,sid_hollow_3x3,cxy(5,8),txy(5,8),cyan,1). 
lhs(in0_cyan17_3_1_7_4,sameR,s1774494,cxy(5,3),txy(5,3),cyan,2). 
lhs(in0_cyan30_2_12_8_16,flipV,s3896953,cxy(5,14),txy(5,14),cyan,2). 
lhs(in0_cyan28_9_2_15_6,sameR,s9988858,cxy(12,4),txy(12,4),cyan,3). 
lhs(in0_cyan51_11_8_17_16,rot270,s4868841,cxy(14,12),txy(14,12),cyan,4). 
lhs(in0_black0_6_2_6_2,sameR,sid_1x1,cxy(6,2),txy(6,2),black,no_child). 
lhs(in0_black0_6_15_6_15,sameR,sid_1x1,cxy(6,15),txy(6,15),black,no_child). 
lhs(in0_black0_10_3_10_3,sameR,sid_1x1,cxy(10,3),txy(10,3),black,no_child). 
lhs(in0_black0_1_1_18_17,rot90,s12807200,cxy(9,9),txy(4,5),black,no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(18,17)
```

Grade your response from:
```prolog
rhs(out0_black0_4_8_5_8,rot90,sid_1x2,cxy(5,8),txy(5,8),black). 
rhs(out0_black0_10_5_11_5,rot90,sid_1x2,cxy(11,5),txy(11,5),black). 
rhs(out0_black0_12_9_13_9,rot90,sid_1x2,cxy(13,9),txy(13,9),black). 
rhs(out0_black0_4_2_4_3,sameR,sid_1x2,cxy(4,3),txy(4,3),black). 
rhs(out0_black0_12_12_12_13,sameR,sid_1x2,cxy(12,13),txy(12,13),black). 
rhs(out0_black0_3_13_4_14,sameR,sid_1x1,cxy(4,14),txy(3,13),black). 
rhs(out0_black0_13_3_14_4,sameR,sid_1x1,cxy(14,4),txy(13,3),black). 
rhs(out0_black0_14_14_15_15,sameR,sid_1x1,cxy(15,15),txy(14,14),black). 
rhs(out0_black0_15_10_16_11,sameR,sid_1x1,cxy(16,11),txy(15,10),black). 
rhs(out0_blue10_3_7_6_9,sameR,sid_hollow_3x3,cxy(5,8),txy(5,8),blue). 
rhs(out0_red17_3_1_7_4,sameR,s1774494,cxy(5,3),txy(5,3),red). 
rhs(out0_red30_2_12_8_16,flipV,s3896953,cxy(5,14),txy(5,14),red). 
rhs(out0_green28_9_2_15_6,sameR,s9988858,cxy(12,4),txy(12,4),green). 
rhs(out0_orange51_11_8_17_16,rot270,s4868841,cxy(14,12),txy(14,12),orange). 
rhs(out0_black0_6_2_6_2,sameR,sid_1x1,cxy(6,2),txy(6,2),black). 
rhs(out0_black0_6_15_6_15,sameR,sid_1x1,cxy(6,15),txy(6,15),black). 
rhs(out0_black0_10_3_10_3,sameR,sid_1x1,cxy(10,3),txy(10,3),black). 
rhs(out0_black0_1_1_18_17,rot90,s12807200,cxy(9,9),txy(4,5),black). 
```
if wrong, what rules did you miss?
