/*
  this is part of (H)MUARC  https://logicmoo.org/xwiki/bin/view/Main/ARC/

  This work may not be copied and used by anyone other than the author Douglas Miles
  unless permission or license is granted (contact at business@logicmoo.org)
*/
:- include(kaggle_arc_header).

into_ngrid(Points,NN):-  vis2D(Points,H,V),into_ngrid(Points,H,V,NGrid),
  fix_tt_juctions(NGrid,NN).
into_ngrid(Obj,H,V,NGrid):-
  localKpoints_include_bg(Obj,Points),
  neighbor_map1(H,V,Points,Points,CountedPoints),!,
  neighbor_map2(H,V,CountedPoints,CountedPoints,CountedPointsO),
  points_to_grid(H,V,CountedPointsO,NGrid).


guess_bgc(Grid,BGC):- most_d_colors(Grid,[BGC|_],_).

/*
6=corners
9=edges
D=fill_area
*/
:- decl_pt(most_d_colors(grid,color,grid)).
most_d_colors(Grid,ColorO,GridNM):-
  %atrace,
 
  get_fill_points(Grid,Points,GridNM),
  uneib(Points,FPoints),
  % grid_size(GridNM,H,V), pp(fillPoints(H,V) = FPoints),
  sort_safe(FPoints,NPSS),
  %atrace,
  % (N2-C)-P1
  my_maplist(arg(1),NPSS,Colors),
  clumped(Colors,CColors),
  my_maplist(arg(2),CColors,Set),
  get_black(Black),
  (Set==[]->ColorO=[Black];ColorO=Set),!.
  

ping_indiv_grid(show_neighbor_map).


get_fill_points2(Grid,FillPoints):-
  findall(C-Point,would_fill(Grid,C,Point),FillPoints).

%:- set_prolog_flag(occurs_check,error).

maybe_make_bg_visible(In,Grid):- make_bg_visible(In,Grid),!,In\=@=Grid.

%make_bg_visible(In,Grid):- var(In),!,Grid=In.
make_bg_visible(In,Grid):- !, duplicate_term(In,Grid),!.
make_bg_visible(In,Grid):- arc_html,!,In=Grid.
make_bg_visible(In,Grid):- duplicate_term(In,In0),subst001(In0,blue,'#6666FF',M),
  make_bg_visible_b(M,Grid).
/*
make_bg_visible(In,Grid):- duplicate_term(In,In0),
  subst001(In0,blue,'#6666ff',M0),
  %subst001(M0,black,'#5e5656',M1),
    subst001(M0,fg,'#888888',M2),subst001(M2,wbg,  '#2F049C',M3),
     subst001(M3,fg,'#ffffff',M4),subst001(M4,unkC,   '#101030',M5),
  make_bg_visible_b(M5,Grid).
*/
%make_bg_visible_b(In,Grid):- var(In),!,Grid=In.
%make_bg_visible_b(In,Grid):- !, duplicate_term(In,Grid),!.
make_bg_visible_b(In,Grid):- is_grid(In),!,mapgrid(make_bg_visible_c,In,Grid).
make_bg_visible_b(In,Grid):- is_list(In),!,my_maplist(make_bg_visible_b,In,Grid).
make_bg_visible_b(C-P,CC-P):- !, make_bg_visible_c(C,CC).
make_bg_visible_b(In,Grid):- make_bg_visible_c(In,Grid).

make_bg_visible_c(In,unkC):- plain_var(In),!.
%make_bg_visible_c(In,wbg):- is_bg_color(In),!.
%make_bg_visible_c(In,In):- var(In),!.
make_bg_visible_c(In,In):- var(In),!.
make_bg_visible_c(In,Grid):- get_black(Black),subst001(In,Black,'#201020',Grid).


%t_j('<','-'). t_j('>','-'). 
%t_j('!','|'). 
t_j(['|','-','+'],['|', '>','+']).
t_j(['+','-','|'],['+', '<','|']).
t_j(['|'-C,'-'-C,'+'-C],['|'-C,'>'-C,'+'-C]):- enum_sym_real_colors(C).
t_j(['+'-C,'-'-C,'|'-C],['+'-C,'<'-C,'|'-C]):- enum_sym_real_colors(C).


t_j90(['+','|','-'],  ['+','^','-']).
t_j90(['-','|','+'],  ['-','v','+']).
t_j90(['+'-C,'|'-C,'-'-C],['+'-C, '^'-C,'-'-C]):- enum_sym_real_colors(C).
t_j90(['_'-C,'|'-C,'+'-C],['-'-C, 'v'-C,'+'-C]):- enum_sym_real_colors(C).

%enum_sym_real_colors(C):- var(C),!,fail.
enum_sym_real_colors(C):- enum_fg_real_colors(C).
enum_sym_real_colors(fg).
enum_sym_real_colors(unkC).
enum_sym_real_colors(wbg).

fix_tt_juctions(X,X):-!.
fix_tt_juctions(NGrid,Out):- 
 fix_t_juctions(t_j,NGrid,TSyms),
 rot90(TSyms,NGrid90),
 fix_t_juctions(t_j90,NGrid90,TGrid90),
 rot270(TGrid90,Out),!.

fix_t_juctions(P2,I,O):- call(P2,F,R), subst(I,F,R,M),M\=@=I,!,fix_t_juctions(P2,M,O).
fix_t_juctions(_,I,I).


known_only(AP,KP):- AP=KP,!.
known_only(AP,KP):- my_exclude(sub_var(unkC),AP,KP).
localKpoints(G,KP):- localpoints(G,AP),known_only(AP,KP).
localKpoints_include_bg(G,KP):- localpoints_include_bg(G,AP),known_only(AP,KP).
localKpoints_maybe_bg(G,KP):- globalpoints_maybe_bg(G,AP),known_only(AP,KP).

