% =======================================

Riddle v(60a26a3e)

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




Title: v(60a26a3e)

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


%  Objects of Example 1 for input grid (1,1)-(15,10)
lhs(in0_red4_3_1_5_3,sameR,sid_hollow_diamond_3x3,cxy(4,2),txy(4,2),1). 
lhs(in0_red4_10_1_12_3,sameR,sid_hollow_diamond_3x3,cxy(11,2),txy(11,2),1). 
lhs(in0_red4_10_5_12_7,sameR,sid_hollow_diamond_3x3,cxy(11,6),txy(11,6),1). 
lhs(in0_black0_9_4_13_8,sameR,sid_hollow_3x3,cxy(11,6),txy(11,6),no_child). 
lhs(in0_black0_4_2_4_2,sameR,sid_1x1,cxy(4,2),txy(4,2),no_child). 
lhs(in0_black0_11_2_11_2,sameR,sid_1x1,cxy(11,2),txy(11,2),no_child). 
lhs(in0_black0_11_6_11_6,sameR,sid_1x1,cxy(11,6),txy(11,6),no_child). 


%  Objects of Example 1 for output grid (1,1)-(15,10)
rhs(out0_blue4_6_2_9_2,sameR,sid_2x1,cxy(8,2),txy(8,2)). 
rhs(out0_black0_5_1_10_1,rot90,sid_1x2,cxy(8,1),txy(8,1)). 
rhs(out0_red4_3_1_5_3,sameR,sid_hollow_diamond_3x3,cxy(4,2),txy(4,2)). 
rhs(out0_red4_10_1_12_3,sameR,sid_hollow_diamond_3x3,cxy(11,2),txy(11,2)). 
rhs(out0_red4_10_5_12_7,sameR,sid_hollow_diamond_3x3,cxy(11,6),txy(11,6)). 
rhs(out0_black0_12_7_15_10,sameR,sid_1x1,cxy(14,9),txy(12,7)). 
rhs(out0_black0_4_2_4_2,sameR,sid_1x1,cxy(4,2),txy(4,2)). 
rhs(out0_black0_11_2_11_2,sameR,sid_1x1,cxy(11,2),txy(11,2)). 
rhs(out0_blue1_11_4_11_4,sameR,sid_1x1,cxy(11,4),txy(11,4)). 
rhs(out0_black0_11_6_11_6,sameR,sid_1x1,cxy(11,6),txy(11,6)). 


%  Objects of Example 2 for input grid (1,1)-(16,14)
lhs(in1_red4_2_10_4_12,sameR,sid_hollow_diamond_3x3,cxy(3,11),txy(3,11),1). 
lhs(in1_red4_3_3_5_5,sameR,sid_hollow_diamond_3x3,cxy(4,4),txy(4,4),1). 
lhs(in1_red4_8_3_10_5,sameR,sid_hollow_diamond_3x3,cxy(9,4),txy(9,4),1). 
lhs(in1_red4_8_9_10_11,sameR,sid_hollow_diamond_3x3,cxy(9,10),txy(9,10),1). 
lhs(in1_red4_13_3_15_5,sameR,sid_hollow_diamond_3x3,cxy(14,4),txy(14,4),1). 
lhs(in1_black0_1_1_3_3,sameR,sid_1x1,cxy(2,2),txy(2,2),no_child). 
lhs(in1_black0_5_11_8_14,sameR,sid_1x1,cxy(7,13),txy(5,11),no_child). 
lhs(in1_black0_1_9_5_13,sameR,sid_hollow_3x3,cxy(3,11),txy(3,11),no_child). 
lhs(in1_black0_2_2_6_6,sameR,sid_hollow_3x3,cxy(4,4),txy(4,4),no_child). 
lhs(in1_black0_7_2_11_6,sameR,sid_hollow_3x3,cxy(9,4),txy(9,4),no_child). 
lhs(in1_black0_7_8_11_12,sameR,sid_hollow_3x3,cxy(9,10),txy(9,10),no_child). 
lhs(in1_black0_12_2_16_6,sameR,sid_hollow_3x3,cxy(14,4),txy(14,4),no_child). 
lhs(in1_black0_3_11_3_11,sameR,sid_1x1,cxy(3,11),txy(3,11),no_child). 
lhs(in1_black0_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),no_child). 
lhs(in1_black0_9_4_9_4,sameR,sid_1x1,cxy(9,4),txy(9,4),no_child). 
lhs(in1_black0_9_10_9_10,sameR,sid_1x1,cxy(9,10),txy(9,10),no_child). 
lhs(in1_black0_14_4_14_4,sameR,sid_1x1,cxy(14,4),txy(14,4),no_child). 


