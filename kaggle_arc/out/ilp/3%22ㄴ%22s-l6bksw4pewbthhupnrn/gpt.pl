% =======================================

Riddle t(3%22ㄴ%22s-l6bksw4pewbthhupnrn)

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




Title: t(3%22ㄴ%22s-l6bksw4pewbthhupnrn)

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


%  Objects of Example 1 for input grid (1,1)-(5,5)
lhs(in0_cyan2_2_5_3_5,sameR,sid_2x1,cxy(3,5),txy(3,5),cyan,no_child). 
lhs(in0_cyan2_4_2_5_2,sameR,sid_2x1,cxy(5,2),txy(5,2),cyan,no_child). 
lhs(in0_cyan1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),cyan,no_child). 
lhs(in0_cyan1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),cyan,no_child). 
lhs(in0_black0_1_1_5_5,sameR,s11505469,cxy(3,3),txy(3,3),black,no_child). 


%  Objects of Example 1 for output grid (1,1)-(5,5)
rhs(out0_black0_1_3_3_5,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(2,4),txy(2,4),black). 
rhs(out0_black0_2_1_5_4,sameR,sid_RtTriagle_se_3x3,cxy(4,2),txy(4,2),black). 
rhs(out0_cyan9_1_1_5_5,sameR,s14361589,cxy(3,3),txy(3,3),cyan). 


%  Objects of Example 2 for input grid (1,1)-(5,5)
lhs(in1_purple2_4_4_5_5,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(5,5),txy(4,4),purple,no_child). 
lhs(in1_purple1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),purple,no_child). 
lhs(in1_purple1_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),purple,no_child). 
lhs(in1_purple1_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2),purple,no_child). 
lhs(in1_purple1_5_2_5_2,sameR,sid_1x1,cxy(5,2),txy(5,2),purple,no_child). 
lhs(in1_black0_1_1_5_5,sameR,s7874187,cxy(3,3),txy(3,3),black,no_child). 


%  Objects of Example 2 for output grid (1,1)-(5,5)
rhs(out1_black0_4_4_5_5,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(5,4),txy(5,4),black). 
rhs(out1_purple9_2_2_5_5,rot180,s7448460,cxy(3,3),txy(4,5),purple). 
rhs(out1_black0_1_1_5_5,sameR,s14008839,cxy(2,2),txy(2,2),black). 


%  Objects of Example 3 for input grid (1,1)-(5,5)
lhs(in2_yellow2_4_5_5_5,sameR,sid_2x1,cxy(5,5),txy(5,5),yellow,no_child). 
lhs(in2_yellow2_1_4_2_5,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(2,5),txy(1,4),yellow,no_child). 
lhs(in2_yellow6_1_1_5_3,flipDHV,s14554160,cxy(3,2),txy(1,1),yellow,no_child). 
lhs(in2_black0_1_1_5_5,sameR,s9952369,cxy(3,3),txy(3,3),black,no_child). 


%  Objects of Example 3 for output grid (1,1)-(5,5)
rhs(out2_yellow8_1_1_4_4,rot270,s12507676,cxy(2,3),txy(2,3),yellow). 
rhs(out2_black0_1_1_5_5,sameR,s2267136,cxy(3,3),txy(3,3),black). 


%  Objects of Example 4 for input grid (1,1)-(5,5)
lhs(in3_orange1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),orange,no_child). 
lhs(in3_orange1_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4),orange,no_child). 
lhs(in3_orange1_5_3_5_3,sameR,sid_1x1,cxy(5,3),txy(5,3),orange,no_child). 


%  Objects of Example 4 for output grid (1,1)-(5,5)
rhs(out3_orange3_4_3_5_4,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(4,4),txy(4,4),orange). 
rhs(out3_orange6_1_2_2_5,rot270,s15691412,cxy(1,4),txy(1,4),orange). 

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
lhs(in0_silver5_1_1_5_2,rot270,sid_tetris_Triple_East_and_North_2x2,cxy(3,2),txy(3,2),silver,no_child). 
lhs(in0_silver1_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4),silver,no_child). 
lhs(in0_black0_1_1_5_5,sameR,s9574159,cxy(3,3),txy(3,3),black,no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(5,5)
```

Grade your response from:
```prolog
rhs(out0_silver9_1_2_5_5,flipH,s7630935,cxy(3,3),txy(1,5),silver). 
rhs(out0_black0_1_1_5_5,sameR,s12098372,cxy(3,3),txy(3,3),black). 
```
if wrong, what rules did you miss?
