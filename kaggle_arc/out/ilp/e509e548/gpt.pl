% =======================================

Riddle t(e509e548)

Always true: 

 * It is not possible that there might be additional rules or exceptions not covered in the provided examples.
 * Never decompose s-values
 * You will always receive enough information to predict the rhs/8 of Eval 1.
 * The transformation rules are based on the given examples, and contain enough context and information.

Sometimes true: 
 * Each input will contain one outlier object and the output transformation rule likely involves a combination of properties in those outlier combined with rest of input objects.





% Example 1

Inputs:
lhs(trn_0,loc(3,19),sameR,green,vis2D(2,2),mass=3,shapeid=s11261491,[],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491). 
lhs(trn_0,loc(17,17),rot90,green,vis2D(3,4),mass=8,shapeid=s3977744,[copy_column_ntimes(2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=10030,'sym_node_*_+_@_~'=0],compressed_shapeid=s3977744). 
lhs(trn_0,loc(8,14),rot180,green,vis2D(5,3),mass=7,shapeid=s11261491,[copy_column_ntimes(1,4),copy_row_ntimes(1,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491). 
lhs(trn_0,loc(18,12),rot90,green,vis2D(2,3),mass=5,shapeid=s1201147,[],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=20010,'sym_node_*_+_@_~'=0],compressed_shapeid=s1201147). 
lhs(trn_0,loc(2,12),rot270,green,vis2D(4,5),mass=9,shapeid=s16726048,[flipD,copy_column_ntimes(2,3)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=11000,'sym_extend_-_/_\\_|'=10040,'sym_node_*_+_@_~'=0],compressed_shapeid=s3977744). 
lhs(trn_0,loc(14,7),rot270,green,vis2D(3,4),mass=8,shapeid=s1201147,[copy_column_ntimes(2,2),copy_row_ntimes(1,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=20010,'sym_node_*_+_@_~'=0],compressed_shapeid=s1201147). 
lhs(trn_0,loc(5,5),rot180,green,vis2D(4,3),mass=7,shapeid=s12482970,[copy_column_ntimes(2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=11000,'sym_extend_-_/_\\_|'=30010,'sym_node_*_+_@_~'=0],compressed_shapeid=s12482970). 
lhs(trn_0,loc(19,2),rot90,green,vis2D(2,3),mass=4,shapeid=s11261491,[copy_column_ntimes(1,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491). 

Outputs:
rhs(trn_0,loc(3,19),sameR,blue,vis2D(2,2),mass=3,shapeid=s11261491,[]). 
rhs(trn_0,loc(17,17),rot90,purple,vis2D(3,4),mass=8,shapeid=s3977744,[copy_column_ntimes(2,2)]). 
rhs(trn_0,loc(8,14),rot180,blue,vis2D(5,3),mass=7,shapeid=s11261491,[copy_column_ntimes(1,4),copy_row_ntimes(1,2)]). 
rhs(trn_0,loc(18,12),rot90,purple,vis2D(2,3),mass=5,shapeid=s1201147,[]). 
rhs(trn_0,loc(2,12),rot270,red,vis2D(4,5),mass=9,shapeid=s16726048,[flipD,copy_column_ntimes(2,3)]). 
rhs(trn_0,loc(14,7),rot270,purple,vis2D(3,4),mass=8,shapeid=s1201147,[copy_column_ntimes(2,2),copy_row_ntimes(1,2)]). 
rhs(trn_0,loc(5,5),rot180,red,vis2D(4,3),mass=7,shapeid=s12482970,[copy_column_ntimes(2,2)]). 
rhs(trn_0,loc(19,2),rot90,blue,vis2D(2,3),mass=4,shapeid=s11261491,[copy_column_ntimes(1,2)]). 



% Example 2

Inputs:
lhs(trn_1,loc(3,8),flipV,green,vis2D(5,4),mass=10,shapeid=s9067551,[c_r(and(copy_row_ntimes(3,2),copy_row_ntimes(1,2))),copy_row_ntimes(2,2)],1,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=11000,'sym_extend_-_/_\\_|'=10030,'sym_node_*_+_@_~'=0],compressed_shapeid=s9067551). 
lhs(trn_1,loc(9,3),rot90,green,vis2D(4,4),mass=10,shapeid=s1201147,[copy_column_ntimes(1,3),copy_row_ntimes(2,2),rot90],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=20010,'sym_node_*_+_@_~'=0],compressed_shapeid=s1201147). 
lhs(trn_1,loc(2,2),rot90,green,vis2D(3,3),mass=5,shapeid=s11261491,[copy_column_ntimes(1,2),copy_row_ntimes(1,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491). 

Outputs:
rhs(trn_1,loc(3,8),flipV,red,vis2D(5,4),mass=10,shapeid=s9067551,[c_r(and(copy_row_ntimes(3,2),copy_row_ntimes(1,2))),copy_row_ntimes(2,2)]). 
rhs(trn_1,loc(9,3),rot90,purple,vis2D(4,4),mass=10,shapeid=s1201147,[copy_column_ntimes(1,3),copy_row_ntimes(2,2),rot90]). 
rhs(trn_1,loc(2,2),rot90,blue,vis2D(3,3),mass=5,shapeid=s11261491,[copy_column_ntimes(1,2),copy_row_ntimes(1,2)]). 



% Example 3

Inputs:
lhs(trn_2,loc(11,14),sameR,green,vis2D(3,2),mass=5,shapeid=s1201147,[],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=20010,'sym_node_*_+_@_~'=0],compressed_shapeid=s1201147). 
lhs(trn_2,loc(2,12),flipV,green,vis2D(3,2),mass=4,shapeid=s11261491,[copy_column_ntimes(1,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491). 
lhs(trn_2,loc(7,10),flipD,green,vis2D(3,4),mass=8,shapeid=s9067551,[copy_column_ntimes(3,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=11000,'sym_extend_-_/_\\_|'=10030,'sym_node_*_+_@_~'=0],compressed_shapeid=s9067551). 
lhs(trn_2,loc(11,3),flipH,green,vis2D(3,2),mass=4,shapeid=s11261491,[copy_column_ntimes(1,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491). 
lhs(trn_2,loc(4,4),flipH,green,vis2D(5,4),mass=9,shapeid=s11470631,[copy_column_ntimes(2,3),copy_row_ntimes(1,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=30010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11470631). 

Outputs:
rhs(trn_2,loc(11,14),sameR,purple,vis2D(3,2),mass=5,shapeid=s1201147,[]). 
rhs(trn_2,loc(2,12),flipV,blue,vis2D(3,2),mass=4,shapeid=s11261491,[copy_column_ntimes(1,2)]). 
rhs(trn_2,loc(7,10),flipD,red,vis2D(3,4),mass=8,shapeid=s9067551,[copy_column_ntimes(3,2)]). 
rhs(trn_2,loc(11,3),flipH,blue,vis2D(3,2),mass=4,shapeid=s11261491,[copy_column_ntimes(1,2)]). 
rhs(trn_2,loc(4,4),flipH,purple,vis2D(5,4),mass=9,shapeid=s11470631,[copy_column_ntimes(2,3),copy_row_ntimes(1,2)]). 



% Exam 1

Inputs:
lhs(tst_0,loc(5,12),flipV,green,vis2D(6,3),mass=8,shapeid=s11261491,[copy_column_ntimes(1,5),copy_row_ntimes(1,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491). 
lhs(tst_0,loc(13,12),rot270,green,vis2D(3,3),mass=5,shapeid=s11261491,[copy_column_ntimes(1,2),copy_row_ntimes(1,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=1000,'sym_extend_-_/_\\_|'=10010,'sym_node_*_+_@_~'=0],compressed_shapeid=s11261491). 
lhs(tst_0,loc(12,8),sameR,green,vis2D(4,3),mass=8,shapeid=s3977744,[copy_column_ntimes(2,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=10030,'sym_node_*_+_@_~'=0],compressed_shapeid=s3977744). 
lhs(tst_0,loc(7,6),sameR,green,vis2D(5,3),mass=8,shapeid=s9067551,[copy_column_ntimes(1,3)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=11000,'sym_extend_-_/_\\_|'=10030,'sym_node_*_+_@_~'=0],compressed_shapeid=s9067551). 
lhs(tst_0,loc(14,3),flipDHV,green,vis2D(3,5),mass=8,shapeid=s5284033,[copy_column_ntimes(4,2)],missing,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=11000,'sym_extend_-_/_\\_|'=10040,'sym_node_*_+_@_~'=0],compressed_shapeid=s5284033). 
lhs(tst_0,loc(3,2),sameR,green,vis2D(3,3),mass=7,shapeid=s1201147,[copy_row_ntimes(1,2)],1,[sym_corners_ţ_Ť_ŧ_Ŭ_ų_ż_Ƈ_Ɣ_ƣ=2000,'sym_extend_-_/_\\_|'=20010,'sym_node_*_+_@_~'=0],compressed_shapeid=s1201147). 


Explain the transformation rules and then show the resulting rhs/8 of Eval 1 in a ```Prolog
``` codeblock


Grade your response from:
```prolog
rhs(tst_0,loc(5,12),flipV,blue,vis2D(6,3),mass=8,shapeid=s11261491,[copy_column_ntimes(1,5),copy_row_ntimes(1,2)]). 
rhs(tst_0,loc(13,12),rot270,blue,vis2D(3,3),mass=5,shapeid=s11261491,[copy_column_ntimes(1,2),copy_row_ntimes(1,2)]). 
rhs(tst_0,loc(12,8),sameR,purple,vis2D(4,3),mass=8,shapeid=s3977744,[copy_column_ntimes(2,2)]). 
rhs(tst_0,loc(7,6),sameR,red,vis2D(5,3),mass=8,shapeid=s9067551,[copy_column_ntimes(1,3)]). 
rhs(tst_0,loc(14,3),flipDHV,red,vis2D(3,5),mass=8,shapeid=s5284033,[copy_column_ntimes(4,2)]). 
rhs(tst_0,loc(3,2),sameR,purple,vis2D(3,3),mass=7,shapeid=s1201147,[copy_row_ntimes(1,2)]). 
```
if wrong, what rules did you miss?
