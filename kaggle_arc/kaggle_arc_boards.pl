/*
  this is part of (H)MUARC  https://logicmoo.org/xwiki/bin/view/Main/ARC/

  This work may not be copied and used by anyone other than the author Douglas Miles
  unless permission or license is granted (contact at business@logicmoo.org)
*/
:- include(kaggle_arc_header).

:- if(exists_source(kaggle_arc_boards_dpg)).
%:- ensure_loaded(kaggle_arc_boards_dpg).
:- endif.

:- use_module(library(nb_set)).
:- use_module(library(lists)).

/*
% detect_pair_hints(Grid,SGrid):- ...
line Separated
Symmetry sorta happening
Individuals by colormass % t(b230c067)
all_is_one
supergrid_is_point_dotted % '94133066'
supergrid_is_output_size % t('8d5021e8')
supergrid_is_all % t('6150a2bd')
suprgrid_is_dots_same_count % t(ff28f65a)
supergrid_input_1 % v(cad67732)*
supergrid_input_1 in_out=1x1
superinput_keypad= souput=kewypad
superinput_columns
superinput_rows
superinput_swashica
superinput_starts_at_input_loc
superinput_blob
*/
:- dynamic(kaggle_arc/4).

test_supergrid:- clsbake,
 forall(kaggle_arc(TestID,ExampleNum,In,Out),
   detect_pair_hints(TestID,ExampleNum,In,Out)).


print_directive(P):- format('~N:- ~q. ~n',[P]).
write_intermediatre_header:-
  print_directive(encoding(iso_latin_1)),
  forall(  (test_local_save(F,A),nl),
      my_maplist(print_directive,[%abolish(F/A),
      multifile(F/A),dynamic(F/A),discontiguous(F/A),public(F/A),export(F/A),module_transparent(F/A)])).

print_ref(Ref):- is_clause_ref(Ref), clause(H,B,Ref),!,print_ref((H:-B)).
print_ref((X:-True)):- True == true,!, print_ref(X).
print_ref(G):- format('~N'),write_canonical(G),format('.~n'),!.
%print_ref(G):- \+ \+ ((numbervars(G,0,_,[attvar(bind),singletons(true)]), format('~N~@.~n',[write_canonical(G)]))),!.


clsbake:- nop(clsmake).

compile_and_save_hints:- update_and_fail,fail.
compile_and_save_hints:- get_pair_mode(entire_suite),!,clsbake,
  forall_count(all_arc_test_name(TestID),time(compile_and_save_hints(TestID))).
compile_and_save_hints:- get_current_test(TestID),time(compile_and_save_hints(TestID)),!,
  detect_pair_hints,!.

gen_gids:-
  u_dmsg(start(gen_gids)),
  forall(all_arc_test_name(TestID),gen_gids(TestID)),
  u_dmsg(end(gen_gids)).
gen_gids(Mask):-
 must_det_ll((
  testid_name_num_io(Mask,TestID,Example,Num,IO),
  ExampleNum = Example+Num,!,
  %forall(kaggle_arc(TestID,ExampleNum,I,O),name_the_pair(TestID,ExampleNum,I,O,_PairName)),
  forall((kaggle_arc_io(TestID,ExampleNum,IO,G),((ID=(TestID>ExampleNum*IO),term_to_oid(ID,GID)))),
    once((assertz_if_new(tid_to_gids(ID,GID)),assertz_if_new(gid_to_grid(GID,G))))),
  forall(kaggle_arc_io(TestID,_,_,G),once(grid_to_gid(G,_))))),!.

:- dynamic(arc_cache:workflow_status/3).
once_with_workflow_status(Goal):- call_in_testid(arc_cache:workflow_status(Goal,success)),!.
once_with_workflow_status(Goal):- call_in_testid(arc_cache:workflow_status(Goal,begun)),!.
once_with_workflow_status(Goal):-
  assert_in_testid(arc_cache:workflow_status(Goal,begun)),
  (call(Goal)-> assert_in_testid(arc_cache:workflow_status(Goal,success)) ; assert_in_testid(arc_cache:workflow_status(Goal,failed))).

compile_and_save_hints(TestID):- once_with_workflow_status(compile_and_save_hints_now(TestID)).



cache_suites:-
 forall(devel_suite(SuiteX),cache_suite(SuiteX)).
devel_suite(dmiles).
devel_suite(is_symgrid).
devel_suite(evaluation).
devel_suite('MiniARC').
devel_suite(easy_solve_suite).
devel_suite(eval400).
devel_suite(train400).
devel_suite(test_names_by_hard).
cache_suite(SuiteX):-
 set_test_suite(SuiteX),
 with_pair_mode(entire_suite,
  forall_count(all_suite_test_name(TestID),time(cache_devel(TestID)))).

cache_devel:- with_pair_mode(entire_suite,
 forall(all_arc_test_name_unordered(TestID),
  ((test_name_output_file(TestID,'.pl',File), ( exists_file(File)-> true; cache_devel(TestID)))))).
%cache_devel(TestID):-  ensure_test(TestID), test_name_output_file(TestID,'.pl',File),
%  catch(cant_rrtrace(notrace(cache_devel(TestID,File))),E,u_dmsg(cache_devel(TestID,File)=E)),!.
cache_devel(TestID):-  ensure_test(TestID), test_name_output_file(TestID,'.pl',File),  cant_rrtrace(notrace(cache_devel(TestID,File))).

cache_devel( TestID,File):- var(TestID),!,ensure_test(TestID),cache_devel( TestID,File).
cache_devel( TestID,File):- var(File),!,test_name_output_file(TestID,'.pl',File),  !, cache_devel(TestID,File).
cache_devel(_TestID,File):- exists_file(File), size_file(File,Size), Size > 300_000,!, writeln(size_file(File,Size)),!.
%cache_devel(_TestID,File):- exists_file(File), !, writeln(exists_file(File)),!.
cache_devel( TestID,File):-
  ensure_test(TestID),
  alarm(300, halt(0), Id, [install(true),remove(false)]),
  nl,writeq(starting(cache_devel( TestID,File))),nl,
 sformat(S,'touch "~w"',[File]), shell(S),
  cache_devel_1(TestID),
  writeln(save_test_hints(TestID,File)),
  remove_alarm(Id),
    save_test_hints_now(TestID,File),
    writeln(finised_saving(TestID,File)).

cache_devel_1(TestID):-
  learn_grid_size(TestID),
  compile_and_save_hints(TestID),
  ensure_individuals(TestID),writeq(finished(ensure_individuals( TestID))),nl,
  %ensure_propcounts(TestID),writeq(finished(ensure_propcounts( TestID))),nl,
  %show_object_dependancy(TestID),
  %asserta(should_save_test_hints_now(TestID,File)),
  !.


load_individuations:- consult(indivduations).
save_individuations:- tell(indivduations), listing(arc_cache:individuated_cache), told.


compile_and_save_hints_now(TestID):- var(TestID),!,all_arc_test_name(TestID),compile_and_save_hints_now(TestID).
compile_and_save_hints_now(Mask):- fix_test_name(Mask,TestID),  Mask\=@=TestID,!,compile_and_save_hints_now(TestID).
compile_and_save_hints_now(TestID):-
  %ignore(retract(saved_training(TestID))),
  %ignore(retract(process_test(TestID))),

  ((with_individuated_cache(true,
     ((
      gen_gids(TestID),
      detect_pair_hints(TestID),
      arc_assert(saved_training(TestID)),
      arc_assert(process_test(TestID)),
      nop(individuate_pairs_from_hints(TestID)),
      %train_test(TestID,train_using_io),
      %print_hybrid_set,
      once(save_test_hints(TestID))))))).


has_sym(SymC,Sym,C):- compound(SymC),!,SymC=(Sym-C).

fill_in_bg(Cell,SymC,Sym-O):- has_sym(SymC,Sym,C),!,fill_in_bg(Cell,C,O).
fill_in_bg(_Cell,G2,GG2):- is_fg_color(G2),!,ignore(G2=GG2).
fill_in_bg(Cell,G2,GG2):- \+ G2\=Cell,!,ignore(GG2=Cell).
fill_in_bg(Alt,In,Out):- only_color_data_or(Alt,In,Out),!.
fill_in_bg(_Alt,In,In):-!.

into_solid_grid(I,GG1):- var(I),!,GG1=I.
into_solid_grid(I,GG1):- into_grid(I,G1),mapgrid(fill_in_bg(black),G1,GG1),!.

non_fg_to_black(Cell,SymC,Sym-O):- has_sym(SymC,Sym,C),!,non_fg_to_black(Cell,C,O).
non_fg_to_black(_Cell,G2,G2):- is_fg_color(G2).
non_fg_to_black(Cell,_,GG2):- ignore(GG2=Cell).
non_fg_to_black(I,GG1):- into_grid(I,G1),mapgrid(non_fg_to_black(black),G1,GG1),!.

completely_represents(I,O):-
   into_solid_grid(I,I1),into_solid_grid(O,O1),
   (I1=@=O1-> true ;  (print_ss(not_completely_represents,I1,O1),fail)).



deduce_shapes(TestID):-
  with_test_grids(TestID,Grid,test_deduce_grid_shapes(Grid)).

test_deduce_grid_shapes(Grid):-
  forall(grid_to_obj(Grid,O),show_indiv(test_deduce_grid_shapes,O)),
  print_hybrid_set.


print_hybrid_set(TestID):-
  ensure_test(TestID),
  get_hybrid_set(Set),
  print_side_by_side(Set),
  nop(forall(member(O,Set),print_hybrid_grid(O))).

print_hybrid_grid(G):- io_side_effects,into_grid_free(G,O),grid_to_norm(Ops,O,N),
  (O\==N->print_side_by_side([ops(Ops)],G,N); print_grid(O)).

individuate_all_pairs_from_hints(TestID):-
  with_individuated_cache(true,
   with_pair_mode(whole_test,
    individuate_pairs_from_hints(TestID))).

individuate_pairs_from_hints(TestID):-
  arc_assert(individuate_test_grids(TestID)),
  forall((kaggle_arc(TestID,ExampleNum,In,Out),ExampleNum=(trn+_)),
    must_det_ll((individuate_pair_here(TestID,ExampleNum,In,Out)))).

individuate_pair_here(TestID,Trn+N1,In,Out):-
  Trn == trn, % no peeking
  must_det_ll((ndividuator(TestID,Trn+N1,complete,In,Out),
  nop(train_for_objects_from_1pair(_{},TestID,[Trn,'i',N1,'o',N1],In,Out,_DictMid)))).


