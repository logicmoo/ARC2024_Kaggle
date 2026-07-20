% =======================================

Riddle v(0becf7df)

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




Title: v(0becf7df)

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
lhs(in0_yellow5_7_2_8_5,flipDHV,sid_tetris_Triple_East_and_North_2x2,cxy(8,3),txy(7,2),yellow,no_child). 
lhs(in0_orange6_4_5_5_8,rot270,sid_u_3x2,cxy(4,7),txy(5,5),orange,no_child). 
lhs(in0_green5_5_3_6_6,flipD,sid_tetris_Z_270_Rotated_2x3,cxy(6,5),txy(5,6),green,no_child). 
lhs(in0_red5_7_4_8_7,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(7,6),txy(8,7),red,no_child). 
lhs(in0_yellow1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),yellow,no_child). 
lhs(in0_green1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),green,no_child). 
lhs(in0_red1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),red,no_child). 
lhs(in0_orange1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),orange,no_child). 
lhs(in0_black0_1_1_10_10,sameR,s15084955,cxy(6,6),txy(5,7),black,no_child). 


%  Objects of Example 1 for output grid (1,1)-(10,10)
rhs(out0_red5_7_2_8_5,flipDHV,sid_tetris_Triple_East_and_North_2x2,cxy(8,3),txy(7,2),red). 
rhs(out0_green6_4_5_5_8,rot270,sid_u_3x2,cxy(4,7),txy(5,5),green). 
rhs(out0_orange5_5_3_6_6,flipD,sid_tetris_Z_270_Rotated_2x3,cxy(6,5),txy(5,6),orange). 
rhs(out0_yellow5_7_4_8_7,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(7,6),txy(8,7),yellow). 
rhs(out0_yellow1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),yellow). 
rhs(out0_green1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),green). 
rhs(out0_red1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),red). 
rhs(out0_orange1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),orange). 
rhs(out0_black0_1_1_10_10,sameR,s15084955,cxy(6,6),txy(5,7),black). 


%  Objects of Example 2 for input grid (1,1)-(10,10)
lhs(in1_red4_5_6_5_9,rot90,sid_2x1,cxy(5,8),txy(5,8),red,no_child). 
lhs(in1_cyan5_7_5_8_7,flipD,sid_tetris_Z_270_Rotated_2x3,cxy(8,6),txy(7,7),cyan,no_child). 
lhs(in1_green6_3_5_6_6,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(4,5),txy(3,6),green,no_child). 
lhs(in1_blue8_5_2_7_5,rot90,sid_t180_3x2,cxy(6,4),txy(7,2),blue,no_child). 
lhs(in1_blue1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),blue,no_child). 
lhs(in1_red1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),red,no_child). 
lhs(in1_green1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),green,no_child). 
lhs(in1_cyan1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),cyan,no_child). 
lhs(in1_black0_1_1_10_10,sameR,s1874425,cxy(6,6),txy(6,6),black,no_child). 


%  Objects of Example 2 for output grid (1,1)-(10,10)
rhs(out1_cyan4_5_6_5_9,rot90,sid_2x1,cxy(5,8),txy(5,8),cyan). 
rhs(out1_red5_7_5_8_7,flipD,sid_tetris_Z_270_Rotated_2x3,cxy(8,6),txy(7,7),red). 
rhs(out1_blue6_3_5_6_6,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(4,5),txy(3,6),blue). 
rhs(out1_green8_5_2_7_5,rot90,sid_t180_3x2,cxy(6,4),txy(7,2),green). 
rhs(out1_blue1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),blue). 
rhs(out1_red1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),red). 
rhs(out1_green1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),green). 
rhs(out1_cyan1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),cyan). 
rhs(out1_black0_1_1_10_10,sameR,s1874425,cxy(6,6),txy(6,6),black). 


