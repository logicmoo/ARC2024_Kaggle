% =======================================

Riddle v(03560426)

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




Title: v(03560426)

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


%  Objects of Example 1 for input grid (1,1)-(10,10)
lhs(in0_red4_4_9_5_10,sameR,sid_1x1,cxy(5,10),txy(4,9),red,no_child). 
lhs(in0_green4_7_9_8_10,sameR,sid_1x1,cxy(8,10),txy(7,9),green,no_child). 
lhs(in0_yellow4_10_7_10_10,rot90,sid_2x1,cxy(10,9),txy(10,9),yellow,no_child). 
lhs(in0_blue6_1_8_2_10,rot90,sid_2x1,cxy(2,9),txy(2,9),blue,no_child). 
lhs(in0_black0_1_1_10_10,sameR,s15109119,cxy(6,5),txy(1,1),black,no_child). 


%  Objects of Example 1 for output grid (1,1)-(10,10)
rhs(out0_yellow4_4_5_4_8,rot90,sid_2x1,cxy(4,7),txy(4,7),yellow). 
rhs(out0_red3_2_3_3_4,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(2,3),txy(2,3),red). 
rhs(out0_green3_3_4_4_5,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(3,4),txy(3,4),green). 
rhs(out0_blue5_1_1_2_3,flipDHV,sid_tetris_Z_270_Rotated_2x3,cxy(1,2),txy(2,1),blue). 
rhs(out0_black0_1_1_10_10,sameR,s15953543,cxy(6,6),txy(6,6),black). 


%  Objects of Example 2 for input grid (1,1)-(10,10)
lhs(in1_orange4_5_9_6_10,sameR,sid_1x1,cxy(6,10),txy(5,9),orange,no_child). 
lhs(in1_red6_8_9_10_10,sameR,sid_2x1,cxy(9,10),txy(9,10),red,no_child). 
lhs(in1_cyan12_1_7_3_10,rot90,sid_2x1,cxy(2,9),txy(2,9),cyan,no_child). 
lhs(in1_black0_1_1_10_10,sameR,s15359499,cxy(6,5),txy(1,1),black,no_child). 


%  Objects of Example 2 for output grid (1,1)-(10,10)
rhs(out1_orange3_3_4_4_5,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(3,4),txy(3,4),orange). 
rhs(out1_red6_4_5_6_6,sameR,sid_2x1,cxy(5,6),txy(5,6),red). 
rhs(out1_cyan11_1_1_3_4,flipDHV,sid_tetris_Z_270_Rotated_2x3,cxy(2,2),txy(1,4),cyan). 
rhs(out1_black0_1_1_10_10,sameR,s814721,cxy(6,6),txy(6,6),black). 


%  Objects of Example 3 for input grid (1,1)-(10,10)
lhs(in2_red5_6_6_6_10,rot90,sid_2x1,cxy(6,8),txy(6,8),red,no_child). 
lhs(in2_yellow8_1_9_4_10,sameR,sid_2x1,cxy(3,10),txy(1,9),yellow,no_child). 
lhs(in2_green9_8_8_10_10,sameR,sid_1x1,cxy(9,9),txy(9,9),green,no_child). 
lhs(in2_black0_1_1_10_10,sameR,s8237827,cxy(5,5),txy(10,1),black,no_child). 


%  Objects of Example 3 for output grid (1,1)-(10,10)
rhs(out2_red4_4_2_4_5,rot90,sid_2x1,cxy(4,4),txy(4,4),red). 
rhs(out2_yellow7_1_1_4_2,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(2,1),txy(2,1),yellow). 
rhs(out2_green9_4_6_6_8,sameR,sid_1x1,cxy(5,7),txy(5,7),green). 
rhs(out2_black0_1_1_10_10,sameR,s10807834,cxy(6,6),txy(6,6),black). 

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
lhs(in0_purple3_6_8_6_10,rot90,sid_2x1,cxy(6,9),txy(6,9),purple,no_child). 
lhs(in0_green4_8_9_9_10,sameR,sid_1x1,cxy(9,10),txy(8,9),green,no_child). 
lhs(in0_orange4_1_7_1_10,rot90,sid_2x1,cxy(1,9),txy(1,9),orange,no_child). 
lhs(in0_cyan6_3_8_4_10,rot90,sid_2x1,cxy(4,9),txy(4,9),cyan,no_child). 
lhs(in0_black0_1_1_10_10,sameR,s12129420,cxy(6,5),txy(1,2),black,no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(10,10)
```

Grade your response from:
```prolog
rhs(out0_purple2_2_6_2_7,rot90,sid_2x1,cxy(2,7),txy(2,7),purple). 
rhs(out0_orange3_1_1_1_3,rot90,sid_2x1,cxy(1,2),txy(1,2),orange). 
rhs(out0_green4_2_8_3_9,sameR,sid_1x1,cxy(3,9),txy(2,8),green). 
rhs(out0_cyan5_1_4_2_6,flipDHV,sid_tetris_Z_270_Rotated_2x3,cxy(1,5),txy(2,4),cyan). 
rhs(out0_black0_1_1_10_10,sameR,s148978,cxy(6,6),txy(6,6),black). 
```
if wrong, what rules did you miss?