print_all_info_for_test:- notrace(print_all_info_for_test0).
print_all_info_for_test0:-
  print_testinfo,
  write('<p><strong><em>This representation is a hierarchy of Objects. One simple way to reduce description length is
      collect points of a like color into one group. Also, an Object may specify a
      repeated transformation, e.g. a vertical line can be specified by repeating a
      vertical translation by one unit. This allows lines, rectangles,
      tilings, etc. efficient representations.</em></strong></p>'),

  write('Once the input and output representations are determined, one can search for the minimally specified "path" that
      recreates the output given the input. Given high-quality representations, there are usually only a few Objects of interest,
      and one can quickly check every pair of input and output Objects for similarity and whether there exists a short
      transformation path between them.  At this stage, the code mostly looks for single-transform links.'),
  show_all_test_reductions,
  forall(show_reduced_io,true),

  print_hybrid_set.

into_grid_free(I,O):- must_be_free(O),into_grid(I,O),!.
into_grid_list(I,O):- must_be_free(O),!,into_grid_list0(I,O).

into_grid_list0(A,[A]):- var(A),!.
into_grid_list0(A^B,List):- !, caret_to_list(A^B,List),!.
into_grid_list0(A,[A]):- is_grid(A),!.
into_grid_list0(A,[AG]):- always_grid_footer(A,G,_),into_grid_free(G,AG),!.
into_grid_list0([A|More],[A|More]):- is_grid(A),!.
into_grid_list0([G|Grids],GridL):- into_grid_list(G,G1),into_grid_list(Grids,GS),
  append(G1,GS,GridL).


show_single_reduction_1(G):- reduce_grid(G,Ops,R),print_ss(wqs(Ops),G,R),writeg(Ops).

do_some_grids(Title,AB):- is_grid(AB),!,do_some_grids(Title,[AB]).
do_some_grids(Title,AB):- into_grid_list(AB,GL), GL\==AB,!,do_some_grids(Title,GL).
do_some_grids(Title,GL):- once((dash_chars,print_ss(do_some_grids(Title)=GL),dash_chars)),fail.
%do_some_grids(Title,[A,B]):- !, common_reductions(A^B,OPS,_)
do_some_grids(Title,Grids):-  fail,
  forall(do_as_pairs(Grids,I,O),
    (print_side_by_side(green,I,orig(Title),_,O,next_orig(Title)),
     forall(show_reduced_io(I^O),true))).

do_some_grids(Title,GL):-
 (all_common_reductions(GL,OPS,Reduced)*->print_common_reduction_result(Title,OPS,Reduced)
  ;(GL\=[_,_,_|_],common_reductions_from_two(GL,OPS,A,B,AA,BB)*-> print_common_reduction_result(common_reductions_from_two(Title,A,B),OPS,AA^BB)
  ; (pp(no_common_reductions=Title)))),
 dash_chars.
do_some_grids(_Title,GL):- forall(member(G,GL),show_single_reduction_1(G)),!.

print_common_reduction_result(TestID,OPS,Reduced):- pp(ops(TestID)=OPS), print_ss(all_common_reductions(TestID)=Reduced).


pause:- !.
/*
pause:- arc_html, !.
pause:- !, atrace.
pause:- get_single_char(K),(K=t->atrace;true).
*/

do_as_pairs([F|More],I,O):- do_as_pairs(F,[F|More],I,O).
do_as_pairs(_,[I,O|_],I,O).
do_as_pairs(O,[I],I,O):-!.
do_as_pairs(F,[_|More],I,O):- do_as_pairs(F,More,I,O).

%show_all_test_reductions(TestSpec):- var(TestSpec),!,show_all_test_reductions.
show_all_test_reductions(TestSpec):- var_ensure_test(TestSpec,TestID),
  load_file_dyn_pfc(TestID),
  u_dmsg(?-show_reduced_test(TestID)),
  dash_chars,
  show_reduced_inputs(TestID),
  dash_chars,
  show_reduced_outputs(TestID),
  dash_chars,
  show_reduced_pairs(TestID),
  dash_chars.



show_reduced_io_fav(TestID):- var_ensure_test(TestID,I,O,show_reduced_io_fav(I^O)),!.
show_reduced_io_fav(I^O):- get_current_test(TestID),\+ \+ do_some_grids(TestID,I^O), show_reduced_io(I^O).

show_reduced_outputs(TestSpec):- var_ensure_test(TestSpec,TestID),
  findall(ExampleNum=Grid,kaggle_arc(TestID,ExampleNum,_,Grid),Grids),
  do_some_grids('OUTPUT'(TestID),Grids).

show_reduced_inputs(TestSpec):- var_ensure_test(TestSpec,TestID),
  findall(ExampleNum=Grid,kaggle_arc(TestID,ExampleNum,Grid,_),Grids),
  do_some_grids('INPUT'(TestID),Grids).

show_reduced_pairs(TestSpec):- var_ensure_test(TestSpec,TestID),
  forall(with_task_pairs(TestID,ExampleNum,I,O,
    (print_side_by_side(green,I,orig_in(TestID,ExampleNum),_,O,orig_out(TestID,ExampleNum)),
     forall(do_some_grids(TestID,I^O),true))),true).


show_reduced_io_rarely(_):- \+ get_pair_mode(single_pair),!.
show_reduced_io_rarely(In^Out):- % ignore((nonvar(In),nonvar(Out),grid_hint_swap(i-o,In,Out))),!,
  ignore((fail,get_thingy(In,Out,Gets),print_ss(Gets))).

show_reduced_io_rarely(IO):- forall(show_reduced_io(IO),true).


show_reduced_io(TestSpec):- var_ensure_test(TestSpec,I,O,show_reduced_io(I^O)),!.
show_reduced_io(IO):-
    once(show_grid_call(reduce_cutaway(_),IO,NextIO)),
  if_t(((NextIO)\=@=(IO)), show_reduced_io(NextIO)).

%show_reduced_io(I^O):-  maybe_easy(I,II,DidIn),same_reduction(DidIn,DidOut),maybe_easy(O,OO,DidOut), must_det_ll(print_side_by_side(green,II,DidIn,_,OO,DidOut)),!.
show_reduced_io(I0^O):-
  once(( grid_size(I0,H,V), grid_size(O,OH,OV))),
  ((H>OH;V>OV) , grid_call_alters(trim_to_rect,I0,I)), show_reduced_io(I^O).

show_reduced_io(IO):-
  %OPS = [_,_|_],
  OPS = _,
  once(show_grid_call(grid_to_norm(OPS),IO,NextIO)),
  if_t(((NextIO)\=@=(IO)), show_reduced_io(NextIO)).

show_reduced_io(IO):- once(show_grid_call(mapgridish(remove_color_if_same(black),IO),IO,NextIO)),
  if_t(((NextIO)\=@=(IO)), show_reduced_io(NextIO)).

show_reduced_io(_).


mapgridish(P3,I^O,In,Out):- In==I-> mapgrid(P3,O,I,Out) ; mapgrid(P3,I,O,Out).


reduce_grids_io(OPS,I^O,III^OOO):- area(I,IArea),area(O,OArea),reduce_grids_area_io(I^O,IArea^OArea,OPS,III^OOO).

interesting_ops(OPS):- OPS==[],!,fail.
interesting_ops(OPS):- OPS=[undo_effect(_)|More],!,interesting_ops(More).
interesting_ops(_).

grid_to_norm(Op,I,OO):- normalize_grid(Op,I,OO),!.

reduce_grids_area_io(I^O,_IArea_OArea,[io(OPS)],II^OO):- reduce_grid(I^O,OPS,II^OO), interesting_ops(OPS),!.
reduce_grids_area_io(I^O,_IArea_OArea,[oi(OPS)],II^OO):- reduce_grid(O+I,OPS,OO+II), interesting_ops(OPS),!.
reduce_grids_area_io(I^O,IArea^OArea,[i(OPS)],II^O):- IArea>OArea, reduce_grid(I+I,OPS,II+_), interesting_ops(OPS).
reduce_grids_area_io(I^O,IArea^OArea,[o(OPS)],I^OO):- IArea>OArea, reduce_grid(O^O,OPS,OO+_), interesting_ops(OPS).
reduce_grids_area_io(I^O,_IArea_OArea,[io(OPS)],II^OO):- reduce_grid(I^O,OPS,II^OO), interesting_ops(OPS).
reduce_grids_area_io(I^O,_IArea_OArea,[i(OPS)],II^O):- reduce_grid(I+I,OPS,II+_), interesting_ops(OPS).
reduce_grids_area_io(I^O,IArea^OArea,[o(OPS)],I^OO):- IArea<OArea, reduce_grid(O^O,OPS,OO^OO), interesting_ops(OPS).
/*
reduce_grids_area_io(I^O,_IArea_OArea,OPS,III^OOO):-
  reduce_grid(I+I,II_Ops,II+II),
  reduce_grid(O^O,OO_Ops,OO^OO),
  reduce_grid(II^OO,IO_Ops,III^OOO),
  (interesting_ops(IO_Ops) ; interesting_ops(OO_Ops) ; interesting_ops(II_Ops)),
  [i(II_Ops),o(OO_Ops),io(IO_Ops)] = OPS,
  !.
reduce_grids_area_io(I^O,_IArea_OArea,OPS,III^OOO):-
  reduce_grid(I^O,IO_Ops,II^OO),
  reduce_grid(II+II,II_Ops,III+III),
  reduce_grid(OO^OO,OO_Ops,OOO^OOO),
  (interesting_ops(IO_Ops) ; interesting_ops(OO_Ops) ; interesting_ops(II_Ops)),
  OPS = [io(IO_Ops)+i(II_Ops)+o(OO_Ops)],
  !.
*/


maybe_easy(A,AR,ROPA):- reduce_grid_pass(1,A^A,[A^A],ROPA,AR^AR).
maybe_easy(I,II,Code):- maybe_try_something1(I,II,Code),!.
maybe_easy(I,I,==):- !.

%must_ll(G):- G*->true;throw(failed(G)).




color_subst([],[],[]):-!.
color_subst([O|OSC],[I|ISC],[O-I|O2I]):-
  color_subst(OSC,ISC,O2I).
color_subst(_OSC,_ISC,[]):-!.




guess_board(TT):- arc_setval(TT,guess_board,t).


show_recolor(TestID,_ExampleNum,IIn,Out0,TT):-
  ensure_test(TestID),
  must_det_ll(((
  %show_patterns(In),show_patterns(Out),

  %gset(TT.z_contains_out)=in(HIO,VIO),
  %gset(TT.z_contains_in)=out(HOI,VOI),


  % grid_size(IIn,IH,IV),
  %grid_size(Out0,OH,OV), % max_min(OV,IV,V,_),max_min(OH,IH,H,_),
  into_bicolor(IIn,In), into_bicolor(Out0,Out),

  /*
  pair_dictation(TestID,ExampleNum,IIn,Out0,T), T.in = IIn, T.out = Out0,
  ((OV==1,OH==1) -> (O2I=[]) ; (T.in_specific_colors = ISC, T.out_specific_colors = OSC,    color_subst(OSC,ISC,O2I))),
  subst_1L(O2I,OOut,Out), %subst_1L(O2I,Out0,OutF),
  get_map_pairs(T,_,Pairs),
  list_to_rbtree_safe(Pairs,TT),!,

  arc_setval(TT,rhs_color_remap, O2I),

  show_colorfull_idioms(IIn), show_colorfull_idioms(Out0),
*/
  (most_d_colors(Out,CO,NO),arc_setval(TT,out_d_colors,CO),arc_setval(TT,out_map,NO)),
  (most_d_colors(In,CI,NI),  arc_setval(TT,in_d_colors,CI), arc_setval(TT,in_map,NI)),
  %if_t(find_ogs(HOI,VOI,IIn,OutF),arc_setval(TT,z_in_contains_out,(HOI,VOI))),
  %if_t(find_ogs(HIO,VIO,OutF,IIn),arc_setval(TT,z_out_contains_in,(HIO,VIO))),
  %@TODO record in the out_in _may_ hold the in_out
  print_side_by_side(cyan,NI,CI,_,NO,CO),
  get_map_pairs(TT,_,List),pp(List)))),!.


/*

show_recolor(TestID,ExampleNum,IIn,Out0,TT):-
  must_det_ll(((
  %show_patterns(In),show_patterns(Out),

  %gset(TT.z_contains_out)=in(HIO,VIO),
  %gset(TT.z_contains_in)=out(HOI,VOI),


  % grid_size(IIn,IH,IV),
  grid_size(Out0,OH,OV), % max_min(OV,IV,V,_),max_min(OH,IH,H,_),
  into_bicolor(IIn,In), into_bicolor(Out0,OOut),

  pair_dictation(TestID,ExampleNum,IIn,Out0,T), T.in = IIn, T.out = Out0,
  ((OV==1,OH==1) -> (O2I=[]) ; (T.in_specific_colors = ISC, T.out_specific_colors = OSC,    color_subst(OSC,ISC,O2I))),
  subst_1L(O2I,OOut,Out), %subst_1L(O2I,Out0,OutF),
  get_map_pairs(T,_,Pairs),
  list_to_rbtree_safe(Pairs,TT),!,

  arc_setval(TT,rhs_color_remap, O2I),

  show_colorfull_idioms(IIn), show_colorfull_idioms(Out0),

  (most_d_colors(Out,CO,NO),arc_setval(TT,out_d_colors,CO),arc_setval(TT,out_map,NO)),
  (most_d_colors(In,CI,NI),  arc_setval(TT,in_d_colors,CI), arc_setval(TT,in_map,NI)),
  %if_t(find_ogs(HOI,VOI,IIn,OutF),arc_setval(TT,z_in_contains_out,(HOI,VOI))),
  %if_t(find_ogs(HIO,VIO,OutF,IIn),arc_setval(TT,z_out_contains_in,(HIO,VIO))),
  %@TODO record in the out_in _may_ hold the in_out
  print_side_by_side(cyan,NI,CI,_,NO,CO),
  get_map_pairs(TT,_,List),pp(List)))),!.
*/

arc_test_property(g,n,b,d):-fail.


is_fti_step(obj_into_cells).
is_fti_step(print_grid).
obj_into_cells(VM):-
  vm_to_printable(VM,GridObj),
  globalpoints(GridObj,Row1),
  flatten([Row1],Row1F),list_to_set(Row1F,Row1S),
  my_maplist(only_color_data,Row1S,ColorRow),
  set_vm(grid,[ColorRow]).


show_found(HOI,VOI,H,V,Info,F):-
  HO is HOI-3, VO is VOI-3,
  show_found2(HO,VO,H,V,Info,F).

show_found2(HO,VO,H,V,Info,_F):- u_dmsg(show_found2(HO,VO,H,V,Info)),!.
show_found2(HO,VO,H,V,Info,F):-
  offset_grid(HO,VO,F,OF),
  constrain_grid(f,_TrigF,OF,FF),!,
  print_grid(H,V,Info,FF),!.


save_grid_hints:-  forall(ensure_test(TestID),compute_and_show_test_hints(TestID)),
  listing(arc_test_property/3).




hint_into_name(cg(IO,Hints),cg(IO,Name)):- !, hint_into_name(Hints,Name).
%hint_into_name(comp(MC,i-o,Hints),Name):- !, hint_into_name(Hints,Name).
hint_into_name(comp(MC,IO,Hints),comp(MC,IO,Name)):- hint_into_name(Hints,Name).
hint_into_name(comp_f(MC,IO,Name,_Hints),comp(MC,IO,Name)).
hint_into_name(rev(Hints),DeRev):- !, hint_into_name(Hints,Name),re_rev(Name,DeRev).
hint_into_name(mono(Hints),mono(Name)):- !, hint_into_name(Hints,Name).
hint_into_name(vis_hv_term(Hints),(Name)):- !, hint_into_name(Hints,Name).
hint_into_name(point_groups(N),point_groups(N)).
hint_into_name(Hints,Name):- Hints=..[F|Args],my_exclude(is_nonkey,Args,Left),Name=..[F|Left],!.

is_nonkey(V):- number(V),!.
is_nonkey(V):- is_list(V),!.
is_nonkey(V):- \+ sub_var(i,V), \+ sub_var(o,V).

re_rev(comp(MC,IO,Name),comp(MC,IO,Name)):-!.
re_rev(Name,rev(Name)).

hint_into_value(cg(_IO,Hints),Data):- !, hint_into_value(Hints,Data).
hint_into_value(comp(_MC,_IO,Hints),Data):- !, hint_into_value(Hints,Data).
hint_into_value(comp_f(_MC,_IO,_F,Hints),Data):- !, hint_into_value(Hints,Data).
hint_into_value(rev(Hints),Data):- !, hint_into_value(Hints,Data).
hint_into_value(vis_hv_term(Hints),(Data)):- !, hint_into_value(Hints,Data).
hint_into_value(mono(Hints),(Data)):- !, hint_into_value(Hints,Data).
hint_into_value(Hints,Data):- Hints=..[F|Args],my_include(is_nonkey,Args,Right),Data=..[F|Right],!.



:- dynamic(io_xform/3).
add_xform_maybe(In1,Out1):- ignore(get_current_test(TestID)),
                 ignore((   ThisXForm=io_xform(TestID,In1,Out1),
                    ThatXForm=io_xform(TestID,_In2,_Out2),
                    (call(ThatXForm)
                      -> (must_min_unifier(ThisXForm,ThatXForm,NewXForm),
                                        retractall(ThatXForm),retractall(NewXForm),asserta(NewXForm))
                     ; asserta(ThisXForm)))),!.

add_hint(TestID,ExampleNum,Hints):-
  hint_into_name(Hints,F),hint_into_value(Hints,D), assert_test_property(TestID,ExampleNum,F,D).

assert_test_property(TestID,ExampleNum,Prop,Data):-
  assert_if_new(arc_test_property(TestID,ExampleNum,Prop,Data)),
  nop(pp(assert_test_property(TestID,ExampleNum,Prop,Data))).

retract_test_property(TestID,ExampleNum,Prop,Data):-
  retractall(arc_test_property(TestID,ExampleNum,Prop,Data)).


  % forall((kaggle_arc_io(TestID,ExampleNum,in,Out1),N2 is N+1,  (kaggle_arc_io(TestID,(trn+N2),in,Out2)->true;kaggle_arc_io(TestID,(trn+0),in,Out2)),  grid_hint_recolor(i-i,Out1,Out2,Hints)),add_hint(TestID,Hints,N)).


/*
compute_and_show_test_hints(TestID):- format('~N'),
  findall(Hints-N,(kaggle_arc(TestID,ExampleNum,In,Out), grid_hint_swap(i-o,In,Out,Hints)),HintsIO),
  findall(Hints-N,(kaggle_arc_io(TestID,ExampleNum,in,In1),  N2 is N+1, (kaggle_arc_io(TestID,(trn+N2),in,In2)->true;kaggle_arc_io(TestID,(trn+0),in,In2)), grid_hint_recolor(i-i,In1,In2,Hints)),HintsII),
  findall(Hints-N,(kaggle_arc_io(TestID,ExampleNum,out,Out1),N2 is N+1, (kaggle_arc_io(TestID,(trn+N2),out,Out2)->true;kaggle_arc_io(TestID,(trn+0),out,Out2)), grid_hint_recolor(o-o,Out1,Out2,Hints)),HintsOO),
  append([HintsIO,HintsOO,HintsII],Hints),
  keysort(Hints,SHints),
  my_maplist(aquire_hints(TestID,SHints),SHints),
  format('~N'),
  nop()),
  list_common_props(TestID).
*/


compute_and_show_test_hints_fresh(TestID):-
 ensure_test(TestID),format('~N'),
 retractall(arc_test_property(TestID,_,_,_)),
 compute_and_show_test_hints(TestID).

compute_and_show_test_hints(TestID):-
 ensure_test(TestID),format('~N'),
 w_section(compute_and_show_test_hints(TestID),
 (
   ( \+ arc_test_property(TestID,trn+2,comp(_,_,_),_) -> detect_all_training_hints(TestID); true),
   show_common_test_hints(TestID))).


show_common_test_hints(TestID):-
 w_section(title(show_common_test_hints),
 ((findall(F=Common,
  (arc_test_property(TestID,trn+0,F,_),
    retractall(arc_test_property(TestID,common,F,_)),
    (( findall(Data,arc_test_property(TestID,(trn+_),F,Data),Commons),
        once((some_min_unifier(Commons,Common),nonvar(Common))))),
      assert_test_property(TestID,common,F,Common)),FComs),
  sort_safe(FComs,SComs),
  %dash_chars,
  %print_test(TestID),
  %wots(SS,my_maplist(ptv1,SComs)),
    (ptv1s(cyan+yellow,SComs),
    with_li_pre(listing(io_xform(TestID,_,_))))))).

my_sub_compound(_,C):- \+ compound(C),!,fail.
my_sub_compound(S,C):- my_sub_compound_0(E,C),S=E.
my_sub_compound_0(C,C).
my_sub_compound_0(E,L):- is_list(L),!,member(EE,L),compound(EE),my_sub_compound_0(E,EE).
my_sub_compound_0(E,[_|T]):- !, fail, compound(T),!,my_sub_compound_0(E,T).
my_sub_compound_0(E,C):- arg(_,C,EE),compound(EE),my_sub_compound_0(E,EE).

with_li_pre(Goal):- with_tag(li,with_tag(pre,Goal)).
%with_li_pre(Goal):- call(Goal).

ptv1s(Color,T):- \+ \+ ptv1(Color,T).


goes_together(N1,N2):- N1=@=N2,!.
goes_together(N1,N2):- ( is_list(N1) ; is_list(N2) ; var(N1) ; var(N2)  ), !, fail.

goes_together(info(_,N1),N2):- !, goes_together(N2,N1).

goes_together(o,N2):- !, goes_together(N2,i).
%goes_together(N1,N2):- ( is_list(N1) ; is_list(N2) ), !, fail.
goes_together(iro(I_O1,N1),ori(I_O2,N2)):-  goes_together(N1,N2),!,I_O1=I_O2.
goes_together(rev(N1),N2):-  nonvar(N1), !, goes_together(N2,N1).
goes_together(comp(A,I_O,C),N2):- pair_i_o(I_O), pair_o_i(O_I),!, goes_together(comp(A,O_I,C),N2).

goes_together(comp(A,IO-IO,C),N2):- !, goes_together(same(A,IO,C),N2).
goes_together(N2,comp(A,IO-IO,C)):- !, goes_together(N2,same(A,IO,C)).
goes_together(comp_f(A,I_O,C),N2):- I_O=(I-O),O\==I,  pair_i_o(I_O), pair_o_i(O_I),!, goes_together(comp(A,O_I,C),N2).
%goes_together(comp_f(A,I-O,C),N2):-  goes_together(comp_f(A,O-I,C),N2).
%goes_together(comp(A,_,C),N2):-   goes_together(N2,A-C).


show_together(Color,N1,N2,V1,V2):- is_grid(V1),is_grid(V2), print_ss(wqs(call(color_print(Color,N1=N2))),V1,V2),!.
show_together(Color,N1,N2,V1,V2):- nl,pp(Color,(show_together:-(N1,N2))),pp(Color,(:-V1)),pp(Color,(:-V2)),nl.

data_together(V1,V2):- is_grid(V1),!,is_grid(V2).
data_together(V2,V1):- is_grid(V1),!,is_grid(V2).
data_together(_,_).

ptv1(Color,PVs):- is_list(PVs),select(N1=V1,PVs,Rest0),select(N2=V2,Rest0,Rest),
  \+ \+ data_together(V1,V2),
  \+ \+ goes_together(N1,N2),
  %( V1=@=V2 -> N1\==N2; true),
  !,
  must_det_ll((ptv1(Color,Rest),
  show_together(Color,N1,N2,V1,V2))).
%ptv1(Color,PVs):- forall(member(P=V,PVs),ptv1s(Color,P=V)).
ptv1(Color,T):- is_grid(T), !, print_grid(ptv1(Color),T).
ptv1(Color,T):- is_list(T), !, my_maplist(ptv1(Color),T).
ptv1(_Color,_=T):- T==[],!.
%ptv1(_Color,_=T):- compound(T),compound_name_arguments(T,_,[A]),A==[],!.
%ptv1(_Color,_=T):- compound(T), T = each_object(_),!.

ptv1(Color,G):- my_sub_compound([H|T],G),
  \+ \+ ((append(T,[],_)->is_grid([H|T]),print_grid([H|T]))),!,
  subst(G,[H|T],printed_grid,GG),!,ptv1(Color,GG).

ptv1(C1C2,T):- needs_bold(T),!,bold_print(ptv11(C1C2,T)),!.
ptv1(C1C2,T):- ptv11(C1C2,T),!.

needs_bold(C):- compound(C),sub_term(E,C),compound(E),functor(E,ogs,_).

ptv11(C1+C2,T):- !, format('~N'),wots(S,writeq(T)),
  (has_spec_value(T) -> color_print(C1,call(bold_print(write(S)))) ; color_print(C2,call(write(S)))).
ptv11(Color,T):- format('~N'),
 (has_spec_value(T) ->
   color_print(cyan,call(bold_print(print_tree(T))))
  ;color_print(Color,call(print_tree(T)))).

has_spec_value(T):- ground(T),!.
has_spec_value(V):- var(V),!,fail.
has_spec_value(_=T):- !,has_spec_value(T).
has_spec_value(T):- sub_term(E,T),number(E),!.
has_spec_value(T):- sub_term(E1,T),atomic(E1),sub_term(E2,T),atomic(E2),E1\==E2.


in_smaller_than_out(TestID):- forall(kaggle_arc(TestID,trn+_,I,O), op_op(v_area,(<),I,O)).

op_op(P2a,P2b,I,O):- call(P2a,I,II),call(P2a,O,OO),call(P2b,II,OO),!.

v_area(I,Size):- vis2D(I,IH,IV), Size is IH * IV.



detect_all_training_hints(TestID):-
  ensure_test(TestID),
  ExampleNum = trn+_,
  forall(must_ll(kaggle_arc(TestID,ExampleNum,In,Out)),
   ignore(( \+ arc_test_property(TestID,ExampleNum,comp(_,_,_),_),
     detect_pair_hints(TestID,ExampleNum,In,Out)))).


detect_pair_hints(TestID):- ensure_test(TestID),
  load_file_dyn_pfc(TestID),
  training_only_examples(ExampleNum),
  w_section(title(detect_pair_hints(TestID)),
      (forall(must_ll(kaggle_arc(TestID,ExampleNum,In,Out)),
         must_det_ll(detect_pair_hints(TestID,ExampleNum,In,Out))),
      ((color_print(magenta,call(((must_det_ll(compute_and_show_test_hints(TestID)))))))))).

training_only_examples(ExampleNum):- ignore(ExampleNum=(trn+_)).

detect_pair_hints(TestID,ExampleNum,In,Out):-
  ignore((training_only_examples(ExampleNum))),
  Call = detect_pair_hints(TestID,ExampleNum,In,Out),
  \+ ground(Call),!,
  with_pair_mode(whole_test,
     (task_pairs(TestID,ExampleNum,In,Out),
       with_trn_pairs(TestID,ExampleNum,In,Out,Call))).

detect_pair_hints(TestID,ExampleNum,In,Out):-
  ensure_test(TestID),
  ignore((training_only_examples(ExampleNum))),
  must_det_ll((
  pair_i_o(I_O),
  wdmsg(detect_pair_hints(I_O,TestID,ExampleNum)),
  ensure_the_alt_grids(I_O,TestID,ExampleNum,In,Out),
  assert_id_grid_cells(_,In), assert_id_grid_cells(_,Out),
  % guess_board(TT),
  %print(TT),
  %ignore(show_reduced_io(In^Out)),
 % ignore(print_single_pair(TestID,ExampleNum,In,Out)),
  (in_smaller_than_out(TestID) ->
   (compute_test_ii_hints(TestID,ExampleNum), compute_test_oo_hints(TestID,ExampleNum));
   (compute_test_oo_hints(TestID,ExampleNum), compute_test_ii_hints(TestID,ExampleNum))),
  grid_hint_swap(TestID,ExampleNum,I_O,In,Out),
  % CALLS ignore(maybe_compute_test_io_hints(i-o,TestID,ExampleNum,In,Out)),
  dash_chars)).

%detect_pair_hints(TestID):- arc_test_property(TestID,(trn+1),PP,_),sub_var(i-i,PP),!.

kaggle_arc_num(TestID,ExampleNum):- kaggle_arc_io(TestID,ExampleNum,in,G),ground(G).

next_example_num(TestID,Example+Num,O):- var(Num),!,
   kaggle_arc_num(TestID,Example+Num),next_example_num(TestID,Example+Num,O).
next_example_num(TestID,Example+Num,_):- \+ kaggle_arc_num(TestID,Example+Num),!,fail.
next_example_num(TestID,Example+Num,Example+Num2):-
  Num2 is Num+1,
  \+ \+ kaggle_arc_num(TestID,Example+Num2),!.
next_example_num(_TestID,Example+_,Example+0).

%compute_test_oo_hints(_TestID,_ExampleNum):-!.
compute_test_oo_hints(TestID,ExampleNum):-
  forall(
    kaggle_arc_io(TestID,ExampleNum,out,Out1),
     (next_example_num(TestID,ExampleNum,ExampleNum2),
      kaggle_arc_io(TestID,ExampleNum2,out,Out2),
      maybe_compute_test_oo_hints(TestID,ExampleNum,Out1,Out2))),!.

 maybe_compute_test_oo_hints(TestID,ExampleNum,Out1,Out2):-
   pair_o_o(I_O),
   ensure_the_alt_grids(I_O,TestID,ExampleNum,Out1,Out2),
   forall(grid_hint_recolor(I_O,Out1,Out2,Hints),add_hint(TestID,ExampleNum,Hints)).

%compute_test_ii_hints(_,_):-!.
compute_test_ii_hints(TestID,ExampleNum):-
  forall(
    kaggle_arc_io(TestID,ExampleNum,in,In1),
     (next_example_num(TestID,ExampleNum,ExampleNum2),
      kaggle_arc_io(TestID,ExampleNum2,in,In2),
      maybe_compute_test_ii_hints(TestID,ExampleNum,In1,In2))),!.

  maybe_compute_test_ii_hints(TestID,ExampleNum,Out1,Out2):-
     pair_i_i(I_O),
     ensure_the_alt_grids(I_O,TestID,ExampleNum,Out1,Out2),
     forall(grid_hint_recolor(I_O,Out1,Out2,Hints),add_hint(TestID,ExampleNum,Hints)).


%ptv(T):- p_p_t_no_nl(T),!.
ptv(T):-
  copy_term(T,CT,Goals),Goals\==[],!,
  \+ \+
 ((numbervars(CT+Goals,10,_,[attvar(bind),singletons(true)]),
  ptv(CT), write('\n/*\n'),ptv(Goals),write('\n*/'))).
/*ptv(T):- copy_term(FF,FA,GF), GF \==[],
  numbervars(FA^GF,0,_,[attvar(bind),singletons(true)]),
  sort_safe(GF,GS),write(' '),
  locally(b_setval(arc_can_portray,nil),
      ptv(FA)),format('~N'),
  ignore((GS\==[], format('\t'),ppawt(attvars=GS),nl)),nl,!.
*/
ptv(T):- is_list(T), !, print_tree_no_nl(T),write(' ').
ptv(T):-
  locally(b_setval('$portraying',[]),
   \+ \+  ((numbervars(T,0,_,[attvars(skip),singletons(true)]), must_det_ll((ptv(T,_)))))),write(' ').


ptv(T,_):- var(T),!, ptv2(T).
ptv(T,_):- \+ compound(T), !, ptv2(T).
ptv(T,_):- is_object(T),!,  show_indiv(ptv,T),!.
%ptv(T,_):- T = showdiff( O1, O2), !, showdiff(O1, O2).
%ptv(T,_):- T = change_obj( O1, O2, Diffs), !, showdiff(O1, O2), writeq(Diffs),!.
%ptv(T,_):- pp(T),!.
ptv(T,_):-
 nb_current('$portraying',Was)
   ->  ((member(E,Was), T==E) -> ptv2(T) ; locally(b_setval('$portraying',[T|Was]),ptv0(T)))
   ; locally(b_setval('$portraying',[T]),ptv0(T)).

ptv0(T):-
  \+ \+ ((prolog_pretty_print_term(T,[quoted(true),portray(true),
  portray_goal(ptv),numbervars(true),singletons(true),blobs(portray),
  quote_non_ascii(true),brace_terms(false),ignore_ops(true)]))).

ptv2(T):- p_p_t_no_nl(T),!.
ptv2(T):-
  \+ \+ ((numbervars(T,0,_,[]),prolog_pretty_print_term(T,[quoted(true),portray(true),
  numbervars(true),singletons(true),blobs(portray),
  quote_non_ascii(true),brace_terms(false),ignore_ops(true)]))).


grid_hint_swap(TestID,ExampleNum,I_O,In,Out):- \+ ground(ExampleNum),!,kaggle_arc_num(TestID,ExampleNum),grid_hint_swap(TestID,ExampleNum,I_O,In,Out).
grid_hint_swap(TestID,ExampleNum,I_O,In,Out):- I_O = i_o, kaggle_arc(TestID,ExampleNum,In,Out), grid_hint_swap_real(TestID,ExampleNum,I_O,In,Out).
grid_hint_swap(TestID,ExampleNum,I_O,In,Out):- I_O \== i_o,
  if_t(kaggle_arc_num(TestID,ExampleNum),
     grid_hint_swap_real(TestID,ExampleNum,I_O,In,Out)).

grid_hint_swap_real(TestID,ExampleNum,I_O,In,Out):-
 must_det_ll(pair_i_o(I_O)),
 if_t((\+ ground(In); \+ ground(Out)), kaggle_arc(TestID,ExampleNum,In,Out)),
 w_section(title(grid_hint_swap_t(TestID>ExampleNum)),
   maybe_compute_test_io_hints(I_O,TestID,ExampleNum,In,Out)),
 if_t(next_example_num(TestID,ExampleNum,Example+Num2),
    if_t(Num2>0, if_t(Num2<6,
         maybe_grid_hint_swap(TestID,Example+Num2,I_O)))),

 if_t(kaggle_arc_num(TestID,ExampleNum),ignore(print_single_pair(TestID,ExampleNum,In,Out))),
 if_t(kaggle_arc_num(TestID,ExampleNum),show_arc_props(TestID,ExampleNum)).


each_io([i-o,o-i]). each_io([i-i]). each_io([o-o]).

non_each_io(TestID,ExampleNum,PVs):-
  findall(P=V,(arc_test_property(TestID,ExampleNum,P,V),\+ ((each_io(I_O_L),member(I_O,I_O_L),sub_var(I_O,P)))),PVs).

show_arc_props(TestID,ExampleNum):-
  forall(each_io(I_O),show_arc_props(TestID,ExampleNum,I_O)),
  non_each_io(TestID,ExampleNum,PVs),
  ptv1s(blue,PVs),
  ptv1s(green,end_example(TestID>ExampleNum)).

show_arc_props(TestID,ExampleNum,I_O_L):-
  [S_IO|_] = I_O_L,
  with_li_pre((
    format('~N%% ~w: ',[S_IO]),!,
    ptv1s(green,start_example(TestID>ExampleNum)),nl,
    findall(P=V,(arc_test_property(TestID,ExampleNum,P,V),once((member(I_O,I_O_L),sub_var(I_O,P)))),PVs),
      ptv1s(magenta,PVs),
      ptv1s(green,each_io_example(TestID>ExampleNum)))).



maybe_grid_hint_swap(TestID,ExampleNum,I_O):-
 if_t(kaggle_arc_num(TestID,ExampleNum),
  if_t( \+ arc_test_property(TestID,ExampleNum,comp(_,_,_),_),
    ignore(grid_hint_swap(TestID,ExampleNum,I_O,_,_))))  .


%maybe_compute_test_io_hints(_,TestID,ExampleNum,_,_):- arc_test_property(TestID,_,_-N),!.
maybe_compute_test_io_hints(I_O,TestID,ExampleNum,In,Out):-
   must_det_ll(ground(I_O)),
    ignore(add_xform_maybe(In,Out)),
      forall(grid_hint_swap_io(I_O,In,Out,Hints),add_hint(TestID,ExampleNum,Hints)).

grid_hint_swap_io(I_O,In,Out,Hints):-  grid_hint_recolor(I_O,In,Out,Hints).
grid_hint_swap_io(I-O,In,Out,rev(Hints)):- I\==O,
 nop(show_grid_call(trim_to_rect,In^Out,_)),
 grid_hint_recolor(O-I,Out,In,Hints),
 Hints \= mono(comp(_,o-i,value(=@=))).

grid_hint_recolor(_IO,_In,_Out,is_grid_hint).
%grid_hint_recolor(_IO,_In,_Out,comp(6,6,6)).


grid_hint_recolor(IO,In,Out,Hints):- get_black(Black), grid_hint_io(cbg(Black),IO,In,Out,Hints).
%grid_hint_recolor(IO,In,Out,ogs_hint(IO,Hints)):-  all_ogs(Hints,Out,In), Hints\==[].
grid_hint_recolor(IO,In,Out,mono(Hints)):- speedup_fail, arc_option(scan_mono_hints), % fail,
 once((into_monogrid(In,InM),into_monogrid(Out,OutM))),
  (In\==InM;Out\==OutM),grid_hint_io(cbg(wbg),IO,InM,OutM,Hints).
grid_hint_recolor(IO,In,Out,color_ord(Hints)):- fail,
 once((into_color_ord(In,InM),into_color_ord(Out,OutM))),
  (In\==InM;Out\==OutM),grid_hint_io(cbg(unkC),IO,InM,OutM,Hints).
/*
grid_hint_recolor(IO,In,Out,mono(Hints)):- % fail,
 once((into_monogrid(In,InM),into_monogrid(Out,OutM))),
  In\==InM,Out\==OutM,
  grid_hint_io(cbg(wbg),IO,InM,OutM,Hints),
  \+ grid_hint_recolor1(IO,In,Out,_Hint).
*/



%maybe_fail_over_time(Time,Goal):- fail_over_time(Time,Goal).
maybe_fail_over_time(_Time,Goal):- once(Goal).


keep_flipD(I,O):- grid_size(I,H,V),make_grid(V,H,O),
  forall(between(1,H,X),
    forall(between(1,V,Y),
      (X>=Y,get_color_at(X,Y,I,C),
       nb_set_local_point(Y,X,C,O)))).


not_reversed(IO):- (IO \== o-i, IO \== o-o,  IO \== i-i).
pair_i_o(i-o). pair_i_i(i-i). pair_o_i(o-i). pair_o_o(o-o).
comp_o(_-o):-!.
comp_o(_-i).


c_proportional(I,O,R):- proportional(I,O,R).
%grid_hint_io(MC,IO,In,Out,find_ogs):- maybe_fail_over_time(1.2,find_ogs(_,_,In,Out)).
%grid_hint_io(MC,IO,In,Out,comp(MC,IO,to_from(InO,OutO))):- disguise_grid(In,InO),disguise_grid(Out,OutO).


grid_hint_io_not_rev(In,Out,sized_grav_rot(H,V,II)):- once((grav_rot(In,_,II),grav_rot(Out,_,OO))),II=@=OO,grid_size(II,H,V).
grid_hint_io_not_rev(In,Out,sized_reduce_grid(H,V,II)):- once((grid_to_norm(_,In,II),grid_to_norm(_,Out,OO))),II=@=OO,grid_size(II,H,V).

grid_hint_io_1(_MC,I-_,In,_Out,size(I,H,V)):- once( grid_size(In,H,V)).
grid_hint_io_1(_MC,_IO,In,Out,value('=@=')):- In=@=Out,!.


%grid_hint_io_1_comp(_MC,_I-_,In,_Out,point_groups(Len),ListOf):- point_groups(In,Len,ListOf).
grid_hint_io_1_comp(_MC,I-_,_In,_Out,n_g(N,I),N):- fail,member(N,[1,2,3]).

speedup_fail:- true.

grid_hint_io(MC,IO,In,Out,comp(MC,IO,Hints)):- grid_hint_io_1(MC,IO,In,Out,Hints).

grid_hint_io(MC,IO,In,Out,comp_f(MC,IO,CompF,Hints)):-
   speedup_fail,
   grid_hint_io_1_comp(MC,IO,In,Out,CompF,Hints).

/*
*/
%grid_hint_io(MC,IO,In,Out,comp(MC,IO,rev_ogs3(Hints))):-  all_ogs3(Out,In,Hints).

grid_hint_io(MC,IO,In,Out,comp(MC,IO,ogs(Hints))):- speedup_fail, /*not_reversed(IO),*/ all_ogs(Hints,In,Out).
%grid_hint_io(MC,IO,In,Out,comp(MC,IO,ogs_rev(Hints))):- not_reversed(IO), all_ogs(Hints,Out,In).

grid_hint_io(MC,IO,In,Out,comp(MC,IO,Hints)):-  speedup_fail, \+ arc_option(grid_size_only), grid_size(In,IH,IV),grid_size(Out,OH,OV),
  grid_hint_iso(MC,IO,In,Out,IH,IV,OH,OV,Hints).
grid_hint_io(MC,IO,In,Out,comp(MC,IO,Hints)):- speedup_fail, not_reversed(IO), c_proportional(In,Out,Hints).

disguise_grid(I,O):- my_maplist(disguise_row,I,M),O=..[grid|M].
disguise_row(I,O):- O=..[row|I].


%grid_to_so(_II,Obj,In,_NotStrict):- Obj=keypad, In=[[X,X,X],[X,X,X],[X,X,X]].

%ensure_how(How):- var(How),!,member(How,[whole,fg_shapes(nsew)]).
%ensure_how(How):- var(How),!,member(How,[whole,i_pbox]).
%ensure_how(How):- var(How),!,member(How,[whole,complete,i_pbox]).
%ensure_how(How):- var(How),!,member(How,[whole,i_pbox,fg_shapes(nsew)]).
ensure_how(Grid,How):- var(How),!,indiv_how(Grid,How).
ensure_how(_Grid,_How).


%grid_to_objs(Grid,Objs):- findall(Obj,grid_to_objs(Grid,_,Obj),List),list_to_set(List,Objs).
grid_to_objs(Grid,Objs):- grid_to_objs(Grid,complete,Objs).
grid_to_objs(Grid,How,Objs):- ensure_grid(Grid),ensure_how(Grid,How),in_cmt(individuate_3(How,Grid,Objs)).
%grid_to_objs(Grid,Objs):- findall(Obj,grid_to_objs(Grid,complete,Obj),List),list_to_set(List,Objs).
%grid_to_obj(Grid,Obj):- grid_to_objs(Grid,Objs),member(Obj,Objs).

%grid_to_objs(Grid,How,Objs):- (nonvar(Grid)->true;test_grids(_,Grid)), ensure_how(How), individuate_3(How,Grid,Objs).

% one way to match or find an outlier is compressing things in sets minus one object.. the set that is second to the largest tells you what single object os the most differnt
objs_shapes(Objs,In):- ensure_test(TestID),test_shapes(TestID,Objs,In).

test_shapes(_TestID, Objs,In):- member(Obj,Objs),object_grid(Obj,In), learn_hybrid_shape_board(obj_shapes,In),fail.
test_shapes(TestID,_Objs,In):- ensure_test(TestID), get_hybrid_set(Set),!,member(In,Set).


%learn_hybrid_shape_board(Why,Shape):- !, warn_skip((learn_hybrid_shape(Why,Shape))).
learn_hybrid_shape_board(Why,Shape):- learn_hybrid_shape(Why,Shape).

grid_to_obj_other(VM,Grid,O):- other_grid(Grid,Grid2), grid_to_obj_other_grid(VM,Grid,Grid2,O).
grid_to_obj_other_grid(VM,Grid,Grid2,O):- grid_to_objs(Grid2,Objs),grid_to_obj_other_objs(VM,Grid,Objs,O).
grid_to_obj_other_objs(VM,Grid,Objs,O):-
  objs_shapes(Objs,In),
  maybe_ogs(ROHOV,In,Grid), member(loc2D(OH,OV),ROHOV),
  once((localpoints_include_bg(In,OPoints),offset_points(OH,OV,OPoints,GOPoints),
  %indv_props_list(Obj,Props),my_partition(is_prop_automatically_rebuilt,Props,_,PropsRetained),
  (nonvar(VM)->true;grid_vm(Grid,VM)),
  make_indiv_object(VM,[],GOPoints,O))).

grid_to_obj(Grid,O):- var(Grid),!,ensure_grid(Grid),grid_to_obj(Grid,O).
grid_to_obj(Grid,O):- grid_to_obj_other(_VM,Grid,O).
grid_to_obj(Grid,Obj):- grid_to_objs(Grid,Objs),member(Obj,Objs).

grid_vm(G,VM):- into_grid_free(G,Grid),grid_to_gid(Grid,GID),
 ((nb_current(GID,VM),is_vm(VM))
  -> true
  ; (grid_to_tid(Grid,ID1),
     into_fti(ID1,[complete],Grid,VM),
     other_grid(Grid,Grid2),
     set(VM.target_grid) = Grid2,
     nb_setval(GID,VM))).

in_to_out(in,out).
in_to_out(out,in).

select_n(_,0,[]).
select_n(List,1,[E]):- member(E,List).
select_n(List,N,[E|Set]):- select(E,List,More),Nminus1 is N - 1,select_n(More,Nminus1,Set).

/*
grid_to_obj(Grid,How,Obj):- grid_to_objs(Grid,How,Objs),member(Obj,Objs).
grid_to_obj(Grid,How,Obj):- grid_to_obj2(Grid,How,Obj).

grid_to_obj2(Grid,How,Obj):- grid_to_objs(Grid,How,Objs),select(Obj1,Objs,Rest),select(Obj2,Rest,_),area_lte(Obj1,Obj2),
  peek_vm(VM),merge_2objs(VM,Obj1,Obj2,[],Obj).
grid_to_obj2(Grid,How,Obj):- grid_to_obj3(Grid,How,Obj).

grid_to_obj3(Grid,How,Obj):- grid_to_objs(Grid,How,Objs),select(Obj1,Objs,Rest),select(Obj2,Rest,Rest2),area_lte(Obj1,Obj2),
  select(Obj3,Rest2,_Rest),area_lte(Obj2,Obj3),peek_vm(VM),
  merge_2objs(VM,Obj1,Obj2,[],Obj12),merge_2objs(VM,Obj12,Obj3,[],Obj).
grid_to_obj3(Grid,How,Obj):- grid_to_obj4(Grid,How,Obj).

grid_to_obj4(Grid,How,Obj):- grid_to_objs(Grid,How,Objs),select(Obj1,Objs,Rest),select(Obj2,Rest,Rest2),area_lte(Obj1,Obj2),
  select(Obj3,Rest2,Rest3),area_lte(Obj2,Obj3),select(Obj4,Rest3,_),area_lte(Obj3,Obj4),
  peek_vm(VM),merge_2objs(VM,Obj1,Obj2,[],Obj12),merge_2objs(VM,Obj12,Obj3,[],Obj123),merge_2objs(VM,Obj123,Obj4,[],Obj).

area_lte(Obj2,Obj3):- area(Obj2,A2),area(Obj3,A3),A2=<A3.
*/

o_first(L,O):- member(O,L),O\==[],!.
grid_get_value(Grid,smallest_object,O):- grid_to_objs(Grid,Objs),smallest_first(Objs,SF),!,o_first(SF,O).
grid_get_value(Grid, largest_object,O):- grid_to_objs(Grid,Objs),largest_first(Objs,SF),!,o_first(SF,O).
grid_get_value(Grid,object_count,Count):- grid_to_objs(Grid,Objs),length(Objs,Count).

%grid_to_so(Grid,nth1Of(Nth1,Named,H,V),In,_NotStrict):-
grid_to_so(Grid,'whole',Grid).
%grid_to_so(Grid,trimed(whole),Rect):- trim_to_rect(Grid,Rect),Grid\==Rect.
grid_to_so(Grid,In,Prop):-
  grid_to_objs(Grid,Named,Objs),
  member(Obj,Objs),
  must_det_ll((ideal_rank(Named,Objs,Obj,Prop),object_grid(Obj,In))).
grid_to_so(_Grid,Named,In):- fail,
  Named=keypad(Color,Counts),
  In=[[_X1,_X2,_X3],[_X4,_X5,_X6],[_X7,_X8,_X9]],
  flatten(In,Flat),my_maplist(count_N(Color,Flat,Counts),Flat).

ideal_rank(Named,[Obj],Obj,Named):-!.
ideal_rank(Named,_Objs,Obj,Prop):- indv_props_list(Obj,Prop),sub_var(Named,Prop),!.
ideal_rank(_Named,_Objs,Obj,Prop):- indv_props_list(Obj,Prop),ideal_prop(Prop),!.
ideal_rank(Named,Objs,Obj,nth1(Nth1,Named)):- nth1(Nth1,Objs,Obj),!.
ideal_prop(pg(_OG,Sz,1,_)):- Sz\=1.

%grid_to_so(Grid,_Out,l(Obj),In,R):- grid_to_so(Grid,Obj,In,R).
%grid_to_so(_Grid,Out,o(Obj),In,R):- grid_to_so(Out,Obj,In,R).


count_N(Color,Flat,Count,Var):- freeze(Var,count_C(Color,Flat,Count)).
count_C(Color,Flat,S+D):- member(Color,Flat),nonvar(Color),!,my_partition(cmatch(Color),Flat,Sames,Diffs),length(Sames,S),length(Diffs,D).

ensure_arc_test_properties(TestID):- ignore(get_current_test(TestID)),
 ignore(( \+ arc_test_property(TestID,common,_,_), compile_and_save_hints(TestID))).

:- decl_pt(test_prop,input_objects_first(testID)).
input_objects_first(TestID):-
  foreach_test(TestID,
  once((ensure_arc_test_properties(TestID), get_black(Black),
   arc_test_property(TestID,common,rev(comp(cbg(Black),o-i,containsAll)),containsAll(o-i))))).

:- decl_pt(test_prop,input_expands_into_output(testID)).
input_expands_into_output(TestID):-
 foreach_test(TestID,
 once((
  ensure_arc_test_properties(TestID),
  get_black(Black),
  arc_test_property(TestID,common,comp(cbg(Black),i-o,ogs),ogs(List)),
  \+ \+ (select(ogs(Trim,Whole,Strict,[loc2D(_,_)|_]),List,Rest),
         member(ogs(Trim,Whole,Strict,[loc2D(_,_)|_]),Rest))))).

/*
% grid_to_obj(Grid,[colormass,fg_shapes(colormass)],Obj),print_side_by_side(Grid,Obj).

trim_for_offset_1_1(II,In,OX,OY):-
  trim_to_rect2(II,In), !, II\=@=In,
  % print_side_by_side(II,In),
  once(ogs_11(OX,OY,In,II);(OX=OY,OX=1)).

all_ogs1(II,Out,XY):-
  findall(ogs(trim,whole,R,loc2D(XX,YY)),
     (trim_for_offset_1_1(II,In,OX,OY),maybe_ogs(R,X,Y,In,Out),XX is X-OX+1, YY is Y-OY+1),XY),!.

all_ogs2(In,Out,XY):- findall(ogs(notrim,whole,R,loc2D(XX,YY)),maybe_ogs(R,XX,YY,In,Out),XY),!.

all_ogs3(Grid,Out,XY):-
  findall(ogs(notrim,Named,R,loc2D(XX,YY)),(fail,grid_to_so(Grid,Named,In),maybe_ogs(R,XX,YY,In,Out)),XY).

all_ogs(In,Out,Set):- %member(R,[strict,loose]),
  all_ogs1(In,Out,XY1),
  all_ogs2(In,Out,XY2),
  all_ogs3(In,Out,XY3),
  flatten([XY1,XY2,XY3],XY),
  list_to_set(XY,Set).

%maybe_ogs(R,X,Y,In,Out):-  find_ogs(X,Y,In,Out)*->R=strict;(ogs_11(X,Y,In,Out),R=loose).
maybe_ogs(R,X,Y,In,Out):- maybe_ogs_color(R,X,Y,In,Out).
maybe_ogs(call_ogs(P2,R),X,Y,In,Out):-  no_repeats(IIN,(pre_ogs_alter(P2),once(grid_call_alters(P2,In,IIN)))), maybe_ogs_color(R,X,Y,IIN,Out).

%pre_ogs_alter(maybe_unbind_bg).
pre_ogs_alter([maybe_unbind_bg,maybe_fg_to_bg]).
pre_ogs_alter(P2):- rot_ogs(P2).

maybe_unbind_bg(In,NewIn):- get_black(BGC), unbind_color(BGC,In,NewIn),!,In\=@=NewIn.
maybe_fg_to_bg(In,NewIn):- get_black(Black), \+ sub_var(Black,In), unique_colors(In,UCs),
 include(is_real_fg_color,UCs,FGC),!,FGC=[FG],subst(In,FG,Black,NewIn),!, In\==NewIn.

rot_ogs(trim_to_rect).
rot_ogs(P2):- rotP0(P2).
rot_ogs([trim_to_rect,P2]):- rotP2(P2).


maybe_ogs_color(R,X,Y,In,Out):- nonvar(R),!,(R==strict->find_ogs(X,Y,In,Out);ogs_11(X,Y,In,Out)),learn_hybrid_shape_board(ogs(R),In).
maybe_ogs_color(R,X,Y,In,Out):- ogs_11(X,Y,In,Out),(find_ogs(X,Y,In,Out)->R=strict;R=loose),learn_hybrid_shape_board(ogs(R),In).
*/

%grid_hint_iso(MC,IO,In,_Out,_IH,_IV,OH,OV,is_xy_columns):- once(has_xy_columns(In,_Color,OH,OV,)).

into_color_ord(G,GO):- G=GO.

%grid_hint_iso(_MC,IO,_In,_Out,_IH,_IV,OH,OV,grid_size(IO,OH,OV)).
%grid_hint_iso(cbg(_BGC),_-O,_In,Out,_IH,_IV,OH,OV,has_x_columns(O,Y,Color)):- Area is OH*OV, Area>24, maybe_fail_over_time(10.2,has_x_columns(Out,Y,Color,_)), Y>1.
%grid_hint_iso(cbg(_BGC),_-O,_In,Out,_IH,_IV,OH,OV,has_y_rows(O,Y,Color)):- Area is OH*OV, Area>24, maybe_fail_over_time(10.2,has_y_rows(Out,Y,Color,_)), Y>1.

grid_hint_iso(cbg(BGC),IO,Out,In,GH,GV,GH,GV,Hints):-
   mapgrid(remove_color_if_same(BGC),Out,In,NewIn),
   mass(NewIn,Mass), unique_colors(In,Colors),unique_colors(NewIn,LeftOver), LeftOver\==Colors,
   (Mass==0 ->
     ( Hints=containsAll(IO),learn_hybrid_shape_board(subtraction,In)) ;
     ( Hints=containsAllExceptFor(IO,LeftOver),learn_hybrid_shape_board(subtraction,NewIn))),!.


% NewIn\=@=In,print_grid('leftover',NewIn).
%grid_hint_iso(cbg(BGC),IO,In,Out,_IH,_IV,_OH,_OV,cg(IO,Hints)):- comp_o(IO), grid_color_hint(In,Out,Hints).
%grid_hint_iso(_,IO,_In,_Out,IH,IV,  OH,OV,comp(MC,IO,size_r(H,V))):- comp_o(IO), V is rationalize(IV/OV), H is rationalize(IH/OH).
%grid_hint_iso(cbg(_BGC),IO,In,Out,_IH,_IV,_OH,_OV,cg(IO,mass_r(Mass))):- comp_o(IO), mass(In,IMass),mass(Out,OMass), IMass\==0,Mass is rationalize(OMass/IMass),Mass\==1.
/*
grid_hint_iso(cbg(_BGC),i-o,Out,_,_IH,_IV,_OH,_OV,rev(RInfo)):-
 setup_call_cleanup(flag(indiv,Was,0),
  ((findall(Info,grid_part(Out,Info),List)),flatten([List],FList),member(Info,FList), rinfo(Info,RInfo)),
                    flag(indiv,_,Was)).
grid_hint_iso(cbg(_BGC),i-o,_In,Out,_IH,_IV,_OH,_OV,RInfo):- !,
 setup_call_cleanup(flag(indiv,Was,0),
  ((findall(Info,grid_part(Out,Info),List)),flatten([List],FList),member(Info,FList), rinfo(Info,RInfo)),
                    flag(indiv,_,Was)).
*/
/*grid_hint_iso(cbg(_BGC),i-o,_In,Out,_IH,_IV,_OH,_OV,RInfo):-
 setup_call_cleanup(flag(indiv,Was,0),
  ((wno( findall(Info,grid_part(Out,Info),List)),flatten([List],FList),member(Info,FList), rinfo(Info,RInfo))),
                    flag(indiv,_,Was)).
*/
termsub_to_atom(List,OO):- is_list(List),!,my_maplist(termsub_to_atom,List,LL),
 atomic_list_concat(LL,'_',O),atomic_list_concat(['[',O,']'],OO).
termsub_to_atom(T,O):- sformat(O,'~w',[T]).

fix_iz(Z,ZZ):- atom(Z),!,ZZ=..[Z,true].
fix_iz(nth(_),'').
fix_iz(Z,ZZ):- is_list(Z),last(Z,ZZ),!.
fix_iz(iz(Z),ZZ):- nonvar(Z), !, fix_iz(Z,ZZ).
fix_iz(Z,ZZ):- compound(Z),arg(1,Z,A),is_list(A),last(A,ZZ),!.
fix_iz(Z,Z):-!.

rinfo(obj(List0),RInfo):-
  my_maplist(must_det_ll,
  [select(ord(N),List0,List),
  atomic_list_concat([obj,N],'_',Key),
  Obj = obj(List0),
  localpoints_include_bg(Obj,LocalPoints),
  %loc2D(Obj,X,Y),
  get_bg_label(BGL),
  points_to_grid(LocalPoints,Grid),mapgrid(sometimes_assume(=,BGL),Grid),
  select(shape_rep(grav,Shape),List,Rest2),mapgrid(sometimes_assume(=,BGL),Shape),
  Rest3 = Rest2,
  obj_to_oid(Obj,MyID),
  must_det_ll((remove_too_verbose(MyID,Rest3,TV00))),flatten([TV00],TV0),
  must_det_ll((include(not_too_verbose,TV0,TV1),my_maplist(fix_iz,TV1,TV)))]),!,
  member(MrT,[oform(Shape),ogrid(Grid)|TV]),once((MrT=..MrTL, RInfoM=..[Key|MrTL],rinfo(RInfoM,RInfo))).
rinfo(Info,RInfo):- Info=..[P,N,A|InfoL], atomic_list_concat([P,N],'_',PN),!, RInfo=..[PN,A|InfoL].
rinfo(Info,Info):-!.

grid_color_hint(In,Out,Hints):-
    once((unique_colors(In,IColor0),unique_colors(Out,OColor0),
    include(is_color,IColor0,IColor),
    include(is_color,OColor0,OColor),
    intersection(IColor,OColor,Shared,IOnlyC,OOnlyC))),
    sort_safe(Shared,SharedS),
    member(Hints,[shared_color(SharedS),lhs_only(IOnlyC),rhs_only(OOnlyC)]).



entire_row([Color|Row]):- entire_row(Color,Row).
entire_row(Color,Row):- my_maplist(=@=(Color),Row).
%entire_row(black,Row):- !, my_maplist(=(black),Row).
mentire_row(C2,OtherRow):- entire_row(C2,OtherRow),!.
% mentire_row(C2,OtherRow):- include(\==(C2),OtherRow,Missing),  once((length(Missing,L),L=<1,my_maplist(=(C2),Missing))),!.

type_hint_pred(grid_area/1).
grid_area(In,Area):- grid_size(In,H,V), Area is H*V.

remove_color_if_same(BGC,X,Y,BGC):- X=@=Y,!.
remove_color_if_same(_BGC,_X,Y,Y).


has_xy_columns(In,Color,X,Y,BorderNumsX,BorderNumsY):-
  grid_area(In,HV), HV > 24,
  %grid_size(In,GH,GV),
  has_x_columns(In,X,Color,BorderNumsX),
  has_y_rows(In,Y,Color,BorderNumsY),
  once(X>1 ; Y>1),!.

has_xy_chunks(In,Color,Chunks):-
  has_xy_columns(In,Color,X,Y,BorderNumsX,BorderNumsY),
  make_grid(X,Y,Chunks),
  %pp(slicing(BorderNumsX,BorderNumsY,onto(X,Y))),
  gather_chunks(Color,In,Chunks,1,1,X,Y,BorderNumsX,BorderNumsY).

grid_x_y_area(In,X,Y,Color,Cells):-
  has_xy_chunks(In,Color,Chunks),
  nth1(Y,Chunks,Row),nth1(X,Row,Cells).


gather_chunks(_Color,_In,_Chunks,_X,Y,_GX,GY,_BorderNumsX,_BorderNumsY):- Y>GY,!.
gather_chunks(Color,In,Chunks,X,Y,GX,GY,BorderNumsX,BorderNumsY):-
  nth1(Y,Chunks,Row),nth1(X,Row,Cell),
  nth1(X,BorderNumsX,SX,RX),nth1(X,RX,EX),
  nth1(Y,BorderNumsY,SY,RY),nth1(Y,RY,EY),
  SX1 is SX + 1,
  SY1 is SY + 1,
  EX1 is EX - 1,
  EY1 is EY - 1,
  clip(SX1,SY1,EX1,EY1,In,Clip),
  % print_grid((X,Y),Clip), pp(clipped(EX,EY,into(X,Y))),
  % once(Clip = [_,[_,Cell|_]|_];Clip = [[Cell|_]|_]),
  get_black(Black),
  once(((Clip = [_,[_,C|_]|_];Clip = [[C|_]|_];(member(CR,Clip),member(C,CR))),C\==Color,C\==Black,Cell=C);Cell=Clip),
  (GX =< X -> (Yi is Y + 1, Xi is 1) ; (Xi is X+1, Yi is Y)),
  gather_chunks(Color,In,Chunks,Xi,Yi,GX,GY,BorderNumsX,BorderNumsY).


conjoin_color(Color,Value,ord(Value,Color)).

x_columns(In,Out):- into_grid(In,G), has_x_columns(G,_X,Color,BorderNums),  must_det_ll(ground(In+Color)), my_maplist(conjoin_color(Color),BorderNums,Out).
y_rows(In,Out):-  into_grid(In,G), has_y_rowz(G,_X,Color,BorderNums), my_maplist(conjoin_color(Color),BorderNums,Out).

has_x_columns(In,X,Color,BorderNums):- ((rot90(In,In90), !, has_y_rows(In90,X,Color,BorderNums))).
has_y_rows(In,Y,Color,BorderNums):- has_y_rowz(In,Y,Color,BorderNums).

%has_y_rowz(_In,_Y,_Color,_BorderNums):- arc_option(grid_size_only), !,fail.
has_y_rowz(In,Y,Color,BorderNums):- plain_var(Color), !, unique_colors(In,Colors),reverse(Colors,ColorsR),!,
  member(Color,ColorsR),is_color(Color), has_y_rowz(In,Y,Color,BorderNums).

has_y_rowz(In,Y,Color,BorderNums):- must_det_ll(ground(In+Color)),
  has_y_columns1(In,Y,Color,BorderNums),
  must_det_ll(is_color(Color)),
  nop(\+ illegal_column_data1(In,Color,BorderNums)),
  \+ ((append(_,[RowBefore,RowNext|_],In), entire_row(Color,RowBefore), entire_row(Color,RowNext))).

has_y_columns1(In,Y,Color,BorderNums):-
  append([First|_],[Last],In), mentire_row(Color,First),mentire_row(Color,Last),!,
  findall(Nth,(nth1(Nth,In,Row),entire_row(Color,Row)),BorderNums),
  length(BorderNums,YM1),YM1>2, Y is YM1 - 1.

has_y_columns1(In,Y,Color,Out):-   must_det_ll(ground(In+Color)),
  append([First|_],[Last],In),
  \+ mentire_row(Color,Last), \+ mentire_row(Color,First),!,
  findall(Nth,(nth1(Nth,In,Row),entire_row(Color,Row)),BorderNums), BorderNums \==[],
  length(BorderNums,YM1),Y is YM1 + 1,
  length(In,GY1),GY is GY1 + 1,
  append([0|BorderNums],[GY],Out).

% bleeding of this color
illegal_column_data1(In,Color,BorderNums):-
  nth1(Nth,In,OtherRow),\+ member(Nth,BorderNums),
  append(_,[C1,C2|_],OtherRow),C1 == C2, C1 == Color,!.

illegal_column_data1(In,Color,_):-
(append(_,[RowBefore,RowNext|_],In), entire_row(Color,RowBefore), entire_row(Color,RowNext)),!.

% completely differnt colored border
illegal_column_data1(In,Color,BorderNums):-  fail,
  nth1(Nth,In,OtherRow),\+ member(Nth,BorderNums),
  enum_colors(C2),C2\==Color,entire_row(C2,OtherRow),!.

illegal_column_data(In,Color,BorderNums):-
  member(Nth,BorderNums),
  NthLess is Nth+1 , NthMore is Nth+2,
  \+ member(NthLess,BorderNums),
  \+ member(NthMore,BorderNums),
  nth1(NthLess,In,Row1),
  nth1(NthMore,In,Row2),
  (member(C1,Row2),member(C2,Row1)),
  C1 == C2, C1 == Color,!.


/*
ensure_the_alt_grids(I_O,TestID):-
 forall(ensure_test(TestID),
  forall(is_arc_task(TestID,ExampleNum),
    once(ensure_the_alt_grids(I_O,TestID,ExampleNum)))).

ensure_the_alt_grids(I_O,TestID,ExampleNum):-
  arc_test_property(TestID,ExampleNum,has_blank_alt_grid,_),!.
ensure_the_alt_grids(I_O,TestID,ExampleNum):-
  ensure_test(TestID),
  ignore((training_only_examples(ExampleNum),
  forall(kaggle_arc(TestID,ExampleNum,I,O),
    once(ensure_the_alt_grids(I_O,TestID,ExampleNum,I,O))))),!.
*/
%detect_all_training_hints(TestID),!,
ensure_the_alt_grids(I_O,TestID,ExampleNum):-
   with_current_test(ensure_the_alt_grids(I_O),TestID,ExampleNum).
ensure_the_alt_grids(I_O
,TestID,ExampleNum,In,Out):-
  with_trn_pairs(TestID,ExampleNum,In,Out,
    ensure_the_alt_grids(I_O,TestID,ExampleNum,[],In,Out)).

ensure_the_alt_grids(I_O,TestID,ExampleNum,_,_,_):- arc_test_property(TestID,ExampleNum,ori(I_O,_),_),arc_test_property(TestID,ExampleNum,iro(I_O,_),_),!.
ensure_the_alt_grids(I_O,TestID,ExampleNum,_,_,_):- load_file_dyn_pfc(TestID), arc_test_property(TestID,ExampleNum,iro(I_O,_),_),!.

ensure_the_alt_grids(I_O,TestID,ExampleNum,XForms,In,Out):-  same_sizes(In,Out), !, save_the_alt_grids_now(I_O,TestID,ExampleNum,XForms,In,Out),!.
ensure_the_alt_grids(I_O,TestID,ExampleNum,XForms,In,Out):-  nop(same_sizes(In,Out)), save_the_alt_grids_now(I_O,TestID,ExampleNum,XForms,In,Out).
ensure_the_alt_grids(I_O,TestID,ExampleNum,XForms,In,Out):- fail,
  once((some_norm(In,OpI,NIn), print_ss(some_norm(OpI),In,NIn),
  some_norm(Out,OpO,NOut), print_ss(some_norm(OpO),Out,NOut),
  same_sizes(NIn,NOut),
  once(NIn\=@=In;NOut\=@=Out))),
  save_the_alt_grids_now(I_O,TestID,ExampleNum,[ops(OpI,OpO)|XForms],NIn,NOut),!.

ensure_the_alt_grids(I_O,TestID,ExampleNum,_XForms,In,Out):-
  assert_test_property(TestID,ExampleNum,iro(I_O,none),In),
  assert_test_property(TestID,ExampleNum,ori(I_O,none),Out),!.


%just_grav_rot(Grid1,Grid2,GRF):- just_grav_rot1(Grid1,Grid2,GR)
just_grav_rot(Grid1,Grid2,GR):-
   findall(Diffs-GR1, (trial_rot(Grid1,GR1),trial_rot(Grid2,GR2), score_diff(GR1,GR2,Diffs)), List),
   sort(List,Set),Set=[_-GR|_],!.
%just_grav_rot(Grid1,_Grid2,GR):- grav_rot(Grid1,_,GR),!,flipV(GR,GRF).

score_diff(G1,G2,Diffs):- overlapping_rows(G1,G2,L),L\==[],length(L,Len),!,Diffs is -Len.
overlapping_rows(G1,G2,L):- length(G1,GL),MinL is GL div 2,length(LS1,MinL),length(LS2,MinL),append(LS1,_,G1),append(LS2,_,G2),!,
  overlapping_rows1(LS1,LS2,L),L\==[].
overlapping_rows(G1,G2,L):- overlapping_rows1(G1,G2,L).
overlapping_rows1(G1,G2,[R1|L]):- select(R1,G1,GR1),select(R2,G2,GR2),R1=@=R2,!,overlapping_rows1(GR1,GR2,L).
overlapping_rows1(_,_,[]).

trial_rot(G1,G2):- rotP2(P2),call(P2,G1,G2).

save_the_alt_grids_now(I_O,TestID,ExampleNum,XForms,In,Out):-
 must_det_ll((
  must_maplist(save_grid_calc(I_O,TestID,ExampleNum,XForms,In,Out),
     [/*just_grav_rot,*/common_after_reduce,fg_intersectiond,fg_intersectiond_mono,cell_minus_cell,mono_cell_minus_cell]),
  %ignore(( \+ has_blank_alt_grid(TestID,ExampleNum))),!,
  must_maplist(save_grid_calc(I_O,TestID,ExampleNum,XForms,In,Out),[minus_overlapping_image,overlapping_image]))).

colors_of(O,Cs):- unique_fg_colors(O,Cs),!.

common_after_reduce(In,Out,New):-
  reduce_grid_fixed(In,OpsIn,In2),check_ops(OpsIn,In2,In),print_ss(OpsIn,In,In2),
  reduce_grid_fixed(Out,OpsOut,Out2),check_ops(OpsOut,Out2,Out),print_ss(OpsOut,Out,Out2),
  print_ss(common_after_reduce,In2,Out2),
  find_bgc(In+Out,BG),
  mapgrid(fg_intersectiond_mono1(BG),In2,Out2,New),!.

reduce_grid_fixed(In,OpsIn,In3):-
  must_det_ll((
   grav_rot(In,RotG,In1),
   undo_p2(RotG,RotR),
   check_ops(RotR,In1,In),
   reduce_grid(In1,Ops,In2),
   check_ops(Ops,In2,In1),
   grav_rot(In2,RotG2,In3),
   undo_p2(RotG2,RotR2),
   append([RotR2|Ops],[RotR],OpsIn),
   check_ops(OpsIn,In3,In),
   !)),!.

check_ops(Ops,In2,In3):- grid_call(Ops,In2,InC), !, InC =@= In3.

/*save_the_alt_grids_now2(TestID,ExampleNum,XForms,In,Out).
save_the_alt_grids_now2(TestID,ExampleNum,XForms,In,Out):-
 must_det_ll((
    colors_of(In.cell_minus_cell(Out),CsIn),
    colors_of(Out.cell_minus_cell(In),CsOut),
    colors_of(In,CsInO),
    colors_of(Out,CsOutO),
    ExtraColors = color_set(CsInO).add(CsOutO).rem(CsIn).rem(CsOut),
    gset(In.overlapping_image)=In.inv(unbind_color(ExtraColors)),
    gset(Out.overlapping_image)=Out.inv(unbind_color(ExtraColors)),
    assert_test_property(TestID,ExampleNum,ori(I_O,[overlapping_image|XForms]),Out.overlapping_image),
    assert_test_property(TestID,ExampleNum,iro(I_O,[overlapping_image|XForms]),In.overlapping_image))),!.*/

minus_overlapping_image(In,Other,MOI):-  overlapping_image(In,Other,OLIn), grid_minus_grid(In,OLIn,MOI).

/*
overlapping_image(In,Other,RIO):- detect_iro(I_O,In,Other,TestID,ExampleNum,iro),
   arc_test_property(TestID,ExampleNum,iro(I_O,[overlapping_image]),RIO),!.
overlapping_image(In,Other,ROI):- detect_ori(I_O,In,Other,TestID,ExampleNum,ori),
   arc_test_property(TestID,ExampleNum,ori(I_O,[overlapping_image]),ROI),!.
*/
overlapping_image(In,Other,OLIn):-
  colors_of(In.cell_minus_cell(Other),CsIn),
  colors_of(Other.cell_minus_cell(In),CsOut),
  colors_of(In,CsInO),
  colors_of(Other,CsOutO),
  ExtraColors = color_set(CsInO).add(CsOutO).rem(CsIn).rem(CsOut),
  OLIn=In.inv(unbind_color(ExtraColors)).

%32e9702f %33b52de3

save_grid_calc(I_O,TestID,ExampleNum,XForms,In,Out,Op):-
  if_t(  ori(I_O,[fg_intersectiond])\==ori(I_O,[Op|XForms]),
  (
 ignore((on_x_rtrace(call(Op,In,Out,RIO)))),
 ignore((on_x_rtrace(call(Op,Out,In,ROI)))),
 ignore((on_x_rtrace(print_ss(wqs(iro_ori(I_O,Op,TestID,ExampleNum,XForms)),RIO,ROI)))),
 if_t(is_grid(RIO),assert_test_property(TestID,ExampleNum,iro(I_O,[Op|XForms]),RIO)),
 if_t(is_grid(ROI),assert_test_property(TestID,ExampleNum,ori(I_O,[Op|XForms]),ROI)),
 ignore((
   reduce_by_blur(ROI,ROI2),
   reduce_by_blur(RIO,RIO2),
   if_t((RIO2\==RIO;ROI2\==ROI),
   on_x_rtrace(print_ss(blur(Op,TestID,ExampleNum,XForms),RIO2,ROI2))))))).

reduce_by_blur(I,RIO2):- non_fg_to_black(I,R),I\==R,!,reduce_by_blur(R,RIO2).
reduce_by_blur(I,RIO2):- trim_to_rect(I,R),I\==R,!,reduce_by_blur(R,RIO2).
reduce_by_blur(I,RIO2):- reduce_by_blur2(I,R),I\==R,!,reduce_by_blur(R,RIO2).
reduce_by_blur(I,RIO2):- c_r(reduce_by_blur2,I,R),I\==R,!,reduce_by_blur(R,RIO2).
reduce_by_blur(I,I).

is_deletable(C,List):- maplist(=(C),List),!.
reduce_by_blur2([],[]).
reduce_by_blur2([R],[R]).
reduce_by_blur2([R|IO],RIO2):- is_list(R),is_deletable(black,R),!,reduce_by_blur2(IO,RIO2).
reduce_by_blur2([R1,R,R2|IO],[R1,R|RIO2]):- color_list(R1,CL1),color_list(R2,CL2),CL1=@=CL2,!, reduce_by_blur2(IO,RIO2).
reduce_by_blur2([R1,R2|IO],[R1|RIO2]):- color_list(R1,CL1),color_list(R2,CL2),CL1=@=CL2,!, reduce_by_blur2(IO,RIO2).
reduce_by_blur2([R|List],[R|RIO]):-reduce_by_blur2(List,RIO).
%reduce_by_blur(W,[R,black|List],RIO):-reduce_by_blur(W,[R|List],RIO).
%reduce_by_blur(W,R,RIO):- clumped(R,C),length(C,W),maplist(arg(1),C,RIO).

color_list(R,CL):- my_exclude(=(black),R,RR),clumped(RR,C),maplist(arg(1),C,CL).



same_sizes([I|In],[O|Out]):- length(I,Cols),length(O,Cols),length(In,Rows0),length(Out,Rows0).


some_norm(Out,[trim_to_rect|Op],NOut):- notrace((trim_to_rect(Out,Mid),Out\=@=Mid)),!,some_norm(Out,Op,NOut).
some_norm(Out,[grav_rot(Rot)],NOut):- once(grav_rot(Out,Rot,NOut)),Out\=@=NOut,!.
some_norm(Out,[],Out).


has_blank_alt_grid(TestID,ExampleNum):- blank_alt_grid_count(TestID,ExampleNum,N),!,N>0.

blank_alt_grid_count(TestID,ExampleNum,N):-
  arc_test_property(TestID,ExampleNum,has_blank_alt_grid,N),!.
blank_alt_grid_count(TestID,ExampleNum,N):-
  pair_i_o(I_O),
  ensure_the_alt_grids(I_O,TestID,ExampleNum),
  findall(_,(alt_grids(TestID,ExampleNum,_,ROI),once(mass(ROI,Mass)),Mass=0),L),length(L,N),!,
  assert_test_property(TestID,ExampleNum,has_blank_alt_grid,N),
  ignore((N==0,
    retractall(arc_test_property(TestID,ExampleNum,iro(I_O,[_|_]),_)),
    retractall(arc_assert_test_property(TestID,ExampleNum,ori(I_O,[_|_]),_)),
    dmsg(warn(noBlankFor(TestID,ExampleNum))))).


alt_grids(TestID,ExampleNum,Name,ROI):- arc_test_property(TestID,ExampleNum,Name,ROI),is_grid(ROI).
alt_grids(TestID,ExampleNum,Name,RIO,ROI):-
  arc_test_property(TestID,ExampleNum,iro(I_O,[Name|_]),RIO),
  arc_test_property(TestID,ExampleNum,ori(I_O,[Name|_]),ROI).


:- include(kaggle_arc_footer).
%globalpoints(grid,points)
