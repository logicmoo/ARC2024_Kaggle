% =======================================

Riddle v(7ee1c6ea)

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




Title: v(7ee1c6ea)

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


%  Objects of Example 1 for input grid (1,1)-(10,10)
lhs(in0_brown2_6_4_7_4,sameR,sid_2x1,cxy(7,4),txy(7,4),no_child). 
lhs(in0_black0_1_3_2_3,rot90,sid_1x2,cxy(2,3),txy(2,3),no_child). 
lhs(in0_black0_3_1_4_1,rot90,sid_1x2,cxy(4,1),txy(4,1),no_child). 
lhs(in0_black0_1_7_1_8,sameR,sid_1x2,cxy(1,8),txy(1,8),no_child). 
lhs(in0_black0_9_3_9_4,sameR,sid_1x2,cxy(9,4),txy(9,4),no_child). 
lhs(in0_yellow2_1_1_2_2,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(2,2),txy(2,2),no_child). 
lhs(in0_yellow2_4_1_5_2,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(5,2),txy(5,2),no_child). 
lhs(in0_brown2_1_6_2_7,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(2,7),txy(1,6),no_child). 
lhs(in0_yellow2_5_9_6_10,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(6,10),txy(5,9),2). 
lhs(in0_brown3_9_1_10_2,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(9,1),txy(9,1),1). 
lhs(in0_brown3_7_9_8_10,rot270,sid_tetris_Z_270_Rotated_2x3,cxy(7,10),txy(7,10),no_child). 
lhs(in0_brown3_5_1_6_2,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(6,2),txy(6,2),no_child). 
lhs(in0_yellow3_9_4_10_5,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(10,5),txy(10,5),no_child). 
lhs(in0_yellow3_9_7_10_8,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(10,8),txy(10,8),no_child). 
lhs(in0_black0_4_4_5_5,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(5,5),txy(5,5),no_child). 
lhs(in0_black0_6_6_7_7,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(6,7),txy(6,7),no_child). 
lhs(in0_black0_9_6_10_7,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(9,6),txy(9,6),no_child). 
lhs(in0_black0_7_1_8_2,sameR,sid_1x1,cxy(8,2),txy(7,1),no_child). 
lhs(in0_brown3_1_1_3_2,flipD,sid_tetris_Triple_East_and_North_2x2,cxy(2,2),txy(1,1),1). 
lhs(in0_yellow4_1_4_2_6,rot90,sid_t180_3x2,cxy(2,5),txy(2,5),no_child). 
lhs(in0_black0_8_9_10_10,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(9,9),txy(10,10),no_child). 
lhs(in0_brown6_1_9_4_10,flipH,s8301136,cxy(2,10),txy(4,9),2). 
lhs(in0_yellow8_4_4_7_7,rot90,s4535941,cxy(6,5),txy(6,5),9). 
lhs(in0_silver28_3_3_8_8,rot90,s11451572,cxy(6,5),txy(3,8),11). 
lhs(in0_silver20_3_3_8_8,sameR,sid_hollow_3x3,cxy(6,6),txy(3,3),10). 
lhs(in0_brown1_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4),no_child). 
lhs(in0_yellow1_2_8_2_8,sameR,sid_1x1,cxy(2,8),txy(2,8),no_child). 
lhs(in0_black0_2_9_2_9,sameR,sid_1x1,cxy(2,9),txy(2,9),no_child). 
lhs(in0_brown1_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4),no_child). 
lhs(in0_black0_4_7_4_7,sameR,sid_1x1,cxy(4,7),txy(4,7),no_child). 
lhs(in0_black0_4_10_4_10,sameR,sid_1x1,cxy(4,10),txy(4,10),no_child). 
lhs(in0_brown1_5_6_5_6,sameR,sid_1x1,cxy(5,6),txy(5,6),no_child). 
lhs(in0_brown1_5_10_5_10,sameR,sid_1x1,cxy(5,10),txy(5,10),no_child). 
lhs(in0_yellow1_6_5_6_5,sameR,sid_1x1,cxy(6,5),txy(6,5),no_child). 
lhs(in0_black0_6_9_6_9,sameR,sid_1x1,cxy(6,9),txy(6,9),no_child). 
lhs(in0_black0_7_5_7_5,sameR,sid_1x1,cxy(7,5),txy(7,5),no_child). 
lhs(in0_brown1_7_6_7_6,sameR,sid_1x1,cxy(7,6),txy(7,6),no_child). 
lhs(in0_black0_10_2_10_2,sameR,sid_1x1,cxy(10,2),txy(10,2),no_child). 
lhs(in0_brown1_10_3_10_3,sameR,sid_1x1,cxy(10,3),txy(10,3),1). 


