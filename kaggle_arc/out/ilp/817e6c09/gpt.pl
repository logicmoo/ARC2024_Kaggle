% =======================================

Riddle v(817e6c09)

Always true: 

 * It is not possible that there might be additional rules or exceptions not covered in the provided examples.
 * Never decompose s-values
 * You will always receive enough information to predict the rhs/8 of Eval 1.
 * The transformation rules are based on the given examples, and contain enough context and information.

Sometimes true: 
 * Each input will contain one outlier object and the output transformation rule likely involves a combination of properties in those outlier combined with rest of input objects.





% Example 1

Inputs:
lhs(trn_0,loc(8,7),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_0,loc(12,6),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_0,loc(16,6),sameR,red,vis2D(4,4),8,shapeid=s1961242,[rot180,as_rot(rollD,rollDR,copy_row_ntimes(1,2)),double_size],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242). 
lhs(trn_0,loc(3,5),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_0,loc(9,4),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_0,loc(6,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_0,loc(13,2),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_0,loc(2,2),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_0,loc(17,7),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_0,loc(15,5),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 

Outputs:
rhs(trn_0,loc(17,7),sameR,cyan,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_0,loc(8,7),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_0,loc(12,6),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_0,loc(15,5),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_0,loc(3,5),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_0,loc(9,4),sameR,cyan,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_0,loc(6,3),sameR,cyan,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_0,loc(13,2),sameR,cyan,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_0,loc(2,2),sameR,cyan,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 



% Example 2

Inputs:
lhs(trn_1,loc(5,6),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_1,loc(10,5),rot90,red,vis2D(4,4),8,shapeid=s1961242,[rot180,as_rot(rollD,rollDR,copy_row_ntimes(1,2)),double_size],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242). 
lhs(trn_1,loc(6,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_1,loc(3,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_1,loc(14,2),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_1,loc(9,6),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_1,loc(11,4),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 

Outputs:
rhs(trn_1,loc(9,6),sameR,cyan,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_1,loc(5,6),sameR,cyan,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_1,loc(11,4),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_1,loc(6,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_1,loc(3,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_1,loc(14,2),sameR,cyan,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 



% Example 3

Inputs:
lhs(trn_2,loc(13,7),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_2,loc(2,7),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_2,loc(7,6),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_2,loc(10,5),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_2,loc(4,4),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_2,loc(15,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_2,loc(8,2),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 

Outputs:
rhs(trn_2,loc(13,7),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_2,loc(2,7),sameR,cyan,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_2,loc(7,6),sameR,cyan,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_2,loc(10,5),sameR,cyan,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_2,loc(4,4),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_2,loc(15,3),sameR,cyan,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_2,loc(8,2),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 



% Example 4

Inputs:
lhs(trn_3,loc(3,5),sameR,red,vis2D(4,4),8,shapeid=s1961242,[rot180,as_rot(rollD,rollDR,copy_row_ntimes(1,2)),double_size],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242). 
lhs(trn_3,loc(7,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_3,loc(4,6),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_3,loc(2,4),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 

Outputs:
rhs(trn_3,loc(4,6),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_3,loc(2,4),sameR,cyan,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_3,loc(7,3),sameR,cyan,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 



% Example 5

Inputs:
lhs(trn_4,loc(5,6),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(trn_4,loc(2,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 

Outputs:
rhs(trn_4,loc(5,6),sameR,cyan,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(trn_4,loc(2,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 



% Exam 1

Inputs:
lhs(tst_0,loc(10,7),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(tst_0,loc(2,7),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(tst_0,loc(13,6),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(tst_0,loc(5,5),sameR,red,vis2D(4,4),8,shapeid=s1961242,[rot180,as_rot(rollD,rollDR,copy_row_ntimes(1,2)),double_size],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=s1961242). 
lhs(tst_0,loc(15,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(tst_0,loc(9,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(tst_0,loc(6,6),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 
lhs(tst_0,loc(4,4),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=0,'sym_extend_-_/_\\_|'=0,'sym_node_*_+_@_~'=0],compressed_shapeid=sid_11). 


Explain the transformation rules and then show the resulting rhs/8 of Eval 1 in a ```Prolog
``` codeblock


Grade your response from:
```prolog
rhs(tst_0,loc(10,7),sameR,cyan,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(tst_0,loc(2,7),sameR,cyan,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(tst_0,loc(13,6),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(tst_0,loc(6,6),sameR,cyan,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(tst_0,loc(4,4),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(tst_0,loc(15,3),sameR,cyan,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
rhs(tst_0,loc(9,3),sameR,red,vis2D(2,2),4,shapeid=sid_11,[make_solid_object(square,2,2)]). 
```
if wrong, what rules did you miss?
