% =======================================

Riddle v(009d5c81)

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




Title: v(009d5c81)

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


%  Objects of Example 1 for input grid (1,1)-(14,14)
lhs(in0_blue5_2_10_4_12,sameR,sid_plus_3x3,cxy(3,11),txy(3,11),blue,no_child). 
lhs(in0_cyan30_5_2_13_9,sameR,s12516714,cxy(9,5),txy(13,9),cyan,no_child). 
lhs(in0_black0_1_1_14_14,sameR,s502064,cxy(7,8),txy(14,1),black,no_child). 


%  Objects of Example 1 for output grid (1,1)-(14,14)
rhs(out0_red30_5_2_13_9,sameR,s12516714,cxy(9,5),txy(13,9),red). 
rhs(out0_black0_1_1_14_14,sameR,s12103810,cxy(7,8),txy(14,1),black). 


%  Objects of Example 2 for input grid (1,1)-(14,14)
lhs(in1_blue6_4_11_6_13,sameR,s11399640,cxy(5,12),txy(5,12),blue,no_child). 
lhs(in1_cyan14_5_3_11_5,sameR,s8570574,cxy(8,4),txy(8,4),cyan,no_child). 
lhs(in1_black0_1_1_14_14,sameR,s6071711,cxy(8,8),txy(1,1),black,no_child). 


%  Objects of Example 2 for output grid (1,1)-(14,14)
rhs(out1_green14_5_3_11_5,sameR,s8570574,cxy(8,4),txy(8,4),green). 
rhs(out1_black0_1_1_14_14,sameR,s11504686,cxy(7,8),txy(14,1),black). 


%  Objects of Example 3 for input grid (1,1)-(14,14)
lhs(in2_black0_5_1_7_2,rot90,s11778174,cxy(6,1),txy(6,1),black,no_child). 
lhs(in2_blue5_8_10_10_12,sameR,sid_plus_3x3,cxy(9,11),txy(9,11),blue,no_child). 
lhs(in2_cyan24_2_1_10_5,sameR,s12800406,cxy(6,3),txy(6,3),cyan,no_child). 
lhs(in2_black0_1_1_14_14,sameR,s1107826,cxy(8,8),txy(1,1),black,no_child). 


%  Objects of Example 3 for output grid (1,1)-(14,14)
rhs(out2_black0_5_1_7_2,rot90,s11778174,cxy(6,1),txy(6,1),black). 
rhs(out2_red24_2_1_10_5,sameR,s12800406,cxy(6,3),txy(6,3),red). 
rhs(out2_black0_1_1_14_14,sameR,s10411701,cxy(8,8),txy(1,1),black). 


%  Objects of Example 4 for input grid (1,1)-(14,14)
lhs(in3_blue6_5_11_7_13,rot90,s12561063,cxy(6,12),txy(6,12),blue,no_child). 
lhs(in3_black0_10_1_14_4,rot90,s4384838,cxy(13,2),txy(10,1),black,no_child). 
lhs(in3_cyan31_5_1_14_8,flipD,s5741363,cxy(10,5),txy(8,1),cyan,no_child). 
lhs(in3_black0_1_1_14_14,sameR,s15072403,cxy(7,8),txy(7,8),black,no_child). 


%  Objects of Example 4 for output grid (1,1)-(14,14)
rhs(out3_black0_10_1_14_4,rot90,s4384838,cxy(13,2),txy(10,1),black). 
rhs(out3_orange31_5_1_14_8,flipD,s5741363,cxy(10,5),txy(8,1),orange). 
rhs(out3_black0_1_1_14_14,sameR,s9227143,cxy(7,8),txy(7,8),black). 


%  Objects of Example 5 for input grid (1,1)-(14,14)
lhs(in4_blue6_3_9_5_11,sameR,s11399640,cxy(4,10),txy(4,10),blue,no_child). 
lhs(in4_cyan16_6_2_12_7,flipD,s14930528,cxy(9,4),txy(9,4),cyan,no_child). 
lhs(in4_black0_1_1_14_14,sameR,s14163849,cxy(7,8),txy(14,1),black,no_child). 


%  Objects of Example 5 for output grid (1,1)-(14,14)
rhs(out4_green16_6_2_12_7,flipD,s14930528,cxy(9,4),txy(9,4),green). 
rhs(out4_black0_1_1_14_14,sameR,s8920493,cxy(7,8),txy(14,1),black). 

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



%  Objects of Exam 1 for input grid (1,1)-(14,14)
lhs(in0_black0_7_3_9_4,rot90,s11778174,cxy(8,3),txy(8,3),black,no_child). 
lhs(in0_black0_11_3_13_4,rot90,s11778174,cxy(12,4),txy(12,4),black,no_child). 
lhs(in0_blue6_7_9_9_11,rot90,s12561063,cxy(8,10),txy(8,10),blue,no_child). 
lhs(in0_cyan26_6_2_14_5,flipV,s14078230,cxy(10,4),txy(10,4),cyan,no_child). 
lhs(in0_black0_1_1_14_14,sameR,s6284299,cxy(7,8),txy(14,1),black,no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(14,14)
```

Grade your response from:
```prolog
rhs(out0_black0_7_3_9_4,rot90,s11778174,cxy(8,3),txy(8,3),black). 
rhs(out0_black0_11_3_13_4,rot90,s11778174,cxy(12,4),txy(12,4),black). 
rhs(out0_orange26_6_2_14_5,flipV,s14078230,cxy(10,4),txy(10,4),orange). 
rhs(out0_black0_1_1_14_14,sameR,s11778174,cxy(7,8),txy(14,1),black). 
```
if wrong, what rules did you miss?
