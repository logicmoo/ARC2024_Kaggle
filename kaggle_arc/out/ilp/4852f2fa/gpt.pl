% =======================================

Riddle v(4852f2fa)

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


%  Objects of Example 1 for input grid (1,1)-(9,9)
lhs(in0_yellow1_7_6_7_6,sameR,sid_1x1,cxy(7,6),txy(7,6),no_child). 
lhs(in0_yellow1_7_3_7_3,sameR,sid_1x1,cxy(7,3),txy(7,3),no_child). 
lhs(in0_cyan6_2_2_4_4,rot90,s12760807,cxy(3,3),txy(4,2),no_child). 


%  Objects of Example 1 for output grid (1,1)-(6,3)
rhs(out0_cyan12_1_1_6_3,flipV,s11441632,cxy(4,2),txy(4,2)). 
rhs(out0_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3)). 
rhs(out0_black0_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3)). 
rhs(out0_black0_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1)). 
rhs(out0_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1)). 
rhs(out0_black0_5_3_6_3,rot90,sid_1x2,cxy(6,3),txy(6,3)). 


%  Objects of Example 2 for input grid (1,1)-(9,9)
lhs(in1_yellow1_5_3_5_3,sameR,sid_1x1,cxy(5,3),txy(5,3),no_child). 
lhs(in1_cyan5_2_6_4_8,sameR,s11068904,cxy(3,7),txy(4,8),no_child). 
lhs(in1_black0_1_2_6_9,sameR,s3895578,cxy(4,6),txy(6,2),no_child). 


%  Objects of Example 2 for output grid (1,1)-(3,3)
rhs(out1_cyan5_1_1_3_3,sameR,s11068904,cxy(2,2),txy(3,3)). 
rhs(out1_black0_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3)). 
rhs(out1_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1)). 
rhs(out1_black0_3_1_3_2,sameR,sid_1x2,cxy(3,2),txy(3,2)). 


%  Objects of Example 3 for input grid (1,1)-(9,9)
lhs(in2_yellow1_4_8_4_8,sameR,sid_1x1,cxy(4,8),txy(4,8),no_child). 
lhs(in2_yellow1_7_6_7_6,sameR,sid_1x1,cxy(7,6),txy(7,6),no_child). 
lhs(in2_yellow1_6_2_6_2,sameR,sid_1x1,cxy(6,2),txy(6,2),no_child). 
lhs(in2_cyan4_2_4_4_5,rot180,sid_t180_3x2,cxy(3,4),txy(3,4),no_child). 


%  Objects of Example 3 for output grid (1,1)-(9,3)
rhs(out2_cyan12_1_2_9_3,rot180,s16700563,cxy(5,2),txy(5,2)). 
rhs(out2_black0_9_3_9_3,sameR,sid_1x1,cxy(9,3),txy(9,3)). 
rhs(out2_black0_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3)). 
rhs(out2_black0_6_3_7_3,rot90,sid_1x2,cxy(7,3),txy(7,3)). 
rhs(out2_black0_3_3_4_3,rot90,sid_1x2,cxy(4,3),txy(4,3)). 


%  Objects of Example 4 for input grid (1,1)-(9,9)
lhs(in3_yellow1_4_7_4_7,sameR,sid_1x1,cxy(4,7),txy(4,7),no_child). 
lhs(in3_yellow1_6_5_6_5,sameR,sid_1x1,cxy(6,5),txy(6,5),no_child). 
lhs(in3_cyan1_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2),no_child). 
lhs(in3_yellow1_6_1_6_1,sameR,sid_1x1,cxy(6,1),txy(6,1),no_child). 
lhs(in3_cyan4_1_3_2_4,sameR,sid_1x1,cxy(2,4),txy(1,3),no_child). 


%  Objects of Example 4 for output grid (1,1)-(9,3)
rhs(out3_cyan1_9_1_9_1,sameR,sid_1x1,cxy(9,1),txy(9,1)). 
rhs(out3_cyan1_6_1_6_1,sameR,sid_1x1,cxy(6,1),txy(6,1)). 
rhs(out3_cyan1_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1)). 
rhs(out3_cyan4_7_2_8_3,sameR,sid_1x1,cxy(8,3),txy(7,2)). 
rhs(out3_cyan4_4_2_5_3,sameR,sid_1x1,cxy(5,3),txy(4,2)). 
rhs(out3_cyan4_1_2_2_3,sameR,sid_1x1,cxy(2,3),txy(1,2)). 
rhs(out3_black0_9_2_9_3,sameR,sid_1x2,cxy(9,3),txy(9,3)). 
rhs(out3_black0_6_2_6_3,sameR,sid_1x2,cxy(6,3),txy(6,3)). 
rhs(out3_black0_3_2_3_3,sameR,sid_1x2,cxy(3,3),txy(3,3)). 
rhs(out3_black0_7_1_8_1,rot90,sid_1x2,cxy(8,1),txy(8,1)). 
rhs(out3_black0_4_1_5_1,rot90,sid_1x2,cxy(5,1),txy(5,1)). 
rhs(out3_black0_1_1_2_1,rot90,sid_1x2,cxy(2,1),txy(2,1)). 


