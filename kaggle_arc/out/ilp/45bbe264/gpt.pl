% =======================================

Riddle v(45bbe264)

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




Title: v(45bbe264)

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


%  Objects of Example 1 for input grid (1,1)-(16,16)
lhs(in0_black0_4_2_6_4,sameR,sid_hollow_3x3,cxy(5,3),txy(9,5),no_child). 
lhs(in0_black0_10_9_12_11,sameR,sid_hollow_3x3,cxy(12,11),txy(21,19),no_child). 
lhs(in0_cyan1_5_3_5_3,sameR,sid_1x1,cxy(5,3),txy(5,3),no_child). 
lhs(in0_silver1_11_10_11_10,sameR,sid_1x1,cxy(11,10),txy(11,10),no_child). 


%  Objects of Example 1 for output grid (1,1)-(16,16)
rhs(out0_silver2_11_1_11_2,rot90,sid_2x1,cxy(11,2),txy(11,2)). 
rhs(out0_black0_5_1_5_2,sameR,sid_1x2,cxy(5,2),txy(5,2)). 
rhs(out0_silver4_1_10_4_10,sameR,sid_2x1,cxy(3,10),txy(3,10)). 
rhs(out0_black0_1_3_4_3,rot90,sid_1x2,cxy(3,3),txy(3,3)). 
rhs(out0_cyan5_12_3_16_3,sameR,sid_2x1,cxy(14,3),txy(14,3)). 
rhs(out0_black0_12_10_16_10,rot90,sid_1x2,cxy(14,10),txy(14,10)). 
rhs(out0_cyan6_5_11_5_16,rot90,sid_2x1,cxy(5,14),txy(5,14)). 
rhs(out0_black0_11_11_11_16,sameR,sid_1x2,cxy(11,14),txy(11,14)). 
rhs(out0_black0_1_1_4_2,rot90,sid_1x2,cxy(3,2),txy(1,1)). 
rhs(out0_black0_6_1_10_2,rot90,sid_1x2,cxy(8,2),txy(8,2)). 
rhs(out0_black0_12_1_16_2,rot90,sid_1x2,cxy(14,2),txy(14,2)). 
rhs(out0_black0_1_4_4_9,sameR,sid_1x2,cxy(3,7),txy(1,4)). 
rhs(out0_black0_1_11_4_16,sameR,sid_1x2,cxy(3,14),txy(1,11)). 
rhs(out0_black0_6_4_10_9,sameR,sid_1x2,cxy(8,7),txy(8,7)). 
rhs(out0_black0_6_11_10_16,sameR,sid_1x2,cxy(8,14),txy(8,14)). 
rhs(out0_black0_12_4_16_9,sameR,sid_1x2,cxy(14,7),txy(14,7)). 
rhs(out0_black0_12_11_16_16,sameR,sid_1x2,cxy(14,14),txy(14,14)). 
rhs(out0_cyan18_1_1_10_9,flipDHV,sid_plus_3x3,cxy(5,4),txy(10,3)). 
rhs(out0_black0_6_1_16_9,rot90,sid_plus_3x3,cxy(11,4),txy(11,4)). 
rhs(out0_black0_1_4_10_16,sameR,sid_plus_3x3,cxy(5,10),txy(5,10)). 
rhs(out0_silver23_6_4_16_16,sameR,sid_plus_3x3,cxy(11,10),txy(11,10)). 
rhs(out0_cyan1_5_3_5_3,sameR,sid_1x1,cxy(5,3),txy(5,3)). 
rhs(out0_red1_5_10_5_10,sameR,sid_1x1,cxy(5,10),txy(5,10)). 
rhs(out0_red1_11_3_11_3,sameR,sid_1x1,cxy(11,3),txy(11,3)). 
rhs(out0_silver1_11_10_11_10,sameR,sid_1x1,cxy(11,10),txy(11,10)). 


%  Objects of Example 2 for input grid (1,1)-(14,14)
lhs(in1_black0_3_10_5_12,sameR,sid_hollow_3x3,cxy(4,12),txy(7,21),no_child). 
lhs(in1_black0_9_5_11_7,sameR,sid_hollow_3x3,cxy(11,7),txy(19,11),no_child). 
lhs(in1_yellow1_4_11_4_11,sameR,sid_1x1,cxy(4,11),txy(4,11),no_child). 
lhs(in1_green1_10_6_10_6,sameR,sid_1x1,cxy(10,6),txy(10,6),no_child). 


