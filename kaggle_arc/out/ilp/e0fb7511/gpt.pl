% =======================================

Riddle v(e0fb7511)

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


%  Objects of Example 1 for input grid (1,1)-(13,13)
lhs(in0_blue142_1_1,nw_loc(1,1),se_loc(13,13),rot90,blue,142,s6479830,18). 


%  Objects of Example 1 for output grid (1,1)-(13,13)
rhs(out0_cyan2_10_13,nw_loc(10,13),se_loc(11,13),sameR,cyan,2,sid_12). 
rhs(out0_cyan3_7_11,nw_loc(7,11),se_loc(8,12),rot90,cyan,3,s11261491). 
rhs(out0_cyan2_3_5,nw_loc(3,5),se_loc(4,5),sameR,cyan,2,sid_12). 
rhs(out0_cyan2_10_4,nw_loc(10,4),se_loc(10,5),rot90,cyan,2,sid_12). 
rhs(out0_cyan5_5_3,nw_loc(5,3),se_loc(7,5),sameR,cyan,5,s11869152). 
rhs(out0_blue142_1_1,nw_loc(1,1),se_loc(13,13),rot90,blue,142,s6479830). 


%  Objects of Example 2 for input grid (1,1)-(13,13)
lhs(in1_blue1_11_2,nw_loc(11,2),se_loc(11,2),sameR,blue,1,sid_11,no_child). 
lhs(in1_blue1_10_1,nw_loc(10,1),se_loc(10,1),sameR,blue,1,sid_11,no_child). 
lhs(in1_blue122_1_1,nw_loc(1,1),se_loc(13,13),rot180,blue,122,s1139061,31). 


%  Objects of Example 2 for output grid (1,1)-(13,13)
rhs(out1_blue1_11_2,nw_loc(11,2),se_loc(11,2),sameR,blue,1,sid_11). 
rhs(out1_blue1_10_1,nw_loc(10,1),se_loc(10,1),sameR,blue,1,sid_11). 
rhs(out1_cyan3_11_12,nw_loc(11,12),se_loc(12,13),sameR,cyan,3,s11261491). 
rhs(out1_cyan8_1_7,nw_loc(1,7),se_loc(3,11),rot90,cyan,8,s931177). 
rhs(out1_cyan3_10_6,nw_loc(10,6),se_loc(11,7),rot270,cyan,3,s11261491). 
rhs(out1_cyan2_3_4,nw_loc(3,4),se_loc(4,4),sameR,cyan,2,sid_12). 
rhs(out1_cyan3_9_1,nw_loc(9,1),se_loc(10,2),rot270,cyan,3,s11261491). 
rhs(out1_cyan2_4_1,nw_loc(4,1),se_loc(5,1),sameR,cyan,2,sid_12). 
rhs(out1_blue122_1_1,nw_loc(1,1),se_loc(13,13),rot180,blue,122,s1139061). 


%  Objects of Example 3 for input grid (1,1)-(13,13)
lhs(in2_blue1_13_1,nw_loc(13,1),se_loc(13,1),sameR,blue,1,sid_11,no_child). 
lhs(in2_blue135_1_1,nw_loc(1,1),se_loc(13,13),rot180,blue,135,s4422851,23). 


%  Objects of Example 3 for output grid (1,1)-(13,13)
rhs(out2_blue1_13_1,nw_loc(13,1),se_loc(13,1),sameR,blue,1,sid_11). 
rhs(out2_cyan2_12_11,nw_loc(12,11),se_loc(12,12),rot90,cyan,2,sid_12). 
rhs(out2_cyan2_8_10,nw_loc(8,10),se_loc(9,10),sameR,cyan,2,sid_12). 
rhs(out2_cyan2_13_8,nw_loc(13,8),se_loc(13,9),rot90,cyan,2,sid_12). 
rhs(out2_cyan6_3_7,nw_loc(3,7),se_loc(5,9),rot180,cyan,6,s841047). 
rhs(out2_cyan2_10_6,nw_loc(10,6),se_loc(11,6),sameR,cyan,2,sid_12). 
rhs(out2_cyan2_1_6,nw_loc(1,6),se_loc(1,7),rot90,cyan,2,sid_12). 
rhs(out2_cyan2_9_1,nw_loc(9,1),se_loc(9,2),rot90,cyan,2,sid_12). 
rhs(out2_blue135_1_1,nw_loc(1,1),se_loc(13,13),rot180,blue,135,s4422851). 


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



%  Objects of Exam 1 for input grid (1,1)-(13,13)
lhs(in0_blue1_4_7,nw_loc(4,7),se_loc(4,7),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_12_3,nw_loc(12,3),se_loc(12,3),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue1_13_1,nw_loc(13,1),se_loc(13,1),sameR,blue,1,sid_11,no_child). 
lhs(in0_blue114_1_1,nw_loc(1,1),se_loc(13,13),rot270,blue,114,s6824674,28). 


Explain the transformation rules and then show the resulting rhs/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(13,13)
```

Grade your response from:
```prolog
rhs(out0_blue1_4_7,nw_loc(4,7),se_loc(4,7),sameR,blue,1,sid_11). 
rhs(out0_blue1_12_3,nw_loc(12,3),se_loc(12,3),sameR,blue,1,sid_11). 
rhs(out0_blue1_13_1,nw_loc(13,1),se_loc(13,1),sameR,blue,1,sid_11). 
rhs(out0_cyan3_4_10,nw_loc(4,10),se_loc(5,11),rot180,cyan,3,s11261491). 
rhs(out0_cyan8_9_8,nw_loc(9,8),se_loc(11,12),rot90,cyan,8,s1184686). 
rhs(out0_cyan4_13_6,nw_loc(13,6),se_loc(13,9),rot90,cyan,4,sid_12). 
rhs(out0_cyan2_7_6,nw_loc(7,6),se_loc(7,7),rot90,cyan,2,sid_12). 
rhs(out0_cyan4_2_6,nw_loc(2,6),se_loc(3,8),rot270,cyan,4,s15307279). 
rhs(out0_cyan5_11_1,nw_loc(11,1),se_loc(13,3),sameR,cyan,5,s11068904). 
rhs(out0_cyan7_3_1,nw_loc(3,1),se_loc(5,4),rot90,cyan,7,s8347357). 
rhs(out0_blue114_1_1,nw_loc(1,1),se_loc(13,13),rot270,blue,114,s6824674). 
```
if wrong, what rules did you miss?
