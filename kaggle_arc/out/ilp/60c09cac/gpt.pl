% =======================================

Riddle v(60c09cac)

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




Title: v(60c09cac)

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


%  Objects of Example 1 for input grid (1,1)-(3,3)
lhs(in0_orange2_2_2_3_2,sameR,sid_2x1,cxy(3,2),txy(3,2),no_child). 
lhs(in0_green1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),no_child). 
lhs(in0_black0_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1),no_child). 


%  Objects of Example 1 for output grid (1,1)-(6,6)
rhs(out0_green4_3_1_4_2,sameR,sid_1x1,cxy(4,2),txy(3,1)). 
rhs(out0_black0_5_1_6_2,sameR,sid_1x1,cxy(6,2),txy(5,1)). 
rhs(out0_orange8_3_3_6_4,sameR,sid_2x1,cxy(5,4),txy(3,3)). 


%  Objects of Example 2 for input grid (1,1)-(4,4)
lhs(in1_cyan2_2_1_3_2,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(3,2),txy(3,2),no_child). 
lhs(in1_silver3_3_2_4_3,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(4,2),txy(4,2),no_child). 
lhs(in1_black0_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1),no_child). 


%  Objects of Example 2 for output grid (1,1)-(8,8)
rhs(out1_black0_7_1_8_2,sameR,sid_1x1,cxy(8,2),txy(7,1)). 
rhs(out1_cyan8_3_1_6_4,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(5,3),txy(5,3)). 
rhs(out1_silver12_5_3_8_6,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(7,4),txy(7,4)). 

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



%  Objects of Exam 1 for input grid (1,1)-(5,5)
lhs(in0_blue2_3_1_3_2,rot90,sid_2x1,cxy(3,2),txy(3,2),no_child). 
lhs(in0_purple4_2_3_4_4,flipV,sid_tetris_Z_270_Rotated_2x3,cxy(3,3),txy(4,4),1). 
lhs(in0_blue1_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4),no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(10,10)
```

Grade your response from:
```prolog
rhs(out0_blue4_5_7_6_8,sameR,sid_1x1,cxy(6,8),txy(5,7)). 
rhs(out0_blue8_5_1_6_4,rot90,sid_2x1,cxy(6,3),txy(5,1)). 
rhs(out0_purple16_3_5_8_8,flipV,sid_tetris_Z_270_Rotated_2x3,cxy(6,6),txy(8,8)). 
```
if wrong, what rules did you miss?