%  Objects of Example 1 for output grid (1,1)-(10,10)
rhs(out0_brown2_7_9_7_10,rot90,sid_2x1,cxy(7,10),txy(7,10)). 
rhs(out0_yellow2_6_4_7_4,sameR,sid_2x1,cxy(7,4),txy(7,4)). 
rhs(out0_black0_1_3_2_3,rot90,sid_1x2,cxy(2,3),txy(2,3)). 
rhs(out0_black0_3_1_4_1,rot90,sid_1x2,cxy(4,1),txy(4,1)). 
rhs(out0_black0_1_7_1_8,sameR,sid_1x2,cxy(1,8),txy(1,8)). 
rhs(out0_black0_9_3_9_4,sameR,sid_1x2,cxy(9,4),txy(9,4)). 
rhs(out0_yellow2_1_1_2_2,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(2,2),txy(2,2)). 
rhs(out0_yellow2_4_1_5_2,rot90,sid_tetris_Triple_East_and_North_2x2,cxy(5,2),txy(5,2)). 
rhs(out0_brown2_1_6_2_7,sameR,sid_tetris_Triple_East_and_North_2x2,cxy(2,7),txy(1,6)). 
rhs(out0_brown3_9_1_10_2,rot180,sid_tetris_Z_270_Rotated_2x3,cxy(9,1),txy(9,1)). 
rhs(out0_brown3_5_1_6_2,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(6,2),txy(6,2)). 
rhs(out0_yellow3_9_4_10_5,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(10,5),txy(10,5)). 
rhs(out0_yellow3_9_7_10_8,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(10,8),txy(10,8)). 
rhs(out0_black0_4_4_5_5,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(5,5),txy(5,5)). 
rhs(out0_black0_6_6_7_7,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(6,7),txy(6,7)). 
rhs(out0_black0_9_6_10_7,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(9,6),txy(9,6)). 
rhs(out0_black0_7_1_8_2,sameR,sid_1x1,cxy(8,2),txy(7,1)). 
rhs(out0_brown1_8_9_10_10,sameR,sid_1x1,cxy(8,10),txy(8,10)). 
rhs(out0_brown3_1_1_3_2,flipD,sid_tetris_Triple_East_and_North_2x2,cxy(2,2),txy(1,1)). 
rhs(out0_yellow4_1_4_2_6,rot90,sid_t180_3x2,cxy(2,5),txy(2,5)). 
rhs(out0_black0_8_9_10_10,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(9,9),txy(10,10)). 
rhs(out0_brown8_1_9_5_10,flipV,s5245575,cxy(3,10),txy(4,9)). 
rhs(out0_brown8_4_4_7_7,rot90,s4535941,cxy(6,5),txy(6,5)). 
rhs(out0_silver28_3_3_8_8,rot90,s11451572,cxy(6,5),txy(3,8)). 
rhs(out0_silver20_3_3_8_8,sameR,sid_hollow_3x3,cxy(6,6),txy(3,3)). 
rhs(out0_brown1_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4)). 
rhs(out0_yellow1_2_8_2_8,sameR,sid_1x1,cxy(2,8),txy(2,8)). 
rhs(out0_black0_2_9_2_9,sameR,sid_1x1,cxy(2,9),txy(2,9)). 
rhs(out0_yellow1_4_4_4_4,sameR,sid_1x1,cxy(4,4),txy(4,4)). 
rhs(out0_black0_4_7_4_7,sameR,sid_1x1,cxy(4,7),txy(4,7)). 
rhs(out0_black0_4_10_4_10,sameR,sid_1x1,cxy(4,10),txy(4,10)). 
rhs(out0_yellow1_5_6_5_6,sameR,sid_1x1,cxy(5,6),txy(5,6)). 
rhs(out0_brown1_6_5_6_5,sameR,sid_1x1,cxy(6,5),txy(6,5)). 
rhs(out0_black0_6_9_6_9,sameR,sid_1x1,cxy(6,9),txy(6,9)). 
rhs(out0_yellow1_6_10_6_10,sameR,sid_1x1,cxy(6,10),txy(6,10)). 
rhs(out0_black0_7_5_7_5,sameR,sid_1x1,cxy(7,5),txy(7,5)). 
rhs(out0_yellow1_7_6_7_6,sameR,sid_1x1,cxy(7,6),txy(7,6)). 
rhs(out0_black0_10_2_10_2,sameR,sid_1x1,cxy(10,2),txy(10,2)). 
rhs(out0_brown1_10_3_10_3,sameR,sid_1x1,cxy(10,3),txy(10,3)). 


