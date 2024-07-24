/*
  this is part of (H)MUARC  https://logicmoo.org/

  This work may not be copied and used by anyone other than the author Douglas Miles
  unless permission or license is granted (contact at business@logicmoo.org)
*/
:- include(kaggle_arc_header).

:- use_module(library(lists)).
:- discontiguous(glean_patterns_hook/3).
:- discontiguous(gph/5).

kaggle_arc_io_trn(TestID,Example+Num,IO,Grid):- 
  arg(_,v(trn,tst),Example),
  kaggle_arc_io(TestID,Example+Num,IO,Grid).


is_monotrim_test(TestID):- findall(TestID,(is_symgrid(TestID); is_monotrim_test0(TestID)),L),list_to_set(L,S),member(TestID,S).

is_monotrim_test0(TestID):- 
  all_arc_test_name(TestID),
  once((kaggle_arc(TestID,_,In,Out),
  grid_size(In,IH,IV),%grid_size(Out,OH,OV),
  once(((IH>4;IV>4))),
  %mass(In,IM),mass(Out,OM), IM > 10, OM > 11,
  once((is_monotrim_symmetricD(Out);is_monotrim_symmetricD(In))))).

is_symgrid(TestID):-!,
      clause(is_symgrid(T),Body),Body\=(_,_),call(Body),     
      once((fix_test_name(T,TestID,_),
      must(kaggle_arc_io_trn(TestID,_,in,G)),
      nonvar_or_ci(G))).
%is_symgrid(t('3631a71a')>_*out).

is_symgrid(t('29ec7d0e')).
is_symgrid(v('ea959feb')).
is_symgrid(t('1b60fb0c')).
is_symgrid(v(f9d67f8b)).
is_symgrid(t('73251a56')).
is_symgrid(t('8eb1be9a')).
is_symgrid(t(c3f564a4)).
is_symgrid(t('484b58aa')).
is_symgrid(t('0dfd9992')).
is_symgrid(t(dc0a314f)).
is_symgrid(t(e26a3af2)).
is_symgrid(t('05269061')).
is_symgrid(t('3af2c5a8')).
is_symgrid(t('88a62173')).
is_symgrid(t('2dc579da')).
is_symgrid(t(f9012d9b)).
is_symgrid(t(a740d043)).
is_symgrid(t(ff805c23)).
is_symgrid(t(eb281b96)).
is_symgrid(t('007bbfb7')).
is_symgrid(t(c444b776)>_*out).

is_symgrid(t('3631a71a')>_*in).
is_symgrid(t('83302e8f')>_*in).
is_symgrid(v('8a371977')). % Weird
is_symgrid('6f8cd79b').
is_symgrid('695367ec').
is_symgrid('7447852a').
is_symgrid('5a5a2103').
is_symgrid(t('9ecd008a')>(tst+0)*in).
is_symgrid(v(de493100)>_*in).
is_symgrid(v(f9d67f8b)>_*in).
is_symgrid(v(f9d67f8b)>_*out).
is_symgrid(t('4938f0c2')).
is_symgrid(t('4c5c2cf0')).
is_symgrid(t(b8825c91)). 
is_symgrid(t(e40b9e2f)). 
is_symgrid(t('47c1f68c')).
is_symgrid(t('9d9215db')).
%is_symgrid(X):- is_need(X).
%is_symgrid(X):- is_hard(X).

is_tttgrid('c3202e5a').

%is_symgrid(N):- arc_grid(N).

is_hard(t('3631a71a')>(trn+0)*in).
is_hard(t('47c1f68c')>(tst+0)*in).
is_hard(t('4c5c2cf0')>_*in).
is_hard(t('9d9215db')>_*in).
is_hard(t('4938f0c2')>_*in).

is_need(t('4c5c2cf0')>_*out).
is_need(t('4938f0c2')>_*out).
is_need(t('9d9215db')>_*out).

% is_bad(t('9d9215db')>_*in).


rp_test0(X):- X = [[black,black,black,black,black,black,black,black,black,yellow,black,black,black,black,black,black,black,black,black],[black,black,black,black,black,orange,black,black,black,yellow,black,black,black,black,black,orange,black,black,black],[black,black,black,red,black,black,black,black,black,yellow,black,black,black,red,black,black,black,black,black],[black,black,red,black,black,black,black,black,black,yellow,black,black,red,black,black,black,black,black,black],[black,green,black,black,black,green,black,black,black,yellow,black,green,black,black,black,green,black,black,black],[black,black,black,black,black,black,black,black,black,yellow,black,black,black,black,black,black,black,black,black],[black,black,black,cyan,orange,black,black,black,black,yellow,black,black,black,cyan,orange,black,black,black,black],[black,black,black,black,cyan,black,black,green,black,yellow,black,black,black,black,cyan,black,black,green,black],[black,orange,black,black,black,black,black,black,black,yellow,black,orange,black,black,black,black,black,black,black],[yellow,yellow,yellow,yellow,yellow,yellow,yellow,yellow,yellow,yellow,yellow,yellow,yellow,yellow,yellow,yellow,yellow,yellow,yellow],[black,black,black,black,black,black,black,black,black,yellow,black,black,black,black,black,black,black,black,black],[black,black,black,black,black,orange,black,black,black,yellow,black,black,black,black,black,orange,black,black,black],[black,black,black,red,black,black,black,black,black,yellow,black,black,black,red,black,black,black,black,black],[black,black,red,black,black,black,black,black,black,yellow,black,black,red,black,black,black,black,black,black],[black,green,black,black,black,green,black,black,black,yellow,black,green,black,black,black,green,black,black,black],[black,black,black,black,black,black,black,black,black,yellow,black,black,black,black,black,black,black,black,black],[black,black,black,cyan,orange,black,black,black,black,yellow,black,black,black,cyan,orange,black,black,black,black],[black,black,black,black,cyan,black,black,green,black,yellow,black,black,black,black,cyan,black,black,green,black],[black,orange,black,black,black,black,black,black,black,yellow,black,orange,black,black,black,black,black,black,black]].
rp_test0(G):- io_side_effects,into_grid(t(c444b776)>(trn+0)*out,G).
rp_test0(G):- arc_grid(G).

rp_test(G):- findall(X,rp_test1(X),L),list_to_set(L,S),!,length(S,N),dmsg(rp_test=len(N)),member(G,S).
rp_test1(G):- is_symgrid(X),into_grid(X,G).
rp_test1(X):- rp_test0(X).
rp_test1(Y):- rp_test0(X),rot90(X,Y).

/*
*/


into_bicolor(Grid,Mono):- color_cc_black_first(Grid,CC), into_bicolor(CC,Grid,Mono). 

into_bicolor([_],Grid,Grid):- !.
into_bicolor([_,_],Grid,Grid):- !.
into_bicolor([cc(Black,0),cc(BG,N),cc(_,N2)|_Rest],Grid,Mono):- is_black(Black), N2\==N, subst(Grid,BG,bg,FixBG), mapgrid(into_fg_bg_uc,FixBG,Mono).
into_bicolor(_,Grid,Mono):- mapgrid(into_fg_bg_uc,Grid,Mono).

is_monotrim_symmetric(Grid):- trim_to_rect(Grid,Rect),!,is_mono_symmetric(Rect).
is_monotrim_symmetricD(Grid):- trim_to_rect(Grid,Rect),!,is_mono_symmetricD(Rect).
is_trim_symmetric(Grid):- trim_to_rect(Grid,Rect),!,is_grid_symmetric(Rect).
is_trim_symmetricD(Grid):- trim_to_rect(Grid,Rect),!,is_grid_symmetricD(Rect).
is_mono_symmetric(Grid):- into_bicolor(Grid,Mono),!,is_grid_symmetric(Mono).
is_mono_symmetricD(Grid):- into_bicolor(Grid,Mono),!,is_grid_symmetricD(Mono).

is_grid_symmetric(Grid):- flipSym_checks(rot180,Grid),!.
is_grid_symmetric(Grid):- flipSym_checks(rot90,Grid),!.

is_grid_symmetricD(Grid):- is_grid_symmetric(Grid),!.
is_grid_symmetricD(Grid):- flipSym_checks(flipD,Grid),
  (flipSym_checks(flipDH,Grid);flipSym_checks(flipDV,Grid);flipSym_checks(flipDHV,Grid)),!.

vm_for_grid(Grid,VM):- vm_for_grid(Grid,_,_,VM).
vm_for_grid(Grid,ID,Out,VM):- fail,
  peek_vm(grid,VMGrid), VMGrid == Grid,!,
  Out = VM.target_grid, ID = VM.id.
vm_for_grid(Grid,IDO,Out,VM):-
  grid_to_tid(Grid,ID),
  into_fti(ID,in_out,Grid,VM),
  set(VM.grid)=Grid,
  ignore((
    testid_name_num_io(ID,TestID,Example,Num,IO),
    set_current_test(TestID),    

    ignore((IO==in,kaggle_arc_io_trn(TestID,Example+Num,out,Out),
            set(VM.id) = (TestID>(Example+Num)*IO),
       nop(Example\==tst),set(VM.target_grid)=Out)))),
  IDO = VM.id .


test_repair_symmetry_ALL:- clsmake, forall(repair_symmetry0,true).
:- arc_history(test_repair_symmetry).
repair_symmetry0:- 
 forall(
  is_symgrid(TestID), 
  %ensure_test(TestID),
  ignore(repair_symmetry(TestID))).

repair_symmetry:- get_current_test(TestID),repair_symmetry(TestID).

repair_symmetry(TestID):- \+ is_grid(TestID), 
 fix_test_name(TestID,TTestID), TTestID \== TestID, repair_symmetry(TestID).
repair_symmetry(TestID):- \+ is_grid(TestID),
 must_det_ll(( \+ \+ is_arc_task(TestID),
 forall(kaggle_arc_io_trn(TestID,_,in,Grid), 
   (set_current_test(TestID),repair_symmetry(Grid))))).

repair_symmetry(Grid):- is_grid(Grid),!,
  grid_to_tid(Grid,ID),
  into_fti(ID,in_out,Grid,VM),
  set_vm(VM),
  set(VM.grid)=Grid,    
%%  ignore(( testid_name_num_io(ID,TestID,_,_,_))),
  kaggle_arc_io_trn(TestID,Example+Num,IO,Grid),
  set_current_test(TestID),
  if_t(IO==in,kaggle_arc_io_trn(TestID,Example+Num,out,Out)),
  (Example==tst->set(VM.target_grid)=_;set(VM.target_grid)=Out),
  %\+ is_monotrim_symmetric(Grid), is_monotrim_symmetric(Out),
  format('~N'), dash_chars,
  u_dmsg(begin_test(ID)),
  print_side_by_side(Grid,Out),
  %\+ is_hard(TestID), \+ is_need(TestID),    
  if_t(is_need(TestID),u_dmsg(is_need(TestID))),
  if_t(is_hard(TestID),u_dmsg(is_hard(TestID))),!,
  ignore(time(repair_symmetry_code(Grid,_,_))),
  set(VM.target_grid)=_.


test_repair_symmetry:-
  test_p2(repair_symmetry(_Did)).

repair_symmetry(Code,G,GR):- repair_symmetry_code(G,GR,Code),!.

repair_symmetry_code(Grid,RepairedResult,Code):- 
  must_det_ll((
  duplicate_term(Grid,Orig),
  %vm_for_grid(Grid,IDO,Out,_VM),
  ignore((kaggle_arc_io_trn(TestID,ExampleNum,in,Grid),
          kaggle_arc_io_trn(TestID,ExampleNum,out,Out))),
  ID = (TestID>ExampleNum*in),
  u_dmsg(begun_repair_symmetry(ID)))),!,
  (test_symmetry_code(Grid,GridS,RepairedResult,Code)
     *-> 
      (if_t(GridS\==[],print_grid(test_RepairedResult,GridS)),
       if_t(Orig\==Grid,print_side_by_side(green,Orig,orig(ID),_,Grid,altered(ID))),
       print_side_by_side(green,Orig,gridIn(ID),_,RepairedResult,repaired(ID)),       
       print_info_l(GridS),
       Errors = _,
       if_t(is_grid(Out),
        (count_changes(_GGGG,Out,RepairedResult,0,Errors),
         if_t(Errors\==0,
           ((mapgrid(changed_grid,Out,RepairedResult,Problem)-> true ; Problem = RepairedResult),
            print_side_by_side(yellow,Problem,unexpected_repairedResult(ID,Errors),_,Out,expected(ID)),
           arcdbg_info(yellow,mismatched(symmetry_code(ID,Code))))),
         if_t(Errors==0,
         (arcdbg_info(green,success(symmetry_code(ID,Code))),
          reinforce_best_values(ID,Code))))),
       if_t(var(Errors),  arcdbg_info(blue,unable_to_verify(symmetry_code(ID,Code)))))
   ;
   ((var(Out)->Out=[[_]];true),
     print_side_by_side(red,Orig,gridIn(ID),_,Out,out(ID)),
     arcdbg_info(red,none_found(symmetry_code(ID))),!,fail)).
   

test_symmetry_code(G,Grids,GR,Code):-
  test_symmetry_code0(G,Grids,GR,Code),!.

test_symmetry_code0(G,[],GR,Code):- 
  repair_repeats(_UC,_VM,G,GR,Code).

test_symmetry_code0(G,[],GR,Code):- 
  try_something(Code,G,GR).

test_symmetry_code0(G,[],GR,find_and_use_pattern_gen):- 
  find_and_use_pattern_gen(G,GR).

test_symmetry_code0(G,Grids,GR,Code):- 
  grid_to_3x3_objs(_VM,[],G,Grids,_Keep,GR,Code).


changed_grid(In,Out,_):- In=@=Out,!.
changed_grid(Out,In,Vis):- get_black(Black),(var(Out);Out==Black),!,make_visible(In,Vis).
changed_grid(In,Out,Vis):- get_black(Black),(var(Out);Out==Black),!,make_visible(In,Vis).
changed_grid(In,_,Vis):- make_visible(In,Vis).


make_visible(In,Vis):- is_real_color(In),get_black(Black),In\==Black,!,Vis=In.
make_visible(In,Vis):- is_bg_color(In),!,Vis='.'-'#801110'.
make_visible(In,Vis):- is_fg_color(In),!,Vis='x'-'#f0fff0'.
make_visible(_In,'?'-'#1077f1').

crop(X,Y,G,GO):- make_grid(X,Y,GO),maplist_until(aligned_rows_u,G,GO).


maplist_until(Pred2,[X|XX],[Y|YY]):- call(Pred2,X,Y),maplist_until0(Pred2,XX,YY),!.
%maplist_until(Pred2,[_|XX],[_|YY]):- maplist_until(Pred2,XX,YY),!.
maplist_until(_,[],[]).

maplist_until0(Pred2,[X|XX],[Y|YY]):- call(Pred2,X,Y)->maplist_until0(Pred2,XX,YY).
maplist_until0(_,_,[]).

maplist_until1(Pred2,[X|XX],[Y|YY]):- call(Pred2,X,Y)->maplist_until1(Pred2,XX,YY).
maplist_until1(_,_,_).

maplist_until(Pred2,[X|XX]):- call(Pred2,X)->maplist_until(Pred2,XX).
maplist_until(_,_).

maplist_until_count(N,Pred2,[X|XX],[Y|YY],[Z|ZZ]):- call(Pred2,X,Y,Z)->(maplist_until_count(M,Pred2,XX,YY,ZZ),N is M+1).
maplist_until_count(0,_,_,_,[]).
maplist_until_count(N,Pred2,[X|XX],[Y|YY]):- call(Pred2,X,Y)->(maplist_until_count(M,Pred2,XX,YY),N is M+1).
maplist_until_count(0,_,_,[]).
maplist_until_count(N,Pred1,[X|XX]):- call(Pred1,X)->(maplist_until_count(M,Pred1,XX),N is M+1).
maplist_until_count(0,_,_). 


empty_or_open(L):- \+ \+ L=[].

first_quarter(Grid,GridQ):- first_half(Grid,GL),first_half(GL,GridQ).
first_half(Grid,GL):- length(Grid,L),H is floor(L/2), length(GL,H), append(GL,_,Grid).
second_half(Grid,GL):- length(Grid,L),H is floor(L/2), length(GL,H), append(_,GL,Grid).

aligned_rows([E1,E2|L],[E1,E2|R]):- 
 aligned_rows0(L,R), !,
 allowed([E1,E2|L]),
 allowed([E1,E2|R]).

