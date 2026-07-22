% =======================================

Riddle v(cad67732)

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


1. **ObjectID**: A unique identifier that denotes color, size, 2d nw corner xy, center xy se corner x,y  and special tip xy.
2. **Rotation**:
3. **Shape ID**: An identifier for the normalized shape of the object.
In the left-hand-side (lhs) facts can be longer and specialize the normalized shape


```prolog


%  Objects of Example 1 for input grid (1,1)-(6,6)
lhs(in0_green1_6_6_6_6,sameR,sid_11,center(6,6),tip_loc(6,6),no_child). 
lhs(in0_red1_5_6_5_6,sameR,sid_11,center(5,6),tip_loc(5,6),no_child). 
lhs(in0_red1_6_5_6_5,sameR,sid_11,center(6,5),tip_loc(6,5),no_child). 
lhs(in0_green1_5_5_5_5,sameR,sid_11,center(5,5),tip_loc(5,5),no_child). 
lhs(in0_blue1_4_5_4_5,sameR,sid_11,center(4,5),tip_loc(4,5),no_child). 
lhs(in0_blue1_5_4_5_4,sameR,sid_11,center(5,4),tip_loc(5,4),no_child). 
lhs(in0_yellow1_4_4_4_4,sameR,sid_11,center(4,4),tip_loc(4,4),no_child). 
lhs(in0_blue1_3_4_3_4,sameR,sid_11,center(3,4),tip_loc(3,4),no_child). 
lhs(in0_blue1_4_3_4_3,sameR,sid_11,center(4,3),tip_loc(4,3),no_child). 
lhs(in0_green1_3_3_3_3,sameR,sid_11,center(3,3),tip_loc(3,3),no_child). 
lhs(in0_red1_2_3_2_3,sameR,sid_11,center(2,3),tip_loc(2,3),no_child). 
lhs(in0_red1_3_2_3_2,sameR,sid_11,center(3,2),tip_loc(3,2),no_child). 
lhs(in0_green1_2_2_2_2,sameR,sid_11,center(2,2),tip_loc(2,2),no_child). 
lhs(in0_blue1_1_2_1_2,sameR,sid_11,center(1,2),tip_loc(1,2),no_child). 
lhs(in0_blue1_2_1_2_1,sameR,sid_11,center(2,1),tip_loc(2,1),no_child). 
lhs(in0_yellow1_1_1_1_1,sameR,sid_11,center(1,1),tip_loc(1,1),no_child). 


%  Objects of Example 1 for output grid (1,1)-(12,12)
rhs(out0_yellow1_10_10_10_10,sameR,sid_11,center(10,10),tip_loc(10,10)). 
rhs(out0_yellow1_7_7_7_7,sameR,sid_11,center(7,7),tip_loc(7,7)). 
rhs(out0_yellow1_4_4_4_4,sameR,sid_11,center(4,4),tip_loc(4,4)). 
rhs(out0_yellow1_1_1_1_1,sameR,sid_11,center(1,1),tip_loc(1,1)). 
rhs(out0_red2_11_11_12_12,rot90,s1961242,center(12,12),tip_loc(12,12)). 
rhs(out0_blue4_9_9_11_11,sameR,s4259372,center(10,10),tip_loc(10,10)). 
rhs(out0_red2_8_8_9_9,rot90,s1961242,center(9,9),tip_loc(9,9)). 
rhs(out0_blue4_6_6_8_8,sameR,s4259372,center(7,7),tip_loc(7,7)). 
rhs(out0_red2_5_5_6_6,rot90,s1961242,center(6,6),tip_loc(6,6)). 
rhs(out0_blue4_3_3_5_5,sameR,s4259372,center(4,4),tip_loc(4,4)). 
rhs(out0_red2_2_2_3_3,rot90,s1961242,center(3,3),tip_loc(3,3)). 
rhs(out0_blue2_1_1_2_2,rot90,s1961242,center(2,2),tip_loc(2,2)). 


%  Objects of Example 2 for input grid (1,1)-(5,5)
lhs(in1_red1_5_5_5_5,sameR,sid_11,center(5,5),tip_loc(5,5),no_child). 
lhs(in1_red1_4_4_4_4,sameR,sid_11,center(4,4),tip_loc(4,4),no_child). 
lhs(in1_silver1_3_4_3_4,sameR,sid_11,center(3,4),tip_loc(3,4),no_child). 
lhs(in1_silver1_4_3_4_3,sameR,sid_11,center(4,3),tip_loc(4,3),no_child). 
lhs(in1_red1_3_3_3_3,sameR,sid_11,center(3,3),tip_loc(3,3),no_child). 
lhs(in1_red1_2_2_2_2,sameR,sid_11,center(2,2),tip_loc(2,2),no_child). 
lhs(in1_silver1_1_2_1_2,sameR,sid_11,center(1,2),tip_loc(1,2),no_child). 
lhs(in1_silver1_2_1_2_1,sameR,sid_11,center(2,1),tip_loc(2,1),no_child). 
lhs(in1_red1_1_1_1_1,sameR,sid_11,center(1,1),tip_loc(1,1),no_child). 


%  Objects of Example 2 for output grid (1,1)-(10,10)
rhs(out1_red1_10_10_10_10,sameR,sid_11,center(10,10),tip_loc(10,10)). 
rhs(out1_silver1_9_10_9_10,sameR,sid_11,center(9,10),tip_loc(9,10)). 
rhs(out1_silver1_10_9_10_9,sameR,sid_11,center(10,9),tip_loc(10,9)). 
rhs(out1_red1_9_9_9_9,sameR,sid_11,center(9,9),tip_loc(9,9)). 
rhs(out1_red1_8_8_8_8,sameR,sid_11,center(8,8),tip_loc(8,8)). 
rhs(out1_silver1_7_8_7_8,sameR,sid_11,center(7,8),tip_loc(7,8)). 
rhs(out1_silver1_8_7_8_7,sameR,sid_11,center(8,7),tip_loc(8,7)). 
rhs(out1_red1_7_7_7_7,sameR,sid_11,center(7,7),tip_loc(7,7)). 
rhs(out1_red1_6_6_6_6,sameR,sid_11,center(6,6),tip_loc(6,6)). 
rhs(out1_silver1_5_6_5_6,sameR,sid_11,center(5,6),tip_loc(5,6)). 
rhs(out1_silver1_6_5_6_5,sameR,sid_11,center(6,5),tip_loc(6,5)). 
rhs(out1_red1_5_5_5_5,sameR,sid_11,center(5,5),tip_loc(5,5)). 
rhs(out1_red1_4_4_4_4,sameR,sid_11,center(4,4),tip_loc(4,4)). 
rhs(out1_silver1_3_4_3_4,sameR,sid_11,center(3,4),tip_loc(3,4)). 
rhs(out1_silver1_4_3_4_3,sameR,sid_11,center(4,3),tip_loc(4,3)). 
rhs(out1_red1_3_3_3_3,sameR,sid_11,center(3,3),tip_loc(3,3)). 
rhs(out1_red1_2_2_2_2,sameR,sid_11,center(2,2),tip_loc(2,2)). 
rhs(out1_silver1_1_2_1_2,sameR,sid_11,center(1,2),tip_loc(1,2)). 
rhs(out1_silver1_2_1_2_1,sameR,sid_11,center(2,1),tip_loc(2,1)). 
rhs(out1_red1_1_1_1_1,sameR,sid_11,center(1,1),tip_loc(1,1)). 


%  Objects of Example 3 for input grid (1,1)-(8,8)
lhs(in2_purple1_1_8_1_8,sameR,sid_11,center(1,8),tip_loc(1,8),no_child). 
lhs(in2_blue1_2_7_2_7,sameR,sid_11,center(2,7),tip_loc(2,7),no_child). 
lhs(in2_purple1_3_6_3_6,sameR,sid_11,center(3,6),tip_loc(3,6),no_child). 
lhs(in2_blue1_4_5_4_5,sameR,sid_11,center(4,5),tip_loc(4,5),no_child). 
lhs(in2_purple1_5_4_5_4,sameR,sid_11,center(5,4),tip_loc(5,4),no_child). 
lhs(in2_blue1_6_3_6_3,sameR,sid_11,center(6,3),tip_loc(6,3),no_child). 
lhs(in2_purple1_7_2_7_2,sameR,sid_11,center(7,2),tip_loc(7,2),no_child). 
lhs(in2_blue1_8_1_8_1,sameR,sid_11,center(8,1),tip_loc(8,1),no_child). 


%  Objects of Example 3 for output grid (1,1)-(16,16)
rhs(out2_purple1_1_16_1_16,sameR,sid_11,center(1,16),tip_loc(1,16)). 
rhs(out2_blue1_2_15_2_15,sameR,sid_11,center(2,15),tip_loc(2,15)). 
rhs(out2_purple1_3_14_3_14,sameR,sid_11,center(3,14),tip_loc(3,14)). 
rhs(out2_blue1_4_13_4_13,sameR,sid_11,center(4,13),tip_loc(4,13)). 
rhs(out2_purple1_5_12_5_12,sameR,sid_11,center(5,12),tip_loc(5,12)). 
rhs(out2_blue1_6_11_6_11,sameR,sid_11,center(6,11),tip_loc(6,11)). 
rhs(out2_purple1_7_10_7_10,sameR,sid_11,center(7,10),tip_loc(7,10)). 
rhs(out2_blue1_8_9_8_9,sameR,sid_11,center(8,9),tip_loc(8,9)). 
rhs(out2_purple1_9_8_9_8,sameR,sid_11,center(9,8),tip_loc(9,8)). 
rhs(out2_blue1_10_7_10_7,sameR,sid_11,center(10,7),tip_loc(10,7)). 
rhs(out2_purple1_11_6_11_6,sameR,sid_11,center(11,6),tip_loc(11,6)). 
rhs(out2_blue1_12_5_12_5,sameR,sid_11,center(12,5),tip_loc(12,5)). 
rhs(out2_purple1_13_4_13_4,sameR,sid_11,center(13,4),tip_loc(13,4)). 
rhs(out2_blue1_14_3_14_3,sameR,sid_11,center(14,3),tip_loc(14,3)). 
rhs(out2_purple1_15_2_15_2,sameR,sid_11,center(15,2),tip_loc(15,2)). 
rhs(out2_blue1_16_1_16_1,sameR,sid_11,center(16,1),tip_loc(16,1)). 

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



%  Objects of Exam 1 for input grid (1,1)-(10,10)
lhs(in0_cyan1_1_10_1_10,sameR,sid_11,center(1,10),tip_loc(1,10),no_child). 
lhs(in0_yellow1_3_9_3_9,sameR,sid_11,center(3,9),tip_loc(3,9),no_child). 
lhs(in0_cyan1_3_8_3_8,sameR,sid_11,center(3,8),tip_loc(3,8),no_child). 
lhs(in0_yellow1_2_8_2_8,sameR,sid_11,center(2,8),tip_loc(2,8),no_child). 
lhs(in0_yellow1_5_7_5_7,sameR,sid_11,center(5,7),tip_loc(5,7),no_child). 
lhs(in0_cyan1_5_6_5_6,sameR,sid_11,center(5,6),tip_loc(5,6),no_child). 
lhs(in0_yellow1_4_6_4_6,sameR,sid_11,center(4,6),tip_loc(4,6),no_child). 
lhs(in0_yellow1_7_5_7_5,sameR,sid_11,center(7,5),tip_loc(7,5),no_child). 
lhs(in0_cyan1_7_4_7_4,sameR,sid_11,center(7,4),tip_loc(7,4),no_child). 
lhs(in0_yellow1_6_4_6_4,sameR,sid_11,center(6,4),tip_loc(6,4),no_child). 
lhs(in0_yellow1_9_3_9_3,sameR,sid_11,center(9,3),tip_loc(9,3),no_child). 
lhs(in0_cyan1_9_2_9_2,sameR,sid_11,center(9,2),tip_loc(9,2),no_child). 
lhs(in0_yellow1_8_2_8_2,sameR,sid_11,center(8,2),tip_loc(8,2),no_child). 
lhs(in0_purple3_1_9_2_10,rot90,s11261491,center(2,9),tip_loc(2,9),1). 
lhs(in0_purple3_3_7_4_8,rot90,s11261491,center(4,7),tip_loc(4,7),1). 
lhs(in0_purple3_5_5_6_6,rot90,s11261491,center(6,5),tip_loc(6,5),1). 
lhs(in0_purple3_7_3_8_4,rot90,s11261491,center(8,3),tip_loc(8,3),1). 
lhs(in0_purple3_9_1_10_2,rot90,s11261491,center(10,1),tip_loc(10,1),1). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(20,20)
```

