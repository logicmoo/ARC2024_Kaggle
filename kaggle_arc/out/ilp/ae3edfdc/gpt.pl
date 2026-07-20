% =======================================

Riddle t(ae3edfdc)

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




Title: t(ae3edfdc)

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


%  Objects of Example 1 for input grid (1,1)-(15,15)
lhs(in0_green1_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5),green,no_child). 
lhs(in0_green1_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1),green,no_child). 
lhs(in0_red1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5),red,no_child). 
lhs(in0_green1_4_10_4_10,sameR,sid_1x1,cxy(4,10),txy(4,10),green,no_child). 
lhs(in0_orange1_6_11_6_11,sameR,sid_1x1,cxy(6,11),txy(6,11),orange,no_child). 
lhs(in0_green1_9_5_9_5,sameR,sid_1x1,cxy(9,5),txy(9,5),green,no_child). 
lhs(in0_orange1_12_7_12_7,sameR,sid_1x1,cxy(12,7),txy(12,7),orange,no_child). 
lhs(in0_blue1_12_11_12_11,sameR,sid_1x1,cxy(12,11),txy(12,11),blue,no_child). 
lhs(in0_orange1_12_15_12_15,sameR,sid_1x1,cxy(12,15),txy(12,15),orange,no_child). 
lhs(in0_orange1_15_11_15_11,sameR,sid_1x1,cxy(15,11),txy(15,11),orange,no_child). 


%  Objects of Example 1 for output grid (1,1)-(15,15)
rhs(out0_green4_3_4_5_6,sameR,sid_hollow_diamond_3x3,cxy(4,5),txy(4,5),green). 
rhs(out0_orange4_11_10_13_12,sameR,sid_hollow_diamond_3x3,cxy(12,11),txy(12,11),orange). 
rhs(out0_red1_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5),red). 
rhs(out0_blue1_12_11_12_11,sameR,sid_1x1,cxy(12,11),txy(12,11),blue). 


%  Objects of Example 2 for input grid (1,1)-(15,15)
lhs(in1_orange1_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),orange,no_child). 
lhs(in1_orange1_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1),orange,no_child). 
lhs(in1_blue1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),blue,no_child). 
lhs(in1_orange1_4_9_4_9,sameR,sid_1x1,cxy(4,9),txy(4,9),orange,no_child). 
lhs(in1_green1_6_11_6_11,sameR,sid_1x1,cxy(6,11),txy(6,11),green,no_child). 
lhs(in1_orange1_10_3_10_3,sameR,sid_1x1,cxy(10,3),txy(10,3),orange,no_child). 
lhs(in1_red1_12_11_12_11,sameR,sid_1x1,cxy(12,11),txy(12,11),red,no_child). 
lhs(in1_green1_12_15_12_15,sameR,sid_1x1,cxy(12,15),txy(12,15),green,no_child). 


%  Objects of Example 2 for output grid (1,1)-(15,15)
rhs(out1_green2_11_11_12_12,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(12,12),txy(11,11),green). 
rhs(out1_orange4_3_2_5_4,sameR,sid_hollow_diamond_3x3,cxy(4,3),txy(4,3),orange). 
rhs(out1_blue1_4_3_4_3,sameR,sid_1x1,cxy(4,3),txy(4,3),blue). 
rhs(out1_red1_12_11_12_11,sameR,sid_1x1,cxy(12,11),txy(12,11),red). 


%  Objects of Example 3 for input grid (1,1)-(15,15)
lhs(in2_orange1_2_7_2_7,sameR,sid_1x1,cxy(2,7),txy(2,7),orange,no_child). 
lhs(in2_green1_7_1_7_1,sameR,sid_1x1,cxy(7,1),txy(7,1),green,no_child). 
lhs(in2_red1_7_12_7_12,sameR,sid_1x1,cxy(7,12),txy(7,12),red,no_child). 
lhs(in2_green1_7_15_7_15,sameR,sid_1x1,cxy(7,15),txy(7,15),green,no_child). 
lhs(in2_blue1_11_7_11_7,sameR,sid_1x1,cxy(11,7),txy(11,7),blue,no_child). 
lhs(in2_orange1_11_15_11_15,sameR,sid_1x1,cxy(11,15),txy(11,15),orange,no_child). 
lhs(in2_green1_15_12_15_12,sameR,sid_1x1,cxy(15,12),txy(15,12),green,no_child). 


%  Objects of Example 3 for output grid (1,1)-(15,15)
rhs(out2_orange2_10_7_11_8,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(11,8),txy(10,7),orange). 
rhs(out2_green3_7_11_8_13,rot180,sid_tetris_Triple_East_and_North_2x2,cxy(7,12),txy(7,12),green). 
rhs(out2_red1_7_12_7_12,sameR,sid_1x1,cxy(7,12),txy(7,12),red). 
rhs(out2_blue1_11_7_11_7,sameR,sid_1x1,cxy(11,7),txy(11,7),blue). 

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
lhs(in0_green1_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4),green,no_child). 
lhs(in0_orange1_1_7_1_7,sameR,sid_1x1,cxy(1,7),txy(1,7),orange,no_child). 
lhs(in0_blue1_6_7_6_7,sameR,sid_1x1,cxy(6,7),txy(6,7),blue,no_child). 
lhs(in0_green1_12_1_12_1,sameR,sid_1x1,cxy(12,1),txy(12,1),green,no_child). 
lhs(in0_red1_12_4_12_4,sameR,sid_1x1,cxy(12,4),txy(12,4),red,no_child). 
lhs(in0_green1_12_13_12_13,sameR,sid_1x1,cxy(12,13),txy(12,13),green,no_child). 
lhs(in0_orange1_15_7_15_7,sameR,sid_1x1,cxy(15,7),txy(15,7),orange,no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(15,15)
```

Grade your response from:
```prolog
rhs(out0_green3_11_3_12_5,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(12,4),txy(12,4),green). 
rhs(out0_orange1_5_7_5_7,sameR,sid_1x1,cxy(5,7),txy(5,7),orange). 
rhs(out0_blue1_6_7_6_7,sameR,sid_1x1,cxy(6,7),txy(6,7),blue). 
rhs(out0_orange1_7_7_7_7,sameR,sid_1x1,cxy(7,7),txy(7,7),orange). 
rhs(out0_red1_12_4_12_4,sameR,sid_1x1,cxy(12,4),txy(12,4),red). 
```
if wrong, what rules did you miss?