%  Objects of Example 2 for input grid (1,1)-(10,10)
lhs(in1_purple2_1_6_1_7,rot90,sid_2x1,cxy(1,7),txy(1,7),no_child). 
lhs(in1_purple2_3_7_3_8,rot90,sid_2x1,cxy(3,8),txy(3,8),no_child). 
lhs(in1_cyan2_5_10_6_10,sameR,sid_2x1,cxy(6,10),txy(6,10),no_child). 
lhs(in1_black0_1_1_2_1,rot90,sid_1x2,cxy(2,1),txy(2,1),no_child). 
lhs(in1_black0_7_4_7_5,sameR,sid_1x2,cxy(7,5),txy(7,5),no_child). 
lhs(in1_purple3_9_9_10_10,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(10,10),txy(10,10),no_child). 
lhs(in1_cyan6_10_3_10_8,rot90,sid_2x1,cxy(10,6),txy(10,6),no_child). 
lhs(in1_cyan4_1_9_3_10,flipH,sid_tetris_Z_270_Rotated_2x3,cxy(2,10),txy(1,9),no_child). 
lhs(in1_cyan14_3_3_8_8,sameR,s6319863,cxy(6,6),txy(4,3),6). 
lhs(in1_purple14_3_3_8_8,rot90,s10091490,cxy(6,5),txy(5,4),6). 
lhs(in1_silver28_2_2_9_9,sameR,sid_hollow_3x3,cxy(6,6),txy(2,2),8). 
lhs(in1_cyan1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2),no_child). 
lhs(in1_black0_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3),no_child). 
lhs(in1_purple1_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4),no_child). 
lhs(in1_black0_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5),no_child). 
lhs(in1_black0_1_8_1_8,sameR,sid_1x1,cxy(1,8),txy(1,8),no_child). 
lhs(in1_cyan1_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1),no_child). 
lhs(in1_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3),no_child). 
lhs(in1_purple1_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1),no_child). 
lhs(in1_black0_4_8_4_8,sameR,sid_1x1,cxy(4,8),txy(4,8),no_child). 
lhs(in1_black0_4_10_4_10,sameR,sid_1x1,cxy(4,10),txy(4,10),no_child). 
lhs(in1_black0_5_1_5_1,sameR,sid_1x1,cxy(5,1),txy(5,1),no_child). 
lhs(in1_purple1_6_1_6_1,sameR,sid_1x1,cxy(6,1),txy(6,1),no_child). 
lhs(in1_black0_7_1_7_1,sameR,sid_1x1,cxy(7,1),txy(7,1),no_child). 
lhs(in1_purple1_7_10_7_10,sameR,sid_1x1,cxy(7,10),txy(7,10),no_child). 
lhs(in1_cyan1_8_1_8_1,sameR,sid_1x1,cxy(8,1),txy(8,1),no_child). 
lhs(in1_black0_8_3_8_3,sameR,sid_1x1,cxy(8,3),txy(8,3),no_child). 
lhs(in1_black0_8_6_8_6,sameR,sid_1x1,cxy(8,6),txy(8,6),no_child). 
lhs(in1_black0_8_10_8_10,sameR,sid_1x1,cxy(8,10),txy(8,10),no_child). 
lhs(in1_black0_9_1_9_1,sameR,sid_1x1,cxy(9,1),txy(9,1),no_child). 
lhs(in1_cyan1_10_1_10_1,sameR,sid_1x1,cxy(10,1),txy(10,1),no_child). 
lhs(in1_black0_10_2_10_2,sameR,sid_1x1,cxy(10,2),txy(10,2),no_child). 


