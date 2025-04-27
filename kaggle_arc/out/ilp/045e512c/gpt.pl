% =======================================

Riddle t(045e512c)

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




Title: t(045e512c)

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


%  Objects of Example 1 for input grid (1,1)-(21,21)
lhs(in0_green3_11_7_11_9,rot90,sid_2x1,cxy(11,8),txy(11,8),green,no_child). 
lhs(in0_red3_7_11_9_11,sameR,sid_2x1,cxy(8,11),txy(8,11),red,no_child). 
lhs(in0_cyan8_7_7_9_9,sameR,sid_hollow_3x3,cxy(8,8),txy(8,8),cyan,1). 
lhs(in0_black0_8_8_8_8,sameR,sid_1x1,cxy(8,8),txy(8,8),black,no_child). 
lhs(in0_black0_1_1_21_21,sameR,s9113573,cxy(11,11),txy(11,11),black,no_child). 


%  Objects of Example 1 for output grid (1,1)-(21,21)
rhs(out0_cyan8_7_7_9_9,sameR,sid_hollow_3x3,cxy(8,8),txy(8,8),cyan). 
rhs(out0_red8_7_11_9_13,sameR,sid_hollow_3x3,cxy(8,12),txy(8,12),red). 
rhs(out0_red8_7_15_9_17,sameR,sid_hollow_3x3,cxy(8,16),txy(8,16),red). 
rhs(out0_red8_7_19_9_21,sameR,sid_hollow_3x3,cxy(8,20),txy(8,20),red). 
rhs(out0_green8_11_7_13_9,sameR,sid_hollow_3x3,cxy(12,8),txy(12,8),green). 
rhs(out0_green8_15_7_17_9,sameR,sid_hollow_3x3,cxy(16,8),txy(16,8),green). 
rhs(out0_green8_19_7_21_9,sameR,sid_hollow_3x3,cxy(20,8),txy(20,8),green). 
rhs(out0_black0_8_8_8_8,sameR,sid_1x1,cxy(8,8),txy(8,8),black). 
rhs(out0_black0_8_12_8_12,sameR,sid_1x1,cxy(8,12),txy(8,12),black). 
rhs(out0_black0_8_16_8_16,sameR,sid_1x1,cxy(8,16),txy(8,16),black). 
rhs(out0_black0_8_20_8_20,sameR,sid_1x1,cxy(8,20),txy(8,20),black). 
rhs(out0_black0_12_8_12_8,sameR,sid_1x1,cxy(12,8),txy(12,8),black). 
rhs(out0_black0_16_8_16_8,sameR,sid_1x1,cxy(16,8),txy(16,8),black). 
rhs(out0_black0_20_8_20_8,sameR,sid_1x1,cxy(20,8),txy(20,8),black). 
rhs(out0_black0_1_1_21_21,sameR,s5366997,cxy(11,11),txy(11,11),black). 


%  Objects of Example 2 for input grid (1,1)-(21,21)
lhs(in1_blue5_12_8_14_10,sameR,sid_plus_3x3,cxy(13,9),txy(13,9),blue,no_child). 
lhs(in1_red1_9_8_11_10,sameR,sid_tetris_T_Stretched_3x3,cxy(10,9),txy(10,9),red,no_child). 
lhs(in1_yellow1_12_5_14_7,sameR,sid_tetris_T_Stretched_3x3,cxy(13,6),txy(13,6),yellow,no_child). 
lhs(in1_yellow1_15_8_17_10,sameR,sid_tetris_T_Stretched_3x3,cxy(16,9),txy(16,9),yellow,no_child). 
lhs(in1_blue5_11_7_15_11,sameR,s6151086,cxy(13,9),txy(13,9),blue,no_child). 
lhs(in1_red1_10_9_10_9,sameR,sid_1x1,cxy(10,9),txy(10,9),red,no_child). 
lhs(in1_yellow1_13_6_13_6,sameR,sid_1x1,cxy(13,6),txy(13,6),yellow,no_child). 
lhs(in1_yellow1_16_9_16_9,sameR,sid_1x1,cxy(16,9),txy(16,9),yellow,no_child). 


