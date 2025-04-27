% =======================================

Riddle v(c97c0139)

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

1. **ObjectID**: A unique identifier that denotes color, size and object's center location.
2. **Rotation**:
3. **Shape ID**: An identifier for the normalized shape of the object.
In the left-hand-side (lhs) facts can be longer and specialize the normalized shape


```prolog


%  Objects of Example 1 for input grid (1,1)-(19,17)
lhs(in0_red14_10_8,sameR,sid_12,no_child). 
lhs(in0_black0_10_8,rot90,sid_323,no_child). 


%  Objects of Example 1 for output grid (1,1)-(19,17)
rhs(out0_cyan42_10_11,rot180,s794528). 
rhs(out0_red14_10_8,sameR,sid_12). 
rhs(out0_cyan42_10_5,sameR,s794528). 
rhs(out0_black0_10_8,rot90,s9870679). 


%  Objects of Example 2 for input grid (1,1)-(21,19)
lhs(in1_red9_14_13,sameR,sid_12,no_child). 
lhs(in1_red5_5_5,rot90,sid_12,no_child). 
lhs(in1_black0_14_13,rot90,sid_323,no_child). 
lhs(in1_black0_5_5,sameR,sid_323,no_child). 


%  Objects of Example 2 for output grid (1,1)-(21,19)
rhs(out1_cyan16_14_15,rot180,s99936). 
rhs(out1_red9_14_13,sameR,sid_12). 
rhs(out1_cyan16_14_11,sameR,s99936). 
rhs(out1_cyan4_6_5,rot270,s15307279). 
rhs(out1_cyan4_4_5,rot90,s15307279). 
rhs(out1_red5_5_5,rot90,sid_12). 
rhs(out1_black0_14_13,sameR,s13242417). 
rhs(out1_black0_5_5,sameR,s7055667). 

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



%  Objects of Exam 1 for input grid (1,1)-(22,21)
lhs(in0_red7_6_15,rot90,sid_12,no_child). 
lhs(in0_red10_17_10,sameR,sid_12,no_child). 
lhs(in0_red6_6_5,sameR,sid_12,no_child). 
lhs(in0_black0_6_15,sameR,sid_323,no_child). 
lhs(in0_black0_17_10,rot90,sid_323,no_child). 
lhs(in0_black0_6_5,rot90,sid_323,no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(22,21)
```

Grade your response from:
```prolog
rhs(out0_cyan9_8_15,rot270,s2597236). 
rhs(out0_cyan9_4_15,rot90,s2597236). 
rhs(out0_red7_6_15,rot90,sid_12). 
rhs(out0_cyan20_17_12,rot180,s99936). 
rhs(out0_red10_17_10,sameR,sid_12). 
rhs(out0_cyan20_17_8,sameR,s99936). 
rhs(out0_cyan6_6_6,rot180,s15307279). 
rhs(out0_red6_6_5,sameR,sid_12). 
rhs(out0_cyan6_6_4,sameR,s15307279). 
rhs(out0_black0_6_15,sameR,s9562242). 
rhs(out0_black0_17_10,rot90,s13242417). 
rhs(out0_black0_6_5,rot90,s7055667). 
```
if wrong, what rules did you miss?