%  Objects of Example 2 for output grid (1,1)-(14,14)
rhs(out1_green3_10_12_10_14,rot90,sid_2x1,cxy(10,13),txy(10,13)). 
rhs(out1_green3_1_6_3_6,sameR,sid_2x1,cxy(2,6),txy(2,6)). 
rhs(out1_black0_1_11_3_11,rot90,sid_1x2,cxy(2,11),txy(2,11)). 
rhs(out1_black0_4_12_4_14,sameR,sid_1x2,cxy(4,13),txy(4,13)). 
rhs(out1_yellow4_11_11_14_11,sameR,sid_2x1,cxy(13,11),txy(13,11)). 
rhs(out1_black0_11_6_14_6,rot90,sid_1x2,cxy(13,6),txy(13,6)). 
rhs(out1_yellow5_4_1_4_5,rot90,sid_2x1,cxy(4,3),txy(4,3)). 
rhs(out1_black0_10_1_10_5,sameR,sid_1x2,cxy(10,3),txy(10,3)). 
rhs(out1_black0_1_12_3_14,sameR,sid_1x1,cxy(2,13),txy(2,13)). 
rhs(out1_black0_11_12_14_14,rot90,sid_1x2,cxy(13,13),txy(13,13)). 
rhs(out1_black0_1_7_3_10,sameR,sid_1x2,cxy(2,9),txy(2,9)). 
rhs(out1_black0_5_12_9_14,rot90,sid_1x2,cxy(7,13),txy(7,13)). 
rhs(out1_black0_1_1_3_5,sameR,sid_1x2,cxy(2,3),txy(2,3)). 
rhs(out1_black0_11_7_14_10,sameR,sid_1x1,cxy(13,9),txy(11,7)). 
rhs(out1_black0_5_7_9_10,rot90,sid_1x2,cxy(7,9),txy(7,9)). 
rhs(out1_black0_11_1_14_5,sameR,sid_1x2,cxy(13,3),txy(13,3)). 
rhs(out1_black0_5_1_9_5,sameR,sid_1x1,cxy(7,3),txy(7,3)). 
rhs(out1_yellow16_1_7_9_14,rot270,sid_plus_3x3,cxy(5,11),txy(4,7)). 
rhs(out1_black0_5_7_14_14,rot90,sid_plus_3x3,cxy(10,11),txy(10,11)). 
rhs(out1_black0_1_1_9_10,sameR,sid_plus_3x3,cxy(5,6),txy(4,1)). 
rhs(out1_green19_5_1_14_10,sameR,sid_plus_3x3,cxy(10,6),txy(10,6)). 
rhs(out1_red1_4_6_4_6,sameR,sid_1x1,cxy(4,6),txy(4,6)). 
rhs(out1_yellow1_4_11_4_11,sameR,sid_1x1,cxy(4,11),txy(4,11)). 
rhs(out1_green1_10_6_10_6,sameR,sid_1x1,cxy(10,6),txy(10,6)). 
rhs(out1_red1_10_11_10_11,sameR,sid_1x1,cxy(10,11),txy(10,11)). 


%  Objects of Example 3 for input grid (1,1)-(13,13)
lhs(in2_black0_2_4_4_6,sameR,sid_hollow_3x3,cxy(3,5),txy(5,9),no_child). 
lhs(in2_black0_7_11_9_13,sameR,sid_hollow_3x3,cxy(9,13),txy(15,23),no_child). 
lhs(in2_black0_11_2_13_4,sameR,sid_hollow_3x3,cxy(13,3),txy(23,5),no_child). 
lhs(in2_silver1_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5),no_child). 
lhs(in2_orange1_8_12_8_12,sameR,sid_1x1,cxy(8,12),txy(8,12),no_child). 
lhs(in2_green1_12_3_12_3,sameR,sid_1x1,cxy(12,3),txy(12,3),no_child). 


