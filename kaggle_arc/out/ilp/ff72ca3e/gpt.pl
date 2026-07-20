% =======================================

Riddle v(ff72ca3e)

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




Title: v(ff72ca3e)

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
lhs(in0_silver1_1_8_1_8,sameR,sid_1x1,cxy(1,8),txy(1,8),no_child). 
lhs(in0_silver1_2_5_2_5,sameR,sid_1x1,cxy(2,5),txy(2,5),no_child). 
lhs(in0_silver1_2_11_2_11,sameR,sid_1x1,cxy(2,11),txy(2,11),no_child). 
lhs(in0_yellow1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),no_child). 
lhs(in0_silver1_5_6_5_6,sameR,sid_1x1,cxy(5,6),txy(5,6),no_child). 
lhs(in0_silver1_7_1_7_1,sameR,sid_1x1,cxy(7,1),txy(7,1),no_child). 
lhs(in0_yellow1_7_9_7_9,sameR,sid_1x1,cxy(7,9),txy(7,9),no_child). 
lhs(in0_silver1_9_4_9_4,sameR,sid_1x1,cxy(9,4),txy(9,4),no_child). 
lhs(in0_silver1_10_12_10_12,sameR,sid_1x1,cxy(10,12),txy(10,12),no_child). 


%  Objects of Example 1 for output grid (1,1)-(10,12)
rhs(out0_red9_3_2_5_4,sameR,sid_1x1,cxy(4,3),txy(4,3)). 
rhs(out0_red25_5_7_9_11,sameR,sid_1x1,cxy(7,9),txy(7,9)). 
rhs(out0_silver1_1_8_1_8,sameR,sid_1x1,cxy(1,8),txy(1,8)). 
rhs(out0_silver1_2_5_2_5,sameR,sid_1x1,cxy(2,5),txy(2,5)). 
rhs(out0_silver1_2_11_2_11,sameR,sid_1x1,cxy(2,11),txy(2,11)). 
rhs(out0_yellow1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3)). 
rhs(out0_silver1_5_6_5_6,sameR,sid_1x1,cxy(5,6),txy(5,6)). 
rhs(out0_silver1_7_1_7_1,sameR,sid_1x1,cxy(7,1),txy(7,1)). 
rhs(out0_yellow1_7_9_7_9,sameR,sid_1x1,cxy(7,9),txy(7,9)). 
rhs(out0_silver1_9_4_9_4,sameR,sid_1x1,cxy(9,4),txy(9,4)). 
rhs(out0_silver1_10_12_10_12,sameR,sid_1x1,cxy(10,12),txy(10,12)). 


%  Objects of Example 2 for input grid (1,1)-(10,9)
lhs(in1_silver1_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4),no_child). 
lhs(in1_yellow1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),no_child). 


%  Objects of Example 2 for output grid (1,1)-(10,9)
rhs(out1_red25_3_2_7_6,sameR,sid_1x1,cxy(5,4),txy(5,4)). 
rhs(out1_silver1_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4)). 
rhs(out1_yellow1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4)). 


%  Objects of Example 3 for input grid (1,1)-(8,9)
lhs(in2_silver1_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2),no_child). 
lhs(in2_yellow1_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),no_child). 


%  Objects of Example 3 for output grid (1,1)-(8,9)
rhs(out2_black0_3_3_5_5,sameR,sid_hollow_3x3,cxy(4,4),txy(4,4)). 
rhs(out2_silver1_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2)). 
rhs(out2_red1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3)). 
rhs(out2_red1_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4)). 
rhs(out2_red1_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5)). 
rhs(out2_red1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3)). 
rhs(out2_red1_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4)). 
rhs(out2_red1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5)). 
rhs(out2_red1_5_3_5_3,sameR,sid_1x1,cxy(5,3),txy(5,3)). 
rhs(out2_red1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4)). 
rhs(out2_red1_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5)). 


%  Objects of Example 4 for input grid (1,1)-(11,9)
lhs(in3_yellow1_5_6_5_6,sameR,sid_1x1,cxy(5,6),txy(5,6),no_child). 
lhs(in3_silver1_6_2_6_2,sameR,sid_1x1,cxy(6,2),txy(6,2),no_child). 