allowed([E1,E2|R]):- get_black(Black), \+ all_one_color(Black,[E1,E2|R]).


all_one_color(_Black,R):- \+ \+ R =[],!.
all_one_color(Black,[H|R]):- \+ (H\=Black), all_one_color(Black,R).
all_eq_color(_Black,R):- \+ \+ R =[],!.
all_eq_color(Black,[H|R]):- Black==H, all_one_color(Black,R).

rows_align([],_):-!. % shorter media(image) fragment
rows_align(_,[]):-!. % taller media(image) fragment
rows_align([Row1|Rest1],[Row2|Rest2]):- 
 aligned_rows0(Row1,Row2),!,
 rows_align(Rest1,Rest2).

aligned_rows0([],_):-!. % ( empty_or_open(L) ; empty_or_open(R) ), !.
aligned_rows0(_,[]):-!.
aligned_rows0([E|L],[EE|R]):- E=@=EE,!, aligned_rows0(L,R).

aligned_rows_u([],_):-!. % ( empty_or_open(L) ; empty_or_open(R) ), !.
aligned_rows_u(_,[]):-!.
aligned_rows_u([E|L],[E|R]):- aligned_rows_u(L,R).

no_symmetry_yet(Row):- my_maplist(plain_var,Row),!. % no data yet
no_symmetry_yet(Row):- my_maplist(=(_),Row),!. % all equal element

sort_row_by_num_colors(G,G0):-
   my_maplist(row_color_changes,G,C),keysort(C,KS),reverse(KS,Now),
   my_maplist(arg(2),Now,G0).

row_color_changes(List,0-List):- (plain_var(List);List==[]),!.
row_color_changes([H|List],C-[H|List]):- row_color_changes(0,H,List,R), C is floor(R/2).

row_color_changes(Res,_,[],Res):-!.
row_color_changes(PrevCh,H,[N|List],Res):- plain_var(N),!,row_color_changes(PrevCh,H,List,Res).
row_color_changes(PrevCh,H,[N|List],Res):- H\==N, row_color_changes(PrevCh+1,N,List,Res).
row_color_changes(PrevCh,H,[N|List],Res):- H==N,  row_color_changes(PrevCh,N,List,Res).

append_n_times(PL,0,PL):- !.
append_n_times(PL,N,Rest):- N2 is N -1,
    append_n_times(PL,N2,Was), append(PL,Was,Rest).
   
/*
:- dynamic(c_n_pattern_l/4).
c_n_pattern:- \+ \+ (c_n_pattern_l(I,PL,Full,F),c_n_pattern_l(I,PL,Full,F)),!.
c_n_pattern:- 
 forall(
  (between(4,15,P),length(PL,P),append_n_times(PL,8,Full)),
  arc_assert(c_n_pattern_l(P,PL,Full,'->->->->'))),
 forall(
  (between(2,10,P),length(L,P),reverse(L,R),append(L,R,PL),append_n_times(PL,15,Full)),
   arc_assert(c_n_pattern_l(P,PL,Full,'<><><><>'))),
  %(between(2,10,P),length(PL,P),repeat_until_30(L,P,Full)),
  % arc_assert(c_n_pattern_l(P,PL,Full,'122333'))),
  nop(listing(c_n_pattern_l/4)).
    
:- c_n_pattern.

:- dynamic(c_n_reverse_l/7).
c_n_reverse:- \+ \+ (c_n_reverse_l(I,C,P,RowO,PLL,CL,RL),c_n_reverse_l(I,C,P,RowO,PLL,CL,RL)),!.
c_n_reverse:- 
                      forall((
                      between(0,5,C),length(CL,C),

                      between(0,10,P),length(PL,P),
                      between(10,10,L),length(LL,L),
                      I is P+L,
                      once((append(PL,LL,PLL),
                      reverse(PLL,RL),
                      append([PLL,CL,RL],Row),
                      numbervars(Row,0,_),
                      append(Row,_,RowO)))),
        arc_assert(c_n_reverse_l(I,C,P,RowO,PLL,CL,RL))),
                      nop(listing(c_n_reverse_l/7)).

:- c_n_reverse.
*/
/*
quaderants_and_center_rays(Grid9x9,QuadsO,CenterO,RaysO):- 
  [[ Q2, _CN,   Q1],
   [_CW, _CC,  _CE],
   [ Q3, _CS,   Q4]] = Grid9x9,
   flipH(Q1,Q1R), flipV(Q3,Q3R), rot180(Q4,Q4R),
   gensym('CRef_',CRef),
   CommonQ = [iz(quadrant),iz(pattern(CRef))],
   Quads = [obj([grid(Q2),rot(sameR),loc2D(CRef,-1,-1)|CommonQ]),
             obj([grid(Q1R),rot(flipH),loc2D(CRef,1,-1)|CommonQ]),
             obj([grid(Q3R),rot(flipV),loc2D(CRef,-1,1)|CommonQ]),
             obj([grid(Q4R),rot(rot180),loc2D(CRef,1,1)|CommonQ])],
   get_center_rays(CRef,Grid9x9,Center,Rays),
   my_maplist(filter_empty_grids,[Quads,Center,Rays],[QuadsO,CenterO,RaysO]).

get_center_rays(_CRef,_Grid9x9,[],[]):-!.
get_center_rays(CRef,Grid9x9,Center,Rays):- 
  [[_Q2,  CN, _Q1],
   [ CW,  CC,  CE],
   [_Q3,  CS, _Q4]] = Grid9x9,
   rot180(CW,CWR), rot270(CN,CNR), rot90(CS,CSR),
   CommonR = [iz(divider(CRef)),iz(ray(CRef))],
   
   Rays  = [obj([grid(CE),rot(sameR),   loc2D(CRef,1,0)|CommonR]),
             obj([grid(CWR),rot(rot180),loc2D(CRef,-1,0)|CommonR]),
             obj([grid(CSR),rot(rot90), loc2D(CRef,0,1)|CommonR]),
             obj([grid(CNR),rot(rot270),loc2D(CRef,0,-1)|CommonR])],
   Center =  [obj([grid(CC),rot(sameR),loc2D(CRef,0,0)|iz(center2G(CRef))])],!.


filter_empty_grids(List,ListO):- include(obj_has_form,List,ListO).
obj_has_form(obj(List)):- member(grid(Grid),List),grid_has_points(Grid).

grid_has_points(Empty):- Empty=@=[[_]],!,fail.
grid_has_points(Empty):- is_empty_grid(Empty),!,fail.
grid_has_points(G):- is_grid(G),!.
  */ 

incr(X,X1):- X1 is X + 1.

clip_quadrant(CRef,SXC,SXC,EXC,EYC,VM,SXQ4,SYQ4,EXQ4,EYQ4,G,Same,OBJL):-
  clip(SXQ4,SYQ4,EXQ4,EYQ4,G,Q4),
  call(Same,Q4,LikeQ4),
  globalpoints(LikeQ4,LGPoints),  
  Width is EXQ4-SXQ4+1,Height is EYQ4-SYQ4+1,
  globalpoints(Q4,LPoints),
  offset_points(SXQ4,SYQ4,LPoints,GPoints),
  make_indiv_object(VM,
    [iz(quadrant(CRef,Same)),
     iz(pattern(CRef,SXC,SXC,EXC,EYC)),
     rot2D(Same),
     vis2D(Width,Height),
     loc2D(SXQ4,SYQ4),
     globalpoints(GPoints),
     center_info(CRef,SXC,SXC,EXC,EYC) /*,
     grid(LikeQ4)*/ ],LGPoints,OBJL).
  

clip_ray(CRef,SXC,SXC,EXC,EYC,VM,SXQ4,SYQ4,EXQ4,EYQ4,G,Same,OBJ):-
nop((
  clip(SXQ4,SYQ4,EXQ4,EYQ4,G,Q4),
  CommonQ = [iz(divider(CRef,Same)),iz(ray(CRef,SXC,SXC,EXC,EYC))],
  call(Same,Q4,LikeQ4),
  globalpoints(Q4,LPoints),
  offset_points(SXQ4,SYQ4,LPoints,GPoints),
  embue_points1(VM,SXQ4,SYQ4,EXQ4,EYQ4,GPoints,Ps),!,
  append([[rot2D(Same),
     center_info(CRef,SXC,SXC,EXC,EYC),grid(LikeQ4)],CommonQ,Ps],OBJL),
  OBJ=obj(OBJL))).


%rot2D(obj(L),G):- member(rot2D(G),L).
% Hedra's t('47c1f68c')
% v(be03b35f)>(trn+2),
%detect_grid(Grid,E):- 
/*
find_mid_slice(Grid,H,V,LB,Left,Mid,RB):-
  LL is floor(V/2.5),
  length(Left,LL),
  reverse(Left,Right),

  forall(left(LB,Left,Mid,RB), (nth1(Nth,Grid,Row),
  (Mid = [];Mid = [_]),
  append([LB,Left,Mid,Right,RB],Row),
  \+ all_one_color(_Any,Left)),Rows),
  Rows>4,
  last(Rows,left(LB,Left,Mid,RB)).

grid_to _3x3_objs(VM,Ordered,Grid,NewIndiv4s,KeepNewState,RepairedResult):- 
  grid_size(Grid,H,V),
  find_mid_slice

  


  
  append([  [A,B,C,D,E,F,G,G],D,[]Row
  notrace(catch(call_with_time_limit(4,find_and_use_pattern_gen(Grid,Image9x9)),time_limit_exceeded, 
   (u_dmsg(time_limit_exceeded),fail))),
  %catch(find_and_use_pattern_gen(Grid,Image9x9),E, (u_dmsg(E),fail)),
  %rtrace(find_and_use_pattern_gen(Grid,Image9x9)),
  must_not_error((
  flatten(Image9x9,Flat),
  include(nonvar_or_ci,Flat,Grids),
  maybe_repair_image(VM,Ordered,Grids,NewIndiv4s,KeepNewState,RepairedResult))).
*/

clip_and_rot(SX,SY,EX,EY,G,Rot,GO):- 
  clip(SX,SY,EX,EY,G,GM),
  call(Rot,GM,GO).

print_quadrants(Color,Q1,Q2,Q3,Q4):-
  print_side_by_side(Color,Q2,'Q2',_,Q1,'Q1'),
  print_side_by_side(Color,Q3,'Q3',_,Q4,'Q4'),!.
  
trial_removal(RemovalTrials,Grid3,[E],GridO):- 
  member(E,RemovalTrials),call(E,Grid3,GridO).

pad_left(N,Grid,GridO):- (N==0 -> Grid=GridO ;  c_r(pad_top(N),Grid,GridO)).
pad_right(N,Grid,GridO):-  (N==0 -> Grid=GridO ;  c_r(pad_bottem(N),Grid,GridO)). 
pad_top(N,Grid,GridO):-  (N==0 -> Grid=GridO ;  (grid_size(Grid,H,_V),make_grid(H,N,Top),append(Top,Grid,GridO))).
pad_bottem(N,Grid,GridO):-  (N==0 -> Grid=GridO ;  (grid_size(Grid,H,_V),make_grid(H,N,Bot),append(Grid,Bot,GridO))).

clip_rot_patterns(flipV,rot180,flipH,sameR,kaleidoscope_four).
clip_rot_patterns(sameR,sameR,sameR,sameR,four_the_same).
clip_rot_patterns(flipH,flipH,sameR,sameR,four_way_h_flip).

is_fti_step(glean_grid_patterns).


glean_grid_patterns(VM):-
  Grid = VM.grid,
  glean_patterns_hook(Steps,Grid,Repaired),
  localpoints_include_bg(Repaired,RepairedPoints),
  localpoints_include_bg(Grid,OriginalPoints),
  intersection(OriginalPoints,RepairedPoints,_Retained,NeededChanged,_Changes),
  % QueuedPoints = VM.lo_points,
  % points that NeededChanged must be processed as if something special occluded it
  set(VM.lo_points) = NeededChanged,
  set(VM.grid) = Repaired,
%  addObjects(VM,ColorObj).
  addProgramStep(VM,Steps).


grid_to_2x2_objs(VM,Ordered,Grid,NewIndiv4s,KeepNewState,RepairedResult):-
  repair_2x2(Ordered,Steps,Grid,RepairedResultM), 
  KeepNewState=Ordered, 
  NewIndiv4s=[], 
  must_not_error(RepairedResultM=RepairedResult),
  addProgramStep(VM,Steps),!.
  
try_whole_grid_xforms(GridO):- try_whole_grid_xforms2(GridO),ignore(try_whole_grid_xforms1(GridO)).
try_whole_grid_xforms(GridO):- try_whole_grid_xforms1(GridO),ignore(try_whole_grid_xforms2(GridO)).

try_whole_grid_xforms1(GridO):- 
  flipV(GridO,FlipV),
  mapgrid(sometimes_assume(=),GridO,FlipV),
  flipH(GridO,FlipH),
  mapgrid(sometimes_assume(=),GridO,FlipH),
  rot90(GridO,Rot90),
  mapgrid(sometimes_assume(=),GridO,Rot90).

try_whole_grid_xforms2(GridO):- 
  grid_size(GridO,H,V),
  Vh is floor(V/2),
  Hh is floor(H/2),
  SXQ2 is 1,SYQ2 is 1,EXQ2 is Hh, EYQ2 is Vh,
  SXQ4 is H-1-Hh, SYQ4 is V-1-Vh, SYQ4 is V,EXQ4 is H,EYQ4 is V,
  clip_rot_patterns(Q1R,Q2R,Q3R,Q4R,_PatternName),
  clip_and_rot(SXQ2,SYQ2,EXQ2,EYQ2,Grid,Q2R,Q2),
  clip_and_rot(SXQ4,SYQ4,EXQ4,EYQ4,Grid,Q4R,Q4),
  clip_and_rot(SXQ4,SYQ2,EXQ4,EYQ2,Grid,Q1R,Q1),
  clip_and_rot(SXQ2,SYQ4,EXQ2,EYQ4,Grid,Q3R,Q3),
  my_maplist(mapgrid(sometimes_assume(=)),[Q1,Q2,Q3],[Q4,Q3,Q2]).

remObjects(_Objs,Before,After):- Before=After,!.

sometimes_assume(P2,X,Y):- ignore(call(P2,X,Y)).
sometimes_assume(P1,X):- ignore(call(P1,X)).

count_changes( GGGG,L1,L2,Bads,Bad1,Sames,Same1,Goods,Good1):- is_list(L1),is_list(L2), count_changes_list(GGGG,L1,L2,Bads,Bad1,Sames,Same1,Goods,Good1),!.
count_changes(_GGGG,G,R,Bads,Bad1,Sames,Sames,Goods,Goods):- ( is_list(G) ;  is_list(R)),!,plus(Bads,10_000,Bad1).
count_changes(_GGGG,G,R,Bads,Bads,Kepts,Kepts,Goods,Goods):- (  plain_var(G),plain_var(R)),!.

count_changes(_CG1-_CG2,_G1-G2,_R1-R2,Bads,Bads,Sames,Sames,Goods,Goods):- is_bg_color(G2),is_bg_color(R2),!.

count_changes(CG1-CG2,G1-G2,R1-R2,Bads,Bad1,Sames,Same1,Goods,Good1):- !,
  count_changes(CG1,G1,R1,Bads,Bad0,Sames,Same0,Goods,Good0),
  count_changes(CG2,G2,R2,Bad0,Bad1,Same0,Same1,Good0,Good1).

count_changes(_GGGG,G,R,Bads,Bads,Kepts,Kepts,Goods,Goods):- (is_bg_color(G),is_bg_color(R)),!.
count_changes(_GGGG,G,R,Bads,Bad1,Kepts,Kepts,Goods,Goods):- (is_fg_color(G),is_bg_color(R)),!,plus(Bads,1,Bad1).
count_changes(_GGGG,G,R,Bads,Bad1,Kepts,Kepts,Goods,Goods):- (is_fg_color(G),is_fg_color(R),G\=R),!,plus(Bads,2,Bad1).
count_changes(_GGGG,G,R,Bads,Bads,Kepts,Kepts,Goods,Good1):- (is_bg_color(G),is_fg_color(R)),!,plus(Goods,1,Good1).

count_changes( GGGG,G,R,Bads,Bads,Kepts,Kept1,Goods,Goods):- G=@=R,!,plus(Kepts,1,Kept0),
                                           (GGGG=@=G->plus(Kept0,2,Kept1);plus(Kept0,0,Kept1)).