%  Objects of Example 3 for output grid (1,1)-(13,13)
rhs(out2_silver2_3_1_3_2,rot90,sid_2x1,cxy(3,2),txy(3,2)). 
rhs(out2_orange2_8_1_8_2,rot90,sid_2x1,cxy(8,2),txy(8,2)). 
rhs(out2_green2_1_3_2_3,sameR,sid_2x1,cxy(2,3),txy(2,3)). 
rhs(out2_orange2_1_12_2_12,sameR,sid_2x1,cxy(2,12),txy(2,12)). 
rhs(out2_black0_1_4_2_4,rot90,sid_1x2,cxy(2,4),txy(2,4)). 
rhs(out2_black0_1_5_2_5,rot90,sid_1x2,cxy(2,5),txy(2,5)). 
rhs(out2_black0_1_13_2_13,rot90,sid_1x2,cxy(2,13),txy(2,13)). 
rhs(out2_black0_12_1_12_2,sameR,sid_1x2,cxy(12,2),txy(12,2)). 
rhs(out2_black0_13_1_13_2,sameR,sid_1x2,cxy(13,2),txy(13,2)). 
rhs(out2_silver3_9_5_11_5,sameR,sid_2x1,cxy(10,5),txy(10,5)). 
rhs(out2_black0_9_4_11_4,rot90,sid_1x2,cxy(10,4),txy(10,4)). 
rhs(out2_black0_9_13_11_13,rot90,sid_1x2,cxy(10,13),txy(10,13)). 
rhs(out2_green4_4_3_7_3,sameR,sid_2x1,cxy(6,3),txy(6,3)). 
rhs(out2_black0_4_4_7_4,rot90,sid_1x2,cxy(6,4),txy(6,4)). 
rhs(out2_black0_4_13_7_13,rot90,sid_1x2,cxy(6,13),txy(6,13)). 
rhs(out2_black0_1_1_2_2,sameR,sid_1x1,cxy(2,2),txy(1,1)). 
rhs(out2_green6_12_6_12_11,rot90,sid_2x1,cxy(12,9),txy(12,9)). 
rhs(out2_black0_13_6_13_11,sameR,sid_1x2,cxy(13,9),txy(13,9)). 
rhs(out2_black0_9_1_11_2,rot90,sid_1x2,cxy(10,2),txy(10,2)). 
rhs(out2_black0_4_1_7_2,rot90,sid_1x2,cxy(6,2),txy(4,1)). 
rhs(out2_black0_1_6_2_11,sameR,sid_1x2,cxy(2,9),txy(1,6)). 
rhs(out2_black0_9_6_11_11,sameR,sid_1x2,cxy(10,9),txy(10,9)). 
rhs(out2_green8_9_1_13_4,flipD,sid_plus_3x3,cxy(11,3),txy(12,1)). 
rhs(out2_black0_4_6_7_11,sameR,sid_1x2,cxy(6,9),txy(4,6)). 
rhs(out2_silver14_1_4_7_11,rot180,sid_plus_3x3,cxy(4,6),txy(3,11)). 
rhs(out2_black0_1_6_7_13,sameR,sid_plus_3x3,cxy(4,11),txy(3,6)). 
rhs(out2_orange15_4_6_11_13,sameR,sid_plus_3x3,cxy(8,11),txy(4,12)). 
rhs(out2_red1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3)). 
rhs(out2_silver1_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5)). 
rhs(out2_red1_3_12_3_12,sameR,sid_1x1,cxy(3,12),txy(3,12)). 
rhs(out2_silver1_3_13_3_13,sameR,sid_1x1,cxy(3,13),txy(3,13)). 
rhs(out2_red1_8_3_8_3,sameR,sid_1x1,cxy(8,3),txy(8,3)). 
rhs(out2_orange1_8_4_8_4,sameR,sid_1x1,cxy(8,4),txy(8,4)). 
rhs(out2_red1_8_5_8_5,sameR,sid_1x1,cxy(8,5),txy(8,5)). 
rhs(out2_orange1_8_12_8_12,sameR,sid_1x1,cxy(8,12),txy(8,12)). 
rhs(out2_black0_8_13_8_13,sameR,sid_1x1,cxy(8,13),txy(8,13)). 
rhs(out2_green1_12_3_12_3,sameR,sid_1x1,cxy(12,3),txy(12,3)). 
rhs(out2_red1_12_5_12_5,sameR,sid_1x1,cxy(12,5),txy(12,5)). 
rhs(out2_red1_12_12_12_12,sameR,sid_1x1,cxy(12,12),txy(12,12)). 
rhs(out2_green1_12_13_12_13,sameR,sid_1x1,cxy(12,13),txy(12,13)). 
rhs(out2_black0_13_3_13_3,sameR,sid_1x1,cxy(13,3),txy(13,3)). 
rhs(out2_black0_13_4_13_4,sameR,sid_1x1,cxy(13,4),txy(13,4)). 
rhs(out2_silver1_13_5_13_5,sameR,sid_1x1,cxy(13,5),txy(13,5)). 
rhs(out2_orange1_13_12_13_12,sameR,sid_1x1,cxy(13,12),txy(13,12)). 
rhs(out2_black0_13_13_13_13,sameR,sid_1x1,cxy(13,13),txy(13,13)). 

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