get_fill_points(In,UNFP,GridOO):-
 must_det_ll((
 %grid_size(Grid,H,V),
 make_bg_visible_b(In,Grid),
 %print(In=Grid),
 neighbor_map(Grid,GridO), 
 fix_tt_juctions(GridO,GridOO),
 localKpoints(GridOO,NPS),  
 %print(NPS),nl,
 include(p1_or(is_point_type('~'),is_fill_point(NPS)),NPS,FillPoints),
 %%include(is_point_type('wbg'),NPS,NotFillPoints),
 include(is_point_type('wbgzzzzz'),NPS,NotFillPoints),
 subtract(FillPoints,NotFillPoints,RFillPoints),
  %my_partition(is_point_type('.'),NFP,OuterEdges,NonFillPointNonOuterEdges),
 uneib(RFillPoints,UNFP))).
/*
  once(get_fill_points2(Grid,FillPoints2)),
  append([FillPoints2,UNFP],TheFilPoints),
  neighbor_map(H,V,UNFP,UNFP,BUNFP),
  append([FillPoints,BUNFP],FGridO),
  points_to_grid(H,V,FGridO,RGridO),!.
*/
recolor_points(G,Color,Ps):- map_pred(is_color_into(Color),G,Ps).
   
is_color_into(Color,B,Color):- is_color(B).
  
is_fill_point(GridO,Type-Color-Point):- is_fill_point(GridO,Type,Color,Point),!.
is_fill_point(GridO,Type,C,P1):- is_adjacent_point(P1,Dir,P2),select('~'-C-P2,GridO,Rest),
  reverse_nav(Dir,Rev),is_adjacent_point(P1,Rev,PRev),member(Type-C2-PRev,Rest),C2\==C.
%is_fill_point(_GridO,5,_C,_P1).
is_fill_point(GridO,Type,C,P1):- 
  findall(P2,(is_adjacent_point(P1,_Dir,P2),member(Type-C-P2,GridO)),IdentGuys),
  length(IdentGuys,N),N=4,!.
is_fill_point(GridO,_,C,P1):- would_fill(GridO,C,P1).
 
is_sedge('.').
 
is_point_type(T,V):- ground(V),ground(T), sub_var(T,V).




% (N2-C)-P1
uneib(S,S):- S ==[],!.
uneib(S,FB):- is_list(S),!,mapgrid(uneib,S,FB).
uneib(S,FB):- \+ compound(S),!,FB=S.
uneib(U-P1,E-P1):- hv_point(_,_,P1),!,uneib(U,E).
uneib(U-Black,Black):- \+ compound(U),!.
uneib(X,X).



show_call_tf(G):- functor(G,F,_),\+ \+ (call(G)->u_dmsg(F=true);u_dmsg(F=false)).

test_most_d_colors:- clsmake, forall(rp_test(G),show_most_d_colors(G)).
show_most_d_colors(G):- 
 grid_to_tid(G,ID),
 most_d_colors(G,C,N),!,print_side_by_side(G,N),nl,writeln(ID=C).


merge_nc(A,B,B):- var(A),!.
merge_nc(A,B,A):- var(B),!.
merge_nc(A,B,G-A):- e_int2glyph(B,G),!.

/*
e_int2glyph(7,'X').
e_int2glyph(5,'-').
e_int2glyph(9,'+').
e_int2glyph(6,'c').

 code=63 ?  code=183 � code=176 � code=186 � 170 �
bg_dot(32).
 169	� 248	� 216	�  215 �  174	� 
*//*
e_int2glyph(1,'�').
e_int2glyph(2,'�').
e_int2glyph(3,'�').
e_int2glyph(4,'�').
e_int2glyph(6,'X').
e_int2glyph(7,'�').
e_int2glyph(8,'�').
e_int2glyph(9,'�').
e_int2glyph(10,'~').
e_int2glyph(11,'.').
e_int2glyph(12,',').
%e_int2glyph(5,'�').
%e_int2glyph(5,'�').
%e_int2glyph(5,'�').
%e_int2glyph(,'�').
e_int2glyph(N,G):- N>9, M is N+ 140,int2glyph(M,G).*/
e_int2glyph(B,G):- atom_number(G,B).


was_adjacent(LPS,SOP,_-P1):- is_adjacent_point(P1,_,P2),member(_-P2,SOP),member(CCC-P1,LPS),member(CCC-P2,LPS),!.

cull_rest(Rest,GridS,GridO):- is_list(GridS),!,my_maplist(cull_rest(Rest),GridS,GridO).
cull_rest(Rest,GridS,0):- number(GridS),member(GridS,Rest),!.
cull_rest(_Rest,GridS,GridS).

at_least_4([A,B,C,D|_],[A,B,C,D]):-!.
at_least_4(Grid4,Grid4).

%edge_of_grid(_,_,_,_):- !, fail.
%edge_of_grid(H,V,_,_):- (H=<15 ; V=<15),!,fail.
edge_of_grid(_,_,_,1,n).
edge_of_grid(_,_,1,_,w).
edge_of_grid(H,_,H,_,e).
edge_of_grid(_,V,_,V,s).
edge_of_grid(_,_,_,_,c).

 %color,neigbours,glyph
test_neighbor_map:- clsmake, forall(rp_test(G),show_neighbor_map(G)).
show_neighbor_map(G):-  grid_to_tid(G,ID), neighbor_map(G,N),!,print_side_by_side(ID,G,N).

neighbor_map(Grid,GridO):-
 must_det_ll((
  localKpoints_maybe_bg(Grid,Points),
  grid_size(Grid,H,V),
  neighbor_map1(H,V,Points,Points,CountedPoints),!,
  neighbor_map2(H,V,CountedPoints,CountedPoints,CountedPointsO),
  points_to_grid(H,V,CountedPointsO,GridO))),!.

neighbor_map2(_,_,[],_,[]):-!.
neighbor_map2(H,V,[(N1-C)-P1|Ps],Points,[(N2-C)-P1|Ps2]):-
  must_det_ll((
  fix_n2(H,V,C,P1,Points,N1,N2),
  neighbor_map2(H,V,Ps,Points,Ps2))).

% fix_n2(H,V,C,P1,Points,N1,N2)
fix_n2(_H,_V,_C,_P1,_Points,N1,N1).


remove_textures(Ps,TLPs):- \+ compound(Ps),!, TLPs=Ps.
remove_textures(T-Ps,Ps):- is_texture(T),!.
remove_textures(Ps-T,Ps):- is_texture(T),!.
remove_textures(H-Ps,HH-TLPs):- !,
  remove_textures(H,HH),
  remove_textures(Ps,TLPs).