count_changes(_GGGG,_,_,Bads,Bad1,Kepts,Kepts,Goods,Goods):- plus(Bads,1,Bad1).
/*
count_changes(GGGG,G,R,Bads,Bads,Kepts,Kepts,Goods,Goods):- (is_bg_color(G),plain_var(R)),!.
count_changes(GGGG,G,R,Bads,Bads,Kepts,Kept1,Goods,Goods):- (is_fg_color(G),plain_var(R)),!,plus(Kepts,1,Kept1).
count_changes(GGGG,G,R,Bads,Bads,Kepts,Kepts,Goods,Good1):- (is_fg_color(G),is_fg_color(R), (\+ \+ G=R)),!,plus(Goods,1,Good1).
count_changes(GGGG,G,R,Bads,Bads,Kepts,Kept1,Goods,Goods):- (plain_var(G),is_bg_color(R)),!,plus(Kepts,1,Kept1).
count_changes(GGGG,G,R,Bads,Bads,Kepts,Kepts,Goods,Good1):- (plain_var(G),is_fg_color(R)),!,plus(Goods,1,Good1).
count_changes(GGGG,G,R,Bads,Bads,Kepts,Kepts,Goods,Good1):- G=@=R,!,plus(Goods,1,Good1).
count_changes(GGGG,G,R,Bads,Bads,Kepts,Kepts,Goods,Good1):- (plain_var(G);plain_var(R)),!,plus(Goods,1,Good1).*/

count_changes_list([CG|CGG],[G|GG],[R|RR],Bad,Bad1,Same,Same1,Goods,Good1):- !,
  count_changes(CG,G,R,Bad,Bad0,Same,Same0,Goods,Good0),!, count_changes_list(CGG,GG,RR,Bad0,Bad1,Same0,Same1,Good0,Good1).
count_changes_list(_,L1,L2,Bad,Bad1,Same,Same,Goods,Goods):-  
  length(L1,N1),length(L2,N2), plus(Bad,N1,M), plus(M,N2,Bad1),!.


grid_arg(G,GG):- is_grid(G),G=GG,!.
grid_arg(G,GG):- compound(G), ( \+ is_gridoid(G)), sub_term(GG,G), is_grid(GG),!.
grid_arg(G,GG):- into_grid(G,GG),!.

count_changes(GGGG,G,R,Bad,Same,Good):- must_det_ll((grid_arg(G,GG),grid_arg(R,RR),!,count_changes(GGGG,GG,RR,0,Bad,0,Same,0,Good))),!.

count_changes(GGGG,G,R,Changes):- count_changes(GGGG,G,R,0,Changes).

count_changes(_GGGG,G,R,S,S):- G=@=R,!.
count_changes(_GGGG,G,R,S,E):- (\+ is_list(G), \+ is_list(R)),!,plus(S,1,E).
count_changes(_GGGG,G,R,S,E):- (\+ is_list(G) ; \+ is_list(R)),!,plus(S,10_000,E).
count_changes([CG|CGG],[G|Grid],[R|RepairedResult],S,E):-
  count_changes(CG,G,R,S,Changes),
  count_changes(CGG,Grid,RepairedResult,Changes,E),!.
count_changes(_GGG,L1,L2,S,E):- length(L1,N1),length(L2,N2), plus(S,N1,M), plus(M,N2,E),!.
count_changes(_GGG,_,_,S,E):- plus(S,1000,E).
  
mass_ok(Grid,RepairedResult):- is_grid(Grid),
  grid_size(Grid,H,V),Area is H * V,
  count_changes(_GGGG,Grid,RepairedResult,0,Changes),
  Change is Changes/Area,
  Change>75,!,fail,
 print_side_by_side(red,Grid,too_much_change(gridIn,Change),_,RepairedResult,too_much_change(repairedOut,Change)),fail.
 
mass_ok(Grid,RepairedResult):-
  mass(Grid,OMass),!,
  mass(RepairedResult,RMass),!,  
  DMass is RMass/OMass,
  %pp(yellow,[oMass=OMass,rMass=RMass,dMass=DMass]),!,
  ((DMass>0.5,DMass<1.6)
   -> true ; 
   (fail,DMass<1.63,print_side_by_side(red,Grid,too_much_change(gridIn,dMass=DMass),_,RepairedResult,too_much_change(repairedOut)),fail)).


mass_diffs(Grid,RepairedResult,Changes/Area,RMass/OMass):-
  grid_size(Grid,H,V),Area is H * V,
  count_changes(_GGGG,Grid,RepairedResult,0,Changes),
  mass(Grid,OMass),!,
  mass(RepairedResult,RMass).


grid_to_3x3_objs(VM,Ordered,Grid,NewIndiv4s,KeepNewState,RepairedResult,grid_to_2x2_objs):- 
  grid_to_2x2_objs(VM,Ordered,Grid,NewIndiv4s,KeepNewState,RepairedResult),
  mass_ok(Grid,RepairedResult),!.
 
grid_to_3x3_objs11(VM,Ordered,Grid,NewIndiv4s,KeepNewState,RepairedResult,find_and_use_pattern_gen):-
  notrace(catch(call_with_time_limit(4,find_and_use_pattern_gen(Grid,Image9x9)),time_limit_exceeded, 
   (u_dmsg(time_limit_exceeded),fail))),
  %catch(find_and_use_pattern_gen(Grid,Image9x9),E, (u_dmsg(E),fail)),
  %rtrace(find_and_use_pattern_gen(Grid,Image9x9)),
  must_not_error((
  flatten(Image9x9,Flat),
  include(nonvar_or_ci,Flat,Grids),
  maybe_repair_image(VM,Ordered,Grids,NewIndiv4s,KeepNewState,RepairedResult))).

maybe_set_vm(VM):- nonvar(VM),!,set_vm(VM).
maybe_set_vm(VM):- get_vm(VM).

% =====================================================================
is_fti_step(maybe_repair_in_vm).
% =====================================================================
maybe_repair_in_vm(_P4,VM):- VM.option_repair_grid==false,!.
maybe_repair_in_vm(P4,VM):- var(VM.option_repair_grid), !, 
 (need_repair_grid(VM) 
   -> (set(VM.option_repair_grid) = true) 
    ; (set(VM.option_repair_grid) = false)),
  maybe_repair_in_vm(P4,VM).
maybe_repair_in_vm(P4,VM):- repair_in_vm(P4,VM),!.

need_repair_grid(VM):- 
  VM.h >= 14, VM.v >= 14,
  testid_name_num_io(VM.id,TestID,_Example,_Num,in),!,
  test_need_repair_grid(TestID),!.

test_need_repair_grid(_):- test_config(giz([never_repair])),!,fail.
test_need_repair_grid(TestID):- 
  kaggle_arc(TestID,trn+_,I,O), 
  \+ is_trim_symmetricD(I), 
  grid_size(I,IH,IV),
  mass(I,GridMass),
  Area is IH * IV,  
  GridMass/Area > 0.39,!,
  grid_size(O,OH,OV),
  once(
    (is_trim_symmetricD(O),IH=OH,IV=OV) 
    ;(IH>=(OH*3),IV>=(OV*3))).

% =====================================================================
is_fti_step(repair_in_vm).
% =====================================================================
repair_in_vm(P4,VM):-
 ignore((
  maybe_set_vm(VM),
  VM.h >= 7, VM.v >= 7,
  VM.option_repair_grid == true,
  Grid = VM.grid,
  call(P4,VM,Grid,RepairedResult,Steps),
  set(VM.option_repair_grid) = false,
  Grid \== RepairedResult, !,  
  diff_repaired(RepairedResult,VM),
  set(VM.grid)= RepairedResult,
  addProgramStep(VM,[repair_in_vm(P4)|Steps]))).

% =====================================================================
is_fti_step(remember_repaired).
% =====================================================================
remember_repaired(VM):- diff_repaired(VM.grid,VM).

% =====================================================================
is_fti_step(diff_repaired).
% =====================================================================
diff_repaired(RepairedResult,VM):-
 must_det_ll((
  localpoints_include_bg(VM.start_grid,OriginalPoints),
  localpoints_include_bg(RepairedResult,RepairedPoints),
  intersection(OriginalPoints,RepairedPoints,Unchanged,NeededChanged,ChangedPoints),  
  H = VM.h, V = VM.v,
  IDR = [iz(media(image)),iz(flag(dont_reduce))],
  set_vm_obj(unchanged,IDR,Unchanged),
  set_vm_obj(original,[iz(flag(hidden))|IDR],OriginalPoints),
  set_vm_obj(repaired,[iz(flag(always_keep))|IDR],RepairedPoints),
  set_vm_obj(neededChanged,[iz(flag(hidden)),iz(media(shaped)),iz(flag(always_keep))|IDR],NeededChanged),
  set_vm_obj(changedUntrimmed,[iz(flag(always_keep))|IDR],ChangedPoints),
  points_to_grid(H,V,ChangedPoints,Changed),
  trim_to_rect(Changed,TrimChangedG),
  localpoints_include_bg(TrimChangedG,TrimChangedPoints),
  set_vm_obj(changed,[iz(flag(always_keep))|IDR],TrimChangedPoints))).


column_or_row(Grid,Color):- member(Row,Grid), my_maplist(==(Color),Row),!. 
column_or_row(Grid,Color):- rot90(Grid,Grid0),!,member(Row,Grid0), my_maplist(==(Color),Row),!. 

if_target(Out,Goal):- nonvar(Out),!,call(Goal).
if_target(Out,Goal):- (peek_target(Out)->call(Goal);true).
%peek_target(Out):- is_grid(Out), set_vm(target_grid,Out).
peek_target(Out):- peek_vm(target_grid,Out),is_grid(Out).
peek_target_or_else(Grid,Out):- peek_target(Out)->true;Grid=Out.
contains_color(Color,Out):- unique_colors(Out,Colors),member(Color,Colors).

test_blur_least:-
  test_p2(blur_least(_,_)).

/*
blur_least(B,Mix,I,O):-
  blur_list(B,Mix,I,L),
  predsort_on(minimal_changes(I),L,S),
  S=[O-pp(blur_some(B,Mix))|_].
*/

adjacent_points(G,APs):- 
  findall(C, (member(Row,G),append(_,[P1,P2|_],Row),is_fg_color(P1),(P1==P2-> C = 2; (is_fg_color(P2),C=1))),List1),
  rot90(G,G90),
  findall(C, (member(Row,G90),append(_,[P1,P2|_],Row),is_fg_color(P1),(P1==P2-> C = 2; (is_fg_color(P2),C=1))),List2),
  append([List1,List2],List),
  sumlist(List,APs).
  

blur_least(B,Mix,I,O):-
  blur_list(B,Mix,I,S),
  S=[O-pp(blur_some(B,Mix))|_].

replace_non_fg_least(C,_,C):- is_fg_color(C),!.
replace_non_fg_least(C,Black,C):- \+ is_fg_color(Black),!.
replace_non_fg_least(_,C,C).

blur_or_not_least(Op,Grid,Overlayed):-  
  into_grid(Grid,GD), duplicate_term(GD,OrigGrid),
  grid_call(Op,OrigGrid,BlurWithG),
  least_overlay(OrigGrid,BlurWithG,Overlayed,OH,OV),
  Title=blur_or_not_least(Op,OH,OV),
  print_grid(Title,Overlayed).

% Maps BlurWithG onto the OriginalG while attempting to cause the least conflicts
least_overlay(OriginalG,BlurWithG,OverlayedUncasted,OffsetH,OffsetV):-
  into_grid(OriginalG,Original),cast_to_grid(BlurWithG,BlurWith,Uncast),
  duplicate_term(BlurWith,GGGO),
  WHY = overlay_info(Score,Overlayed,OffsetH,OffsetV),
  grid_size(GGGO,H2,V2),
  HT2 is floor(H2*2),
  VT2 is floor(V2*2),
  %H2H is 1+floor(H2/2), V2V is 1+floor(V2/2),
  adjacent_points(Original,APs),
  findall(WHY, 
    ( ( (between(1,HT2,IH),OffsetH is IH-H2, between(1,VT2,IV),OffsetV is IV-V2); (OffsetH= -5,OffsetV= -5)),
      
      offset_layover(GGGO,OffsetH,OffsetV,GGGG),
      %count_changes(GGGG,Original,GGGG,GBad,GKept1,GGood), GBad=0,
      mapgrid(replace_non_fg_least,GGGG,Original,Overlayed),
      adjacent_points(Overlayed,APG),
      % once((into_ngrid(Original,NG),into_ngrid(Overlayed,NGG),into_ngrid(GGGG,NGGGG))), count_changes(NGGGG,NG,NGG,Bad,Kept1,Good), % Bad=0,
       count_changes(GGGG,Original,Overlayed,Bad,Kept1,Good), Bad=0,

      % Kept1>5,
     % ((Good=0,!,throw(bad_rot));Good>0),
      NegKept is -Kept1,
      X is APG-(2*APs),
      X<1,
      Score = X + Bad + Good + NegKept,
      nop((print_side_by_side(Original,_,Overlayed),wqs(s(Score,OffsetH,OffsetV,good(Good),bad(Bad),kept(NegKept))))),
      true),L),
  predsort_on(/*pointy_mass*/ arg(1),L,S),S=[WHY|_],
  call(Uncast,Overlayed,OverlayedUncasted).


offset_layover(GGG,OffsetH,OffsetV,GGGG):-
  push_downward(OffsetV,GGG,GG), c_r(push_downward(OffsetH),GG,GGGG).

push_upward(OOV,G,NewBot):- OOV<0,!, OV is -OOV, push_downward(OV,G,NewBot).
push_upward(OV,G,NewBot):- 
  grid_size(G,H,V),
  make_grid(H,OV,Bot),
  append(G,Bot,Grid0),
  length(NewBot,V),
  append(NewTop,NewBot,Grid0),!,
  mapgrid(=(_Slack),NewTop),
  mapgrid(=(black),Bot).
push_upward(0,G,G).

push_downward(OOV,G,NewBot):- OOV<0,!, OV is -OOV, push_upward(OV,G,NewBot).
push_downward(OV,G,NewTop):- OV>0,!,
  grid_size(G,H,V),
  make_grid(H,OV,Top),
  append(Top,G,Grid0),
  length(NewTop,V),
  append(NewTop,NewBot,Grid0),!,  
  mapgrid(=(_Slack),NewBot),
  mapgrid(=(black),Top).
push_downward(0,G,G).

/*
?- into_grid(t('1b60fb0c')>_*_,I),blur_list(B,Mix,I,O),my_maplist(print_side_by_side(I),O).

*/
blur_list(B,Mix,I,S):-
  findall(O-pp(blur_some(B,Mix)),blur_some(B,Mix,I,O),L),
  %print_side_by_side(L),
  predsort_on(/*pointy_mass*/ count_changes(_GGGG,I),L,S).


pointy_mass(P,Mass):- is_pointy(P),!,mass(P,Mass).
pointy_mass(T,Mass):- arg(_,T,E), compound(E), pointy_mass(E,Mass),!.


blur_some(B,Mix,I,O):- 
 %duplicate_term(In,I),
 (var(B)->blur_turn(B);true),once(grid_call_alters(blur(B),I,M)), 
  mapgrid(mix_cellr(Mix),I,M,O).

blur_turn(flipD).
blur_turn(rot90). blur_turn(rot270). 
blur_turn(flipV). blur_turn(flipH). blur_turn(rot180). 
blur_turn(flipDHV). % blur_turn(flipDV). blur_turn(flipDH).
blur_mix(fg). blur_mix(unkC). blur_mix(not_color(Black)):- get_black(Black).

cv(FG,OC):- once(FG==fg;OC==fg;FG==unkC;OC==unkC),!.
cv(FG,OC):- \+ FG \= OC,!.
cv(_,_).

mix_cellr(Mix,I,M,O):- mix_cell(Mix,M,I,O).
mix_cellr(blanks,OC,FG,New):- !, (var(OC)->New=FG;New=OC).
mix_cell(Mix,I,M,O):- var(Mix),!,blur_mix(Mix),mix_cell(Mix,I,M,O).

mix_cell(blur_mixer,OC,FG,FG):- var(OC),!.
mix_cell(blur_mixer,_,FG,FG):- is_fg_color(FG),!.
mix_cell(blur_mixer,OC,_,OC):-!.

