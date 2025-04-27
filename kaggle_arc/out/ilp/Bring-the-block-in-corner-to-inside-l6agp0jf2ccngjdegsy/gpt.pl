% =======================================

Riddle t(Bring-the-block-in-corner-to-inside-l6agp0jf2ccngjdegsy)

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




Title: t(Bring-the-block-in-corner-to-inside-l6agp0jf2ccngjdegsy)

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
lhs(in0_yellow9_2_2_4_4,sameR,sid_1x1,cxy(3,3),txy(3,3),yellow,no_child). 
lhs(in0_red1_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5),red,no_child). 
lhs(in0_purple1_5_1_5_1,sameR,sid_1x1,cxy(5,1),txy(5,1),purple,no_child). 
lhs(in0_black0_1_1_5_5,sameR,s5668778,cxy(3,3),txy(3,3),black,no_child). 


%  Objects of Example 1 for output grid (1,1)-(5,5)
rhs(out0_yellow7_2_2_4_4,sameR,s9613470,cxy(3,3),txy(3,3),yellow). 
rhs(out0_red1_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4),red). 
rhs(out0_purple1_4_2_4_2,sameR,sid_1x1,cxy(4,2),txy(4,2),purple). 
rhs(out0_black0_1_1_5_5,sameR,sid_hollow_3x3,cxy(3,3),txy(3,3),black). 


%  Objects of Example 2 for input grid (1,1)-(5,5)
lhs(in1_cyan6_2_2_4_3,sameR,sid_2x1,cxy(3,3),txy(3,3),cyan,no_child). 
lhs(in1_orange1_5_1_5_1,sameR,sid_1x1,cxy(5,1),txy(5,1),orange,no_child). 
lhs(in1_orange1_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),orange,no_child). 
lhs(in1_black0_1_1_5_5,sameR,s6865971,cxy(3,3),txy(3,3),black,no_child). 


%  Objects of Example 2 for output grid (1,1)-(5,5)
rhs(out1_orange4_3_2_4_3,rot270,sid_2x1,cxy(4,3),txy(3,2),pen([cc(orange,2),cc(cyan,2)])). 
rhs(out1_cyan4_2_2_3_3,sameR,sid_1x1,cxy(3,3),txy(2,2),cyan). 
rhs(out1_cyan6_2_2_4_3,sameR,sid_2x1,cxy(3,3),txy(3,3),pen([cc(cyan,2),cc(orange,1)])). 


%  Objects of Example 3 for input grid (1,1)-(5,5)
lhs(in2_silver9_2_2_4_4,sameR,sid_1x1,cxy(3,3),txy(3,3),silver,no_child). 
lhs(in2_yellow1_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5),yellow,no_child). 
lhs(in2_red1_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5),red,no_child). 
lhs(in2_black0_1_1_5_5,sameR,s14227767,cxy(3,3),txy(3,3),black,no_child). 


%  Objects of Example 3 for output grid (1,1)-(5,5)
rhs(out2_silver7_2_2_4_4,rot90,sid_t180_3x2,cxy(3,3),txy(3,3),silver). 
rhs(out2_yellow1_2_4_2_4,sameR,sid_1x1,cxy(2,4),txy(2,4),yellow). 
rhs(out2_red1_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),red). 
rhs(out2_black0_1_1_5_5,sameR,sid_hollow_3x3,cxy(3,3),txy(3,3),black). 

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
lhs(in0_blue6_2_2_3_4,rot90,sid_2x1,cxy(3,3),txy(3,3),blue,no_child). 
lhs(in0_green1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),green,no_child). 
lhs(in0_yellow1_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1),yellow,no_child). 
lhs(in0_black0_1_1_5_5,sameR,s6865971,cxy(3,3),txy(3,3),black,no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(5,5)
```

Grade your response from:
```prolog
rhs(out0_blue4_2_3_3_4,sameR,sid_1x1,cxy(3,4),txy(2,3),blue). 
rhs(out0_green1_2_2_2_2,sameR,sid_1x1,cxy(2,2),txy(2,2),green). 
rhs(out0_yellow1_3_2_3_2,sameR,sid_1x1,cxy(3,2),txy(3,2),yellow). 
rhs(out0_black0_1_1_5_5,sameR,sid_hollow_3x3,cxy(3,3),txy(3,3),black). 
```
if wrong, what rules did you miss?