remove_textures([H|Ps],[HH|TLPs]):- !,
  remove_textures(H,HH),
  remove_textures(Ps,TLPs).
remove_textures(X,X).

neighbor_map1(H,V,Ps,Points,Ps2):-
  remove_textures(Ps,TLPs),
  remove_textures(Points,TLPoints),
  neighbor_map3(H,V,TLPs,TLPoints,Ps2),!.

neighbor_map3(_,_,[],_,[]):-!.
neighbor_map3(H,V,[C-P1|Ps],Points,[(N-C)-P1|Ps2]):-
  must_det_ll((
  nei_map(H,V,C,P1,Points,N),
  neighbor_map3(H,V,Ps,Points,Ps2))).


only_color_data_f(OC,C):- only_color_data(OC,C),!.
only_color_data_f(C,C).

only_color_data_or_atom(OC,C):- only_color_data(OC,C),!.
only_color_data_or_atom(C,C).

only_color_data(C,D):- only_color_data0(C,CD),!,CD=D.

only_color_data0(C,C):- is_color(C),!.
only_color_data0(C,C):- is_unreal_color(C),!.
only_color_data0(C,C):- var(C),!.
only_color_data0(NC,NC):- \+ compound(NC),!,fail.
only_color_data0(C-P,C):- var(C),is_ncpoint(P),!.
only_color_data0(OC,C):- sub_term(C,OC),is_colorish(C),!.
%only_color_data(_-O,C):- only_color_data(O,C).

only_point_data(NC,NC):- \+ compound(NC),!.
only_point_data(_-C,NC):- only_point_data(C,NC).


is_adjacent_point_m2(P1,Dir,P2):- is_adjacent_point(P1,Dir,P2).
is_adjacent_point_m2(P1,Dir,P2):- is_adjacent_point(P1,Dir,P3),is_adjacent_point(P3,Dir,P2).

would_fill(In,C,P1):-
  localKpoints_include_bg(In,Points),
  get_black(Black),
  member(C-P1,Points),
  findall(Dir,(n_s_e_w(Dir),is_adjacent_point(P1,Dir,P2),member(NC-P2,Points),only_color_data(NC,CD),dif_color(C,CD),CD\==Black),DirsE),
  findall(Dir,(is_diag(Dir),is_adjacent_point(P1,Dir,P2),member(NC-P2,Points),only_color_data(NC,CD),dif_color(C,CD),CD\==Black),DirsF),
  findall(Dir,(n_s_e_w(Dir),once((is_adjacent_point(P1,Dir,P2),member(NC-P2,Points),only_color_data(NC,CD),==(C,CD),C\==Black))),DirsC),
  findall(Dir,(is_diag(Dir),once((is_adjacent_point(P1,Dir,P2),member(NC-P2,Points),only_color_data(NC,CD),==(C,CD),C\==Black))),DirsD),
  once(would_fill_color(DirsC,DirsD,DirsE,DirsF)).

would_fill_color([_,_,_,_],_,_,_).
would_fill_color(_,[_,_,_,_],_,_).
would_fill_color(_,_,[_,_,_,_],_).
would_fill_color(_,_,_,[_,_,_,_]).
would_fill_color(A,_,C,_):- append([A,C],Len),length(Len,L),L>3.
%would_fill_color(A,B,C,D):- append([B,D],Len),length(Len,L),L>3.
would_fill_color(A,B,C,D):- append([A,B,C,D],Len),length(Len,L),L>7.


nei_map(H,V,C,P1,Points,N):- 
 findall(Dir,(n_s_e_w(Dir),once((is_adjacent_point_m2(P1,Dir,P2),member(NC-P2,Points),only_color_data(NC,CD),==(C,CD)))),DirsC),
 findall(Dir,(is_diag(Dir),once((is_adjacent_point(P1,Dir,P2),member(NC-P2,Points),only_color_data(NC,CD),==(C,CD)))),DirsD),
 findall(Dir,(is_adjacent_point(P1,Dir,P2),member(NC-P2,Points),only_color_data(NC,CD),dif_color(C,CD)),DirsE),
 hv_point(X,Y,P1), 
 edge_of_grid(H,V,X,Y,Edge),
 map_neib1(C,DirsE,Edge,DirsC,DirsD,N).


only_neib_data(NC,NC):- \+ compound(NC),!.
only_neib_data(C-_,NC):- only_neib_data(C,NC).

map_neib1(C,DirsE,Edge,DirsC,DirsD,N):- fail,
  length(DirsD,DL),DL>0,
  length(DirsC,CL),CL>0,
  %DL\==CL,
  (DL>=3;CL>=3),!,
%  5 is (DL + CL),!,
  must_det_ll(((DL>CL)-> map_neib1(C,DirsE,Edge,[],DirsD,N); map_neib1(C,DirsE,Edge,DirsC,[],N))).
  %must_det_ll((DL>CL -> map_neib1(C,DirsE,Edge,DirsC,[],N); map_neib1(C,DirsE,Edge,[],DirsD,N))).

map_neib1(C,DirsE,Edge,DirsC,DirsD,NO):- 
  must_det_ll(
  (append([DirsC,DirsD],AllDirs),
    subtract(AllDirs,DirsE,Has),
    subtract([n,s,e,w,ne,sw,se,nw],Has,Not),
    map_neibw9(Has,Not,C,DirsE,Edge,DirsC,DirsD,NSM,PS),
    map_ns(NSM,NS), ((fail,PS=='+')-> N=PS; N=NS))),!,
  ignore(N=NO).

%map_ns('j','+').
map_ns(NS,NS).

can_star:- fail.

map_neib_ex(_,[D],'*'):- is_diag(D), can_star.

map_neib_ex([nw,sw,se,ne],_,'X'):- can_star.

/*
map_neib_ex(_,[n,e],'+').
map_neib_ex(_,[n,w],'+').
map_neib_ex(_,[s,e],'+').
map_neib_ex(_,[s,w],'+').

map_neib_ex([s,e,se],_,'+').
map_neib_ex([s,w,sw],_,'+').
map_neib_ex([n,e,ne],_,'+').
map_neib_ex([n,w,nw],_,'+').
*/