%  Objects of Example 5 for input grid (1,1)-(9,9)
lhs(in4_yellow1_6_9_6_9,sameR,sid_1x1,cxy(6,9),txy(6,9),no_child). 
lhs(in4_yellow1_2_6_2_6,sameR,sid_1x1,cxy(2,6),txy(2,6),no_child). 
lhs(in4_yellow1_7_4_7_4,sameR,sid_1x1,cxy(7,4),txy(7,4),no_child). 
lhs(in4_yellow1_5_2_5_2,sameR,sid_1x1,cxy(5,2),txy(5,2),no_child). 
lhs(in4_cyan5_1_1_3_3,rot90,s11869152,cxy(2,2),txy(3,1),1). 
lhs(in4_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),no_child). 
lhs(in4_black0_5_8_7_9,rot90,s11778174,cxy(6,8),txy(6,8),no_child). 


%  Objects of Example 5 for output grid (1,1)-(12,3)
rhs(out4_cyan5_10_1_12_3,rot90,s11869152,cxy(11,2),txy(12,1)). 
rhs(out4_cyan5_7_1_9_3,rot90,s11869152,cxy(8,2),txy(9,1)). 
rhs(out4_cyan5_4_1_6_3,rot90,s11869152,cxy(5,2),txy(6,1)). 
rhs(out4_cyan5_1_1_3_3,rot90,s11869152,cxy(2,2),txy(3,1)). 
rhs(out4_black0_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3)). 
rhs(out4_black0_10_1_10_1,sameR,sid_1x1,cxy(10,1),txy(10,1)). 
rhs(out4_black0_7_1_7_1,sameR,sid_1x1,cxy(7,1),txy(7,1)). 
rhs(out4_black0_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1)). 
rhs(out4_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1)). 
rhs(out4_black0_12_2_12_3,sameR,sid_1x2,cxy(12,3),txy(12,3)). 
rhs(out4_black0_9_2_10_3,sameR,s11261491,cxy(9,3),txy(9,3)). 
rhs(out4_black0_6_2_7_3,sameR,s11261491,cxy(6,3),txy(6,3)). 
rhs(out4_black0_3_2_4_3,sameR,s11261491,cxy(3,3),txy(3,3)). 

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



%  Objects of Exam 1 for input grid (1,1)-(9,9)
lhs(in0_yellow1_4_8_4_8,sameR,sid_1x1,cxy(4,8),txy(4,8),no_child). 
lhs(in0_yellow1_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5),no_child). 
lhs(in0_cyan6_6_1_8_3,rot270,s12258848,cxy(7,2),txy(7,2),1). 
lhs(in0_black0_7_2_7_2,sameR,sid_1x1,cxy(7,2),txy(7,2),no_child). 
lhs(in0_black0_3_7_5_9,sameR,sid_hollow_3x3,cxy(4,8),txy(4,8),no_child). 
lhs(in0_black0_1_4_2_6,sameR,s11778174,cxy(2,5),txy(2,5),no_child). 
lhs(in0_black0_5_1_9_4,rot90,s4210796,cxy(7,3),txy(7,3),no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(6,3)
```

Grade your response from:
```prolog
rhs(out0_cyan12_1_1_6_3,rot180,s9876901,cxy(3,2),txy(3,2)). 
rhs(out0_black0_6_3_6_3,sameR,sid_1x1,cxy(6,3),txy(6,3)). 
rhs(out0_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3)). 
rhs(out0_black0_5_2_5_2,sameR,sid_1x1,cxy(5,2),txy(5,2)). 
rhs(out0_black0_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2)). 
rhs(out0_black0_6_1_6_1,sameR,sid_1x1,cxy(6,1),txy(6,1)). 
rhs(out0_black0_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1)). 
```
if wrong, what rules did you miss?


%  Objects of Exam 2 for input grid (1,1)-(9,9)
lhs(in1_yellow1_5_9_5_9,sameR,sid_1x1,cxy(5,9),txy(5,9),no_child). 
lhs(in1_yellow1_2_5_2_5,sameR,sid_1x1,cxy(2,5),txy(2,5),no_child). 
lhs(in1_yellow1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),no_child). 
lhs(in1_yellow1_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1),no_child). 
lhs(in1_cyan5_5_4_7_6,sameR,sid_plus_3x3,cxy(6,5),txy(6,5),no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 2 for output grid (1,1)-(12,3)
```

Grade your response from:
```prolog
rhs(out1_cyan20_1_1_12_3,rot90,s9199197,cxy(7,2),txy(7,2)). 
rhs(out1_black0_12_3_12_3,sameR,sid_1x1,cxy(12,3),txy(12,3)). 
rhs(out1_black0_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3)). 
rhs(out1_black0_12_1_12_1,sameR,sid_1x1,cxy(12,1),txy(12,1)). 
rhs(out1_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1)). 
rhs(out1_black0_9_3_10_3,rot90,sid_1x2,cxy(10,3),txy(10,3)). 
rhs(out1_black0_6_3_7_3,rot90,sid_1x2,cxy(7,3),txy(7,3)). 
rhs(out1_black0_3_3_4_3,rot90,sid_1x2,cxy(4,3),txy(4,3)). 
rhs(out1_black0_9_1_10_1,rot90,sid_1x2,cxy(10,1),txy(10,1)). 
rhs(out1_black0_6_1_7_1,rot90,sid_1x2,cxy(7,1),txy(7,1)). 
rhs(out1_black0_3_1_4_1,rot90,sid_1x2,cxy(4,1),txy(4,1)). 
```
if wrong, what rules did you miss?
