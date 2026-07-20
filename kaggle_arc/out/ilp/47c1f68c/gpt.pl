% =======================================

Riddle t(47c1f68c)

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


%  Objects of Example 1 for input grid (1,1)-(11,11)
lhs(in0_blue5_1_2_3_4,sameR,s11068904,cxy(2,3),txy(3,4),no_child). 
lhs(in0_red21_1_1_11_11,sameR,s7753066,cxy(6,6),txy(6,6),5). 
lhs(in0_black0_7_7_11_11,sameR,s11261491,cxy(8,8),txy(8,8),no_child). 
lhs(in0_black0_1_7_5_11,sameR,s11261491,cxy(4,8),txy(4,8),no_child). 
lhs(in0_black0_7_1_11_5,sameR,s11261491,cxy(8,4),txy(8,4),no_child). 
lhs(in0_black0_1_1_5_5,sameR,s4362436,cxy(3,3),txy(4,4),no_child). 


%  Objects of Example 1 for output grid (1,1)-(10,10)
rhs(out0_red5_8_7_10_9,rot180,s11068904,cxy(9,8),txy(8,7)). 
rhs(out0_red5_1_7_3_9,rot90,s11869152,cxy(2,8),txy(3,7)). 
rhs(out0_red5_8_2_10_4,rot270,s11869152,cxy(9,3),txy(8,4)). 
rhs(out0_red5_1_2_3_4,sameR,s11068904,cxy(2,3),txy(3,4)). 
rhs(out0_black0_7_1_10_10,sameR,s1123303,cxy(9,6),txy(7,3)). 
rhs(out0_black0_1_1_4_10,sameR,s1123303,cxy(2,6),txy(4,3)). 


%  Objects of Example 2 for input grid (1,1)-(9,9)
lhs(in1_green1_3_1_3_1,sameR,sid_11,cxy(3,1),txy(3,1),no_child). 
lhs(in1_cyan17_1_1_9_9,sameR,s7753066,cxy(5,5),txy(5,5),7). 
lhs(in1_green4_1_1_2_3,rot270,s15307279,cxy(1,2),txy(1,2),1). 
lhs(in1_black0_2_1_2_1,sameR,sid_11,cxy(2,1),txy(2,1),no_child). 
lhs(in1_black0_6_6_9_9,sameR,s11261491,cxy(7,7),txy(7,7),no_child). 
lhs(in1_black0_1_6_4_9,sameR,s11261491,cxy(3,7),txy(3,7),no_child). 
lhs(in1_black0_6_1_9_4,sameR,s11261491,cxy(7,3),txy(7,3),no_child). 
lhs(in1_black0_1_1_4_4,sameR,s12620050,cxy(3,3),txy(3,3),no_child). 


%  Objects of Example 2 for output grid (1,1)-(8,8)
rhs(out1_cyan5_6_6_8_8,sameR,s5719482,cxy(7,7),txy(7,7)). 
rhs(out1_cyan5_1_6_3_8,rot270,s14803251,cxy(2,7),txy(2,7)). 
rhs(out1_cyan5_6_1_8_3,rot90,s14803251,cxy(7,2),txy(7,2)). 
rhs(out1_cyan5_1_1_3_3,rot180,s5719482,cxy(2,2),txy(2,2)). 
rhs(out1_black0_7_8_7_8,sameR,sid_11,cxy(7,8),txy(7,8)). 
rhs(out1_black0_2_8_2_8,sameR,sid_11,cxy(2,8),txy(2,8)). 
rhs(out1_black0_7_1_7_1,sameR,sid_11,cxy(7,1),txy(7,1)). 
rhs(out1_black0_2_1_2_1,sameR,sid_11,cxy(2,1),txy(2,1)). 


%  Objects of Example 3 for input grid (1,1)-(7,7)
lhs(in2_red1_1_1_1_1,sameR,sid_11,cxy(1,1),txy(1,1),no_child). 
lhs(in2_red3_2_2_3_3,rot180,s11261491,cxy(2,2),txy(2,2),1). 
lhs(in2_yellow13_1_1_7_7,sameR,s7753066,cxy(4,4),txy(4,4),8). 
lhs(in2_black0_3_3_3_3,sameR,sid_11,cxy(3,3),txy(3,3),no_child). 
lhs(in2_black0_5_5_7_7,sameR,s11261491,cxy(6,6),txy(6,6),no_child). 
lhs(in2_black0_1_5_3_7,sameR,s11261491,cxy(2,6),txy(2,6),no_child). 
lhs(in2_black0_1_2_1_3,sameR,sid_21,cxy(1,3),txy(1,3),no_child). 
lhs(in2_black0_5_1_7_3,sameR,s11261491,cxy(6,2),txy(6,2),no_child). 
lhs(in2_black0_2_1_3_1,rot90,sid_21,cxy(3,1),txy(3,1),no_child). 