map_neib_ex([n,s,sw,se],_,'^').
map_neib_ex([e,w,sw,nw],_,'>').
map_neib_ex([e,w,ne,se],_,'<').
map_neib_ex([s,n,nw,ne],_,'v').

% % % 
map_neib_ex([w,ne],_,'-').
%
map_neib_ex([n,e],_,'+').
map_neib_ex([n,w],_,'+').
map_neib_ex([s,e],_,'+').
map_neib_ex([s,w],_,'+').

map_neib_ex([n],_,'|').
map_neib_ex([s],_,'|').
map_neib_ex([e],_,'-').
map_neib_ex([w],_,'-').

map_neib_ex(_,[n],'v').
map_neib_ex(_,[w],'>').
map_neib_ex(_,[e],'<').
map_neib_ex(_,[s],'^').

map_neib_ex([w,sw,se],_,U):- curvDD(U).
map_neib_ex([e,sw,se],_,U):- curvDU(U).
map_neib_ex([w,ne],_,U):- curvDU(U).
map_neib_ex([e,nw],_,U):- curvDD(U).

%map_neib_ex(_,[n,s,e,w],'X').


map_neib_ex([n,s],_,'|').
map_neib_ex([e,w],_,'-').

map_neib_ex([n,e,ne,nw],_,'\\'):- curvD.
map_neib_ex([n,w,ne,nw],_,'/'):- curvD.

map_neib_ex([s,e,sw,se],_,'/'):- curvD.
map_neib_ex([s,w,sw,se],_,'\\'):- curvD.

map_neib_ex([nw],_,U):- curvDD1(U).
map_neib_ex([se],_,U):- curvDD1(U).
map_neib_ex([ne],_,U):- curvDU1(U).
map_neib_ex([sw],_,U):- curvDU1(U).

map_neib_ex([s,nw],_,U):- curvDD(U).
map_neib_ex([n,se],_,U):- curvDD(U).
map_neib_ex([s,ne],_,U):- curvDU(U).
map_neib_ex([n,sw],_,U):- curvDU(U).

map_neib_ex([w,nw],_,'-').
map_neib_ex([e,se],_,'-').
map_neib_ex([e,ne],_,'-').
map_neib_ex([w,sw],_,'-').


/*
map_neib_ex([n,nw],_,U):- curvDD(U).
map_neib_ex([s,se],_,U):- curvDD(U).
map_neib_ex([n,ne],_,U):- curvDU(U).
map_neib_ex([s,sw],_,U):- curvDU(U).
*/

map_neib_ex([sw,se],_,'^').
map_neib_ex([ne,nw],_,'v').
map_neib_ex([sw,nw],_,'>').
map_neib_ex([ne,se],_,'<').

map_neib_ex([s,sw,se],_,'^').
map_neib_ex([n,ne,nw],_,'v').
map_neib_ex([w,sw,nw],_,'>').
map_neib_ex([e,ne,se],_,'<').


map_neib_ex([s,ne,sw],_,U):- curvDU1(U).
map_neib_ex([s,nw,se],_,U):- curvDD1(U).
map_neib_ex([s,ne],_,U):- curvDU2(U).
map_neib_ex([s,nw],_,U):- curvDD(U).


map_neib_ex(_,[sw,se],'-').
map_neib_ex(_,[s,sw],'-').
map_neib_ex(_,[s,se],'-').

map_neib_ex(_,[n,ne],'-').
map_neib_ex(_,[n,nw],'-').

map_neib_ex(_,[ne],U):- curvDD(U).
map_neib_ex(_,[nw],U):- curvDU(U).
map_neib_ex(_,[se],U):- curvDU2(U).
map_neib_ex(_,[sw],U):- curvDD(U).


map_neib_ex(_,[s,sw,se],'-').
map_neib_ex(_,[n,ne,nw],'-').
map_neib_ex(_,[e,ne,se],'|').
map_neib_ex(_,[w,sw,nw],'|').


/*
map_neib_ex(_,[sw,se],'V').
map_neib_ex(_,[ne,nw],'A').
map_neib_ex(_,[ne,se],'>').
map_neib_ex(_,[sw,nw],'<').
*/
map_neib_ex(_,[n,e],'/'):- curvD.
map_neib_ex(_,[n,w],'\\'):- curvD.
map_neib_ex(_,[s,e],'/'):- curvD.
map_neib_ex(_,[s,w],'\\'):- curvD.

%map_neib_ex(Has,Not,R):- map_neibu(Has,Not,R).


%map_neib_ex([e,w|_],_,'-').

map_neib_ex(_,[e,w,ne,se],'|').
map_neib_ex(_,[e,w,sw,nw],'|').
map_neib_ex(_,[n,s,sw,se],'-').
map_neib_ex(_,[n,s,ne,nw],'-').
map_neib_ex(_,[D],'~'):- is_diag(D),!.
map_neib_ex(_,[D],'*'):- \+ is_diag(D),can_star,!.

map_neib_ex(_,[],'~').

%map_neib_ex([n,sw,se],_,'A').
map_neib_ex(_,[n,s,e,w,nw],U):- curvDU1(U).
map_neib_ex(_,[n,s,e,w,se],U):- curvDU1(U).
map_neib_ex(_,[n,s,e,w,sw],U):- curvDD1(U).
map_neib_ex(_,[n,s,e,w,ne],U):- curvDD1(U).
/*
map_neib_ex(_,[n,s,e,w,_],'x').
map_neib_ex([_,nw],_,U):- curvDD(U).
map_neib_ex([_,se],_,U):- curvDD(U).
map_neib_ex([_,ne],_,U):- curvDU(U).
map_neib_ex([_,sw],_,U):- curvDU(U).
*/


same_sets(S1,S2):- sort_safe(S1,SS1),sort_safe(S2,SS2),SS1==SS2.

map_neib_u1([n,s,e,w],[ne,se,nw,sw],'@').

map_neib(Has,Not,R):- 
  map_neib_u1(CHas,CNot,R),
  respect_set(CHas,Has,Not),
  respect_set(CNot,Not,Has),!.
