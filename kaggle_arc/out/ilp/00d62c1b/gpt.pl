% =======================================

Riddle t(00d62c1b)

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




Title: t(00d62c1b)

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


%  Objects of Example 1 for input grid (1,1)-(6,6)
lhs(in0_green6_2_2_5_5,sameR,s10809003,cxy(4,4),txy(4,4),green,no_child). 
lhs(in0_black0_1_1_6_6,sameR,s3217181,cxy(4,4),txy(1,1),black,no_child). 


%  Objects of Example 1 for output grid (1,1)-(6,6)
rhs(out0_yellow2_3_3_4_4,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(4,4),txy(3,3),yellow). 
rhs(out0_green6_2_2_5_5,sameR,s10809003,cxy(4,4),txy(4,4),green). 
rhs(out0_black0_1_1_6_6,sameR,s8656395,cxy(4,4),txy(1,1),black). 


%  Objects of Example 2 for input grid (1,1)-(10,10)
lhs(in1_green15_3_2_8_8,rot180,s9980084,cxy(5,5),txy(3,2),green,no_child). 
lhs(in1_black0_1_1_10_10,sameR,s5135887,cxy(6,6),txy(1,1),black,no_child). 


%  Objects of Example 2 for output grid (1,1)-(10,10)
rhs(out1_green15_3_2_8_8,rot180,s9980084,cxy(5,5),txy(3,2),green). 
rhs(out1_yellow1_7_5_7_5,sameR,sid_1x1,cxy(7,5),txy(7,5),yellow). 
rhs(out1_black0_1_1_10_10,sameR,s15855655,cxy(6,6),txy(1,1),black). 


%  Objects of Example 3 for input grid (1,1)-(10,10)
lhs(in2_green22_1_1_9_9,sameR,s8721169,cxy(6,5),txy(9,9),green,no_child). 
lhs(in2_black0_1_1_10_10,sameR,s12727439,cxy(5,6),txy(10,1),black,no_child). 


%  Objects of Example 3 for output grid (1,1)-(10,10)
rhs(out2_yellow8_5_4_6_7,rot90,sid_2x1,cxy(6,6),txy(5,4),yellow). 
rhs(out2_green22_1_1_9_9,sameR,s8721169,cxy(6,5),txy(9,9),green). 
rhs(out2_yellow1_8_4_8_4,sameR,sid_1x1,cxy(8,4),txy(8,4),yellow). 
rhs(out2_black0_1_1_10_10,sameR,s6827363,cxy(5,6),txy(10,1),black). 


%  Objects of Example 4 for input grid (1,1)-(10,10)
lhs(in3_black0_4_3_5_4,sameR,sid_1x1,cxy(5,4),txy(4,3),black,no_child). 
lhs(in3_green29_3_2_10_10,flipDHV,s14837053,cxy(6,6),txy(3,2),green,no_child). 
lhs(in3_black0_1_1_10_10,sameR,s1469986,cxy(5,6),txy(10,1),black,no_child). 


%  Objects of Example 4 for output grid (1,1)-(10,10)
rhs(out3_yellow4_4_3_5_4,sameR,sid_1x1,cxy(5,4),txy(4,3),yellow). 
rhs(out3_black0_5_6_10_10,rot90,s8742889,cxy(7,8),txy(10,10),black). 
rhs(out3_green29_3_2_10_10,flipDHV,s14837053,cxy(6,6),txy(3,2),green). 
rhs(out3_yellow1_5_9_5_9,sameR,sid_1x1,cxy(5,9),txy(5,9),yellow). 
rhs(out3_yellow1_9_8_9_8,sameR,sid_1x1,cxy(9,8),txy(9,8),yellow). 
rhs(out3_black0_1_1_10_10,sameR,s3213940,cxy(5,5),txy(5,5),black). 


%  Objects of Example 5 for input grid (1,1)-(20,20)
lhs(in4_green2_13_17_14_18,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(14,18),txy(13,17),green,no_child). 
lhs(in4_black0_10_6_15_9,rot90,sid_1x2,cxy(13,8),txy(10,6),black,no_child). 
lhs(in4_green11_14_13_18_17,sameR,s11486546,cxy(17,15),txy(14,13),green,no_child). 
lhs(in4_green49_5_2_16_16,rot180,s6997219,cxy(11,9),txy(5,3),green,no_child). 
lhs(in4_green1_3_10_3_10,sameR,sid_1x1,cxy(3,10),txy(3,10),green,no_child). 
lhs(in4_green1_5_7_5_7,sameR,sid_1x1,cxy(5,7),txy(5,7),green,no_child). 
lhs(in4_green1_16_12_16_12,sameR,sid_1x1,cxy(16,12),txy(16,12),green,no_child). 
lhs(in4_black0_17_16_17_16,sameR,sid_1x1,cxy(17,16),txy(17,16),black,no_child). 
lhs(in4_green1_18_12_18_12,sameR,sid_1x1,cxy(18,12),txy(18,12),green,no_child). 
lhs(in4_green1_19_4_19_4,sameR,sid_1x1,cxy(19,4),txy(19,4),green,no_child). 
lhs(in4_black0_1_1_20_20,sameR,s1538320,cxy(10,11),txy(20,1),black,no_child). 