%  Objects of Example 2 for output grid (1,1)-(10,10)
rhs(out1_purple2_1_6_1_7,rot90,sid_2x1,cxy(1,7),txy(1,7)). 
rhs(out1_cyan2_3_7_3_8,rot90,sid_2x1,cxy(3,8),txy(3,8)). 
rhs(out1_cyan2_5_10_6_10,sameR,sid_2x1,cxy(6,10),txy(6,10)). 
rhs(out1_black0_1_1_2_1,rot90,sid_1x2,cxy(2,1),txy(2,1)). 
rhs(out1_black0_7_4_7_5,sameR,sid_1x2,cxy(7,5),txy(7,5)). 
rhs(out1_purple3_9_9_10_10,sameR,sid_tetris_Z_270_Rotated_2x3,cxy(10,10),txy(10,10)). 
rhs(out1_cyan6_10_3_10_8,rot90,sid_2x1,cxy(10,6),txy(10,6)). 
rhs(out1_cyan4_1_9_3_10,flipH,sid_tetris_Z_270_Rotated_2x3,cxy(2,10),txy(1,9)). 
rhs(out1_purple30_3_3_8_8,sameR,s6907845,cxy(5,6),txy(5,6)). 
rhs(out1_silver58_2_2_9_9,sameR,s2058170,cxy(5,6),txy(9,2)). 
rhs(out1_silver28_2_2_9_9,sameR,sid_hollow_3x3,cxy(6,6),txy(2,2)). 
rhs(out1_cyan1_1_2_1_2,sameR,sid_1x1,cxy(1,2),txy(1,2)). 
rhs(out1_black0_1_3_1_3,sameR,sid_1x1,cxy(1,3),txy(1,3)). 
rhs(out1_purple1_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4)). 
rhs(out1_black0_1_5_1_5,sameR,sid_1x1,cxy(1,5),txy(1,5)). 
rhs(out1_black0_1_8_1_8,sameR,sid_1x1,cxy(1,8),txy(1,8)). 
rhs(out1_cyan1_3_1_3_1,sameR,sid_1x1,cxy(3,1),txy(3,1)). 
rhs(out1_black0_3_3_3_3,sameR,sid_1x1,cxy(3,3),txy(3,3)). 
rhs(out1_purple1_4_1_4_1,sameR,sid_1x1,cxy(4,1),txy(4,1)). 
rhs(out1_black0_4_8_4_8,sameR,sid_1x1,cxy(4,8),txy(4,8)). 
rhs(out1_black0_4_10_4_10,sameR,sid_1x1,cxy(4,10),txy(4,10)). 
rhs(out1_black0_5_1_5_1,sameR,sid_1x1,cxy(5,1),txy(5,1)). 
rhs(out1_purple1_6_1_6_1,sameR,sid_1x1,cxy(6,1),txy(6,1)). 
rhs(out1_black0_7_1_7_1,sameR,sid_1x1,cxy(7,1),txy(7,1)). 
rhs(out1_purple1_7_10_7_10,sameR,sid_1x1,cxy(7,10),txy(7,10)). 
rhs(out1_cyan1_8_1_8_1,sameR,sid_1x1,cxy(8,1),txy(8,1)). 
rhs(out1_black0_8_3_8_3,sameR,sid_1x1,cxy(8,3),txy(8,3)). 
rhs(out1_black0_8_6_8_6,sameR,sid_1x1,cxy(8,6),txy(8,6)). 
rhs(out1_black0_8_10_8_10,sameR,sid_1x1,cxy(8,10),txy(8,10)). 
rhs(out1_black0_9_1_9_1,sameR,sid_1x1,cxy(9,1),txy(9,1)). 
rhs(out1_cyan1_10_1_10_1,sameR,sid_1x1,cxy(10,1),txy(10,1)). 
rhs(out1_black0_10_2_10_2,sameR,sid_1x1,cxy(10,2),txy(10,2)). 