%  Objects of Example 4 for output grid (1,1)-(11,9)
rhs(out3_red49_2_3_8_9,sameR,sid_1x1,cxy(5,6),txy(5,6)). 
rhs(out3_yellow1_5_6_5_6,sameR,sid_1x1,cxy(5,6),txy(5,6)). 
rhs(out3_silver1_6_2_6_2,sameR,sid_1x1,cxy(6,2),txy(6,2)). 

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



%  Objects of Exam 1 for input grid (1,1)-(20,30)
lhs(in0_silver1_2_20_2_20,sameR,sid_1x1,cxy(2,20),txy(2,20),no_child). 
lhs(in0_silver1_2_28_2_28,sameR,sid_1x1,cxy(2,28),txy(2,28),no_child). 
lhs(in0_silver1_4_12_4_12,sameR,sid_1x1,cxy(4,12),txy(4,12),no_child). 
lhs(in0_yellow1_6_26_6_26,sameR,sid_1x1,cxy(6,26),txy(6,26),no_child). 
lhs(in0_yellow1_7_6_7_6,sameR,sid_1x1,cxy(7,6),txy(7,6),no_child). 
lhs(in0_silver1_9_20_9_20,sameR,sid_1x1,cxy(9,20),txy(9,20),no_child). 
lhs(in0_silver1_11_16_11_16,sameR,sid_1x1,cxy(11,16),txy(11,16),no_child). 
lhs(in0_silver1_15_8_15_8,sameR,sid_1x1,cxy(15,8),txy(15,8),no_child). 
lhs(in0_silver1_15_20_15_20,sameR,sid_1x1,cxy(15,20),txy(15,20),no_child). 
lhs(in0_silver1_16_3_16_3,sameR,sid_1x1,cxy(16,3),txy(16,3),no_child). 
lhs(in0_yellow1_16_16_16_16,sameR,sid_1x1,cxy(16,16),txy(16,16),no_child). 
lhs(in0_silver1_16_28_16_28,sameR,sid_1x1,cxy(16,28),txy(16,28),no_child). 
lhs(in0_silver1_19_17_19_17,sameR,sid_1x1,cxy(19,17),txy(19,17),no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(20,30)
```

Grade your response from:
```prolog
rhs(out0_red24_14_14_18_18,sameR,sid_hollow_3x3,cxy(16,16),txy(16,16)). 
rhs(out0_red48_3_23_9_29,sameR,sid_hollow_3x3,cxy(6,26),txy(6,26)). 
rhs(out0_red120_2_1_12_11,sameR,sid_hollow_3x3,cxy(7,6),txy(7,6)). 
rhs(out0_silver1_2_20_2_20,sameR,sid_1x1,cxy(2,20),txy(2,20)). 
rhs(out0_silver1_2_28_2_28,sameR,sid_1x1,cxy(2,28),txy(2,28)). 
rhs(out0_silver1_4_12_4_12,sameR,sid_1x1,cxy(4,12),txy(4,12)). 
rhs(out0_yellow1_6_26_6_26,sameR,sid_1x1,cxy(6,26),txy(6,26)). 
rhs(out0_yellow1_7_6_7_6,sameR,sid_1x1,cxy(7,6),txy(7,6)). 
rhs(out0_silver1_9_20_9_20,sameR,sid_1x1,cxy(9,20),txy(9,20)). 
rhs(out0_silver1_11_16_11_16,sameR,sid_1x1,cxy(11,16),txy(11,16)). 
rhs(out0_silver1_15_8_15_8,sameR,sid_1x1,cxy(15,8),txy(15,8)). 
rhs(out0_silver1_15_20_15_20,sameR,sid_1x1,cxy(15,20),txy(15,20)). 
rhs(out0_silver1_16_3_16_3,sameR,sid_1x1,cxy(16,3),txy(16,3)). 
rhs(out0_yellow1_16_16_16_16,sameR,sid_1x1,cxy(16,16),txy(16,16)). 
rhs(out0_silver1_16_28_16_28,sameR,sid_1x1,cxy(16,28),txy(16,28)). 
rhs(out0_silver1_19_17_19_17,sameR,sid_1x1,cxy(19,17),txy(19,17)). 
```
if wrong, what rules did you miss?