%  Objects of Example 3 for input grid (1,1)-(10,10)
lhs(in2_yellow2_6_4_6_5,rot90,sid_2x1,cxy(6,5),txy(6,5),yellow,no_child). 
lhs(in2_orange2_5_5_6_6,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(6,6),txy(5,5),orange,no_child). 
lhs(in2_brown3_6_2_7_3,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(7,2),txy(7,2),brown,no_child). 
lhs(in2_purple4_4_6_6_7,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(5,7),txy(4,6),purple,no_child). 
lhs(in2_brown1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),brown,no_child). 
lhs(in2_orange1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),orange,no_child). 
lhs(in2_yellow1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),yellow,no_child). 
lhs(in2_purple1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),purple,no_child). 
lhs(in2_orange1_4_7_4_7,sameR,sid_1x1,cxy(4,7),txy(4,7),orange,no_child). 
lhs(in2_orange1_6_3_6_3,sameR,sid_1x1,cxy(6,3),txy(6,3),orange,no_child). 
lhs(in2_black0_1_1_10_10,sameR,s2354895,cxy(6,6),txy(6,6),black,no_child). 


%  Objects of Example 3 for output grid (1,1)-(10,10)
rhs(out2_brown2_6_4_6_5,rot90,sid_2x1,cxy(6,5),txy(6,5),brown). 
rhs(out2_purple2_5_5_6_6,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(6,6),txy(5,5),purple). 
rhs(out2_yellow3_6_2_7_3,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(7,2),txy(7,2),yellow). 
rhs(out2_orange4_4_6_6_7,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(5,7),txy(4,6),orange). 
rhs(out2_brown1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),brown). 
rhs(out2_orange1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),orange). 
rhs(out2_yellow1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),yellow). 
rhs(out2_purple1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),purple). 
rhs(out2_purple1_4_7_4_7,sameR,sid_1x1,cxy(4,7),txy(4,7),purple). 
rhs(out2_purple1_6_3_6_3,sameR,sid_1x1,cxy(6,3),txy(6,3),purple). 
rhs(out2_black0_1_1_10_10,sameR,s2354895,cxy(6,6),txy(6,6),black). 

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
lhs(in0_cyan5_4_3_6_4,flipV,sid_tetris_Z_270_Rotated_2x3,cxy(5,3),txy(6,4),cyan,no_child). 
lhs(in0_brown4_6_2_7_4,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(7,3),txy(6,2),brown,no_child). 
lhs(in0_yellow7_5_5_6_9,flipD,s6607543,cxy(6,7),txy(5,5),yellow,no_child). 
lhs(in0_red6_4_4_6_7,rot270,sid_t180_3x2,cxy(5,6),txy(4,4),red,no_child). 
lhs(in0_cyan1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),cyan,no_child). 
lhs(in0_red1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),red,no_child). 
lhs(in0_brown1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),brown,no_child). 
lhs(in0_yellow1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),yellow,no_child). 
lhs(in0_brown1_4_8_4_8,sameR,sid_1x1,cxy(4,8),txy(4,8),brown,no_child). 
lhs(in0_black0_1_1_10_10,sameR,s11567348,cxy(6,6),txy(6,6),black,no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(10,10)
```

Grade your response from:
```prolog
rhs(out0_brown5_4_3_6_4,flipV,sid_tetris_Z_270_Rotated_2x3,cxy(5,3),txy(6,4),brown). 
rhs(out0_cyan4_6_2_7_4,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(7,3),txy(6,2),cyan). 
rhs(out0_red7_5_5_6_9,flipD,s6607543,cxy(6,7),txy(5,5),red). 
rhs(out0_yellow6_4_4_6_7,rot270,sid_t180_3x2,cxy(5,6),txy(4,4),yellow). 
rhs(out0_cyan1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),cyan). 
rhs(out0_red1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),red). 
rhs(out0_brown1_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),brown). 
rhs(out0_yellow1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),yellow). 
rhs(out0_cyan1_4_8_4_8,sameR,sid_1x1,cxy(4,8),txy(4,8),cyan). 
rhs(out0_black0_1_1_10_10,sameR,s11567348,cxy(6,6),txy(6,6),black). 
```
if wrong, what rules did you miss?
