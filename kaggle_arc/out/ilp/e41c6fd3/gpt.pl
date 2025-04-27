% =======================================

Riddle v(e41c6fd3)

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




Title: v(e41c6fd3)

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


%  Objects of Example 1 for input grid (1,1)-(23,13)
lhs(in0_red16_4_4_7_8,rot270,s12561063,cxy(6,6),txy(4,8),red,no_child). 
lhs(in0_cyan16_11_2_14_6,rot270,s12561063,cxy(13,4),txy(11,6),cyan,no_child). 
lhs(in0_yellow16_17_8_20_12,rot270,s12561063,cxy(19,10),txy(17,12),yellow,no_child). 
lhs(in0_black0_1_1_23_13,rot90,s8678073,cxy(12,7),txy(12,7),black,no_child). 


%  Objects of Example 1 for output grid (1,1)-(23,13)
rhs(out0_red16_4_2_7_6,rot270,s12561063,cxy(6,4),txy(4,6),red). 
rhs(out0_cyan16_11_2_14_6,rot270,s12561063,cxy(13,4),txy(11,6),cyan). 
rhs(out0_yellow16_17_2_20_6,rot270,s12561063,cxy(19,4),txy(17,6),yellow). 
rhs(out0_black0_1_1_23_13,rot90,s9741348,cxy(12,8),txy(12,8),black). 


%  Objects of Example 2 for input grid (1,1)-(30,14)
lhs(in1_black0_15_14_16_14,rot90,sid_1x2,cxy(16,14),txy(16,14),black,no_child). 
lhs(in1_cyan16_5_7_10_10,sameR,s5507379,cxy(8,9),txy(8,9),cyan,no_child). 
lhs(in1_purple16_13_11_18_14,sameR,s5507379,cxy(16,13),txy(16,13),purple,1). 
lhs(in1_blue16_19_3_24_6,sameR,s5507379,cxy(22,5),txy(22,5),blue,no_child). 
lhs(in1_green16_25_9_30_12,sameR,s5507379,cxy(28,11),txy(28,11),green,no_child). 
lhs(in1_black0_1_1_30_14,rot90,s8843638,cxy(15,7),txy(30,14),black,no_child). 


%  Objects of Example 2 for output grid (1,1)-(30,14)
rhs(out1_cyan16_5_7_10_10,sameR,s5507379,cxy(8,9),txy(8,9),cyan). 
rhs(out1_purple16_13_7_18_10,sameR,s5507379,cxy(16,9),txy(16,9),purple). 
rhs(out1_blue16_19_7_24_10,sameR,s5507379,cxy(22,9),txy(22,9),blue). 
rhs(out1_green16_25_7_30_10,sameR,s5507379,cxy(28,9),txy(28,9),green). 
rhs(out1_black0_1_1_30_14,rot90,s4383387,cxy(15,7),txy(30,14),black). 


%  Objects of Example 3 for input grid (1,1)-(30,16)
lhs(in2_blue12_3_6_6_9,sameR,s14594424,cxy(5,8),txy(5,8),blue,no_child). 
lhs(in2_yellow12_8_9_11_12,sameR,s14594424,cxy(10,11),txy(10,11),yellow,no_child). 
lhs(in2_cyan12_14_3_17_6,sameR,s14594424,cxy(16,5),txy(16,5),cyan,no_child). 
lhs(in2_red12_18_8_21_11,sameR,s14594424,cxy(20,10),txy(20,10),red,no_child). 
lhs(in2_green12_25_4_28_7,sameR,s14594424,cxy(27,6),txy(27,6),green,no_child). 
lhs(in2_black0_1_1_30_16,rot90,s6130932,cxy(16,9),txy(1,1),black,no_child). 


%  Objects of Example 3 for output grid (1,1)-(30,16)
rhs(out2_black0_17_5_18_5,rot90,sid_1x2,cxy(18,5),txy(18,5),black). 
rhs(out2_blue12_3_3_6_6,sameR,s14594424,cxy(5,5),txy(5,5),blue). 
rhs(out2_yellow12_8_3_11_6,sameR,s14594424,cxy(10,5),txy(10,5),yellow). 
rhs(out2_cyan12_14_3_17_6,sameR,s14594424,cxy(16,5),txy(16,5),cyan). 
rhs(out2_red12_18_3_21_6,sameR,s14594424,cxy(20,5),txy(20,5),red). 
rhs(out2_green12_25_3_28_6,sameR,s14594424,cxy(27,5),txy(27,5),green). 
rhs(out2_black0_1_1_30_16,rot90,s13796390,cxy(16,9),txy(1,1),black). 

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



%  Objects of Exam 1 for input grid (1,1)-(30,17)
lhs(in0_green15_3_10_7_14,rot90,s1496004,cxy(5,12),txy(5,12),green,no_child). 
lhs(in0_blue15_10_13_14_17,rot90,s1496004,cxy(12,15),txy(12,15),blue,no_child). 
lhs(in0_yellow15_15_3_19_7,rot90,s1496004,cxy(17,5),txy(17,5),yellow,no_child). 
lhs(in0_cyan15_22_8_26_12,rot90,s1496004,cxy(24,10),txy(24,10),cyan,no_child). 
lhs(in0_black0_1_1_30_17,rot90,s8682924,cxy(16,9),txy(16,9),black,no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(30,17)
```

Grade your response from:
```prolog
rhs(out0_black0_13_9_16_10,rot90,s5766781,cxy(15,9),txy(14,10),black). 
rhs(out0_green15_3_8_7_12,rot90,s1496004,cxy(5,10),txy(5,10),green). 
rhs(out0_blue15_10_8_14_12,rot90,s1496004,cxy(12,10),txy(12,10),blue). 
rhs(out0_yellow15_15_8_19_12,rot90,s1496004,cxy(17,10),txy(17,10),yellow). 
rhs(out0_cyan15_22_8_26_12,rot90,s1496004,cxy(24,10),txy(24,10),cyan). 
rhs(out0_black0_1_1_30_17,rot90,s4831827,cxy(16,9),txy(16,9),black). 
```
if wrong, what rules did you miss?