%  Objects of Example 2 for output grid (1,1)-(16,14)
rhs(out1_blue2_6_4_7_4,sameR,sid_2x1,cxy(7,4),txy(7,4)). 
rhs(out1_blue2_11_4_12_4,sameR,sid_2x1,cxy(12,4),txy(12,4)). 
rhs(out1_blue3_9_6_9_8,rot90,sid_2x1,cxy(9,7),txy(9,7)). 
rhs(out1_red4_2_10_4_12,sameR,sid_hollow_diamond_3x3,cxy(3,11),txy(3,11)). 
rhs(out1_red4_3_3_5_5,sameR,sid_hollow_diamond_3x3,cxy(4,4),txy(4,4)). 
rhs(out1_red4_8_3_10_5,sameR,sid_hollow_diamond_3x3,cxy(9,4),txy(9,4)). 
rhs(out1_red4_8_9_10_11,sameR,sid_hollow_diamond_3x3,cxy(9,10),txy(9,10)). 
rhs(out1_red4_13_3_15_5,sameR,sid_hollow_diamond_3x3,cxy(14,4),txy(14,4)). 
rhs(out1_black0_1_1_3_3,sameR,sid_1x1,cxy(2,2),txy(2,2)). 
rhs(out1_black0_5_11_8_14,sameR,sid_1x1,cxy(7,13),txy(5,11)). 
rhs(out1_black0_1_9_5_13,sameR,sid_hollow_3x3,cxy(3,11),txy(3,11)). 
rhs(out1_black0_3_11_3_11,sameR,sid_1x1,cxy(3,11),txy(3,11)). 
rhs(out1_black0_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4)). 
rhs(out1_black0_9_4_9_4,sameR,sid_1x1,cxy(9,4),txy(9,4)). 
rhs(out1_black0_9_10_9_10,sameR,sid_1x1,cxy(9,10),txy(9,10)). 
rhs(out1_black0_14_4_14_4,sameR,sid_1x1,cxy(14,4),txy(14,4)). 


%  Objects of Example 3 for input grid (1,1)-(15,12)
lhs(in2_black0_10_3_11_4,sameR,sid_1x1,cxy(11,4),txy(10,3),no_child). 
lhs(in2_black0_1_11_4_12,rot90,sid_1x2,cxy(3,12),txy(1,11),no_child). 
lhs(in2_red4_4_4_6_6,sameR,sid_hollow_diamond_3x3,cxy(5,5),txy(5,5),1). 
lhs(in2_red4_4_9_6_11,sameR,sid_hollow_diamond_3x3,cxy(5,10),txy(5,10),1). 
lhs(in2_red4_8_1_10_3,sameR,sid_hollow_diamond_3x3,cxy(9,2),txy(9,2),1). 
lhs(in2_red4_11_4_13_6,sameR,sid_hollow_diamond_3x3,cxy(12,5),txy(12,5),1). 
lhs(in2_red4_11_9_13_11,sameR,sid_hollow_diamond_3x3,cxy(12,10),txy(12,10),1). 
lhs(in2_black0_13_1_15_4,sameR,sid_1x2,cxy(14,3),txy(14,3),no_child). 
lhs(in2_black0_13_6_15_9,sameR,sid_1x2,cxy(14,8),txy(14,8),no_child). 
lhs(in2_black0_11_1_15_3,rot90,sid_1x2,cxy(13,2),txy(13,2),no_child). 
lhs(in2_black0_1_1_4_4,sameR,sid_1x1,cxy(3,3),txy(1,1),no_child). 
lhs(in2_black0_1_6_4_9,sameR,sid_1x1,cxy(3,8),txy(1,6),no_child). 
lhs(in2_black0_6_6_11_9,rot90,sid_1x2,cxy(9,8),txy(6,6),no_child). 
lhs(in2_black0_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5),no_child). 
lhs(in2_black0_5_10_5_10,sameR,sid_1x1,cxy(5,10),txy(5,10),no_child). 
lhs(in2_black0_9_2_9_2,sameR,sid_1x1,cxy(9,2),txy(9,2),no_child). 
lhs(in2_black0_12_5_12_5,sameR,sid_1x1,cxy(12,5),txy(12,5),no_child). 
lhs(in2_black0_12_10_12_10,sameR,sid_1x1,cxy(12,10),txy(12,10),no_child). 