mix_cell(fg,OC,FG,FG):- OC==FG,!.
mix_cell(fg,OC,FG,FG):- is_fg_color(FG),(is_real_color(FG); \+ is_fg_color(OC)),!,cv(FG,OC).
mix_cell(fg,FG,OC,FG):- is_fg_color(FG),(is_real_color(FG); \+ is_fg_color(OC)),!,cv(FG,OC).
mix_cell(fg,OC,FG,FG):- is_fg_color(FG),!,cv(FG,OC).
mix_cell(fg,FG,OC,FG):- is_fg_color(FG),!,cv(FG,OC).
mix_cell(fg,FG,OC,FG):- \+ is_color(OC),!,cv(FG,OC).
mix_cell(fg,OC,FG,FG):- \+ is_color(OC),!,cv(FG,OC).
mix_cell(fg,OC,FG,FG):- is_color(FG),!,cv(FG,OC).
mix_cell(fg,FG,OC,FG):- is_color(FG),!,cv(FG,OC).


mix_cell(unkC,OC,FG,FG):- OC==FG,!.
mix_cell(unkC,OC,BG,BG):- is_bg_color(BG),(is_real_color(BG); \+ is_bg_color(OC)),!,cv(BG,OC).
mix_cell(unkC,BG,OC,BG):- is_bg_color(BG),(is_real_color(BG); \+ is_bg_color(OC)),!,cv(BG,OC).
mix_cell(unkC,OC,BG,BG):- is_bg_color(BG),!,cv(BG,OC).
mix_cell(unkC,BG,OC,BG):- is_bg_color(BG),!,cv(BG,OC).
mix_cell(unkC,BG,OC,BG):- \+ is_color(OC),!,cv(BG,OC).
mix_cell(unkC,OC,BG,BG):- \+ is_color(OC),!,cv(BG,OC).
mix_cell(unkC,OC,BG,BG):- is_color(BG),!,cv(BG,OC).
mix_cell(unkC,BG,OC,BG):- is_color(BG),!,cv(BG,OC).

mix_cell(not_color(NC),OC,MC,GC):- NC == OC, NC==MC, decl_not_color(NC,GC).
mix_cell(not_color(_),OC,FG,FG):- OC==FG.
mix_cell(not_color(NC),BC,GC,GC):- BC==NC,!.
mix_cell(not_color(NC),GC,BC,GC):- BC==NC,!.
mix_cell(not_color(_),GC,_,GC).


mix_cell(P,I,M,O):- callable_arity(P,3),call(P,I,M,O),!.
mix_cell(P,I,M,O):- callable_arity(P,2),call(P,I,M),!,O=M.
mix_cell(_,_,_,_).


saliency_quality_of_change(Grid,RepairedResult,Quality):-  
  grid_size(Grid,H,V),OArea is H * V,
  grid_size(RepairedResult,RH,RV),RArea is RH * RV,

  count_changes(_GGGG,Grid,RepairedResult,0,Changes),
  mass(Grid,OMass),!,  
  mass(RepairedResult,RMass),
  nop(RArea == RMass -> OMass==OArea ; true),
  count_variables(RepairedResult,Blanks),
  NegBlanks is -Blanks,
  symmetric_types(RepairedResult,QQ),length(QQ,N),
  NegChange is -rationalize(Changes/OArea),
  DMass is rationalize(RMass/OMass),
  Quality = N+NegBlanks+NegChange+DMass+QQ.

count_variables(RepairedResult,Blanks):- append(RepairedResult,Flat),include(plain_var,Flat,Vars),length(Vars,Blanks).

:- thread_local(remember_learning/3).
learn_best_values(_VarsIn,VarsOut,_Goal):- ground(VarsOut),!. %,call(Goal).
learn_best_values(VarsIn,VarsOut,Goal):- assert(remember_learning(VarsIn,VarsOut,Goal),Cl), undo(erase(Cl)), call(Goal).
reinforce_best_values(ID,Code):- 
  get_current_test(TestID),
  Data = remember_learning(_VarsIn,_VarsOut,_Goal),
  forall(Data,assert_test_property(TestID,rbv,reinforce_best_values,Data)),
  forall(Data,assert_test_property(TestID,rbv,code,Code)),
  u_dmsg(reinforce_best_values(ID,Code)).


 
repair_repeats(UC,VM,Grid,RepairedResult,Code):-
  colors_cc(Grid,[cc(HC,Count)|_]),!,
  repair_repeats0(UC,VM,Grid,RepairedResult,Code), Grid\=@=RepairedResult,
  nop((colors_cc(RepairedResult,ListCounts),
  (member(cc(HC,NewCount),ListCounts)-> NewCount =< Count ; true))).

repair_repeats0(UC,_VM,Grid,RepairedResult,Did):-
  maybe_try_something(Grid,RepairedResult,Did),
  (atom(UC)->sub_var(UC,Did);true).

repair_repeats0(UC,_VM,Grid0,RepairedResult,[blur_least(_,fg)]):-
  \+ is_trim_symmetric(Grid0),
 (is_color(UC)->unbind_color(UC,Grid0,Grid);Grid=Grid0),
  blur_least(_,fg,Grid,RepairedResult),
  nop(is_trim_symmetricD(RepairedResult)).
  


maybe_try_something(Grid,RepairedResultO,Did):- maybe_try_something0(Grid,RepairedResultO,Did).

maybe_try_something0(Grid,RepairedResult,Did):-  maybe_try_something1(Grid,RepairedResult,Did), ground(RepairedResult),!.
maybe_try_something0(Grid,RepairedResultO,Did):- 
  maybe_try_something1(Grid,RepairedResult,Did1),
  maybe_try_something_more(Grid,RepairedResult,Did1,RepairedResultO,Did), ground(RepairedResult),!.
maybe_try_something0(Grid,RepairedResult,Did):-  maybe_try_something1(Grid,RepairedResult,Did).

maybe_try_something_more(_Grid,RepairedResult,Did,RepairedResult,Did):- ground(RepairedResult),!.
maybe_try_something_more(Grid,RepairedResult,Did1,RepairedResultO,[Did1, blur_least(BL,blanks)]):-  fail,
  best_of(Grid,Did1,blur_least(BL,blanks),RepairedResult,RepairedResultO).
maybe_try_something_more(Grid,RepairedResult,Did1,RepairedResultO,[Did1, now_fill_in_blanks(P2)]):-  
  best_of(Grid,Did1,now_fill_in_blanks(P2),RepairedResult,RepairedResultO).


maybe_try_something1(Grid,RepairedResult,Did):-
  peek_target_or_else(Grid,Out), 
    best_of(Out,[],try_something(Did),Grid,RepairedResult).

mprint_grid(wqs(P),RepairedResult):-!, print_grid((P),RepairedResult),!.
mprint_grid((P),RepairedResult):-!, print_grid((P),RepairedResult),!.
mprint_grid(O):- print_grid(O),!.
mprint_grid(O):- arcST,atrace,print_grid(O),!.


best_of(Grid,CodeFirst,P2Did,In,RepairedResult):- must_be(callable,P2Did),
  AnswerFormat = mprint_grid(wqs([Quality,CodeFirst,P2Did]),RepairedResult),
  findall(AnswerFormat,
    (call(P2Did,In,RepairedResult), 
      saliency_quality_of_change(Grid,RepairedResult,Quality)), Trials),
  sort_safe(Trials,STrials),
  format('~N'),dash_chars,
  nop(my_maplist(call,STrials)),
  last(STrials,AnswerFormat).

test_try_something:- test_p2(try_something(_Did)).

try_something(Did,Grid,RepairedResult):- 
  unbind_and_fill_in_blanks(Did,Grid,RepairedResult).

try_something(blur_least(B,Mix),Grid,RepairedResult):-
  \+ is_trim_symmetric(Grid),
  blur_least(B,Mix,Grid,RepairedResult),
  is_trim_symmetric(RepairedResult).

/*
unbind_and_fill_in_blanks([CodeFirst,CodeNext],Grid,RepairedResultO):- !,
  guess_pre_repair_steps(CodeFirst,Grid,RepairedResultO,RepairedResult),
  peek_target_or_else(Grid,Out),
  must_det_ll((CodeNext = now_fill_in_blanks(_))),
  must_det_ll((best_of(Out,CodeFirst,CodeNext,RepairedResult,RepairedResultO))),  
  mass(RepairedResultO,Mass), Mass>0, !.
*/
unbind_and_fill_in_blanks([CodeFirst,CodeNext],Grid,RepairedResultOMaybeHint):- !,
  guess_pre_repair_steps(CodeFirst,Grid,RepairedResultOMaybeHint,RepairedResult),
  (nonvar(CodeNext)->true; (CodeNext=now_fill_in_blanks_good;CodeNext = now_fill_in_blanks(_))),
  peek_target_or_else(Grid,Out),
  ((best_of(Out,CodeFirst,CodeNext,RepairedResult,RepairedResultOMaybeHint))),  
  mass(RepairedResultOMaybeHint,Mass), Mass>0.


unbind_and_fill_in_blanks(CodeFirstCodeNext,Grid,RepairedResultOMaybeHint):-
  unbind_and_fill_in_blanks1(CodeFirstCodeNext,Grid,RepairedResultOMaybeHint)*-> true
 ;unbind_and_fill_in_blanks2(CodeFirstCodeNext,Grid,RepairedResultOMaybeHint).
   
unbind_and_fill_in_blanks1([CodeFirst,CodeNext],Grid,RepairedResultOMaybeHint):- 
  guess_pre_repair_steps(CodeFirst,Grid,RepairedResultOMaybeHint,RepairedResult),
  (nonvar(CodeNext)->true; (CodeNext=now_fill_in_blanks_good;CodeNext = now_fill_in_blanks(_))),
  peek_target_or_else(Grid,Out),
  must_det_ll((best_of(Out,CodeFirst,CodeNext,RepairedResult,RepairedResultOMaybeHint))),  
  mass(RepairedResultOMaybeHint,Mass), Mass>0.
unbind_and_fill_in_blanks2(CodeFirstCodeNext,Grid,RepairedResultOMaybeHint):- %nonvar(CodeFirstCodeNext),
  simple_todolist(CodeFirstCodeNext,Grid,RepairedResultOMaybeHint).

guess_pre_repair_steps(CodeFirst,Grid,OptionalRepairResultHint,RepairedResultMid):- 
   must_det_ll((CodeFirst = unbind_color(UnbindColor))),
   guess_to_unbind(Grid,UnbindColor),
   unbind_color(UnbindColor,Grid,RepairedResultMid),    
   RepairedResultMid\=@=Grid,
   mass(RepairedResultMid,Mass),Mass>0,
   get_black(Black),
   if_t(UnbindColor\==Black, 
       ( if_target(Out, \+ contains_color(UnbindColor,Out)),
         if_t(is_grid(OptionalRepairResultHint), \+ contains_color(UnbindColor,OptionalRepairResultHint)))),
   u_dmsg(CodeFirst).
   

guess_to_unbind(Grid,Color):- nonvar(Color),!,nop(sub_var(Color,Grid)).
guess_to_unbind(Grid,Color):- guess_to_unbind11(Grid,Color)*->true;(!,(guess_to_unbind_fb(Grid,Color);guess_to_unbind12(Grid,Color))).
guess_to_unbind(Grid,Color):- guess_to_unbind_fb(Grid,Color).

guess_to_unbind_fb(_Grid,Color):- Color = black.
guess_to_unbind_fb(_Grid,Color):- !, enum_real_colors(Color),
  Color \= wfg , Color \= '#b399d4', Color \= black.


guess_to_unbind_fb(Grid,Color):- 
  findall(C,(guess_to_unbind_fb_0(Grid,C),\+ plain_var(Color)),ColorS),!,
  list_to_set(ColorS,SColor),member(Color,SColor).
guess_to_unbind_fb_0(Grid,Color):- member(Row,Grid),append(_,[C1,C2,Color|_],Row), C1=@=C2,C2=@=Color.
%guess_to_unbind_fb_0(Grid,Color):- member(Row,Grid),append(_,[Color|_],Row).
guess_to_unbind_fb_0(_Grid,Color):- Color = brown;Color = black.
guess_to_unbind_fb_0(_Grid,Color):- Color = orange;Color = yellow.

ok_used_in(ColorC,Grid,Out):- 
  colors_cc(Grid,Colors),Colors\==[], % reverse(Colors,ColorsR),
  member(cc(Color,N),Colors),N>0, is_real_color(Color), Color \== black,
  if_target(Out, ( \+ contains_color(Color,Out))), 
  if_target(Out, ( v_area(Out,SizeOut),v_area(Grid,SizeIn),(SizeIn>SizeOut -> N is SizeOut ; true))),
  \+ column_or_row(Grid,Color),
  ColorC=Color.

%guess_to_unbind(_Grid,Color):- Color = black.
guess_to_unbind11(Grid,Color):- 
  if_target(Out, FinalColors = Out),
  ignore((var(FinalColors) -> kaggle_arc(_,trn+_,Grid,FinalColors) ; true)),
  colors_cc(Grid,Colors),Colors\==[], % reverse(Colors,ColorsR),
  member(cc(Color,N),Colors),N>0, Color \== black, is_real_color(Color), 
  if_t(nonvar(FinalColors), ( \+ contains_color(Color,FinalColors))), 
  if_target(Out, ( v_area(Out,SizeOut),v_area(Grid,SizeIn),(SizeIn>SizeOut -> N is SizeOut ; true))),
  \+ column_or_row(Grid,Color).
%guess_to_unbind12(_Grid,Color):- Color = blue.
guess_to_unbind12(Grid,Color):- colors_cc(Grid,Colors),member(cc(Color,N),Colors),N>0, Color \== black, is_real_color(Color).
/*
guess_to_unbind(Grid,Color):- !, fail, select(Row1,Grid,Rows),member(Row2,Rows),
  append(_,[C1,C2],Row1),C1==C2,
  append(_,[C3,C4],Row2),C3==C4,
  get_black(Black),
  C1=C4,C1\==Black,Color=C1.
*/
%after_unbind(P2,RepairedResult,RepairedResultO):- now_fill_in_blanks(P2,RepairedResult,RepairedResultO).


now_fill_in_blanks_good(RepairedResult,RepairedResultO):- rotP_L_safe(List),
  now_fill_in_blanks_good(List,RepairedResult,RepairedResultO).

now_fill_in_blanks_good([],RepairedResult,RepairedResult):-!.
now_fill_in_blanks_good(_,RepairedResult,RepairedResultO):- ground(RepairedResult),!,RepairedResultO=RepairedResult.
now_fill_in_blanks_good([P2|List],RepairedResult,RepairedResultO):- !,
  (now_fill_in_blanks(P2,RepairedResult,RepairedResultM)->true;RepairedResult=RepairedResultM),
  now_fill_in_blanks_good(List,RepairedResultM,RepairedResultO).

now_fill_in_blanks(P2,RepairedResult,RepairedResultO):- ground(RepairedResult),!,RepairedResultO=RepairedResult,ignore(P2=_).
now_fill_in_blanks(P2,RepairedResult,RepairedResultO):-   
  copy_term(RepairedResult,UnRepairedResult),
  select_p2_rot_safe(P2,RepairedResult,Orig),
  once(fill_in_blanks(P2,Orig,900,RepairedResult)),
  RepairedResult \== UnRepairedResult,
  RepairedResultO = RepairedResult.

select_p2_rot_safe(sameR,RepairedResult,RepairedResult).
select_p2_rot_safe(P2,RepairedResult,Orig):- select_p2_rot(P2,RepairedResult,Orig).

select_p2_rot(P2,RepairedResult,Orig):- rot_orig(P2,RepairedResult,Orig).
select_p2_rot(P2,RepairedResult,Orig):- fail,
  ((findall(P2-Orig,(rot_orig(P2,RepairedResult,Orig),\+ RepairedResult\=Orig),List),List\==[])-> true;
    (findall(P2-Orig,(rot_orig(P2,RepairedResult,Orig)),List))),
  my_maplist(arg(2),List,Origs),list_to_set(Origs,Set),my_maplist(copy_term,Set,SetC),
  member(Orig,SetC),
  copy_term(Orig,OrigC),
  once(member(P2-OrigC,List)).


