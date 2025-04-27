% =======================================

Riddle t(1,3,5th-go-down,-2,4th-go-up-l6abuzscmjgg12f0mdc)

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




Title: t(1,3,5th-go-down,-2,4th-go-up-l6abuzscmjgg12f0mdc)

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
lhs(in0_blue1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),blue,no_child). 
lhs(in0_orange1_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4),orange,no_child). 
lhs(in0_purple1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),purple,no_child). 
lhs(in0_cyan1_4_2_4_2,sameR,sid_1x1,cxy(4,2),txy(4,2),cyan,no_child). 
lhs(in0_silver1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),silver,no_child). 
lhs(in0_black0_1_1_5_5,sameR,s2856896,cxy(3,3),txy(3,3),black,no_child). 


%  Objects of Example 1 for output grid (1,1)-(5,5)
rhs(out0_cyan2_4_1_4_2,rot90,sid_2x1,cxy(4,2),txy(4,2),cyan). 
rhs(out0_silver2_5_4_5_5,rot90,sid_2x1,cxy(5,5),txy(5,5),silver). 
rhs(out0_purple3_3_3_3_5,rot90,sid_2x1,cxy(3,4),txy(3,4),purple). 
rhs(out0_blue4_1_2_1_5,rot90,sid_2x1,cxy(1,4),txy(1,4),blue). 
rhs(out0_orange4_2_1_2_4,rot90,sid_2x1,cxy(2,3),txy(2,3),orange). 
rhs(out0_black0_3_1_5_5,sameR,s124543,cxy(4,3),txy(4,3),black). 
rhs(out0_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),black). 
rhs(out0_black0_2_5_2_5,sameR,sid_1x1,cxy(2,5),txy(2,5),black). 


%  Objects of Example 2 for input grid (1,1)-(5,5)
lhs(in1_red1_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),red,no_child). 
lhs(in1_blue1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),blue,no_child). 
lhs(in1_green1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),green,no_child). 
lhs(in1_silver1_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),silver,no_child). 
lhs(in1_green1_5_2_5_2,sameR,sid_1x1,cxy(5,2),txy(5,2),green,no_child). 
lhs(in1_black0_1_1_5_5,sameR,s11626161,cxy(3,3),txy(3,3),black,no_child). 


%  Objects of Example 2 for output grid (1,1)-(5,5)
rhs(out1_blue2_2_1_2_2,rot90,sid_2x1,cxy(2,2),txy(2,2),blue). 
rhs(out1_red3_1_3_1_5,rot90,sid_2x1,cxy(1,4),txy(1,4),red). 
rhs(out1_green3_3_3_3_5,rot90,sid_2x1,cxy(3,4),txy(3,4),green). 
rhs(out1_silver4_4_1_4_4,rot90,sid_2x1,cxy(4,3),txy(4,3),silver). 
rhs(out1_green4_5_2_5_5,rot90,sid_2x1,cxy(5,4),txy(5,4),green). 
rhs(out1_black0_1_1_3_5,sameR,s5436977,cxy(2,3),txy(2,3),black). 
rhs(out1_black0_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5),black). 
rhs(out1_black0_5_1_5_1,sameR,sid_1x1,cxy(5,1),txy(5,1),black). 


%  Objects of Example 3 for input grid (1,1)-(5,5)
lhs(in2_cyan2_1_2_2_2,sameR,sid_2x1,cxy(2,2),txy(2,2),cyan,no_child). 
lhs(in2_purple2_4_3_5_3,sameR,sid_2x1,cxy(5,3),txy(5,3),purple,no_child). 
lhs(in2_green1_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),green,no_child). 
lhs(in2_black0_1_1_5_5,sameR,s11778174,cxy(3,3),txy(3,3),black,no_child). 


%  Objects of Example 3 for output grid (1,1)-(5,5)
rhs(out2_black0_4_4_4_5,sameR,sid_1x2,cxy(4,5),txy(4,5),black). 
rhs(out2_black0_5_1_5_2,sameR,sid_1x2,cxy(5,2),txy(5,2),black). 
rhs(out2_green3_3_3_3_5,rot90,sid_2x1,cxy(3,4),txy(3,4),green). 
rhs(out2_purple6_4_1_5_5,flipDHV,sid_tetris_Triple_East_and_North_2x2,cxy(5,3),txy(4,1),purple). 
rhs(out2_cyan6_1_1_2_5,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(1,3),txy(2,1),cyan). 
rhs(out2_black0_2_1_3_5,sameR,s5668778,cxy(2,3),txy(3,1),black). 
rhs(out2_black0_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),black). 

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
lhs(in0_yellow2_2_2_3_2,rot180,sid_2x1,cxy(3,2),txy(3,2),pen([cc(yellow,1),cc(red,1)]),no_child). 
lhs(in0_silver2_4_4_5_5,rot90,s13666407,cxy(5,5),txy(5,5),pen([cc(silver,1),cc(orange,1)]),no_child). 
lhs(in0_yellow1_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4),yellow,no_child). 
lhs(in0_black0_1_1_5_5,sameR,s5490103,cxy(3,3),txy(3,3),black,no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(5,5)
```

Grade your response from:
```prolog
rhs(out0_orange2_5_4_5_5,rot90,sid_2x1,cxy(5,5),txy(5,5),orange). 
rhs(out0_black0_5_1_5_3,sameR,sid_1x2,cxy(5,2),txy(5,2),black). 
rhs(out0_silver5_4_1_4_5,rot90,sid_2x1,cxy(4,3),txy(4,3),silver). 
rhs(out0_black0_1_1_2_5,sameR,s13770256,cxy(2,3),txy(1,1),black). 
rhs(out0_yellow8_1_1_3_5,flipD,s11290460,cxy(2,3),txy(2,3),pen([cc(yellow,2),cc(red,2),cc(yellow,4)])). 
rhs(out0_black0_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1),black). 
```
if wrong, what rules did you miss?