%  Objects of Example 3 for input grid (1,1)-(10,10)
lhs(in2_green2_1_2_1_3,rot90,sid_2x1,cxy(1,3),txy(1,3),no_child). 
lhs(in2_red2_10_3_10_4,rot90,sid_2x1,cxy(10,4),txy(10,4),no_child). 
lhs(in2_green2_10_5_10_6,rot90,sid_2x1,cxy(10,6),txy(10,6),no_child). 
lhs(in2_black0_1_1_2_1,rot90,sid_1x2,cxy(2,1),txy(2,1),no_child). 
lhs(in2_black0_1_8_1_9,sameR,sid_1x2,cxy(1,9),txy(1,9),no_child). 
lhs(in2_green3_1_5_1_7,rot90,sid_2x1,cxy(1,6),txy(1,6),no_child). 
lhs(in2_green3_3_10_5_10,sameR,sid_2x1,cxy(4,10),txy(4,10),no_child). 
lhs(in2_green4_3_1_6_1,sameR,sid_2x1,cxy(5,1),txy(5,1),no_child). 
lhs(in2_green3_9_8_10_10,flipV,sid_tetris_Triple_East_and_North_2x2,cxy(10,9),txy(9,10),1). 
lhs(in2_red28_3_3_8_8,rot270,s13048222,cxy(6,5),txy(3,8),10). 
lhs(in2_silver56_2_2_9_9,rot270,s15769764,cxy(6,5),txy(2,9),12). 
lhs(in2_silver28_2_2_9_9,sameR,sid_hollow_3x3,cxy(6,6),txy(2,2),11). 
lhs(in2_black0_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4),no_child). 
lhs(in2_red1_1_10_1_10,sameR,sid_1x1,cxy(1,10),txy(1,10),no_child). 
lhs(in2_black0_2_10_2_10,sameR,sid_1x1,cxy(2,10),txy(2,10),no_child). 
lhs(in2_black0_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4),no_child). 
lhs(in2_red1_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5),no_child). 
lhs(in2_black0_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5),no_child). 
lhs(in2_black0_4_8_4_8,sameR,sid_1x1,cxy(4,8),txy(4,8),no_child). 
lhs(in2_black0_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4),no_child). 
lhs(in2_black0_5_6_5_6,sameR,sid_1x1,cxy(5,6),txy(5,6),no_child). 
lhs(in2_black0_6_7_6_7,sameR,sid_1x1,cxy(6,7),txy(6,7),no_child). 
lhs(in2_red1_6_10_6_10,sameR,sid_1x1,cxy(6,10),txy(6,10),no_child). 
lhs(in2_red1_7_1_7_1,sameR,sid_1x1,cxy(7,1),txy(7,1),no_child). 
lhs(in2_green1_7_10_7_10,sameR,sid_1x1,cxy(7,10),txy(7,10),no_child). 
lhs(in2_black0_8_1_8_1,sameR,sid_1x1,cxy(8,1),txy(8,1),no_child). 
lhs(in2_black0_8_3_8_3,sameR,sid_1x1,cxy(8,3),txy(8,3),no_child). 
lhs(in2_red1_8_7_8_7,sameR,sid_1x1,cxy(8,7),txy(8,7),no_child). 
lhs(in2_black0_8_8_8_8,sameR,sid_1x1,cxy(8,8),txy(8,8),no_child). 
lhs(in2_red1_8_10_8_10,sameR,sid_1x1,cxy(8,10),txy(8,10),no_child). 
lhs(in2_red1_9_1_9_1,sameR,sid_1x1,cxy(9,1),txy(9,1),no_child). 
lhs(in2_black0_10_1_10_1,sameR,sid_1x1,cxy(10,1),txy(10,1),no_child). 
lhs(in2_green1_10_2_10_2,sameR,sid_1x1,cxy(10,2),txy(10,2),no_child). 
lhs(in2_red1_10_7_10_7,sameR,sid_1x1,cxy(10,7),txy(10,7),no_child). 
lhs(in2_black0_10_10_10_10,sameR,sid_1x1,cxy(10,10),txy(10,10),no_child). 