map_neib(Has,Not,R):- 
  map_neib_u2(CHas,CNot,R),
  respect_set(CHas,Has,Not),
  respect_set(CNot,Not,Has),!.
map_neib_fb(Has,Not,R):-
  map_neib_ex(CHas,CNot,R),
  (if_t(nonvar(CHas),same_sets(Has,CHas)),
   if_t(nonvar(CNot),same_sets(Not,CNot))),!.

respect_set(_CSet,Set,_Other):- must_be(ground,Set),fail.
respect_set(CSet,_Set,_Other):- var(CSet),!.
respect_set(not(Spec),Set,Other):- !, \+ respect_set(Spec,Set,Other).
respect_set(len(N),Set,_Other):- !, length(Set,Len),Len=N.
respect_set(more(N),Set,_Other):- !, length(Set,Len),Len>N.
respect_set(less(N),Set,_Other):- !, length(Set,Len),Len<N.
respect_set(only(Spec),Set,_Other):- !, forall(member(C,Set), member(C,Spec)), forall(member(C,Spec), member(C,Spec)).
respect_set(none_of(Spec),Set,_Other):- !, forall(member(C,Set),\+ member(C,Spec)).
respect_set(some_of(Spec),Set,_Other):- !, member(C,Set), member(C,Spec),!.
respect_set(Spec,Set,_Other):- is_list(Spec),!,forall(member(C,Spec),member(C,Set)).


map_neib_u2([n,s],[e,w],'|'). % |
map_neib_u2([n,s],[e],'*'):- can_star. % -
map_neib_u2([n,s],[w],'*'):- can_star. % -
map_neib_u2([e,w],[n,s],'-'). % |
map_neib_u2([e,w],[n],'*'):- can_star. % |
map_neib_u2([e,w],[s],'*'):- can_star. % |



map_neib_u2([ne,nw],len(5),'V').
map_neib_u2(only([ne,sw]),_,'/').
map_neib_u2(only([nw,se]),_,'\\').


% % map_neib_u2([n],[e,w],'|').
% % map_neib_u2([s],[e,w],'|').
/*
map_neib_u2([e],[n,s],'=').
map_neib_u2([w],[n,s],'=').

map_neib_u2([nw],_,U):- curvDD1(U).
map_neib_u2([se],_,U):- curvDD1(U).
map_neib_u2([ne],_,U):- curvDU1(U).
map_neib_u2([sw],_,U):- curvDU1(U).
*/

/*
vs latter.. 
%map_neib_u2([n],[e,w],'|').
%map_neib_u2([s],[e,w],'|').
map_neib_u2([e],[n,s],'=').
map_neib_u2([w],[n,s],'=').
*/

% % map_neib_u2([_],[nw,sw,se,ne],'+').


map_neib_u2([n,w],[nw,sw,se,ne],'/'):- curvD,!.
map_neib_u2([s,e],[nw,sw,se,ne],'/'):- curvD,!.
map_neib_u2([n,e],[nw,sw,se,ne],'\\'):- curvD,!.
map_neib_u2([s,w],[nw,sw,se,ne],'\\'):- curvD,!.

map_neib_u2([nw,w,sw],[ne,e,se],'>'). % |
map_neib_u2([ne,e,se],[nw,w,sw],'<'). % |
map_neib_u2([sw,s,se],[nw,n,ne],'^'). % |
map_neib_u2([nw,n,ne],[sw,s,se],'v'). % |

map_neib_u2([ne,sw],[n,s,e,w],'/'). %:- \+ failD,!.
map_neib_u2([nw,se],[n,s,e,w],'\\'). %:- \+ failD,!.
map_neib_u2([ne,sw],_,U):- curvDU2(U).
map_neib_u2([nw,se],_,U):- curvDD(U).
%map_neib_u2(only([w,s,sw]),_,'A').

map_neib_u2(only([n]),_,'|').
map_neib_u2(only([s]),_,'|').
map_neib_u2(only([e]),_,'-').
map_neib_u2(only([w]),_,'-').
map_neib_u2([n],[s,e,w],'|').
map_neib_u2([s],[n,e,w],'|').
map_neib_u2([e],[n,s,w],'-').
map_neib_u2([w],[n,s,e],'-').

curvDU('/'):- true.
curvDU2('/'):- true.
curvDU1('/').
curvDD('\\'):- true.
curvDD1('\\').
curvD:- fail.
failD:- true.

map_neib2(Has,Not,R):-
  map_neib_u3(CHas,CNot,R),
  respect_set(CHas,Has,Not),
  respect_set(CNot,Not,Has).
  
map_neib_u3([n,s,e,w],[],'~').


map_neibw9(_,_,_,_,_,[],[],0,0):-!.
map_neibw9(Has,_Not,_,_,_,_,_,'~','~'):-  length(Has,L),L=8.
%map_neibw9(Has,_Not,C,DirsE,_,DirsC,DirsD,'0','0'):-  length(Has,L),L=1.
map_neibw9(Has,Not,_,_,_,_,_,S,S):- length(Has,L),L=<2, map_neib(Has,Not,S).
%map_neibw9(Has,Not,_,_,_,_,_,S,S):- length(Has,L),L=5, map_neib(Has,Not,S), member(S,['-','|']).
/*
map_neibw9(Has,Not,_,_,_,_,_,S,S):- length(Has,L),L=4, member(S,['X','<','v','^','>']), map_neib(Has,Not,S).
map_neibw9(Has,Not,_,_,_,_,_,S,S):- length(Has,L),L=3, member(S,['+','<','v','^','>']),map_neib(Has,Not,S).
map_neibw9(Has,Not,_,_,_,_,_,S,S):- length(Has,L),L=3, map_neib(Has,Not,S),!.
map_neibw9(Has,Not,_,_,_,_,_,S,S):- length(Has,L),L=6,  %member(S,['+','-','|']),
    map_neib(Has,Not,S).
*/

