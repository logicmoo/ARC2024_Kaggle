% =======================================

Riddle t(c0f76784)

Always: 

 * lhs(...) are objects on an input grid and rhs(...) are objects on an output grid
 * Northwest corner of those grids are at nw_loc(1,1)
 * You will always receive enough information to predict the rhs/8 of Exam 1. This means it is not possible that there might be additional transformation rules or exceptions not covered in the provided examples. 
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


 ¦    +- rhs(trn_0,nw_loc(10,10),se_loc(10,10),sameR,blue,1,sid_11,[])

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




```data

/*
* RHS Args
      ObjectID
      Northwest corner location on grid
      Southeast corner location on grid
      Rotation
      Color
      Size
      Shape ID

 * LHS extends the RHS to include
      Child object count
*/


%  Objects of Example 1 for input grid (1,1)-(12,12)
lhs(in0_silver12_7_7,nw_loc(7,7),se_loc(10,10),sameR,silver,12,sid_323,1). 
lhs(in0_silver8_3_3,nw_loc(3,3),se_loc(5,5),sameR,silver,8,sid_323,1). 
lhs(in0_silver16_8_1,nw_loc(8,1),se_loc(12,5),sameR,silver,16,sid_323,1). 


%  Objects of Example 1 for output grid (1,1)-(12,12)
rhs(out0_purple1_4_4,nw_loc(4,4),se_loc(4,4),sameR,purple,1,sid_11). 
rhs(out0_orange4_8_8,nw_loc(8,8),se_loc(9,9),sameR,orange,4,sid_11). 
rhs(out0_silver12_7_7,nw_loc(7,7),se_loc(10,10),sameR,silver,12,sid_323). 
rhs(out0_silver8_3_3,nw_loc(3,3),se_loc(5,5),sameR,silver,8,sid_323). 
rhs(out0_cyan9_9_2,nw_loc(9,2),se_loc(11,4),sameR,cyan,9,sid_11). 
rhs(out0_silver16_8_1,nw_loc(8,1),se_loc(12,5),sameR,silver,16,sid_323). 


%  Objects of Example 2 for input grid (1,1)-(12,12)
lhs(in1_silver8_2_8,nw_loc(2,8),se_loc(4,10),sameR,silver,8,sid_323,1). 
lhs(in1_silver16_7_5,nw_loc(7,5),se_loc(11,9),sameR,silver,16,sid_323,1). 
lhs(in1_silver12_2_1,nw_loc(2,1),se_loc(5,4),sameR,silver,12,sid_323,1). 


%  Objects of Example 2 for output grid (1,1)-(12,12)
rhs(out1_purple1_3_9,nw_loc(3,9),se_loc(3,9),sameR,purple,1,sid_11). 
rhs(out1_silver8_2_8,nw_loc(2,8),se_loc(4,10),sameR,silver,8,sid_323). 
rhs(out1_cyan9_8_6,nw_loc(8,6),se_loc(10,8),sameR,cyan,9,sid_11). 
rhs(out1_silver16_7_5,nw_loc(7,5),se_loc(11,9),sameR,silver,16,sid_323). 
rhs(out1_orange4_3_2,nw_loc(3,2),se_loc(4,3),sameR,orange,4,sid_11). 
rhs(out1_silver12_2_1,nw_loc(2,1),se_loc(5,4),sameR,silver,12,sid_323). 


%  Objects of Example 3 for input grid (1,1)-(12,12)
lhs(in2_silver12_5_8,nw_loc(5,8),se_loc(8,11),sameR,silver,12,sid_323,1). 
lhs(in2_silver16_2_2,nw_loc(2,2),se_loc(6,6),sameR,silver,16,sid_323,1). 


%  Objects of Example 3 for output grid (1,1)-(12,12)
rhs(out2_orange4_6_9,nw_loc(6,9),se_loc(7,10),sameR,orange,4,sid_11). 
rhs(out2_silver12_5_8,nw_loc(5,8),se_loc(8,11),sameR,silver,12,sid_323). 
rhs(out2_cyan9_3_3,nw_loc(3,3),se_loc(5,5),sameR,cyan,9,sid_11). 
rhs(out2_silver16_2_2,nw_loc(2,2),se_loc(6,6),sameR,silver,16,sid_323). 


```

To create such a dependency chart, we must identify the objects on the left-hand side (LHS) that contribute to the creation of each right-hand side (RHS) object. 

Based on the given examples you will give a comprehensive order deplicting the order of creating the RHS objects based on the provided transformations.

Direct Copy LHS to RHS: This is the first and foremost step in transformation, where the LHS objects are directly copied onto the RHS. This is without any modification to their properties. 

Copy LHS to RHS but Change One Property (Location, Color, Orientation or Shape): The next step involves copying the LHS objects to the RHS with alteration of one of the properties. This can be a change in location, color, orientation, or shape.

Copy RHS to RHS Changing Only Location: In this step, an already transformed object on the RHS is copied onto another location within the RHS. This occurs without any alterations to the object's properties.

Copy RHS to RHS Changing Only Location and Orientation: Here, an object already on the RHS is copied to another location on the RHS, with a change in its orientation. 

Copy LHS to RHS but Change Two Properties (Location, Color, Orientation or Shape): The next step involves copying the LHS objects to the RHS with alteration of two of the properties. This can be a change in location, color, orientation, or shape.

Create a New RHS Object Combining Properties from Two RHS Objects: In this step, new objects are created on the RHS only by combining properties from two different RHS objects at some location relative to a RHS object.

Create a New RHS Object Combining Properties from Three RHS Objects: In this step, new objects are created on the RHS only by combining properties from three different RHS objects at some location relative to a RHS object.

Copy RHS to RHS but Changing Location but also Change Color or Shape: This is the next step where an object on the RHS is copied to another location but with changes to its color or shape.

Copy but Change Two Properties (Location, Color or Shape): In the final step, an object is copied, and two of its propertiessuch as location, color, or shapeare changed.


The transformation groupings for each example need to follow a similar pattern. 
Without further explaining these transformations or anything else, from the examples provided, dependency trees using only the ObjectIDs and property changes



%  Objects of Exam 1 for input grid (1,1)-(12,12)
lhs(in0_silver12_5_9,nw_loc(5,9),se_loc(8,12),sameR,silver,12,sid_323,1). 
lhs(in0_silver8_9_5,nw_loc(9,5),se_loc(11,7),sameR,silver,8,sid_323,1). 
lhs(in0_silver16_2_2,nw_loc(2,2),se_loc(6,6),sameR,silver,16,sid_323,1). 


Explain the transformation rules and then show the resulting rhs/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(12,12)
```

Grade your response from:
```prolog
rhs(out0_purple1_10_6,nw_loc(10,6),se_loc(10,6),sameR,purple,1,sid_11). 
rhs(out0_orange4_6_10,nw_loc(6,10),se_loc(7,11),sameR,orange,4,sid_11). 
rhs(out0_silver12_5_9,nw_loc(5,9),se_loc(8,12),sameR,silver,12,sid_323). 
rhs(out0_silver8_9_5,nw_loc(9,5),se_loc(11,7),sameR,silver,8,sid_323). 
rhs(out0_cyan9_3_3,nw_loc(3,3),se_loc(5,5),sameR,cyan,9,sid_11). 
rhs(out0_silver16_2_2,nw_loc(2,2),se_loc(6,6),sameR,silver,16,sid_323). 
```
if wrong, what rules did you miss?