%  Objects of Example 3 for output grid (1,1)-(10,10)
rhs(out2_green2_1_2_1_3,rot90,sid_2x1,cxy(1,3),txy(1,3)). 
rhs(out2_red2_10_3_10_4,rot90,sid_2x1,cxy(10,4),txy(10,4)). 
rhs(out2_green2_10_5_10_6,rot90,sid_2x1,cxy(10,6),txy(10,6)). 
rhs(out2_black0_1_1_2_1,rot90,sid_1x2,cxy(2,1),txy(2,1)). 
rhs(out2_black0_1_8_1_9,sameR,sid_1x2,cxy(1,9),txy(1,9)). 
rhs(out2_green3_1_5_1_7,rot90,sid_2x1,cxy(1,6),txy(1,6)). 
rhs(out2_green3_3_10_5_10,sameR,sid_2x1,cxy(4,10),txy(4,10)). 
rhs(out2_green4_3_1_6_1,sameR,sid_2x1,cxy(5,1),txy(5,1)). 
rhs(out2_green3_9_8_10_10,flipV,sid_tetris_Triple_East_and_North_2x2,cxy(10,9),txy(9,10)). 
rhs(out2_green28_3_3_8_8,rot270,s13048222,cxy(6,5),txy(3,8)). 
rhs(out2_silver56_2_2_9_9,rot270,s15769764,cxy(6,5),txy(2,9)). 
rhs(out2_silver28_2_2_9_9,sameR,sid_hollow_3x3,cxy(6,6),txy(2,2)). 
rhs(out2_black0_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4)). 
rhs(out2_red1_1_10_1_10,sameR,sid_1x1,cxy(1,10),txy(1,10)). 
rhs(out2_black0_2_10_2_10,sameR,sid_1x1,cxy(2,10),txy(2,10)). 
rhs(out2_black0_3_4_3_4,sameR,sid_1x1,cxy(3,4),txy(3,4)). 
rhs(out2_green1_3_5_3_5,sameR,sid_1x1,cxy(3,5),txy(3,5)). 
rhs(out2_black0_4_5_4_5,sameR,sid_1x1,cxy(4,5),txy(4,5)). 
rhs(out2_black0_4_8_4_8,sameR,sid_1x1,cxy(4,8),txy(4,8)). 
rhs(out2_black0_5_4_5_4,sameR,sid_1x1,cxy(5,4),txy(5,4)). 
rhs(out2_black0_5_6_5_6,sameR,sid_1x1,cxy(5,6),txy(5,6)). 
rhs(out2_black0_6_7_6_7,sameR,sid_1x1,cxy(6,7),txy(6,7)). 
rhs(out2_red1_6_10_6_10,sameR,sid_1x1,cxy(6,10),txy(6,10)). 
rhs(out2_red1_7_1_7_1,sameR,sid_1x1,cxy(7,1),txy(7,1)). 
rhs(out2_green1_7_10_7_10,sameR,sid_1x1,cxy(7,10),txy(7,10)). 
rhs(out2_black0_8_1_8_1,sameR,sid_1x1,cxy(8,1),txy(8,1)). 
rhs(out2_black0_8_3_8_3,sameR,sid_1x1,cxy(8,3),txy(8,3)). 
rhs(out2_green1_8_7_8_7,sameR,sid_1x1,cxy(8,7),txy(8,7)). 
rhs(out2_black0_8_8_8_8,sameR,sid_1x1,cxy(8,8),txy(8,8)). 
rhs(out2_red1_8_10_8_10,sameR,sid_1x1,cxy(8,10),txy(8,10)). 
rhs(out2_red1_9_1_9_1,sameR,sid_1x1,cxy(9,1),txy(9,1)). 
rhs(out2_black0_10_1_10_1,sameR,sid_1x1,cxy(10,1),txy(10,1)). 
rhs(out2_green1_10_2_10_2,sameR,sid_1x1,cxy(10,2),txy(10,2)). 
rhs(out2_red1_10_7_10_7,sameR,sid_1x1,cxy(10,7),txy(10,7)). 
rhs(out2_black0_10_10_10_10,sameR,sid_1x1,cxy(10,10),txy(10,10)). 

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



