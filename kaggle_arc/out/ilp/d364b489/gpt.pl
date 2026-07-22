% =======================================

Riddle t(d364b489)

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


%  Objects of Example 1 for input grid (1,1)-(10,10)
lhs(in0_blue1_2_10,nw_loc(2,10),se_loc(2,10),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_8_8,nw_loc(8,8),se_loc(8,8),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_4_6,nw_loc(4,6),se_loc(4,6),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_10_4,nw_loc(10,4),se_loc(10,4),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_7_2,nw_loc(7,2),se_loc(7,2),sameR,blue,1,sid_11,no_child). 


%  Objects of Example 1 for output grid (1,1)-(10,10)
rhs(out0_purple1_3_10,nw_loc(3,10),se_loc(3,10),sameR,purple,1,sid_11). 
rhs(out0_blue1_2_10,nw_loc(2,10),se_loc(2,10),sameR,blue,1,sid_11). 
rhs(out0_orange1_1_10,nw_loc(1,10),se_loc(1,10),sameR,orange,1,sid_11). 
rhs(out0_cyan1_8_9,nw_loc(8,9),se_loc(8,9),sameR,cyan,1,sid_11). 
rhs(out0_red1_2_9,nw_loc(2,9),se_loc(2,9),sameR,red,1,sid_11). 
rhs(out0_purple1_9_8,nw_loc(9,8),se_loc(9,8),sameR,purple,1,sid_11). 
rhs(out0_blue1_8_8,nw_loc(8,8),se_loc(8,8),sameR,blue,1,sid_11). 
rhs(out0_orange1_7_8,nw_loc(7,8),se_loc(7,8),sameR,orange,1,sid_11). 
rhs(out0_red1_8_7,nw_loc(8,7),se_loc(8,7),sameR,red,1,sid_11). 
rhs(out0_cyan1_4_7,nw_loc(4,7),se_loc(4,7),sameR,cyan,1,sid_11). 
rhs(out0_purple1_5_6,nw_loc(5,6),se_loc(5,6),sameR,purple,1,sid_11). 
rhs(out0_blue1_4_6,nw_loc(4,6),se_loc(4,6),sameR,blue,1,sid_11). 
rhs(out0_orange1_3_6,nw_loc(3,6),se_loc(3,6),sameR,orange,1,sid_11). 
rhs(out0_cyan1_10_5,nw_loc(10,5),se_loc(10,5),sameR,cyan,1,sid_11). 
rhs(out0_red1_4_5,nw_loc(4,5),se_loc(4,5),sameR,red,1,sid_11). 
rhs(out0_blue1_10_4,nw_loc(10,4),se_loc(10,4),sameR,blue,1,sid_11). 
rhs(out0_orange1_9_4,nw_loc(9,4),se_loc(9,4),sameR,orange,1,sid_11). 
rhs(out0_red1_10_3,nw_loc(10,3),se_loc(10,3),sameR,red,1,sid_11). 
rhs(out0_cyan1_7_3,nw_loc(7,3),se_loc(7,3),sameR,cyan,1,sid_11). 
rhs(out0_purple1_8_2,nw_loc(8,2),se_loc(8,2),sameR,purple,1,sid_11). 
rhs(out0_blue1_7_2,nw_loc(7,2),se_loc(7,2),sameR,blue,1,sid_11). 
rhs(out0_orange1_6_2,nw_loc(6,2),se_loc(6,2),sameR,orange,1,sid_11). 
rhs(out0_red1_7_1,nw_loc(7,1),se_loc(7,1),sameR,red,1,sid_11). 


%  Objects of Example 2 for input grid (1,1)-(10,10)
lhs(in1_blue1_10_10,nw_loc(10,10),se_loc(10,10),sameR,blue,1,sid_11,no_child). 
lhs(in1_blue1_3_9,nw_loc(3,9),se_loc(3,9),sameR,blue,1,sid_11,no_child). 
lhs(in1_blue1_6_6,nw_loc(6,6),se_loc(6,6),sameR,blue,1,sid_11,no_child). 
lhs(in1_blue1_10_4,nw_loc(10,4),se_loc(10,4),sameR,blue,1,sid_11,no_child). 
lhs(in1_blue1_1_3,nw_loc(1,3),se_loc(1,3),sameR,blue,1,sid_11,no_child). 
lhs(in1_blue1_6_1,nw_loc(6,1),se_loc(6,1),sameR,blue,1,sid_11,no_child). 