%  Objects of Example 5 for output grid (1,1)-(20,20)
rhs(out4_green2_13_17_14_18,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(14,18),txy(13,17),green). 
rhs(out4_green12_14_13_18_17,sameR,s4919079,cxy(17,15),txy(14,13),pen([cc(green,7),cc(yellow,1),cc(green,4)])). 
rhs(out4_green79_5_2_16_16,rot180,s16743881,cxy(11,8),txy(5,3),pen([cc(green,8),cc(yellow,2),cc(green,2),cc(yellow,2),cc(green,15),cc(yellow,6),cc(green,2),cc(yellow,6),cc(green,2),cc(yellow,6),cc(green,2),cc(yellow,6),cc(green,10),cc(yellow,1),cc(green,3),cc(yellow,1),cc(green,5)])). 
rhs(out4_green1_3_10_3_10,sameR,sid_1x1,cxy(3,10),txy(3,10),green). 
rhs(out4_green1_5_7_5_7,sameR,sid_1x1,cxy(5,7),txy(5,7),green). 
rhs(out4_green1_16_12_16_12,sameR,sid_1x1,cxy(16,12),txy(16,12),green). 
rhs(out4_green1_18_12_18_12,sameR,sid_1x1,cxy(18,12),txy(18,12),green). 
rhs(out4_green1_19_4_19_4,sameR,sid_1x1,cxy(19,4),txy(19,4),green). 
rhs(out4_black0_1_1_20_20,sameR,s13614738,cxy(10,11),txy(20,1),black). 

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



%  Objects of Exam 1 for input grid (1,1)-(20,20)
lhs(in0_black0_11_11_13_11,rot90,sid_1x2,cxy(12,11),txy(12,11),black,no_child). 
lhs(in0_black0_9_17_11_18,rot90,sid_1x2,cxy(10,18),txy(10,18),black,no_child). 
lhs(in0_green5_2_14_5_16,flipD,sid_hollow_diamond_3x3,cxy(3,15),txy(5,16),green,no_child). 
lhs(in0_black0_15_8_17_12,sameR,sid_1x2,cxy(16,10),txy(16,10),black,no_child). 
lhs(in0_green15_7_16_12_19,flipV,s2533767,cxy(10,17),txy(7,16),green,no_child). 
lhs(in0_green58_2_2_18_14,flipDHV,s12290725,cxy(11,8),txy(3,2),green,no_child). 
lhs(in0_black0_1_1_20_20,sameR,s283661,cxy(10,10),txy(20,20),black,no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(20,20)
```

Grade your response from:
```prolog
rhs(out0_green6_2_14_5_16,flipD,sid_plus_3x3,cxy(3,15),txy(5,16),pen([cc(green,2),cc(yellow,1),cc(green,3)])). 
rhs(out0_green21_7_16_12_19,flipV,s2149589,cxy(10,17),txy(7,16),pen([cc(green,6),cc(yellow,3),cc(green,2),cc(yellow,3),cc(green,7)])). 
rhs(out0_green84_2_2_18_14,flipDHV,s16362403,cxy(12,8),txy(3,2),pen([cc(green,8),cc(yellow,5),cc(green,2),cc(yellow,5),cc(green,2),cc(yellow,5),cc(green,9),cc(yellow,1),cc(green,4),cc(yellow,1),cc(green,2),cc(yellow,1),cc(green,2),cc(yellow,1),cc(green,2),cc(yellow,1),cc(green,8),cc(yellow,1),cc(green,2),cc(yellow,1),cc(green,3),cc(yellow,1),cc(green,3),cc(yellow,1),cc(green,2),cc(yellow,1),cc(green,7),cc(yellow,1),cc(green,2)])). 
rhs(out0_black0_1_1_20_20,sameR,s3631455,cxy(10,10),txy(20,20),black). 
```
if wrong, what rules did you miss?