%  Objects of Example 3 for output grid (1,1)-(6,6)
rhs(out2_yellow1_6_6_6_6,sameR,sid_11,cxy(6,6),txy(6,6)). 
rhs(out2_yellow1_1_6_1_6,sameR,sid_11,cxy(1,6),txy(1,6)). 
rhs(out2_yellow1_6_1_6_1,sameR,sid_11,cxy(6,1),txy(6,1)). 
rhs(out2_yellow1_1_1_1_1,sameR,sid_11,cxy(1,1),txy(1,1)). 
rhs(out2_yellow12_2_2_5_5,sameR,sid_323,cxy(4,4),txy(2,2)). 
rhs(out2_black0_2_6_5_6,rot90,sid_21,cxy(4,6),txy(4,6)). 
rhs(out2_black0_3_3_4_4,sameR,sid_11,cxy(4,4),txy(3,3)). 
rhs(out2_black0_6_2_6_5,sameR,sid_21,cxy(6,4),txy(6,4)). 
rhs(out2_black0_1_2_1_5,sameR,sid_21,cxy(1,4),txy(1,4)). 
rhs(out2_black0_2_1_5_1,rot90,sid_21,cxy(4,1),txy(4,1)). 

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



%  Objects of Exam 1 for input grid (1,1)-(13,13)
lhs(in0_cyan1_1_3_1_3,sameR,sid_11,cxy(1,3),txy(1,3),no_child). 
lhs(in0_cyan1_2_2_2_2,sameR,sid_11,cxy(2,2),txy(2,2),no_child). 
lhs(in0_cyan1_3_1_3_1,sameR,sid_11,cxy(3,1),txy(3,1),no_child). 
lhs(in0_cyan4_3_3_4_5,rot270,s11261491,cxy(3,4),txy(4,5),no_child). 
lhs(in0_green25_1_1_13_13,sameR,s7753066,cxy(7,7),txy(7,7),9). 
lhs(in0_black0_8_8_13_13,sameR,s11261491,cxy(9,9),txy(9,9),no_child). 
lhs(in0_black0_1_8_6_13,sameR,s11261491,cxy(5,9),txy(5,9),no_child). 
lhs(in0_black0_8_1_13_6,sameR,s11261491,cxy(9,5),txy(9,5),no_child). 
lhs(in0_black0_1_1_6_6,sameR,s6236936,cxy(4,4),txy(5,5),no_child). 
lhs(in0_black0_1_1_2_2,sameR,s11261491,cxy(1,1),txy(1,1),no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(12,12)
```

Grade your response from:
```prolog
rhs(out0_green7_9_8_12_12,flipDHV,s3353849,cxy(10,10),txy(9,8)). 
rhs(out0_green7_1_8_4_12,rot90,s3353849,cxy(3,10),txy(4,8)). 
rhs(out0_green7_9_1_12_5,rot270,s3353849,cxy(10,3),txy(9,5)). 
rhs(out0_green7_1_1_4_5,flipD,s3353849,cxy(3,3),txy(4,5)). 
rhs(out0_black0_11_11_12_12,sameR,s11261491,cxy(12,12),txy(12,12)). 
rhs(out0_black0_1_11_2_12,sameR,s11261491,cxy(1,12),txy(1,12)). 
rhs(out0_black0_11_1_12_2,sameR,s11261491,cxy(12,1),txy(12,1)). 
rhs(out0_black0_8_1_12_12,sameR,s6835672,cxy(10,7),txy(10,7)). 
rhs(out0_black0_1_1_5_12,sameR,s6835672,cxy(3,7),txy(3,7)). 
rhs(out0_black0_1_1_2_2,sameR,s11261491,cxy(1,1),txy(1,1)). 
```
if wrong, what rules did you miss?