Grade your response from:
```prolog
rhs(out0_cyan1_1_20_1_20,sameR,sid_11,center(1,20),tip_loc(1,20)). 
rhs(out0_yellow1_3_19_3_19,sameR,sid_11,center(3,19),tip_loc(3,19)). 
rhs(out0_cyan1_3_18_3_18,sameR,sid_11,center(3,18),tip_loc(3,18)). 
rhs(out0_yellow1_2_18_2_18,sameR,sid_11,center(2,18),tip_loc(2,18)). 
rhs(out0_yellow1_5_17_5_17,sameR,sid_11,center(5,17),tip_loc(5,17)). 
rhs(out0_cyan1_5_16_5_16,sameR,sid_11,center(5,16),tip_loc(5,16)). 
rhs(out0_yellow1_4_16_4_16,sameR,sid_11,center(4,16),tip_loc(4,16)). 
rhs(out0_yellow1_7_15_7_15,sameR,sid_11,center(7,15),tip_loc(7,15)). 
rhs(out0_cyan1_7_14_7_14,sameR,sid_11,center(7,14),tip_loc(7,14)). 
rhs(out0_yellow1_6_14_6_14,sameR,sid_11,center(6,14),tip_loc(6,14)). 
rhs(out0_yellow1_9_13_9_13,sameR,sid_11,center(9,13),tip_loc(9,13)). 
rhs(out0_cyan1_9_12_9_12,sameR,sid_11,center(9,12),tip_loc(9,12)). 
rhs(out0_yellow1_8_12_8_12,sameR,sid_11,center(8,12),tip_loc(8,12)). 
rhs(out0_yellow1_11_11_11_11,sameR,sid_11,center(11,11),tip_loc(11,11)). 
rhs(out0_cyan1_11_10_11_10,sameR,sid_11,center(11,10),tip_loc(11,10)). 
rhs(out0_yellow1_10_10_10_10,sameR,sid_11,center(10,10),tip_loc(10,10)). 
rhs(out0_yellow1_13_9_13_9,sameR,sid_11,center(13,9),tip_loc(13,9)). 
rhs(out0_cyan1_13_8_13_8,sameR,sid_11,center(13,8),tip_loc(13,8)). 
rhs(out0_yellow1_12_8_12_8,sameR,sid_11,center(12,8),tip_loc(12,8)). 
rhs(out0_yellow1_15_7_15_7,sameR,sid_11,center(15,7),tip_loc(15,7)). 
rhs(out0_cyan1_15_6_15_6,sameR,sid_11,center(15,6),tip_loc(15,6)). 
rhs(out0_yellow1_14_6_14_6,sameR,sid_11,center(14,6),tip_loc(14,6)). 
rhs(out0_yellow1_17_5_17_5,sameR,sid_11,center(17,5),tip_loc(17,5)). 
rhs(out0_cyan1_17_4_17_4,sameR,sid_11,center(17,4),tip_loc(17,4)). 
rhs(out0_yellow1_16_4_16_4,sameR,sid_11,center(16,4),tip_loc(16,4)). 
rhs(out0_yellow1_19_3_19_3,sameR,sid_11,center(19,3),tip_loc(19,3)). 
rhs(out0_cyan1_19_2_19_2,sameR,sid_11,center(19,2),tip_loc(19,2)). 
rhs(out0_yellow1_18_2_18_2,sameR,sid_11,center(18,2),tip_loc(18,2)). 
rhs(out0_purple3_1_19_2_20,rot90,s11261491,center(2,19),tip_loc(2,19)). 
rhs(out0_purple3_3_17_4_18,rot90,s11261491,center(4,17),tip_loc(4,17)). 
rhs(out0_purple3_5_15_6_16,rot90,s11261491,center(6,15),tip_loc(6,15)). 
rhs(out0_purple3_7_13_8_14,rot90,s11261491,center(8,13),tip_loc(8,13)). 
rhs(out0_purple3_9_11_10_12,rot90,s11261491,center(10,11),tip_loc(10,11)). 
rhs(out0_purple3_11_9_12_10,rot90,s11261491,center(12,9),tip_loc(12,9)). 
rhs(out0_purple3_13_7_14_8,rot90,s11261491,center(14,7),tip_loc(14,7)). 
rhs(out0_purple3_15_5_16_6,rot90,s11261491,center(16,5),tip_loc(16,5)). 
rhs(out0_purple3_17_3_18_4,rot90,s11261491,center(18,3),tip_loc(18,3)). 
rhs(out0_purple3_19_1_20_2,rot90,s11261491,center(20,1),tip_loc(20,1)). 
```
if wrong, what rules did you miss?