%  Objects of Exam 1 for input grid (1,1)-(10,10)
lhs(in0_blue2_1_2_1_3,rot90,sid_2x1,cxy(1,3),txy(1,3),no_child). 
lhs(in0_orange2_1_5_1_6,rot90,sid_2x1,cxy(1,6),txy(1,6),no_child). 
lhs(in0_blue2_3_1_4_1,sameR,sid_2x1,cxy(4,1),txy(4,1),no_child). 
lhs(in0_orange2_9_10_10_10,sameR,sid_2x1,cxy(10,10),txy(10,10),no_child). 
lhs(in0_black0_3_3_4_3,rot90,sid_1x2,cxy(4,3),txy(4,3),no_child). 
lhs(in0_black0_6_1_7_1,rot90,sid_1x2,cxy(7,1),txy(7,1),no_child). 
lhs(in0_black0_7_10_8_10,rot90,sid_1x2,cxy(8,10),txy(8,10),no_child). 
lhs(in0_black0_6_3_6_4,sameR,sid_1x2,cxy(6,4),txy(6,4),no_child). 
lhs(in0_blue3_10_4_10_6,rot90,sid_2x1,cxy(10,5),txy(10,5),no_child). 
lhs(in0_black0_1_8_1_10,sameR,sid_1x2,cxy(1,9),txy(1,9),no_child). 
lhs(in0_orange5_8_1_10_3,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(9,2),txy(9,2),no_child). 
lhs(in0_orange28_3_3_8_8,rot270,s15080966,cxy(6,6),txy(6,6),7). 
lhs(in0_silver56_2_2_9_9,rot270,s130855,cxy(6,6),txy(2,2),9). 
lhs(in0_silver28_2_2_9_9,sameR,sid_hollow_3x3,cxy(6,6),txy(2,2),8). 
lhs(in0_orange1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1),no_child). 
lhs(in0_black0_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4),no_child). 
lhs(in0_blue1_1_7_1_7,sameR,sid_1x1,cxy(1,7),txy(1,7),no_child). 
lhs(in0_black0_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1),no_child). 
lhs(in0_blue1_2_10_2_10,sameR,sid_1x1,cxy(2,10),txy(2,10),no_child). 
lhs(in0_black0_3_6_3_6,sameR,sid_1x1,cxy(3,6),txy(3,6),no_child). 
lhs(in0_blue1_3_8_3_8,sameR,sid_1x1,cxy(3,8),txy(3,8),no_child). 
lhs(in0_orange1_3_10_3_10,sameR,sid_1x1,cxy(3,10),txy(3,10),no_child). 
lhs(in0_blue1_4_10_4_10,sameR,sid_1x1,cxy(4,10),txy(4,10),no_child). 
lhs(in0_orange1_5_1_5_1,sameR,sid_1x1,cxy(5,1),txy(5,1),no_child). 
lhs(in0_black0_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5),no_child). 
lhs(in0_black0_5_10_5_10,sameR,sid_1x1,cxy(5,10),txy(5,10),no_child). 
lhs(in0_black0_6_6_6_6,sameR,sid_1x1,cxy(6,6),txy(6,6),no_child). 
lhs(in0_orange1_6_10_6_10,sameR,sid_1x1,cxy(6,10),txy(6,10),no_child). 
lhs(in0_black0_8_8_8_8,sameR,sid_1x1,cxy(8,8),txy(8,8),no_child). 
lhs(in0_black0_10_7_10_7,sameR,sid_1x1,cxy(10,7),txy(10,7),no_child). 
lhs(in0_orange1_10_8_10_8,sameR,sid_1x1,cxy(10,8),txy(10,8),no_child). 
lhs(in0_black0_10_9_10_9,sameR,sid_1x1,cxy(10,9),txy(10,9),no_child). 