%  Objects of Exam 1 for input grid (1,1)-(15,15)
lhs(in0_cyan1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),no_child). 
lhs(in0_blue1_7_13_7_13,sameR,sid_1x1,cxy(7,13),txy(7,13),no_child). 
lhs(in0_yellow1_11_7_11_7,sameR,sid_1x1,cxy(11,7),txy(11,7),no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(15,15)
```

Grade your response from:
```prolog
rhs(out0_cyan2_4_14_4_15,rot90,sid_2x1,cxy(4,15),txy(4,15)). 
rhs(out0_blue2_7_1_7_2,rot90,sid_2x1,cxy(7,2),txy(7,2)). 
rhs(out0_yellow2_11_1_11_2,rot90,sid_2x1,cxy(11,2),txy(11,2)). 
rhs(out0_yellow2_11_14_11_15,rot90,sid_2x1,cxy(11,15),txy(11,15)). 
rhs(out0_yellow2_5_7_6_7,sameR,sid_2x1,cxy(6,7),txy(6,7)). 
rhs(out0_blue3_7_4_7_6,rot90,sid_2x1,cxy(7,5),txy(7,5)). 
rhs(out0_yellow3_1_7_3_7,sameR,sid_2x1,cxy(2,7),txy(2,7)). 
rhs(out0_blue3_1_13_3_13,sameR,sid_2x1,cxy(2,13),txy(2,13)). 
rhs(out0_cyan3_8_3_10_3,sameR,sid_2x1,cxy(9,3),txy(9,3)). 
rhs(out0_cyan4_12_3_15_3,sameR,sid_2x1,cxy(14,3),txy(14,3)). 
rhs(out0_blue4_12_13_15_13,sameR,sid_2x1,cxy(14,13),txy(14,13)). 
rhs(out0_black0_5_1_6_2,sameR,sid_1x1,cxy(6,2),txy(5,1)). 
rhs(out0_black0_5_14_6_15,sameR,sid_1x1,cxy(6,15),txy(5,14)). 
rhs(out0_cyan5_4_8_4_12,rot90,sid_2x1,cxy(4,10),txy(4,10)). 
rhs(out0_black0_1_1_3_2,rot90,sid_1x2,cxy(2,2),txy(2,2)). 
rhs(out0_black0_1_14_3_15,rot90,sid_1x2,cxy(2,15),txy(2,15)). 
rhs(out0_black0_8_1_10_2,rot90,sid_1x2,cxy(9,2),txy(9,2)). 
rhs(out0_black0_8_14_10_15,rot90,sid_1x2,cxy(9,15),txy(9,15)). 
rhs(out0_black0_5_4_6_6,sameR,sid_1x2,cxy(6,5),txy(6,5)). 
rhs(out0_black0_12_1_15_2,rot90,sid_1x2,cxy(14,2),txy(12,1)). 
rhs(out0_black0_12_14_15_15,rot90,sid_1x2,cxy(14,15),txy(12,14)). 
rhs(out0_black0_1_4_3_6,sameR,sid_1x1,cxy(2,5),txy(2,5)). 
rhs(out0_black0_8_4_10_6,sameR,sid_1x1,cxy(9,5),txy(9,5)). 
rhs(out0_black0_5_8_6_12,sameR,sid_1x2,cxy(6,10),txy(6,10)). 
rhs(out0_black0_12_4_15_6,rot90,sid_1x2,cxy(14,5),txy(14,5)). 
rhs(out0_black0_1_8_3_12,sameR,sid_1x2,cxy(2,10),txy(2,10)). 
rhs(out0_black0_8_8_10_12,sameR,sid_1x2,cxy(9,10),txy(9,10)). 
rhs(out0_black0_12_8_15_12,sameR,sid_1x2,cxy(14,10),txy(14,10)). 
rhs(out0_cyan11_1_1_6_6,rot90,sid_plus_3x3,cxy(4,3),txy(4,3)). 
rhs(out0_blue13_5_8_10_15,flipH,sid_plus_3x3,cxy(7,12),txy(10,13)). 
rhs(out0_yellow16_8_4_15_12,rot180,sid_plus_3x3,cxy(11,8),txy(15,7)). 
rhs(out0_red1_4_7_4_7,sameR,sid_1x1,cxy(4,7),txy(4,7)). 
rhs(out0_red1_4_13_4_13,sameR,sid_1x1,cxy(4,13),txy(4,13)). 
rhs(out0_red1_7_3_7_3,sameR,sid_1x1,cxy(7,3),txy(7,3)). 
rhs(out0_red1_7_7_7_7,sameR,sid_1x1,cxy(7,7),txy(7,7)). 
rhs(out0_red1_11_3_11_3,sameR,sid_1x1,cxy(11,3),txy(11,3)). 
rhs(out0_red1_11_13_11_13,sameR,sid_1x1,cxy(11,13),txy(11,13)). 
```
if wrong, what rules did you miss?