/*

  ignore((\+ ground(RepairedResult),rotP2(P2),P2\==P,call(P2,RepairedResult,Orig2), 
     fill_in_blanks(P2,Orig2,900,RepairedResult))),
  %ground(RepairedResult),
  %(ground(Grid)->ground(RepairedResult);\+ground(RepairedResult)),
  mass_ok(Grid,RepairedResult).
*/

rot_orig_trials(RepairedResult,Orig):- rot_orig(_P,RepairedResult,Orig).

rot_orig(P2,RepairedResult,Orig):- (var(P2)->rotP3(P2);true),call(P2,RepairedResult,Orig).

rotP_L(P_L):- findall(P2,rotP(P2),P_L).
rotP(sameR).
rotP(P2):-rotP0(P2).
rotP(blur_least(_,fg)).
rotP0(P2):-rotP1(P2).
rotP0(flipD).
rotP0(rollD).

rotP1(P2):- rotP2(P2). %,P2\==rot90.
rotP1(flipV).
rotP1(flipH).

rotP2(rot90).
rotP2(rot180).
rotP2(rot270).

rotP3(blur_least(_,fg)).
rotP3(P2):- rotP(P2).
%rotP3(flipDV). 
rotP3(flipDHV). rotP3(flipDH). 

no_conflicts(RepairedResult,RR):- count_changes(_,RepairedResult,RR,Conflicts,Keep,WillChange),!,Conflicts=0,Keep>0,nop(WillChange>0).

rr_rot(flipD,RepairedResult,RR):- flipD(RepairedResult,RR),RR \=@= RepairedResult,no_conflicts(RepairedResult,RR).
rr_rot(P2,RepairedResult,RR):- rotP1(P2),once(call(P2,RepairedResult,RR)),RR \=@= RepairedResult,no_conflicts(RepairedResult,RR).

select_2_lines(Row1,Row2,RepairedResult):- 
  append(_,[Row1,Row2|_],RepairedResult).


change_checker(RepairedResult, \=@=(RCopy) ):- !, copy_term(RepairedResult,RCopy).

change_checker(RepairedResult, change_check(RRVs) ):- !,
  term_variables(RepairedResult,RRVs).
change_check(RRVs,RepairedResult):-
  term_variables(RepairedResult,RRVs2),
  RRVs2\=@=RRVs, length(RRVs,RRVsL), length(RRVs2,RRVs2L), RRVs2L<RRVsL.



fill_in_blanks(P2,Orig,Limit,RepairedResult):- 
  fill_in_blanks_rr(Limit,RepairedResult),
  fill_in_blanks1(P2,Orig,Limit,RepairedResult),
  rot90(RepairedResult,RR90),
  fill_in_blanks1(P2,Orig,Limit,RR90),
  fill_in_blanks_rr(Limit,RR90).


fill_in_blanks_rr(_Limit,RepairedResult):- ground(RepairedResult),!.

fill_in_blanks_rr(Limit,RepairedResult):- Limit>700,
  change_checker(RepairedResult,P1),
  fill_in_some_blanks_rr(Limit,RepairedResult), call(P1,RepairedResult),!,
  Limit2 is Limit-1, fill_in_blanks_rr(Limit2,RepairedResult).
fill_in_blanks_rr(_Limit,_).


fill_in_blanks1(_P2,_Orig,_Limit,RepairedResult):- ground(RepairedResult),!.
fill_in_blanks1(P2,Orig,Limit,RepairedResult):- Limit>700,
  change_checker(RepairedResult,P1),
  fill_in_some_blanks_orig(Orig,Limit,RepairedResult), call(P1,RepairedResult),!,
  Limit2 is Limit-1,
  fill_in_blanks1(P2,Orig,Limit2,RepairedResult).
/*
fill_in_blanks1(P2,Orig,Limit,RepairedResult):- fail, Limit>0,
  rotP_L(P2_List),next_in_list(P2,P2_List,NextP2), 
  call(NextP2,RepairedResult,RepairedResult2),
  call(NextP2,Orig,Orig2), \+ my_maplist(single_color,Orig2),!,
  Limit2 is Limit-1,
  fill_in_blanks1(NextP2,Orig2,Limit2,RepairedResult2).
*/
fill_in_blanks1(P2,Orig,Limit,RepairedResult):- Limit>700,
  rotP_L_safe(P2_List),append(_,[P2,NextP2|_],P2_List),
  call(NextP2,Orig,NextOrig), \+ my_maplist(single_color,NextOrig),!,
  Limit2 is Limit-1,
  fill_in_blanks1(NextP2,NextOrig,Limit2,RepairedResult).
fill_in_blanks1(_P2,_Orig,_Limit,_).

fill_in_some_blanks_orig(Orig,Limit,RepairedResult):-  Limit>0,
  member(Repair,Orig),
  copy_term(Repair,Repairing),
  member(From,RepairedResult),
  From\=@=Repair,  
  From=Repair, 
  \+ single_color(From),
  only_for_debug((nl,writeq(Repairing-->Repair),nl,nl)).

fill_in_some_blanks_orig(Orig,Limit,RepairedResult):-  Limit>850,
  Orig \=@= RepairedResult, Orig = RepairedResult.

fill_in_some_blanks_orig(Orig,Limit,RepairedResult):-  Limit>850,
  length(Repair,2),
  append([_,Repair,Right],RepairedResult), \+ (ground(Repair)), \+ my_maplist(plain_var,Repair),
  append([_,From,FRight],Orig), \+ my_maplist(plain_var,Orig),
  From\=@=Repair,
  only_for_debug(copy_term(Repair,Repairing)),
  From=Repair, \+ my_maplist(single_color,From),
  maplist_until1(=,FRight,Right),
  only_for_debug((nl,writeq(Repairing-->Repair),nl,nl)).

%rotP_L_safe(P2_List_Safe):- findall(P2,rotP3(P2),P2_List_Safe).
rotP_L_safe([sameR,flipV,flipDHV,rollD,rot180,rot90]):-!.
rotP_L_safe(P2_List_Safe):- rotP_L(P2_List),include(is_safe_rot,P2_List,P2_List_Safe).
is_safe_rot(Atom):- atom(Atom).

append_safe(A,B):- append(A,B).

one_var_only(A,B,C):- var(A),!,nonvar(B),nonvar(C).
one_var_only(A,B,C):- var(B),!,nonvar(A),nonvar(C).
one_var_only(A,B,C):- var(C),!,nonvar(B),nonvar(A).

append_safe([H|T], L, [H|R]) :- one_var_only(T,L,R), append_safe(T, L, R).
append_safe([], L, L):-!.

%73251a56
fill_in_some_blanks_rr(Limit,RepairedResult):- Limit>897, 
  %term_variables(RepairedResult,Vs),
  subst_colors_with_vars(Colors,Vars,RepairedResult,RRVars),
  get_current_test(TestID),
  %kaggle_arc(TestID,trn+_,_,RRVars),
  kaggle_arc(TestID,trn+Num,_,RRVarsO),
  (current_test_example(TestID,ExampleNum)->(ExampleNum\==trn+Num);true),
  RRVarsO=RRVars,
  Colors=Vars.

%484b58aa
fill_in_some_blanks_rr(Limit,RepairedResult):- Limit>790,
  %rr_rot(RepairedResult,RR), 
  member(E,RepairedResult), \+ ground(E),
  member(H,RepairedResult), ground(H),
  E=H,  ground(E),!.


% f9d67f8b
fill_in_some_blanks_rr(Limit,RepairedResult):- Limit>890,
  rot90(RepairedResult,RR90),flipH(RR90,RR90H),
  %rr_rot(RepairedResult,RR),  
  %rot270(RepairedResult,RR90H),
  member(Row,RepairedResult),\+ ground(Row),
  append_safe([L,[C1,C2,C3],Vars,[C4,C5,C6],_],Row),my_maplist(var,Vars),
  length(L,LL), length(LLL,LL),
  copy_term(Row,Copy),
  append_safe([LLL,[C1,C2,C3],Vars,[C4,C5,C6],_],SRow),
  member(SRow,RR90H),
  Row\=@=Copy.


fill_in_some_blanks_rr(Limit,RepairedResult):-  Limit>870, G=RepairedResult,
  arg(_,v([],[_],[_,_],[_,_,_]),L),arg(_,v([],[_],[_,_],[_,_,_]),R),append_safe([L,GG,R],G),
  G\==GG,
  flipV(GG,FGG),
  GG\=@=FGG,
  GG=FGG, \+ my_maplist(single_color,GG),!.

fill_in_some_blanks_rr(Limit,RepairedResult):-  Limit>850,
  Orig=RepairedResult,
  length(Repair,2),
  append_safe([_,Repair,Right],RepairedResult), \+ (ground(Repair)), \+ my_maplist(plain_var,Repair),
  append_safe([_,From,FRight],Orig), \+ my_maplist(plain_var,Orig),
  From\=@=Repair,
  only_for_debug(copy_term(Repair,Repairing)),
  From=Repair, \+ my_maplist(single_color,From),
  maplist_until1(=,FRight,Right),
  only_for_debug((nl,writeq(Repairing-->Repair),nl,nl)).

% 1e97544e
fill_in_some_blanks_rr(Limit,RepairedResult):- Limit>880, 
   copy_term(RepairedResult,CRepairedResult),
   append_safe(_,[RRow1,RRow2|_],RepairedResult),once( \+ ground(RRow1); \+ ground(RRow2)),
   ((reverse(RRow1,Row1),reverse(RRow2,Row2)); (RRow1=Row1,RRow2=Row2)),
   (append_safe(Left,[C1,C2,NC|Right],Row1),C1==C2,C2\==NC, append_safe(Left,[C1,NC,NC|Right],Row2)),
   CRepairedResult \=@= RepairedResult.


fill_in_some_blanks_rr2(Limit,RepairedResult):- fail, Limit>890, 
  %rr_rot(RepairedResult,RR), 
  rr_rot(_P2A,RepairedResult,RR),
  RR \=@= RepairedResult, RR=RepairedResult. 

%484b58aa
fill_in_some_blanks_rr2(Limit,RepairedResult):- Limit>790, %fail,
  %rr_rot(RepairedResult,RR), 
  member(E,RepairedResult), \+ ground(E),
  member(H,RepairedResult), ground(H),
  E=H. % ,  ground(E).

% f9d67f8b
fill_in_some_blanks_rr2(Limit,RepairedResult):- Limit>890, 
  rot90(RepairedResult,RR90),flipH(RR90,RR90H),
  %rr_rot(RepairedResult,RR),  
  %rot270(RepairedResult,RR90H),
  member(Row,RepairedResult),\+ ground(Row),
  append([L,[C1,C2,C3],Vars,[C4,C5,C6],_],Row),my_maplist(var,Vars),
  length(L,LL), length(LLL,LL),
  copy_term(Row,Copy),
  append([LLL,[C1,C2,C3],Vars,[C4,C5,C6],_],SRow),
  member(SRow,RR90H),
  Row\=@=Copy.

fill_in_some_blanks_rr2(Limit,RepairedResult):-  Limit>870, G=RepairedResult,
  arg(_,v([],[_],[_,_],[_,_,_]),L),arg(_,v([],[_],[_,_],[_,_,_]),R),append([L,GG,R],G),
  G\==GG,
  flipV(GG,FGG),
  GG\=@=FGG,
  GG=FGG, \+ my_maplist(single_color,GG).

% 1e97544e
fill_in_some_blanks_rr2(Limit,RepairedResult):- Limit>880,    
   append(_,[RRow1,RRow2|_],RepairedResult),once( \+ ground(RRow1); \+ ground(RRow2)),
   ((reverse(RRow1,Row1),reverse(RRow2,Row2)); (RRow1=Row1,RRow2=Row2)),
   (append(Left,[C1,C2,NC|Right],Row1),C1==C2,C2\==NC, append(Left,[C1,NC,NC|Right],Row2)).


single_color(List):- is_list(List), \+ \+ (member(C,List), \+ is_list(C)), !,my_maplist(=(C),List),!.
single_color(List):- is_list(List), \+ \+ (member(C,List), is_list(C)), !,my_maplist(single_color,C),!.
single_color(Repair):- single_color(_,Repair).
single_color(C,List):- is_list(List),!,my_maplist(single_color(C),List).
single_color(C,V):- plain_var(V),!,C=V.
single_color(C,V):- attvar(V), !, \+ V \=  C.
single_color(C,C). 



only_for_debug(_):-!.
only_for_debug(G):- call(G).

is_fti_step(fourway).
fourway(VM):-  
  VM.option_repair_grid == true,
  maybe_set_vm(VM),
  VM.h > 12, VM.v > 12,
  repair_in_vm(repair_fourway,VM),!.

repair_fourway(VM,Grid,RepairedResult,Steps):- fail,  
  maybe_set_vm(VM), 
  %unique_colors(Grid,Colors), member(Color,Colors),
  %unbind_color(Color,Grid,UGrid),
  repair_2x2([],Steps,Grid,RepairedResult).

repair_fourway(VM,Grid,RepairedResult,Steps):- 
  maybe_set_vm(VM),
  VM.option_repair_grid == true,
  once((colors_cc(Grid,Colors),length(Colors,CL),CL>3)),
  largest_first(VM.objs,Ordered),  
  repair_2x2(Ordered,Steps,Grid,RepairedResult),!.

repair_2x2(Ordered,Steps,Grid,RepairedResult):- 
  mirror_xy(CXL,CYL,CX,CY,SXQ2,SYQ2,EXQ2,EYQ2,SXCC,SYCC,EXCC,EYCC,SXQ4,SYQ4,EXQ4,EYQ4,Grid),
  writeln(mirror_xy(CXL,CYL,CX,CY,SXQ2,SYQ2,EXQ2,EYQ2,SXCC,SYCC,EXCC,EYCC,SXQ4,SYQ4,EXQ4,EYQ4)),

  clip_rot_patterns(Q1R,Q2R,Q3R,Q4R,PatternName),
  once((must_not_error((
  clip_and_rot(SXQ2,SYQ2,EXQ2,EYQ2,Grid,Q2R,Q2),
  clip_and_rot(SXQ4,SYQ4,EXQ4,EYQ4,Grid,Q4R,Q4),
  clip_and_rot(SXQ4,SYQ2,EXQ4,EYQ2,Grid,Q1R,Q1),
  clip_and_rot(SXQ2,SYQ4,EXQ2,EYQ4,Grid,Q3R,Q3),
  nop(print_quadrants(orange,Q1,Q2,Q3,Q4)),

  XLQ2 is EXQ2-SXQ2, YLQ2 is EYQ2-SYQ2,
  XLQ4 is EXQ4-SXQ4, YLQ4 is EYQ4-SYQ4,
  max_min(XLQ2,XLQ4,XL,_),
  max_min(YLQ2,YLQ4,YL,_),
  Q2XPad0 is XL - XLQ2, Q2YPad0 is YL - YLQ2,
  Q4XPad0 is XL - XLQ4, Q4YPad0 is YL - YLQ4,
  max_min(Q2XPad0,0,Q2XPad,_),
  max_min(Q2YPad0,0,Q2YPad,_),
  max_min(Q4XPad0,0,Q4XPad,_),
  max_min(Q4YPad0,0,Q4YPad,_),
  pad_left(Q2XPad,Grid ,Grid0),
  pad_right(Q4XPad,Grid0,Grid1),
  pad_top(Q2YPad,Grid1,Grid2),
  pad_bottem(Q4YPad,Grid2,Grid3),

  H = EXQ4, V = EYQ4,
  NewSX is 1 + Q2XPad,
  NewSY is 1 + Q2YPad,
  NewEX is H + Q2XPad,
  NewEY is V + Q2YPad,

  Grid3 = Grid4,
  G3 = Grid4, 
  
  % Q1SE = [SXQ4,SYQ2,EXQ4,EYQ2], Q2SE = [SXQ2,SYQ2,EXQ2,EYQ2], Q3SE = [SXQ2,SYQ4,EXQ2,EYQ4], Q4SE = [SXQ4,SYQ4,EXQ4,EYQ4],
 % unbind_color(brown,Grid3,Grid4),
 /*
  NewSYQ2 is SYQ2,
  NewSYQ4 is SYQ4+Q2YPad,
  NewEYQ4 is EYQ4+Q2YPad+Q4YPad,
  NewSXQ2 is SXQ2,
  NewSXQ4 is SXQ4+Q2XPad,
  NewEXQ4 is EXQ4+Q2XPad+Q4XPad,
  NewEXQ2 is EXQ2+Q2XPad,
  NewEYQ2 is EYQ2+Q2YPad,
  clip_and_rot(NewSXQ2,NewSYQ2,NewEXQ2,NewEYQ2,G3,Q2R,NewQ2),
  clip_and_rot(NewSXQ4,NewSYQ4,NewEXQ4,NewEYQ4,G3,Q4R,NewQ4),
  clip_and_rot(NewSXQ4,NewSYQ2,NewEXQ4,NewEYQ2,G3,Q1R,NewQ1),
  clip_and_rot(NewSXQ2,NewSYQ4,NewEXQ2,NewEYQ4,G3,Q3R,NewQ3),
  print_quadrants(yellow,NewQ1,NewQ2,NewQ3,NewQ4),

  my_maplist(mapgrid(sometimes_assume(=)),[NewQ1,NewQ2,NewQ3],[NewQ4,NewQ3,NewQ2]),
  % has now been updated by assumptions
  print_quadrants(blue,NewQ1,NewQ2,NewQ3,NewQ4),

  */

  %print_grid(full_grid(H,V),Grid4),

  findall(unbind_color(Cs),enum_colors(Cs),CCs),
  my_maplist(append_term(remObjects),Ordered,RemoveObjs),
  append(CCs,RemoveObjs,RemovalTrials))))),!,

  trial_removal([sameR|RemovalTrials],G3,RemovalTrialUsed,GridOS),
  %trial_removal([unbind_color(brown)],G3,RemovalTrialUsed,GridO))),
  try_whole_grid_xforms(GridOS),
  =(GridOS,GridO),
  mass_ok(Grid,GridO),
  verify_symmetry(Test,GridO),

  maybe_set_vm(VM),
  gset(VM.option_repair_grid) = false,
  print_grid(trial_removal_used(RemovalTrialUsed),GridO),
  %nop(retain_vars(VM,Ordered,Grid,NewIndiv4s,KeepNewState,RepairedResult,NewSYQ2,NewEYQ2,NewSYQ4,NewEYQ4,NewSXQ2,NewEXQ2,NewSXQ4,NewEXQ4)),

  set_vm_obj(full_grid,[iz(media(image)),iz(flag(always_keep))],GridO),
  clip(NewSX,NewSY,NewEX,NewEY,GridO,RepairedResultM),
  

  

  gset(VM.lo_points) = [],
  OriginalPoints = VM.start_points,
  include(was_color(Cs),OriginalPoints,NeededChanged),  
  %gset(VM.neededChanged)=NeededChanged,make_indiv_object(VM,[iz(neededChanged),iz(flag(hidden))],NeededChanged,ColorObj),!, addObjects(VM,ColorObj),
  set_vm_obj(neededChanged,[iz(media(image))],NeededChanged),  

  print_grid(clip_to_previous_area((NewSX,NewSY)-(NewEX,NewEY)),RepairedResultM),
  must_not_error((RepairedResultM = RepairedResult,
  Steps = clip_pattern([PatternName,trial_removal_used(RemovalTrialUsed),try_whole_grid_xforms,verify_symmetry(Test),clip_to_previous_area]))),
  !.