map_neibw9(Has,Not,_,_,_,_,_,S,S):- map_neib(Has,Not,S),!.
map_neibw9(_Has,_Not,_,_,_,[],[_],0,0):-!.
map_neibw9(_Has,_Not,_,_,_,[_],[],0,0):-!.
map_neibw9(Has,Not,_,_,_,_,_,S,S):-map_neib2(Has,Not,S).
map_neibw9(Has,Not,C,DirsE,[Edge],DirsC,DirsD,NSM,PS):-!,map_neibw9(Has,Not,C,DirsE,Edge,DirsC,DirsD,NSM,PS).
%map_neibw9(Has,Not,_,_,_,_,_,S,S):-map_neib(Has,Not,S).
%map_neibw9(_EAll,_Missing,_C,_O,_E,[_,_,_],[],'%','%').
%map_neibw9(_,[],_,_,_,_,_,'~','~').
%map_neibw9(_EAll,_Missing,_,_,_,_,[ne,nw],'V','v').
%map_neibw9(Has,_Not,C,DirsE,Edge,DirsC,DirsD,NSM,PS):- map_neibw(Has,_Not,C,DirsE,Edge,DirsC,DirsD,NSM,PS).
%map_neibw9(EAll,_Not,C,[O],E,[],[],NS,PS):- map_neibw(EAll,_Not,C,[],E,[],[O],NS,PS),!.
map_neibw9(Has,Not,_,_,_,_,_,S,S):- length(Has,L),L=4, map_neib(Has,Not,S),!.
map_neibw9(Has,Not,_,_,_,_,_,S,S):- map_neib(Has,Not,S),!.
%emap_neibw9(Has,Not,_,_,_,_,_,S,S):- map_neib_fb(Has,Not,S),S\='^',!.
map_neibw9(Has,_Not,_C,_,_,_,_,PS,PS):- intersection(Has,[n,s,e,w],IS), IS\==[], !, length(IS,NSM),neih_syms(NSM,PS),!.
%map_neibw9(Has,_Not,C,DirsE,_,DirsC,DirsD,NSM,PS):- length(Has,N), NSM is N+1,PS=NSM.
map_neibw9(Has,Not,_,_,_,_,_,S,S):- map_neib_fb(Has,Not,S),!.

:- dynamic(neih_syms/2).
:- forall((between(0,8,N),NN is N*N, int2glyph(NN,N2)), assert_if_new(neih_syms(N,N2))).


map_neibw(_EAll,[n,s,e,w,sw,se,nw],_,_,_,_,_,'/',U):- curvDU1(U).
map_neibw(_EAll,[n,s,e,w,ne,se,nw],_,_,_,_,_,'/',U):- curvDU1(U).
map_neibw(_EAll,[n,s,e,w,ne,sw,nw],_,_,_,_,_,'\\',U):- curvDD1(U).
map_neibw(_EAll,[n,s,e,w,ne,sw,se],_,_,_,_,_,'\\',U):- curvDD1(U).
map_neibw(_EAll,[w,ne,sw,se,nw],_,_,_,_,_,'|','.').
map_neibw(_EAll,[e,ne,sw,se,nw],_,_,_,_,_,'|','.').
map_neibw(_EAll,[w,sw,nw],_,_,_,_,_,'|','.').
map_neibw(_EAll,[e,ne,se],_,_,_,_,_,'|','.').

map_neibw(_EAll,[s,w,sw],_,_,_,_,_,'+','.').


map_neibw(_EAll,[n,ne,sw,se,nw],_,_,_,_,_,'-','.').
map_neibw(_EAll,[s,ne,sw,se,nw],_,_,_,_,_,'-','.').
map_neibw(_EAll,[ne,se],_,_,_,_,_,'|','.').
map_neibw(_EAll,[sw,nw],_,_,_,_,_,'|','.').
map_neibw(_EAll,[ne,nw],_,_,_,_,_,'-','.').
map_neibw(_EAll,[sw,se],_,_,_,_,_,'-','.').
map_neibw(_EAll,[_,_,_],_,_,_,_,_,'+','.').

map_neibw(_EAll,_Missing,_,_,_,[n,s,e,w],[_,_,_],'+','7').

map_neibw(_EAll,_Missing,_,_,_,[n,s,e,w],[_,_,_],'*','7').

%map_neibw(_EAll,_Missing,_,[ne,sw,se,nw],[],_,_,'~','~').
%map_neibw(_EAll,_Missing,_,[n,s,e,w],_,_,_,'~','~').