%  Objects of Example 2 for output grid (1,1)-(10,10)
rhs(out1_blue1_10_10,nw_loc(10,10),se_loc(10,10),sameR,blue,1,sid_11). 
rhs(out1_orange1_9_10,nw_loc(9,10),se_loc(9,10),sameR,orange,1,sid_11). 
rhs(out1_cyan1_3_10,nw_loc(3,10),se_loc(3,10),sameR,cyan,1,sid_11). 
rhs(out1_red1_10_9,nw_loc(10,9),se_loc(10,9),sameR,red,1,sid_11). 
rhs(out1_purple1_4_9,nw_loc(4,9),se_loc(4,9),sameR,purple,1,sid_11). 
rhs(out1_blue1_3_9,nw_loc(3,9),se_loc(3,9),sameR,blue,1,sid_11). 
rhs(out1_orange1_2_9,nw_loc(2,9),se_loc(2,9),sameR,orange,1,sid_11). 
rhs(out1_red1_3_8,nw_loc(3,8),se_loc(3,8),sameR,red,1,sid_11). 
rhs(out1_cyan1_6_7,nw_loc(6,7),se_loc(6,7),sameR,cyan,1,sid_11). 
rhs(out1_purple1_7_6,nw_loc(7,6),se_loc(7,6),sameR,purple,1,sid_11). 
rhs(out1_blue1_6_6,nw_loc(6,6),se_loc(6,6),sameR,blue,1,sid_11). 
rhs(out1_orange1_5_6,nw_loc(5,6),se_loc(5,6),sameR,orange,1,sid_11). 
rhs(out1_cyan1_10_5,nw_loc(10,5),se_loc(10,5),sameR,cyan,1,sid_11). 
rhs(out1_red1_6_5,nw_loc(6,5),se_loc(6,5),sameR,red,1,sid_11). 
rhs(out1_blue1_10_4,nw_loc(10,4),se_loc(10,4),sameR,blue,1,sid_11). 
rhs(out1_orange1_9_4,nw_loc(9,4),se_loc(9,4),sameR,orange,1,sid_11). 
rhs(out1_cyan1_1_4,nw_loc(1,4),se_loc(1,4),sameR,cyan,1,sid_11). 
rhs(out1_red1_10_3,nw_loc(10,3),se_loc(10,3),sameR,red,1,sid_11). 
rhs(out1_purple1_2_3,nw_loc(2,3),se_loc(2,3),sameR,purple,1,sid_11). 
rhs(out1_blue1_1_3,nw_loc(1,3),se_loc(1,3),sameR,blue,1,sid_11). 
rhs(out1_cyan1_6_2,nw_loc(6,2),se_loc(6,2),sameR,cyan,1,sid_11). 
rhs(out1_red1_1_2,nw_loc(1,2),se_loc(1,2),sameR,red,1,sid_11). 
rhs(out1_purple1_7_1,nw_loc(7,1),se_loc(7,1),sameR,purple,1,sid_11). 
rhs(out1_blue1_6_1,nw_loc(6,1),se_loc(6,1),sameR,blue,1,sid_11). 
rhs(out1_orange1_5_1,nw_loc(5,1),se_loc(5,1),sameR,orange,1,sid_11). 


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



%  Objects of Exam 1 for input grid (1,1)-(10,10)
lhs(in0_blue1_5_10,nw_loc(5,10),se_loc(5,10),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_8_7,nw_loc(8,7),se_loc(8,7),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_1_7,nw_loc(1,7),se_loc(1,7),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_4_4,nw_loc(4,4),se_loc(4,4),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_8_3,nw_loc(8,3),se_loc(8,3),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_10_1,nw_loc(10,1),se_loc(10,1),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_2_1,nw_loc(2,1),se_loc(2,1),sameR,blue,1,sid_11,no_child). 