glean_patterns_hook(Steps,G,GridO):- make_symmetrical_grid(Steps,G,GridO).


was_color(ColorMatch,CPoint):- only_color_data(CPoint,Color2), unify_color(ColorMatch,Color2).
was_color_or_unbound(_,CPoint):- var(CPoint),!.
was_color_or_unbound(ColorMatch,CPoint):- only_color_data(CPoint,Color2), unify_color(ColorMatch,Color2).

unify_color(ColorMatch,Color2):- plain_var(Color2),!,ColorMatch==Color2.
unify_color(ColorMatch,Color2):- plain_var(ColorMatch),!,ColorMatch==Color2.
unify_color(ColorMatch,Color2):- \+ ColorMatch \= Color2.

make_symmetrical_grid(G,GridO):- make_symmetrical_grid(_,G,GridO).

make_symmetrical_grid(Steps,G,GridO):- trim_to_rect(G,Grid1),G\==Grid1,make_symmetrical_grid(Steps,Grid1,GridO).
make_symmetrical_grid(Steps,G,GridO):- 
 must_not_error((
  Steps = [P,pull(BGC),Flip,test_used(Test)],
  mass(G,OrignalMass),
  MaxMass is OrignalMass * 4,
  most_d_colors(G,Colors,GC),!,
  g_or_gc(G,GC,GG00),
  %GG00 = GC,
    member(BGC,Colors),  
  free_bg(BGC,GG00,GG),
  member(Flip,[rot270,rot90,rot180,flipV,flipH]),
  make_flippable_h(flipSome(P),GG,HS),
  make_able_v(Flip,HS,Grid9),
    once((unfree_bg(BGC,Grid9,Grid99),
    uneib(Grid99,GridO),
    mapgrid(blackFree,GridO))),
    is_able_v(Test,GridO),
    mass(GridO,NewMass),NewMass =< MaxMass)).
/*
% detect_supergrid(Grid,SGrid):- ...
line Separated
Symmetry sorta happening
Individuals by colormass % t(b230c067)
all_is_one
supergrid_is_point_dotted % '94133066'
supergrid_is_output_size % t('8d5021e8') 
supergrid_is_all % t('6150a2bd')
suprgrid_is_dots_same_count % t(ff28f65a)
supergrid_input_1 % v(cad67732)*  
supergrid_input_1 output=1x1
superinput_keypad= souput=kewypad
superinput_columns 
superinput_rows
superinput_swashica
superinput_starts_at_input_loc
superinput_blob
*/



test_show_patterns:- clsmake, ((findall(_,(rp_test(G),must_not_error(show_patterns(G))),L))),
  length(L,N),writeln(test_show_patterns=N).

 % time((forall(arc_grid(G),test_show_patterns(G)))).

test_show_patterns(G):- show_patterns(G),!.

% 6cdd2623

% show_patterns(VM):- Grid = VM.grid, show_patterns(VM,vm.h,VM.v,Grid).
append_nth1([], 0, L, L).
append_nth1([H|T], N2, L, [H|R]) :-
    append_nth1(T, N, L, R),
    N2 is N+1.

gph(GH,_GV,Steps,G,GG):- 
 get_black(Black),
  numlist(3,GH,Row),
  D = [Row],
  dif(Same,Black),
  make_list(Same,GH,ColorLine),
  my_maplist(dif(ColorLine),[E1,E2,E3,E4]),
  append([L,[E1,ColorLine,E2],Stuff1,[E3,ColorLine,E4],Stuff2,Start],G), % member(E,Stuff1),member(E,Stuff2),
  append([L,[E1,D,ColorLine,D,E2],Stuff1,[E3,D,ColorLine,D,E4],Stuff2,Start],GG),
  length(L,L1),
  length(Stuff1,L2),
  length(Stuff2,L3),
  Steps = first(1,Same,L1,L2,L3).

gph(GH,_GV,Steps,G,GG):- 
  numlist(2,GH,Row),
  get_black(Black),
  D = [Row],
  dif(Same,Black),
  make_list(Same,GH,ColorLine),
  my_maplist(dif(ColorLine),[E1,E2,E3,E4]),
  append([L,[E1,ColorLine,ColorLine,E2],Stuff1,[E3,ColorLine,ColorLine,E4],Stuff2,Start],G), % member(E,Stuff1),member(E,Stuff2),
  append([L,[E1,D,ColorLine,ColorLine,D,E2],Stuff1,[E3,D,ColorLine,ColorLine,D,E4],Stuff2,Start],GG),
  length(L,L1),
  length(Stuff1,L2),
  length(Stuff2,L3),
  Steps = first(2,Same,L1,L2,L3).

gph(GH,GV,Steps,G,GG):- 
  bg_last(Same),
  make_list(Same,GH,ColorLine),
  Start = [ColorLine,ColorLine|_],
  append(RL,Start,G),
  show_patterns4(GH,GV,Steps,RL,Start,GG),!.
gph(GH,GV,Steps,G,GG):- 
  bg_last(Same),
  make_list(Same,GH,ColorLine),
  Start = [ColorLine|_],
  append(RL,Start,G),
  show_patterns4(GH,GV,Steps,RL,Start,GG),!.

gph(GH,GV,Steps,G,GG):-
  grid_size(G,GH,GV),
  numlist(1,GH,Row),
  D = [Row],
  bg_last(Same),
  make_list(Same,GH,Blackline),
  V is floor(GV/7), 
  Vh is floor(GV/2), 
  length(L,V),!,
  between(0,V,AL),
  LL is V-AL,
  length(A,LL),
  dif(NAB,Blackline),
  A = [NAB,_|_],
  B = [BE],%[_|_],
  C = [_,_|_],
  my_maplist(dif(BE),A),  
 % my_maplist(dif(Blackline),A),
  append([L,A,B,C,A,B,R],G),
  member(E,A),member(E,C),
  dif(A,C),
  length(C,CL), CL<Vh,
  append([L,D,A,D,B,D,C,D,A,D,B,D,R],GG),!,
  
  Steps = [repeats(V,LL,1,CL)].

gph(GH,GV,Steps,G,GG):- fail,
  grid_size(G,GH,GV),
  RL = [_|_],
  append(RL,Start,G),
  %V is floor(GV/7), 
  %length(RL,V),!,
  show_patterns4(GH,GV,Steps,RL,Start,GG).

bg_last(Same):- get_black(Black), (dif(Same,Black);Same=Black).

show_patterns4(GH,GV,Steps,L,G,GG):- 
  grid_size(G,GH,GV),
  D = [Row],
  bg_last(Same),
  make_list(Same,GH,Blackline),
  numlist(1,GH,Row),
  length(L,V),!,
  between(0,V,AL),
  LL is V-AL,
  length(A,LL),
  dif(NAB,Blackline),
  A = [NAB,_|_],
  B = [BE],%[_|_],
  C = [_,_|_],
  my_maplist(dif(BE),A),  
 % my_maplist(dif(ColorLine),A),
  append([L,A,B,C,A,B,R],G),
  member(E,A),member(E,C),
%  dif(A,C),
  Vh is floor(GV/2), 
  length(C,CL), CL<Vh,
  append([L,D,A,D,B,D,C,D,A,D,B,D,R],GG),!,
  
  Steps = [repeats(V,LL,1,CL)].


glean_patterns3_HV(Steps,G,GG):- grid_size(G,GH,GV),gph(GH,GV,Steps,G,GG).

glean_patterns2(Steps,G,GG):- glean_patterns3_HV(Steps,G,GG),!.
glean_patterns2([rot90|Steps],G,GG):- c_r(glean_patterns3_HV(Steps),G,GG).

glean_patterns1(Steps,G,GG):- glean_patterns2(Steps,G,GG),!.
glean_patterns1([flipH|Steps],G,GG):- flipH(G,G90),glean_patterns2(Steps,G90,GG90),flipH(GG90,GG),!.
glean_patterns1([diaroll(2)|Steps],G,GG):- roll_d(2,G,G90),glean_patterns2(Steps,G90,GG90),roll_d(2,GG90,GG),!.

gph(Steps,G,GG):- glean_patterns1(Steps,G,GG),!.
gph([diaroll(1)|Steps],G,GG):- roll_d(1,G,G90),glean_patterns1(Steps,G90,GG90),roll_d(1,GG90,GG).
gph([rot90|Steps],G,GG):- c_r(glean_patterns1(Steps),G,GG),!.
gph([flipV|Steps],G,GG):- flipV(G,G90),glean_patterns1(Steps,G90,GG90),flipV(GG90,GG),!.
gph(_GH,_GV,Steps,G,GG):- repair_2x2([],Steps,G,GG),!.

whole_row(N,Color,Grid):- nth1(N,Grid,Row),my_maplist(=(Color),Row).

roll_d(N,G,GG):- maplist_n(N,roll_h,G,GGR),!,reverse(GGR,GG).
roll_h(N,G,GG):- length(LL,N),append(LL,RR,G),append(RR,LL,GG).

glean_patterns_hook(Steps,G,GG):- gph(Steps,G,GG).

ping_indiv_grid(show_patterns).

show_patterns(G):-
  gph(Steps,G,GG),
  print_side_by_side(G,GG),!,
  addProgramStep(_,Steps).
%show_patterns(G):- !, roll_d(G,GGG),!,roll_dr(GGG,GG),!,
%  print_side_by_side(GG,G),!.

show_patterns(G):-
  grid_size(G,GH,GV),
  list_to_set(G,UR),
  member(E,UR),
  %length(UR,V),
  V is floor(GV/2), 
  numlist(1,GH,Row),
  D = [Row],
  %print_grid(ur,G),
  length(Top,V),
  append(Top,Bottem,G),
  append_nth1(V2,V2C,[E|V3],Bottem),
  append_nth1(V0,V0C,[E|V1],Top),

  append_nth1(V10,_V10C,[E1|V11],V1),
  append_nth1(V20,_V20C,[E1|V21],V2),

  append([V0,D,V10,D,V11,D,V20,D,V21,V,V3],NG),
  print_grid(in,G),
  print_grid(ng(V0C,V,V2C),NG),
  nop((print_grid(D,V0),
  print_grid(v1,V1),
  print_grid(v2,V2),
  print_grid(v3,V3))),!.




/*

  


  nth1(N,Grid,E),nth1(N2,Grid,E),

   (u_dmsg(time_limit_exceeded),fail))),
  %catch(find_and_use_pattern_gen(Grid,Image9x9),E, (u_dmsg(E),fail)),
  %rtrace(find_and_use_pattern_gen(Grid,Image9x9)),
  must_not_error((
  flatten(Image9x9,Flat),
  include(nonvar_or_ci,Flat,Grids),
  maybe_repair_image(VM,Ordered,Grids,NewIndiv4s,KeepNewState,RepairedResult))).
*/

consensus(ColorAdvice,GridS,H,V,VGrid):-
 forall(between(1,V,Y),
  forall(between(1,H,X),
   ignore(consensus1(ColorAdvice,GridS,X,Y,VGrid)))).
consensus1(ColorAdvice,GridS,X,Y,VGrid):- 
  findall(C,(member(G,GridS),get_color_at(X,Y,G,C)),L),
  consensus22(_How,ColorAdvice,L,R),
  ignore((% nonvar_or_ci(R),is_color(R),
  nb_set_local_point(X,Y,R,VGrid))),!.

nb_set_local_point(H,V,C,Grid):- assertion(is_grid(Grid)),!, 
  ignore((nth1(V,Grid,Row),(Row==[]-> true;nb_set_nth1(H,Row,C)))).


consensus22(Steps,ColorAdvice,L,C):- 
  my_partition(plain_var,L,Vars,Rest0),
  my_partition(=@=(ColorAdvice),Rest0,_,Rest),
  my_partition(is_bg_color,Rest,BGC,Rest1),
  my_partition(is_black,Rest1,Blk,Rest2),
  my_partition(is_fg_color,Rest2,Color,Other),!,
  consensus2(Steps,Vars,BGC,Blk,Color,Other,C),!.

%consensus2(Steps,Vars,BG,Blk,Color,Other,C).

is_four([A,B,C,D],A):- A=@=B,A=@=C,A=@=D,!.
is_four([A,B,C],A):- A=@=B,A=@=C,!.
%is_four([A,B,C,D],A):- A=@=B,C\=@=D,!.
%is_four([C,C],C).
:- style_check(-singleton).
consensus2(Steps,Vars,BG,Blk,Color,Other,C):- is_four(Color,C),!.
consensus2(Steps,Vars,BG,Blk,Color,Other,C):- is_four(BG,C),!.
consensus2(Steps,Vars,BG,Blk,Color,Other,C):- is_four(Other,C),!.
consensus2(Steps,Vars,BG,Blk,Color,Other,C):- is_four(Blk,C),!.
consensus2(Steps,Vars,BG,Blk,Color,Other,C):- is_four(Vars,C),!.
consensus2(Steps,Vars,BG,Blk,[C|Color],Other,C).
consensus2(Steps,Vars,BG,[C|Blk],Color,Other,C).
consensus2(Steps,Vars,[C|BG],Blk,Color,Other,C).
:- style_check(+singleton).

maybe_repair_image(VM,Ordered,Objects,CorrectObjects,KeepNewState,RepairedResult):- 
  my_maplist(object_grid,Objects,AllGrids),
  AllGrids=Grids , %once(predsort_on(colored_pixel_count,AllGrids,Grids);sort_safe(AllGrids,Grids)),
  (all_rows_can_align(Grids)
    -> (KeepNewState=[], format('~N'),dmsg('Must already be perfect...'),CorrectObjects = Objects);
    repair_patterned_images(VM,Ordered,Objects,Grids,CorrectObjects,KeepNewState,RepairedResult)).