%  Objects of Example 3 for output grid (1,1)-(15,12)
rhs(out2_blue2_5_7_5_8,rot90,sid_2x1,cxy(5,8),txy(5,8)). 
rhs(out2_blue2_12_7_12_8,rot90,sid_2x1,cxy(12,8),txy(12,8)). 
rhs(out2_blue4_7_5_10_5,sameR,sid_2x1,cxy(9,5),txy(9,5)). 
rhs(out2_blue4_7_10_10_10,sameR,sid_2x1,cxy(9,10),txy(9,10)). 
rhs(out2_black0_10_3_11_4,sameR,sid_1x1,cxy(11,4),txy(10,3)). 
rhs(out2_black0_1_11_4_12,rot90,sid_1x2,cxy(3,12),txy(1,11)). 
rhs(out2_red4_4_4_6_6,sameR,sid_hollow_diamond_3x3,cxy(5,5),txy(5,5)). 
rhs(out2_red4_4_9_6_11,sameR,sid_hollow_diamond_3x3,cxy(5,10),txy(5,10)). 
rhs(out2_red4_8_1_10_3,sameR,sid_hollow_diamond_3x3,cxy(9,2),txy(9,2)). 
rhs(out2_red4_11_4_13_6,sameR,sid_hollow_diamond_3x3,cxy(12,5),txy(12,5)). 
rhs(out2_red4_11_9_13_11,sameR,sid_hollow_diamond_3x3,cxy(12,10),txy(12,10)). 
rhs(out2_black0_13_1_15_4,sameR,sid_1x2,cxy(14,3),txy(14,3)). 
rhs(out2_black0_13_6_15_9,sameR,sid_1x2,cxy(14,8),txy(14,8)). 
rhs(out2_black0_11_1_15_3,rot90,sid_1x2,cxy(13,2),txy(13,2)). 
rhs(out2_black0_1_1_4_4,sameR,sid_1x1,cxy(3,3),txy(1,1)). 
rhs(out2_black0_1_6_4_9,sameR,sid_1x1,cxy(3,8),txy(1,6)). 
rhs(out2_black0_6_6_11_9,rot90,sid_1x2,cxy(9,8),txy(6,6)). 
rhs(out2_black0_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5)). 
rhs(out2_black0_5_10_5_10,sameR,sid_1x1,cxy(5,10),txy(5,10)). 
rhs(out2_black0_9_2_9_2,sameR,sid_1x1,cxy(9,2),txy(9,2)). 
rhs(out2_black0_12_5_12_5,sameR,sid_1x1,cxy(12,5),txy(12,5)). 
rhs(out2_black0_12_10_12_10,sameR,sid_1x1,cxy(12,10),txy(12,10)). 

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



%  Objects of Exam 1 for input grid (1,1)-(15,9)
lhs(in0_black0_1_1_2_2,sameR,sid_1x1,cxy(2,2),txy(1,1),no_child). 
lhs(in0_black0_1_8_2_9,sameR,sid_1x1,cxy(2,9),txy(1,8),no_child). 
lhs(in0_black0_12_8_15_9,rot90,sid_1x2,cxy(14,9),txy(12,8),no_child). 
lhs(in0_red4_2_2_4_4,sameR,sid_hollow_diamond_3x3,cxy(3,3),txy(3,3),1). 
lhs(in0_red4_2_6_4_8,sameR,sid_hollow_diamond_3x3,cxy(3,7),txy(3,7),1). 
lhs(in0_red4_7_4_9_6,sameR,sid_hollow_diamond_3x3,cxy(8,5),txy(8,5),1). 
lhs(in0_red4_10_6_12_8,sameR,sid_hollow_diamond_3x3,cxy(11,7),txy(11,7),1). 
lhs(in0_black0_4_4_6_6,sameR,sid_1x1,cxy(5,5),txy(5,5),no_child). 
lhs(in0_black0_5_7_9_9,rot90,sid_1x2,cxy(7,8),txy(7,8),no_child). 
lhs(in0_black0_9_1_15_4,rot90,sid_1x2,cxy(12,3),txy(12,3),no_child). 
lhs(in0_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),no_child). 
lhs(in0_black0_3_7_3_7,sameR,sid_1x1,cxy(3,7),txy(3,7),no_child). 
lhs(in0_black0_8_5_8_5,sameR,sid_1x1,cxy(8,5),txy(8,5),no_child). 
lhs(in0_black0_11_7_11_7,sameR,sid_1x1,cxy(11,7),txy(11,7),no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(15,9)
```

Grade your response from:
```prolog
rhs(out0_black0_1_1_2_2,sameR,sid_1x1,cxy(2,2),txy(1,1)). 
rhs(out0_black0_1_8_2_9,sameR,sid_1x1,cxy(2,9),txy(1,8)). 
rhs(out0_blue5_5_7_9_7,sameR,sid_2x1,cxy(7,7),txy(7,7)). 
rhs(out0_red4_2_2_4_4,sameR,sid_hollow_diamond_3x3,cxy(3,3),txy(3,3)). 
rhs(out0_red4_2_6_4_8,sameR,sid_hollow_diamond_3x3,cxy(3,7),txy(3,7)). 
rhs(out0_red4_7_4_9_6,sameR,sid_hollow_diamond_3x3,cxy(8,5),txy(8,5)). 
rhs(out0_red4_10_6_12_8,sameR,sid_hollow_diamond_3x3,cxy(11,7),txy(11,7)). 
rhs(out0_black0_4_4_6_6,sameR,sid_1x1,cxy(5,5),txy(5,5)). 
rhs(out0_black0_9_1_15_4,rot90,sid_1x2,cxy(12,3),txy(12,3)). 
rhs(out0_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3)). 
rhs(out0_blue1_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5)). 
rhs(out0_black0_3_7_3_7,sameR,sid_1x1,cxy(3,7),txy(3,7)). 
rhs(out0_black0_8_5_8_5,sameR,sid_1x1,cxy(8,5),txy(8,5)). 
rhs(out0_black0_11_7_11_7,sameR,sid_1x1,cxy(11,7),txy(11,7)). 
```
if wrong, what rules did you miss?