Explain the transformation rules and then show the resulting rhs/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(10,10)
```

Grade your response from:
```prolog
rhs(out0_purple1_6_10,nw_loc(6,10),se_loc(6,10),sameR,purple,1,sid_11). 
rhs(out0_blue1_5_10,nw_loc(5,10),se_loc(5,10),sameR,blue,1,sid_11). 
rhs(out0_orange1_4_10,nw_loc(4,10),se_loc(4,10),sameR,orange,1,sid_11). 
rhs(out0_red1_5_9,nw_loc(5,9),se_loc(5,9),sameR,red,1,sid_11). 
rhs(out0_cyan1_8_8,nw_loc(8,8),se_loc(8,8),sameR,cyan,1,sid_11). 
rhs(out0_cyan1_1_8,nw_loc(1,8),se_loc(1,8),sameR,cyan,1,sid_11). 
rhs(out0_purple1_9_7,nw_loc(9,7),se_loc(9,7),sameR,purple,1,sid_11). 
rhs(out0_blue1_8_7,nw_loc(8,7),se_loc(8,7),sameR,blue,1,sid_11). 
rhs(out0_orange1_7_7,nw_loc(7,7),se_loc(7,7),sameR,orange,1,sid_11). 
rhs(out0_purple1_2_7,nw_loc(2,7),se_loc(2,7),sameR,purple,1,sid_11). 
rhs(out0_blue1_1_7,nw_loc(1,7),se_loc(1,7),sameR,blue,1,sid_11). 
rhs(out0_red1_8_6,nw_loc(8,6),se_loc(8,6),sameR,red,1,sid_11). 
rhs(out0_red1_1_6,nw_loc(1,6),se_loc(1,6),sameR,red,1,sid_11). 
rhs(out0_cyan1_4_5,nw_loc(4,5),se_loc(4,5),sameR,cyan,1,sid_11). 
rhs(out0_cyan1_8_4,nw_loc(8,4),se_loc(8,4),sameR,cyan,1,sid_11). 
rhs(out0_purple1_5_4,nw_loc(5,4),se_loc(5,4),sameR,purple,1,sid_11). 
rhs(out0_blue1_4_4,nw_loc(4,4),se_loc(4,4),sameR,blue,1,sid_11). 
rhs(out0_orange1_3_4,nw_loc(3,4),se_loc(3,4),sameR,orange,1,sid_11). 
rhs(out0_purple1_9_3,nw_loc(9,3),se_loc(9,3),sameR,purple,1,sid_11). 
rhs(out0_blue1_8_3,nw_loc(8,3),se_loc(8,3),sameR,blue,1,sid_11). 
rhs(out0_orange1_7_3,nw_loc(7,3),se_loc(7,3),sameR,orange,1,sid_11). 
rhs(out0_red1_4_3,nw_loc(4,3),se_loc(4,3),sameR,red,1,sid_11). 
rhs(out0_cyan1_10_2,nw_loc(10,2),se_loc(10,2),sameR,cyan,1,sid_11). 
rhs(out0_red1_8_2,nw_loc(8,2),se_loc(8,2),sameR,red,1,sid_11). 
rhs(out0_cyan1_2_2,nw_loc(2,2),se_loc(2,2),sameR,cyan,1,sid_11). 
rhs(out0_blue1_10_1,nw_loc(10,1),se_loc(10,1),sameR,blue,1,sid_11). 
rhs(out0_orange1_9_1,nw_loc(9,1),se_loc(9,1),sameR,orange,1,sid_11). 
rhs(out0_purple1_3_1,nw_loc(3,1),se_loc(3,1),sameR,purple,1,sid_11). 
rhs(out0_blue1_2_1,nw_loc(2,1),se_loc(2,1),sameR,blue,1,sid_11). 
rhs(out0_orange1_1_1,nw_loc(1,1),se_loc(1,1),sameR,orange,1,sid_11). 
```
if wrong, what rules did you miss?