all_rows_can_align([Big|Rest]):- my_maplist(rows_can_align(Big),Rest).
rows_can_align(A,B):- \+ A\=B.
rows_can_align([],_):-!. % shorter media(image) fragment
rows_can_align(_,[]):-!. % taller media(image) fragment
rows_can_align([Row1|Rest1],[Row2|Rest2]):- 
 rows_can_align(Row1,Row2),!,
 rows_can_align(Rest1,Rest2).

all_rows_will_align([Big|Rest]):- my_maplist(rows_will_align(Big),Rest).
rows_will_align(A,_):- A == [], !. % shorter media(image) fragment
rows_will_align(_,B):- B == [], !. % taller media(image) fragment
rows_will_align([Row1|Rest1],B):- is_list(B),!, B=[Row2|Rest2],
 rows_will_align(Row1,Row2),!,
 rows_will_align(Rest1,Rest2).
rows_will_align(A,B):- A=B,!.

max_hv(Objects,H,V):- 
  findall(size2D(H,V),(member(O,Objects),vis2D(O,H,V)),Sizes),
  sort_safe(Sizes,SizesS),
  reverse(SizesS,[size2D(H,V)|_]),!.

makes_prefect_result(_VM,H,V,ColorAdvice,Grids,RepairedResult):-  
  my_maplist(unbind_color(ColorAdvice),Grids,UGrids),
  make_grid(H,V,RepairedResult),
  all_rows_will_align([RepairedResult|UGrids]).

prefect_result(VM,H,V,_Ordered,Grids,RepairedResult,ColorAdvice):-
  enum_colors(ColorAdvice),
  makes_prefect_result(VM,H,V,ColorAdvice,Grids,RepairedResult),!,
  my_maplist(print_grid(makes_prefect_result(ColorAdvice)),[RepairedResult|Grids]).
/*
  last(Grids,Last),
  loc2D(Last,X,Y),
  
  my_maplist(object_grid,Grids,OGrids),% my_maplist(print_grid(grid_to_3x3_objs),OGrids),
  my_maplist(free_bg(ColorAdvice),OGrids,FOGrids),
  my_maplist(unbind_color(ColorAdvice),FOGrids,UGrids),
  my_maplist(open_grids,UGrids,OUOUGrids),
  [OU|OUGrids]= OUOUGrids,
  my_maplist(=(OU),OUGrids),
  makes_prefect_result(VM,H,V,ColorAdvice,OUOUGrids,RepairedResult),!,
  my_maplist(print_grid(makes_prefect_result(ColorAdvice)),[RepairedResult|UGrids]).
*/

prefect_result(_VM,H,V,Ordered,Grids,RepairedResult,ColorAdvice):-
  make_grid(H,V,RepairedResult),
  advise_color(ColorAdvice,Ordered),
  consensus(ColorAdvice,Grids,H,V,RepairedResult),!.

open_grids(UGrids,OUGrids):- my_maplist(append,UGrids,_,ORows),append(ORows,_,OUGrids).

repair_patterned_images(VM,Ordered,Objects,Grids,CorrectObjects,KeepNewState,RepairedResult):-
 %must_not_error
 ((
  max_hv(Objects,H,V),
  writeln('Training hard...'),
  prefect_result(VM,H,V,Ordered,Grids,RepairedResult,ColorAdvice),
  %print_grid(_,_,repaired,RepairedResult),
  localpoints_include_bg(RepairedResult,LPoints),
%  pp(RepairedResult),
  %pp(LPoints),
 %together(( localpoints_include_bg(RepairedResult,LPoints),hv_c_value(LPoints,C,1,2))),
 % together((my_maplist(set_local_points(LPoints),Grids,CorrectGrids),
 %           my_maplist(check_my_local_points(LPoints),CorrectGrids),
 %   all_rows_can_align(CorrectGrids))),
  my_maplist(replace_diffs(LPoints),Objects,CorrectObjects),!,
  my_partition(same_lcolor(ColorAdvice),Ordered,KeepNewState,_))),!.

together(Goal):- call(Goal),!.

check_my_local_points([],_Grid):- !.
check_my_local_points([Point|List],Correct):- 
 must_not_error(together((point_to_hvc(Point,H,V,Expected),
 (\+ (hv_c_value_or(Correct,Found,H,V,Expected),Found==Expected) -> set_local_points(Point,Correct,Correct) ; true),
 (hv_c_value_or(Correct,Found,H,V,Expected),Found==Expected)))),
 check_my_local_points(List,Correct).

advise_color(ColorAdvice,Ordered):- member_color(Ordered,ColorAdvice).
advise_color(ColorAdvice,Ordered):- enum_colors(ColorAdvice), \+ member_color(Ordered,ColorAdvice).
advise_color(ColorAdvice,Ordered):- member_color(Ordered,ColorAdvice).

member_color(Ordered,ColorAdvice):- member(Obj,Ordered),color(Obj,ColorAdvice).

replace_diffs(LPoints,Obj,NewObj):- 
 must_not_error((
  vis2D(Obj,H,V),
  my_partition(point_between(1,1,H,V),LPoints,Points,_),
  localpoints(Obj,LP),
  intersection(LP,Points,_Same,LPOnly,LPointOnly),
  ((LPOnly ==[], LPointOnly ==[]) -> NewObjM = Obj ;
  (
   % pp(LPOnly), pp(LPointOnly),
  rebuild_from_localpoints(Obj,Points,NewObjM))))),
  override_object(repaired(pattern),NewObjM,NewObj),
    %mprint_grid(NewObj),
  nop(show_shape(NewObj)),!.

point_between(LoH,LoV,HiH,HiV,Point):- point_to_hvc(Point,H,V,_),
  between(LoH,HiH,H), between(LoV,HiV,V).

  


colored_pixel_count(A,Count):- is_points_list(A),fg_pixel_count(A,Count),!.
colored_pixel_count(G,Count):- is_grid(G), fg_pixel_count(G,Count),!.
colored_pixel_count(A,Count):- is_object(A),localpoints(A,G), fg_pixel_count(G,Count),!.
colored_pixel_count(A,Count):- is_list(A),!,my_maplist(colored_pixel_count,A,Summe),sum_list(Summe,Count),!.
colored_pixel_count(A,1):- atomic(A),is_fg_color(A),!.
colored_pixel_count(_,0).

fg_color_count(In,Size):- unique_colors(In,CC),include(is_fg_color,CC,FG),length(FG,Size).

fg_pixel_count(G,AA):- must_not_error((findall(E,(sub_term(E,G),\+ plain_var(E),is_fg_color(E)),L),length(L,AA))).

/*
4-Way Symmetry

  
|SXQ2  |SXCC  |SXQ4  
       |      |      
   EXQ2|  EXCC|  EXQ4|
|--------------------| 
|      |      |      | SYQ2 
|  Q2  |  CN  | Q1   | 
|      |      |      | EYQ2
|------+------+------| 
|      |      |      | SYCC
|  CW  |  CC  | CE   | 
|      |      |      | EYCC
|------+------+------| 
|      |      |      | SYQ4
|  Q3  |  CS  | Q4   |
|      |      |      | EYQ4
|--------------------| 
*/


mirror_xy(CXL,CYL,CX,CY,SXQ2,SYQ2,EXQ2,EYQ2,SXCC,SYCC,EXCC,EYCC,SXQ4,SYQ4,EXQ4,EYQ4,G):-
   grid_size(G,EXQ4,EYQ4),
   SXQ2=SYQ2,SXQ2=1,
   CXL=CYL,
   member(CXL,[0,1,2]),member(CYL,[0,1,2]),
   length(CX,CXL),length(CY,CYL),
   mirror_hv(EXQ2,CX,EYQ2,CY,EXQ4,EYQ4,G),
   %sort_row_by_num_colors(G,Rows),
   %print_grid(Rows),
   nonvar(EXQ2),nonvar(EYQ2),
   %ppnl(cx=CX+EXQ2),print_grid(EXQ2,EYQ2,G),ppnl(cy=CY+EYQ2),
   check_mirror_xy(CX,CY,SXQ2,SYQ2,EXQ2,EYQ2,SXCC,SYCC,EXCC,EYCC,SXQ4,SYQ4,EXQ4,EYQ4).

check_mirror_xy([],[],1,1,EXQ2,EYQ2,0,0,0,0,SXQ4,SYQ4,EXQ4,EYQ4):-
     SXQ4 is EXQ2+1,
     SYQ4 is EYQ2+1,!,
     nop((EXQ4,EYQ4)).


check_mirror_xy(CX,CY,SXQ2,_SYQ2,EXQ2,EYQ2,SXCC,SYCC,EXCC,EYCC,SXQ4,SYQ4,EXQ4,_EYQ4):- 
   
   length(CX,LCLX),SXCC is EXQ2 + 1,EXCC is LCLX + EXQ2 -1,SXQ4 is LCLX + EXQ2,
   my_maplist(assertion,[SXQ2=<EXQ2,EXQ2=<SXCC,EXQ2=<SXCC,EXCC=<SXQ4,SXQ4=<EXQ4]),
   length(CY,LCLY),SYCC is EYQ2 + 1,EYCC is LCLY + EYQ2 -1,SYQ4 is LCLY + EYQ2,
   !.



/*
Repetitive Patterns

  
       |      |      
 PatWidth|  EXCC|  EXQ4|
|--------------------| 
|      |      |      | SYQ2 
|  Q2  |  CN  | Q1   | 
|      |      |      | EYQ2
|------+------+------| 
*/


list_n_times(List,1,List).
list_n_times(List,2,Times):- append(List,List,Times).
list_n_times(List,3,Times):- append([List,List,List],Times).
list_n_times(_List,0,[]).
list_n_times(List,N,Times):- N>3,make_list_inited(N,List,A),append(A,Times).

repeat_pat0(cols(2),Div,[],Row,Pattern):-
  [C1|_C1Pattern] = Pattern,
  [C2|_XLL] = Div,
  append([Pattern,Div,Pattern],Row),            C1\==C2.

repeat_pat0(cols(3),Div,[],Row,Pattern):-
  [C1|_C1Pattern] = Pattern,
  [C2|_XLL] = Div,
  append([Pattern,Div,Pattern,Div,Pattern],Row),            C1\==C2.

repeat_pat0(cols(4),Div,[],Row,Pattern):-
  [C1|_C1Pattern] = Pattern,
  [C2|_XLL] = Div,
  append([Pattern,Div,Pattern,Div,Pattern,Div,Pattern],Row),            C1\==C2.

repeat_pat0(cols(5),Div,[],Row,Pattern):-
  [C1|_C1Pattern] = Pattern,
  [C2|_XLL] = Div,
  append([Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern],Row),  C1\==C2.

repeat_pat0(cols(6),Div,[],Row,Pattern):-
  [C1|_C1Pattern] = Pattern,
  [C2|_XLL] = Div,
  append([Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern],Row),  C1\==C2.

repeat_pat0(cols(7),Div,[],Row,Pattern):-
  [C1|_C1Pattern] = Pattern,
  [C2|_XLL] = Div,
  append([Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern],Row),  C1\==C2.

repeat_pat0(cols(8),Div,[],Row,Pattern):-
  [C1|_C1Pattern] = Pattern,
  [C2|_XLL] = Div,
  append([Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern],Row),  C1\==C2.

repeat_pat0(cols(9),Div,[],Row,Pattern):-
  [C1|_C1Pattern] = Pattern,
  [C2|_XLL] = Div,
  append([Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern],Row),  C1\==C2.

repeat_pat0(cols(10),Div,[],Row,Pattern):-
  [C1|_C1Pattern] = Pattern,
  [C2|_XLL] = Div,
  append([Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern,Div,Pattern],Row),  C1\==C2.


%repeat_pat0(n_d_cols,Div,Slack,Row,Pattern):-
%  append([Pattern,Div,Pattern,Slack],Row).

%repeat_pat0(no_div,[],Slack,Row,Pattern):-
%  append([Pattern,Pattern,Pattern,Slack],Row).

maybe_pad_start_end(Row,RowP):- append([_,_|RowP],[_,_],Row).
maybe_pad_start_end(Row,RowP):- append([_|RowP],[_],Row).
maybe_pad_start_end(Row,Row).

suggest_div([_],1).
suggest_div([D,D],2).
suggest_div([],0).
repeat_pat(Type,PatWidth,DivW,Div,Row0,Pattern):-
  maybe_pad_start_end(Row0,Row),
  (nonvar(PatWidth)-> length(Pattern,PatWidth); Pattern=[_,_|_]),
  (nonvar(DivW)-> length(Div,DivW); suggest_div(Div,DivW)),
  repeat_pat0(Type,Div,Slack,Row,Pattern),
  (var(PatWidth)-> length(Pattern,PatWidth); true),
  (var(DivW)-> length(Div,DivW); true),
  length(Slack,SlackW),
  once((SlackW>PatWidth) -> append([_,Pattern,_],Slack);true).
%repeat_pat(varry_div(Was),PatWidth,DivW,_,Row,Pattern):-
%  repeat_pat0(Was,PatWidth,DivW,_,Row,Pattern).

h_pattern_length0(G,Type,PatWidth,DivW,StartV,PatHeight,Pattern,Div):- 
  suggest_div(Before,StartV),
  append(Before,[Row|RRest],G),
  repeat_pat(Type,PatWidth,DivW,_,Row,Left),  
  maplist_until_count(Count,repeat_pat(Type,PatWidth,DivW,Div),RRest,HVPat),
  Count>3,
  ( maplist_until_count(_PatHeight,repeat_pat(Type,PatWidth,DivW,Div),Before,BeforePat)->
     (StartV=0,append(BeforePat,[Left|HVPat],Pattern));
     (length(Before,StartV),[Left|HVPat]=Pattern)),
  length(Pattern,PatHeight).

h_pattern_length(G,Type,PatWidth,DivW,StartV,PatHeight,Pattern,Div):-
  h_pattern_length0(G,Type,PatWidth,DivW,StartV,PatHeight,Pattern,Div),
  %\+ all_bg(Pattern),
  nop(verify_if_can_repeat(G,StartV,Pattern,Div,PatHeight)).

verify_if_can_repeat(G,StartV,Pattern,Div,PatHeight):- 
  length(G,IH),
  RestGV is IH - StartV - PatHeight,!,
  once((RestGV =< PatHeight) -> true ; 
    (forall(member(R,G),append([_,Div,_],R)),
     my_maplist(append,Pattern,_,PatternO),
     length(RemainingRows,RestGV),
     append(_,RemainingRows,G),
     append([_,PatternO,_],RemainingRows))).

all_bg(Pattern):- get_bgc(BG),is_all_color(BG,Pattern).
is_all_color(BG,Pattern):- is_list(Pattern),!,my_maplist(is_all_color(BG),Pattern).
is_all_color(BG,Pattern):- Pattern=@=BG.

%fti(VM,[show_colorfull_idioms|set(VM.lo_program)]):- ignore(show_colorfull_idioms(VM.grid)).
is_fti_step(show_colorfull_idioms).
show_colorfull_idioms(G):- ignore(find_colorfull_idioms(G)),!.

is_fti_step(find_colorfull_idioms).
find_colorfull_idioms(VM):- is_vm(VM), get_kov(grid,VM,Grid),!,find_colorfull_idioms(Grid).
find_colorfull_idioms(G):- plain_var(G), get_vm(G),!,find_colorfull_idioms(G).
find_colorfull_idioms(I):- io_side_effects, into_grid(I,G),
  set_current_test(G),
  h_pattern_length(G,_Type,PatWidth,_DivW,_StartV,PatV,Pattern,_Div),!,
  PatV>2,
  PatWidth>2,
  dash_chars,
  add_shape_lib(as_is,Pattern),
  add_shape_lib(pair,Pattern),
  print_side_by_side(green,G,'colorfull',_,Pattern,'idioms'),!,
  dash_chars.



ping_indiv_grid(show_colorfull_idioms).
ping_indiv_grid(show_reps).

test_reps:-  clsmake, forall(rp_test(G),ignore(show_reps(G))).

show_reps(G):- 
  glean_pattern_reps(Steps,G,GG),
  print_side_by_side(G,GG),!,
  addProgramStep(_,Steps).