Explain the transformation rules and then show the resulting object/8 of Exam 1 in a codeblock
```prolog

%  Objects of Exam 1 for output grid (1,1)-(10,10)
```

Grade your response from:
```prolog
rhs(out0_blue2_1_2_1_3,rot90,sid_2x1,cxy(1,3),txy(1,3)). 
rhs(out0_orange2_1_5_1_6,rot90,sid_2x1,cxy(1,6),txy(1,6)). 
rhs(out0_blue2_3_1_4_1,sameR,sid_2x1,cxy(4,1),txy(4,1)). 
rhs(out0_orange2_9_10_10_10,sameR,sid_2x1,cxy(10,10),txy(10,10)). 
rhs(out0_black0_3_3_4_3,rot90,sid_1x2,cxy(4,3),txy(4,3)). 
rhs(out0_black0_6_1_7_1,rot90,sid_1x2,cxy(7,1),txy(7,1)). 
rhs(out0_black0_7_10_8_10,rot90,sid_1x2,cxy(8,10),txy(8,10)). 
rhs(out0_black0_6_3_6_4,sameR,sid_1x2,cxy(6,4),txy(6,4)). 
rhs(out0_blue3_10_4_10_6,rot90,sid_2x1,cxy(10,5),txy(10,5)). 
rhs(out0_black0_1_8_1_10,sameR,sid_1x2,cxy(1,9),txy(1,9)). 
rhs(out0_orange5_8_1_10_3,rot90,sid_tetris_Z_270_Rotated_2x3,cxy(9,2),txy(9,2)). 
rhs(out0_blue28_3_3_8_8,rot270,s15080966,cxy(6,6),txy(6,6)). 
rhs(out0_silver56_2_2_9_9,rot270,s130855,cxy(6,6),txy(2,2)). 
rhs(out0_silver28_2_2_9_9,sameR,sid_hollow_3x3,cxy(6,6),txy(2,2)). 
rhs(out0_orange1_1_1_1_1,sameR,sid_1x1,cxy(1,1),txy(1,1)). 
rhs(out0_black0_1_4_1_4,sameR,sid_1x1,cxy(1,4),txy(1,4)). 
rhs(out0_blue1_1_7_1_7,sameR,sid_1x1,cxy(1,7),txy(1,7)). 
rhs(out0_black0_2_1_2_1,sameR,sid_1x1,cxy(2,1),txy(2,1)). 
rhs(out0_blue1_2_10_2_10,sameR,sid_1x1,cxy(2,10),txy(2,10)). 
rhs(out0_black0_3_6_3_6,sameR,sid_1x1,cxy(3,6),txy(3,6)). 
rhs(out0_orange1_3_8_3_8,sameR,sid_1x1,cxy(3,8),txy(3,8)). 
rhs(out0_orange1_3_10_3_10,sameR,sid_1x1,cxy(3,10),txy(3,10)). 
rhs(out0_blue1_4_10_4_10,sameR,sid_1x1,cxy(4,10),txy(4,10)). 
rhs(out0_orange1_5_1_5_1,sameR,sid_1x1,cxy(5,1),txy(5,1)). 
rhs(out0_black0_5_5_5_5,sameR,sid_1x1,cxy(5,5),txy(5,5)). 
rhs(out0_black0_5_10_5_10,sameR,sid_1x1,cxy(5,10),txy(5,10)). 
rhs(out0_black0_6_6_6_6,sameR,sid_1x1,cxy(6,6),txy(6,6)). 
rhs(out0_orange1_6_10_6_10,sameR,sid_1x1,cxy(6,10),txy(6,10)). 
rhs(out0_black0_8_8_8_8,sameR,sid_1x1,cxy(8,8),txy(8,8)). 
rhs(out0_black0_10_7_10_7,sameR,sid_1x1,cxy(10,7),txy(10,7)). 
rhs(out0_orange1_10_8_10_8,sameR,sid_1x1,cxy(10,8),txy(10,8)). 
rhs(out0_black0_10_9_10_9,sameR,sid_1x1,cxy(10,9),txy(10,9)). 
```
if wrong, what rules did you miss?