%  Objects of Example 2 for output grid (1,1)-(21,21)
rhs(out1_yellow4_12_1_14_2,rot180,sid_t180_3x2,cxy(13,1),txy(13,1),yellow). 
rhs(out1_red4_1_8_2_10,rot270,sid_t180_3x2,cxy(1,9),txy(1,9),red). 
rhs(out1_yellow4_20_8_21_10,rot90,sid_t180_3x2,cxy(21,9),txy(21,9),yellow). 
rhs(out1_red5_4_8_6_10,sameR,sid_plus_3x3,cxy(5,9),txy(5,9),red). 
rhs(out1_red5_8_8_10_10,sameR,sid_plus_3x3,cxy(9,9),txy(9,9),red). 
rhs(out1_yellow5_12_4_14_6,sameR,sid_plus_3x3,cxy(13,5),txy(13,5),yellow). 
rhs(out1_blue5_12_8_14_10,sameR,sid_plus_3x3,cxy(13,9),txy(13,9),blue). 
rhs(out1_yellow5_16_8_18_10,sameR,sid_plus_3x3,cxy(17,9),txy(17,9),yellow). 
rhs(out1_black0_1_1_21_21,sameR,s11741688,cxy(11,11),txy(11,11),black). 


%  Objects of Example 3 for input grid (1,1)-(21,21)
lhs(in2_purple2_11_5_12_6,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(12,6),txy(11,5),purple,no_child). 
lhs(in2_blue3_11_12_12_13,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(11,12),txy(11,12),blue,no_child). 
lhs(in2_silver6_7_8_9_10,sameR,s1381650,cxy(8,9),txy(8,9),silver,no_child). 
lhs(in2_black0_1_1_21_21,sameR,s6059610,cxy(11,11),txy(11,11),black,no_child). 


%  Objects of Example 3 for output grid (1,1)-(21,21)
rhs(out2_blue4_19_20_21_21,rot180,s11716125,cxy(20,21),txy(19,20),blue). 
rhs(out2_purple4_15_1_17_2,sameR,s11716125,cxy(16,2),txy(16,2),purple). 
rhs(out2_silver6_7_8_9_10,sameR,s1381650,cxy(8,9),txy(8,9),silver). 
rhs(out2_purple6_11_4_13_6,sameR,s1381650,cxy(12,5),txy(12,5),purple). 
rhs(out2_blue6_11_12_13_14,sameR,s1381650,cxy(12,13),txy(12,13),blue). 
rhs(out2_blue6_15_16_17_18,sameR,s1381650,cxy(16,17),txy(16,17),blue). 
rhs(out2_black0_1_1_21_21,sameR,s12950248,cxy(11,11),txy(11,11),black). 

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



%  Objects of Exam 1 for input grid (1,1)-(21,21)
lhs(in0_yellow2_11_5_11_6,rot90,sid_2x1,cxy(11,6),txy(11,6),yellow,no_child). 
lhs(in0_red3_11_8_11_10,rot90,sid_2x1,cxy(11,9),txy(11,9),red,no_child). 
lhs(in0_green3_7_12_9_12,sameR,sid_2x1,cxy(8,12),txy(8,12),green,no_child). 
lhs(in0_cyan7_7_8_9_10,rot90,sid_u_3x2,cxy(8,9),txy(8,9),cyan,no_child). 
lhs(in0_black0_1_1_21_21,sameR,s14350887,cxy(11,11),txy(11,11),black,no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(21,21)
```

Grade your response from:
```prolog
rhs(out0_yellow2_15_1_15_2,rot90,sid_2x1,cxy(15,2),txy(15,2),yellow). 
rhs(out0_yellow2_17_1_17_2,rot90,sid_2x1,cxy(17,2),txy(17,2),yellow). 
rhs(out0_green5_7_20_9_21,rot180,sid_u_3x2,cxy(8,20),txy(8,20),green). 
rhs(out0_cyan7_7_8_9_10,rot90,sid_u_3x2,cxy(8,9),txy(8,9),cyan). 
rhs(out0_green7_7_12_9_14,rot90,sid_u_3x2,cxy(8,13),txy(8,13),green). 
rhs(out0_green7_7_16_9_18,rot90,sid_u_3x2,cxy(8,17),txy(8,17),green). 
rhs(out0_yellow7_11_4_13_6,rot90,sid_u_3x2,cxy(12,5),txy(12,5),yellow). 
rhs(out0_red7_11_8_13_10,rot90,sid_u_3x2,cxy(12,9),txy(12,9),red). 
rhs(out0_red7_15_8_17_10,rot90,sid_u_3x2,cxy(16,9),txy(16,9),red). 
rhs(out0_red7_19_8_21_10,rot90,sid_u_3x2,cxy(20,9),txy(20,9),red). 
rhs(out0_black0_8_21_8_21,sameR,sid_1x1,cxy(8,21),txy(8,21),black). 
rhs(out0_black0_1_1_21_21,sameR,s13706499,cxy(11,11),txy(11,11),black). 
```
if wrong, what rules did you miss?