glean_patterns_hook(Steps,G,NewGrid):- glean_pattern_reps(Steps,G,NewGrid).

glean_pattern_reps(Steps,G,NewGrid):-
 %must_det_ll
 ((
  set_current_test(G),
  h_pattern_length(G,Type,PatWidth,DivW,StartV,PatV,Pattern,Div),!,
  PatV>1,
  dash_chars,
  dash_chars,
  add_shape_lib(pair,Pattern),
  grid_size(G,H,V),
  writeln(pattern),
  %grid_to_tid(G,ID),
  print_grid(G),
  writeln(repaired_result),
  Steps = rp(patW=PatWidth,type=Type,divW=DivW,startV=StartV,patV=PatV),
  pp(Steps),
  %pp(Grid9x9),
  print_grid(Pattern),!,
  ignore(((Div\==[]),print_grid([Div]))),!,
  StartH=0,
  (must_not_error((gen_pattern(H,V,StartH,StartV,Pattern,Div,sameR,NewGrid),
  print_grid(NewGrid)))),  
  dash_chars)),!.

gen_pattern(H,V,StartH,StartV,Pattern,Div,NextP2,NewGridO):-
  GH is H - StartH,
  GV is V - StartV,
  (StartV > 0 -> make_grid(StartV,H,StartGrid) ; StartGrid=[]),
  nop(StartGrid=StartGrid),
  gen_pattern(GH,GV,Pattern,Div,NextP2,NewGridO),!.
  % crop(H,V,NewGridO,NewGrid).
  
gen_pattern(GH,GV,Pattern,Div,_NextP2,NewGrid):-
 must_det_ll((
  length(Div,DivW),
  grid_size(Pattern,PH,PV),PDW is PH+DivW,PDV is PV,
  make_list_inited(PDV,Div,DivA),
  my_maplist(append,DivA,Pattern,DivAPattern),
  TimesH is GH div PDW,
  gen_w_pattern(TimesH,Pattern,DivAPattern,Patterns),
  %crop(GH,PDV,Patterns,CropPatterns),
  CropPatterns=Patterns,
  grid_size(CropPatterns,CPH,_CPV),
  TimesHDiv is CPH div DivW-1,
  append_n_times(Div,TimesHDiv,RowSep),
  print_grid(CropPatterns),
  print_grid([RowSep]),
  append([RowSep,CropPatterns],SepCropPatterns),
  %print_grid(SepCropPatterns),
  TimesV is GV div PDV -1,
  append_n_times(SepCropPatterns,TimesV,NewGrid))).
  %make_list_inited(TimesV,CropPatterns,CropPatterns,NewGrid).

gen_w_pattern(0,Pattern,_DivAPattern,Pattern):-!.
gen_w_pattern(Times,PatternIn,DivAPattern,Patterns):-
  my_maplist(append,PatternIn,DivAPattern,PatternsMid),
  TimesM is Times - 1, gen_w_pattern(TimesM,PatternsMid,DivAPattern,Patterns).



/*
 %grid_to_tid(G,GN), grid_size(G,H,V),
 Q2 = HVPat, Q1 = HVPat,
 Q3 = HVPat, Q4 = HVPat,
 CW = CYL,CE = CYL, CN = CXL, CS = CXL,
 %gensym('CRef_',CRef),
  [[Q2,  CN, Q1],
   [CW, _CC, CE],
   [Q3,  CS, Q4]] = Grid9x9.
*/



find_and_use_pattern_gen(G,Grid9x9):- 
 %grid_to_tid(G,GN), grid_size(G,H,V),
 get_vm(VM),
 gensym('CRef_',CRef),
  [[Q2,  CN, Q1],
   [CW, _CC, CE],
   [Q3,  CS, Q4]] = Grid9x9,
 (mirror_xy(_CXL,_CYL,_CX,_CY,SXQ2,SYQ2,EXQ2,EYQ2,
   SXCC,SYCC,EXCC,EYCC,SXQ4,SYQ4,EXQ4,EYQ4,G)-> writeln(did_find_pattern_gen(SXQ2,SYQ2,EXQ2,EYQ2,
   SXCC,SYCC,EXCC,EYCC,SXQ4,SYQ4,EXQ4,EYQ4)); 
   (writeln(did_NOT_find_pattern_gen),nop(mirror_xy(_CXL,_CYL,_CX,_CY,SXQ2,SYQ2,EXQ2,EYQ2,
   SXCC,SYCC,EXCC,EYCC,SXQ4,SYQ4,EXQ4,EYQ4,G)),fail)),
  clip_quadrant(CRef,EXQ2,EYQ2,SXQ4,SYQ4,VM,SXQ2,SYQ2,EXQ2,EYQ2,G,rot180,Q2),
  clip_quadrant(CRef,EXQ2,EYQ2,SXQ4,SYQ4,VM,SXQ4,SYQ2,EXQ4,EYQ2,G,flipV,Q1),
  clip_quadrant(CRef,EXQ2,EYQ2,SXQ4,SYQ4,VM,SXQ2,SYQ4,EXQ2,EYQ4,G,flipH,Q3),
  clip_quadrant(CRef,EXQ2,EYQ2,SXQ4,SYQ4,VM,SXQ4,SYQ4,EXQ4,EYQ4,G,sameR,Q4),
  %clip_ray(CRef,EXQ2,EYQ2,SXQ4,SYQ4,VM,SXCC,SYCC,EXCC,EYCC,G,CC),    
  clip_ray(CRef,EXQ2,EYQ2,SXQ4,SYQ4,VM,SXCC,SYQ2,EXCC,EYQ2,G,rot270,CN),
  clip_ray(CRef,EXQ2,EYQ2,SXQ4,SYQ4,VM,SXCC,SYQ4,EXCC,EYQ4,G,rot90,CS),
  clip_ray(CRef,EXQ2,EYQ2,SXQ4,SYQ4,VM,SXQ4,SYCC,EXQ4,EYCC,G,sameR,CE),
  clip_ray(CRef,EXQ2,EYQ2,SXQ4,SYQ4,VM,SXQ2,SYCC,EXQ2,EYCC,G,rot180,CW),
  nop(print_symmetry(localpoints,Q2,Q1,Q3,Q4)),!.


print_symmetry(Steps,Q2,Q1,Q3,Q4):-  
  call(Steps,Q1,QL1), call(Steps,Q2,QL2),call(Steps,Q3,QL3),call(Steps,Q4,QL4),
  u_dmsg("printed_pie II   I"),
  print_side_by_side(QL2,QL1),
  print_side_by_side(QL3,QL4),
  u_dmsg("printed_pie III  IV"),
  !.



make_empty_grid(GO):- GO=_.

clip(_,_,0,0,_,GO):-  !, make_empty_grid(GO).
%clip(0,_,_,_,_,GO):-  !, make_empty_grid(GO).
clip(SX,SY,EX,EY,_,GO):- (EY<SY ; EX<SX) , !, make_empty_grid(GO).
%clip(SX,SY,EX,EY,G,GO):- G==[[]],!,GO=[[]].
clip(SX,SY,EX,EY,G,GO):-
  %assertion(SX=<EX),assertion(SY=<EY),
  SzX is EX-SX+1,
  SzY is EY-SY+1,
  %print_grid(G),
  make_grid(SzX,SzY,GO),
  copy_to_clip_r(1,1,1,SX,SX,SY,EX,EY,G,GO),
  nop(print_grid(GO)).

copy_to_clip_r(AtX,AtY,ResetX,ResetSX,SX,SY,EX,EY,G,GO):-

  ignore((grid_hvc_value(SX,SY,C,G),nb_set_chv(C,AtX,AtY,GO))),
  incr(SX,SX2),
 ((SX2=<EX) -> 
    (incr(AtX,AtX2),copy_to_clip_r(AtX2,AtY,ResetX,ResetSX,SX2,SY,EX,EY,G,GO)) ;
    (incr(SY,SY2),
      ((SY2=<EY) -> (incr(AtY,AtY2),copy_to_clip_r(ResetX,AtY2,ResetX,ResetSX,ResetSX,SY2,EX,EY,G,GO));
         true))).

nb_set_nth1_oob(_,[],_):-!.
nb_set_nth1_oob(1,Row,C):- !, nb_setarg(1,Row,C).
nb_set_nth1_oob(N,[_|Row],C):- Nm1 is N -1, nb_set_nth1_oob(Nm1,Row,C).

nb_set_chv(C,H,V,Grid):- nth1(V,Grid,Row),nb_set_nth1_oob(H,Row,C).
grid_hvc_value(H,V,C,Grid):-  nth1(V,Grid,Row),nth1(H,Row,C).

 

nr_make_symmetrical_grid(Steps,G,GridO):- 
  no_repeats(GridO,make_symmetrical_grid(Steps,G,GridO)).
  
ping_indiv_grid(show_make_symmetrical).

test_make_symmetrical_sanity_tests:-  clsmake, forall(rp_test(G),ignore(show_make_symmetrical(G))). 

test_make_symmetrical:-  clsmake, forall(test_grids(_,G),ignore(show_make_symmetrical(G))). 

show_make_symmetrical(G):-
  set_current_test(G),
  dash_chars,
  format('~N'),
  ShowHow = wqs(uc(green,Steps)),
  findall(GridO-ShowHow,nr_make_symmetrical_grid(Steps,G,GridO),List),
  list_to_set(List,Set),
  print_side_by_side([G|Set]).

/*
*/
% by rotating the media(image) 90 degrees.. filling in .. and again 2 more times
is_able_v(Flip,Top):- var(Flip),!,verify_symmetry(Flip,Top).
is_able_v(Flip,Top):- call(Flip,Top,TopR), TopR=Top.
verify_symmetry(rot90,GridO):- is_able_v(rot90,GridO).
verify_symmetry((flipH,flipV),GridO):- is_able_v(flipV,GridO),is_able_v(flipH,GridO).

is_flippable_h(Flip,G):- rot90(G,R),is_able_v(Flip,R).
make_flippable_h(Flip,G,HS):- is_flippable_h(Flip,G),HS=G.
make_flippable_h(Flip,G,HS):- ((rot270(G,G90),make_able_v(Flip,G90,VS),rot90(VS,HS))*->true;make_flippable_h1(Flip,G,HS)).
make_flippable_h1(Flip,G,HS):- c_r(make_able_v(Flip),G,HS).


is_symmetrical(Grid):-  is_flippable_h(flipH,Grid),is_able_v(flipV,Grid).

make_symmetrical(Grid0,Grid9):- 
  make_symmetrical(Steps,Grid0,Grid9),
  addProgramStep(_,Steps).

%Grid0,Flip,Grid9
make_symmetrical(Steps,G0,GridO):- into_grid(G0,G1),make_symmetrical_grid(Steps,G1,GridO).
% G,Test,GridO,Steps



 %gncp(glyph-neighbors-color-point)

make_able_v(Flip,G,HS):- nonvar(Flip),is_able_v(Flip,G),HS=G.
make_able_v(Flip,G,HS):- 
  suggest_i(G,I),
  call(Flip,G,R),
  length(HS,I),append(G,_,HS),append(_,R,HS).

suggest_i(G,I):- grid_size(G,H,V),
   max_min(H,V,Max,Min),suggest_i(V,Max,Min,I).

suggest_i(V,_Max,_Min,I):- !, %fail,!,
  Max2 is V+V-3, between(V,Max2,I).

suggest_i(_V,Max,Min,Min,I):- 
  my_maplist(is,[Min,Max, 
              Min+Min-1, 
              Max+Max-1, 
              Max+Max,
              Max+1, 
              Max+2,
              Max+3, 
              Max+5, 
              Max+7, 
              Max-Min],Results), 
  sort_safe(Results,Set),member(I,Set).
  
 

blackFree(E):- get_black(Black),ignore(Black=E).

g_or_gc(_,G,G).
%g_or_gc(G,_,G).


flipSome2(rot90,X,Y):- rot90(X,Y).
flipSome2(rot180,X,Y):- rot180(X,Y).
flipSome2(rot270,X,Y):-  rot270(X,Y).
flipSome2(flipV,X,Y):-  flipV(X,Y).
flipSome2(flipH,X,Y):-  flipH(X,Y).

flipSome(R,X,Y):- flipSome2(R,X,Y).
flipSome(flipD,X,Y):-  flipD(X,Y).
flipSome(flipDHV,X,Y):-  flipDHV(X,Y).

%find_center(Grid,H,V):- chew_away_at_sides(Grid,GridO,TH,TV),grid_size(GridO,H,V),X is floor(H/2),Y is floor(V/2).
%chew_away_at_sides(Grid,Grid):-!.
%chew_away_at_sides(Grid,GridO):- append([Top|Middle],[Btm]),mass(Top,M1),mass(Btm,M2),M1==M2,!,chew_away_at_sides(,GridO).

idealistic_symmetric_xy_3x3(
[[Q2,         CN,        flipH(Q2)],
 [CW,        _CC,        flipH(CW)],
 [flipV(Q2),  flipV(CN), rot180(Q2)]]).



/*
   [[Q2,  CN,   Q1],
    [CW,  CC,   CE],
    [Q3,  CS,   Q4]] = Grid,

  [[Q2R,  CNR,   Q1R],
   [CWR,   CC,   CER],
   [Q3R,  CSR,   Q4R]] = Repair,
*/

assemble(
 [[Q2,  CN,   Q1],
  [CW,  CC,   CE],
  [Q3,  CS,   Q4]],
  GR):-
        join_cols([Q2,  CN,   Q1],RowsA),
        join_cols([CW,  CC,   CE],RowsC),
        join_cols([Q3,  CS,   Q4],RowsC),
        append([RowsA,RowsC,RowsC], GR).


is_empty_grid(Empty):- make_empty_grid(MG),MG=@=Empty,!.
is_empty_grid(Empty):-  (Empty==[] ; Empty ==[[]]),!.


:- include(kaggle_arc_footer).






%mirror_h(I,C,G):- include(not_no_symmetry_yet,G,G0),sort_row_by_num_colors(G0,G1),mirror_lr(I,C,G1,_).
%mirror_h(I,C,G):- mirror_lr(I,C,G,_),!.

mirror_h(I,C,G):- mirror_lrw(I,C,G,_).
mirror_h(I,C,G):- flipV(G,G1),mirror_lrw(I,C,G1,_).
mirror_v(I,C,G):- rot270(G,G0),mirror_lrw(I,C,G0,_).
mirror_v(I,C,G):- rot270(G,G0),flipV(G0,G1),mirror_lrw(I,C,G1,_).

mirror_hv(EXQ2,CX,EYQ2,CY,H,V,G):- mirror_h(EXQ2,CX,G),mirror_v(EYQ2,CY,G),TY is EYQ2*3, TY > V, TX is EXQ2*3, TX > H,!.
mirror_hv(EXQ2,CX,EYQ2,CY,_H,_V,G):- mirror_hh(EXQ2,CX,G),mirror_vv(EYQ2,CY,G).

mirror_hh(I,C,G):- mirror_lr(I,C,G,_).
mirror_vv(I,C,G):- rot270(G,G0),mirror_lr(I,C,G0,_),!.
    
mirror_row(I,C,Row,L):- append(C,[E1|RR],Right), append(L,Right,Row),reverse(L,[E1|LL]),aligned_rows(LL,RR),length(L,I).
% mirror_row(L,CL,Row,I):-  append(Row,_Rest,RowO), c_n_reverse_l(I,_C,_P,RowO,L,CL,_R).

% mirror_row(L,C,Row,I):- append(C,[E1|RR],Right), append(L,Right,Row),reverse(L,[E1|LL]),aligned_rows(LL,RR),length(L,I).

mirror_lrw(_I,_C,[],_GL):- !. 
mirror_lrw(I,C,G,GL):- maplist_until(mirror_row(I,C),G,GL),
   reverse(G,GR), maplist_until0(mirror_row(I,C),GR,_).

mirror_lr(I,C,G,GL):- first_half(G,G0),mirror_lr0(I,C,G0,GL).
mirror_lr(I,C,G,GL):- second_half(G,G0),mirror_lr0(I,C,G0,GL).
%mirror_lr(I,C,G,GL):- mirror_lr0(I,C,G,GL).
mirror_lr0(_I,_C,[],_GL):- !.
mirror_lr0(I,C,G,GL):- my_maplist(mirror_row(I,C),G,GL),!.

not_no_symmetry_yet(P):- \+ no_symmetry_yet(P).