/*
map_neibw(_EAll,_Missing,_,_,c,[n],[],'!','2').
map_neibw(_EAll,_Missing,_,_,c,[s],[],'!','2').
map_neibw(_EAll,_Missing,_,_,c,[e],[],'=','2').
map_neibw(_EAll,_Missing,_,_,c,[w],[],'=','2').

map_neibw(_EAll,_Missing,_,_,_,[n],[],'|','2').
map_neibw(_EAll,_Missing,_,_,_,[s],[],'|','2').
map_neibw(_EAll,_Missing,_,_,_,[e],[],'-','2').
map_neibw(_EAll,_Missing,_,_,_,[w],[],'-','2').

map_neibw(_EAll,_Missing,_,_,_,[n,s],_,'|','.').
map_neibw(_EAll,_Missing,_,_,_,[e,w],_,'-','.').
map_neibw(_EAll,_Missing,_,_,_,[n,e],[],'C','+').
map_neibw(_EAll,_Missing,_,_,_,[n,w],[],'C','+').
map_neibw(_EAll,_Missing,_,_,_,[s,e],[],'C','+').
map_neibw(_EAll,_Missing,_,_,_,[s,w],[],'C','+').

map_neibw(_EAll,_Missing,_,_,_,[_,_,_,_],[_,_,_],'C','+').
map_neibw(_EAll,_Missing,_,_,_,[_,_,_],[],'T','+').
map_neibw(_EAll,_Missing,_,_,_,[_,_,_],[_],'+','+').

map_neibw(_EAll,_Missing,_,_,_,_,NonNil,'+','.'):- NonNil\==[],!.


map_neibw(_EAll,_Missing,_,_,_,[s,e,w],[sw,se],'-','.').
map_neibw(_EAll,_Missing,_,_,_,[n,e,w],[ne,nw],'-','.').
map_neibw(_EAll,_Missing,_,_,_,[n,s,w],[sw,nw],'tz','.').
map_neibw(_EAll,_Missing,_,_,_,[n,s,e],[ne,se],'yz','.').
map_neibw(_EAll,_Missing,_,_,_,[s,e,w],[ne,sw,se,nw],'-','.').
map_neibw(_EAll,_Missing,_,_,_,[n,e,w],[ne,sw,se,nw],'-','.').
map_neibw(_EAll,_Missing,_,_,_,[n,s,w],[ne,sw,se,nw],'|','.').
map_neibw(_EAll,_Missing,_,_,_,[n,s,e],[ne,sw,se,nw],'|','.').

map_neibw(_EAll,_Missing,_,_,_,[n,s,w],_,'|','.').
map_neibw(_EAll,_Missing,_,_,_,[n,s,e],_,'|','.').

map_neibw(_EAll,_Missing,_,_,_,[s,e,w],_,'-','.').
map_neibw(_EAll,_Missing,_,_,_,[n,e,w],_,'-','.').


map_neibw(_EAll,_Missing,_,_,_,[n,s,e,w],[ne,sw,se,nw],'~','~').
% is_diag(ne). is_diag(sw). is_diag(se). is_diag(nw).
%map_neibw(_EAll,_Missing,_,_,_,[],[ne,nw],'V','v').
map_neibw(_EAll,_Missing,_,_,_,[],[se,nw],'\\','v').
map_neibw(_EAll,_Missing,_,_,_,_,[se,nw],'\\','v').

map_neibw(_EAll,_Missing,_,_,_,[],[_,se,nw],'\\','v').
%map_neibw(_EAll,_Missing,_,_,_,_,[_,se,nw],'\\','v').

map_neibw(_EAll,_Missing,_,_,_,[],[ne,sw],'/','r').
map_neibw(_EAll,_Missing,_,_,_,_,[ne,sw],'/','v').

map_neibw(_EAll,_Missing,_,_,_,[],[ne,sw,_],'/','v').
%map_neibw(_EAll,_Missing,_,_,_,_,[ne,sw,_],'/','v').



map_neibw(_EAll,_Missing,_,_,_,[],[ne,se],'<','v'). 
map_neibw(_EAll,_Missing,_,_,_,_,[ne,se],'<','v').
map_neibw(_EAll,_Missing,_,_,_,[],[sw,nw],'>','v').
map_neibw(_EAll,_Missing,_,_,_,_,[sw,nw],'>','v').
map_neibw(_EAll,_Missing,_,_,_,[],[se,sw],'^','v').
map_neibw(_EAll,_Missing,_,_,_,_,[se,sw],'^','v').
map_neibw(_EAll,_Missing,_,_,_,[],[_,_,_],'Y','v').
map_neibw(_EAll,_Missing,_,_,_,_,[_,_,_],'y','v').


map_neibw(_EAll,_Missing,_,_,_,[_,_,_],[_,_,_,_],7,'X').
map_neibw(_EAll,_Missing,_,_,_,[],[_,_,_,_],'X','X').

%map_neibw(_EAll,_Missing,_,_,c,[],[_],'x','v').

map_neibw(_EAll,_Missing,_,_,_,[],[ne],'/','v').
map_neibw(_EAll,_Missing,_,_,_,[],[nw],'\\','v').
map_neibw(_EAll,_Missing,_,_,_,[],[se],'\\','v').
map_neibw(_EAll,_Missing,_,_,_,[],[sw],'/','v').

map_neibw(_EAll,_Missing,_,_,_,[e],[ne,se],'2','X').
map_neibw(_EAll,_Missing,_,_,_,[w],[sw,nw],'2','X').
map_neibw(_EAll,_Missing,_,_,_,[n],[ne,nw],'2','X').
map_neibw(_EAll,_Missing,_,_,_,[s],[se,sw],'2','X').

map_neibw(_EAll,_Missing,_,_,_,[n,e],[ne],'C','+').
map_neibw(_EAll,_Missing,_,_,_,[n,w],[nw],'C','+').
map_neibw(_EAll,_Missing,_,_,_,[s,e],[se],'C','+').
map_neibw(_EAll,_Missing,_,_,_,[s,w],[sw],'C','+').

map_neibw(_EAll,_Missing,_,_,_,[n,e],[sw],'j','j').
map_neibw(_EAll,_Missing,_,_,_,[n,w],[se],'j','j').
map_neibw(_EAll,_Missing,_,_,_,[s,e],[nw],'j','j').
map_neibw(_EAll,_Missing,_,_,_,[s,w],[ne],'j','j').

map_neibw(_EAll,_Missing,_,_,_,[n,e],[sw],'J','j').
map_neibw(_EAll,_Missing,_,_,_,[n,w],[se],'J','j').
map_neibw(_EAll,_Missing,_,_,_,[s,e],[nw],'J','j').
map_neibw(_EAll,_Missing,_,_,_,[s,w],[ne],'J','j').


map_neibw(_EAll,_Missing,_,_,_,[_,_,_,_],[_],5,'.').
map_neibw(_EAll,_Missing,_,_,_,[_],[_,_,_,_],'X','X').
map_neibw(_EAll,_Missing,_,_,_,[_],[_,_,_,_],4,'X').
map_neibw(_EAll,_Missing,_,_,_,[_],[],2,'*'):- can_star.
map_neibw(_EAll,_Missing,_,_,_,[],[_],1,'*'):- can_star.
%map_neibw(_EAll,_Missing,_,_,_,NonNil1,NonNil2,'a','.'):- NonNil1\==[],NonNil2\==[],!.
map_neibw(_EAll,_Missing,_,_,_,_,NonNil,'A','.'):- NonNil\==[],!.
map_neibw(_EAll,_Missing,_,_,_,NonNil,_,'%','.'):- NonNil\==[],!.
map_neibw(_EAll,_Missing,_,_,_,_,_,'.','.').
*/

sometimes_bg(V):- var(V),!,fail.
sometimes_bg(zzzzzblack).

dir_num(_,_,c,0).
dir_num(C,C,Diag,1):- is_diag(Diag),!.
dir_num(_,Black,Diag,0):- sometimes_bg(Black),is_diag(Diag),!.
dir_num(_,_,Diag,0):- is_diag(Diag),!.
dir_num(C,C,_,2).
dir_num(_,Black,_,0):- sometimes_bg(Black).
dir_num(_,_,_,0).



unknown_color_hv_point(H, V, unk-Point) :- hv_point(H, V, Point).

locX(Obj1, X) :- 
    indv_props_list(Obj1, Desc),
    member(localKpoints(Points), Desc),
    findall(X, (member(_-Point, Points),hv_point(X,_,Point)), Xs),
    min_list(Xs, X).
locX(Obj1, X) :-
    member(obj(Descriptor), [Obj1]),
    member(centX(CentX), Descriptor),
    member(sizeX(SizeX), Descriptor),
    X is CentX - ((SizeX - 1) div 2).

locY(Obj1, Y) :- 
    indv_props_list(Obj1, Desc),
    member(localKpoints(Points), Desc),
    findall(Y, (member(_-Point, Points),hv_point(_,Y,Point)), Ys),
    min_list(Ys, Y).
locY(Obj1, Y) :-
    member(obj(Descriptor), [Obj1]),
    member(centY(CentY), Descriptor),
    member(sizeY(SizeY), Descriptor),
    Y is CentY - ((SizeY - 1) div 2).


maxX(Obj1, X) :- 
    indv_props_list(Obj1, Desc),
    member(centX(CentX), Desc),
    member(sizeX(SizeX), Desc),
    X is CentX + ((SizeX - 1) div 2).
maxX(Obj1, X) :- 
    indv_props_list(Obj1, Desc),
    member(localKpoints(Points), Desc),
    findall(X, (member(_-Point, Points),hv_point(X,_,Point)), Xs),
    max_list(Xs, X).

maxY(Obj1, Y) :- 
    indv_props_list(Obj1, Desc),
    member(centY(CentY), Desc),
    member(sizeY(SizeY), Desc),
    Y is CentY + ((SizeY - 1) div 2).
maxY(Obj1, Y) :- 
    indv_props_list(Obj1, Desc),
    member(localKpoints(Points), Desc),
    findall(Y, (member(_-Point, Points),hv_point(_,Y,Point)), Ys),
    max_list(Ys, Y).





center_of_dist(Len, Cent):-  Cent is ((Len + 1) div 2).

% Define the point object
meta_point(Object, Height, Width, obj([iv(Object), sizeX(SizeX), sizeY(SizeY), centX(X), centY(Y), mass(Mass), localKpoints(Points), iz(flag(virtual)), iz(shape(dot)), grid_sz(Height, Width)])) :-
    member(Object, [virt_center, virt_corner_nw, virt_corner_sw, virt_corner_ne, virt_corner_se]),
    (Object == virt_center -> 
        (center_of_dist(Width, X), center_of_dist(Height, Y),
         SizeX is 1 + Width mod 2, SizeY is 1 + Height mod 2, 
         Mass is SizeX * SizeY, 
         MaxH is X + SizeX, MaxV is Y + SizeY, 
         findall(Point, (between(X, MaxH, H), between(Y, MaxV, V), unknown_color_hv_point(H, V, Point)), Points));
     Object == virt_corner_nw -> (X is 1, Y is 1, SizeX is 1, SizeY is 1, Mass is 1, unknown_color_hv_point(X, Y, Point), Points = [Point]);
     Object == virt_corner_sw -> (X is 1, Y is Height, SizeX is 1, SizeY is 1, Mass is 1, unknown_color_hv_point(X, Y, Point), Points = [Point]);
     Object == virt_corner_ne -> (X is Width, Y is 1, SizeX is 1, SizeY is 1, Mass is 1, unknown_color_hv_point(X, Y, Point), Points = [Point]);
     Object == virt_corner_se -> (X is Width, Y is Height, SizeX is 1, SizeY is 1, Mass is 1, unknown_color_hv_point(X, Y, Point), Points = [Point])).

% Define the line object
meta_line(Object, Height, Width, obj([iv(Object), sizeX(SizeX), sizeY(SizeY), centX(CentX), centY(CentY), mass(Mass),
    localKpoints(Points), iz(flag(virtual)), iz(shape(line)), grid_sz(Height, Width)])) :-
    center_of_dist(Width, WidthCenter),
    center_of_dist(Height, HeightCenter),
    member(Object, [virt_edge_n, virt_edge_s, virt_edge_w, virt_edge_e]),
    (Object == virt_edge_n ->
        (SizeX is Width, SizeY is 1, CentX is WidthCenter, CentY is 1, Mass is Width,
         findall(Point, (between(1, Width, H), unknown_color_hv_point(H, 1, Point)), Points)
        );
     Object == virt_edge_s ->
        (SizeX is Width, SizeY is 1, CentX is WidthCenter, CentY is Height, Mass is Width,
         findall(Point, (between(1, Width, H), unknown_color_hv_point(H, Height, Point)), Points)
        );
     Object == virt_edge_w ->
        (SizeX is 1, SizeY is Height, CentX is 1, CentY is HeightCenter, Mass is Height,
         findall(Point, (between(1, Height, V), unknown_color_hv_point(1, V, Point)), Points)
        );
     Object == virt_edge_e ->
        (SizeX is 1, SizeY is Height, CentX is Width, CentY is HeightCenter, Mass is Height,
         findall(Point, (between(1, Height, V), unknown_color_hv_point(Width, V, Point)), Points))).
      
   


% Get all grid objects
get_grid_objects1(Height, Width, ObjectDesc) :-
    (meta_point(_, Height, Width, ObjectDesc) ; meta_line(_, Height, Width, ObjectDesc)).


vm_virtual_objects(VM, Obj) :-
   peek_vm(VM),
   get_grid_objects1(VM.h, VM.v, ObjectDesc),
   select(localKpoints(Points),ObjectDesc,ObjectDesc0),
   %select(iv(Waht),ObjectDesc0,ObjectDesc1),
   %atomic_list_concat(['o',Waht,VM.gid],'_',NewOID),
   make_indiv_object(VM,ObjectDesc0,Points,Obj).



