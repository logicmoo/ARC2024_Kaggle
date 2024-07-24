/*
  this is part of (H)MUARC  https://logicmoo.org/xwiki/bin/view/Main/ARC/

  This work may not be copied and used by anyone other than the author Douglas Miles
  unless permission or license is granted (contact at business@logicmoo.org)
*/


:- include(kaggle_arc_header).

:- dynamic(is_for_ilp/4).
:- dynamic(ac_unit/4).
clear_scene_rules(TestID):-   
  abolish(ac_unit/4),dynamic(ac_unit/4),
  abolish(arc_cache:trans_rule_db/4),dynamic(arc_cache:trans_rule_db/4),
  %forall(ac_unit(TestID,Ctx,P,PSame),ignore(retract(ac_unit(TestID,Ctx,P,PSame)))),!,
  clear_object_dependancy(TestID).


% Define predicates that shouldn't be noticed
%dont_notice(global2G(_,_)).
dont_notice(giz(_)).
dont_notice(iz(i_o(_))).
dont_notice(iz(stype(_))).
dont_notice(global2G(_,_)).
dont_notice(iz(symmetry_type(rollD, _))).
dont_notice(link(contains,_)).
dont_notice(links_count(sees, _)).
dont_notice(occurs_in_links(contained_by,_)).
dont_notice(occurs_in_links(sees,_)).
dont_notice(oid(_)).
dont_notice(pg(_,pen(_), rankLS ,_)).
dont_notice(pg(_,iz(_),rankLS,_)).
dont_notice(pg(_,iz((_)), rank1, _)).
%dont_notice(pg(_, iz(_), rankLS, largest)).
%dont_notice(link(sees(_),_)).
%dont_notice(links_count(sees,_)).
%dont_notice(occurs_in_links(sees,_)).
dont_notice(P):- compound(P),arg(_,P,E),is_gridoid(E),!.
dont_notice(P):- compound(P),!,compound_name_arity(P,F,_),!,dont_notice(F).
dont_notice(P):- compound(P),arg(_,P,E),E==norm,!,fail.
dont_notice(F):- \+ atom(F),!,fail.
dont_notice(oid).
dont_notice(giz).
dont_notice(shape_rep).
dont_notice(grid_rep).

% Define predicates that should be noticed
do_notice(pg(_,_,rank1,_)).
do_notice(pg(_,_,_,_)).

% Predicate to check if P should be noticed
ok_notice(P):- \+ \+ do_notice(P),!.
ok_notice(P):- \+ dont_notice(P).


dont_induce(link(sees(_),_)).
%dont_induce(giz(_)).
%dont_induce(pg(_,_,_,_)).
dont_induce(pg(_,iz(_),rankLS,_)).
dont_induce(pg(_,_,rankLS,_)).
dont_induce(size2D(_)).
%dont_induce(global2G(_,_)).
dont_induce(vis2D(_,_)).
dont_induce(P):- \+ compound(P),!,fail.
dont_induce(P):- sub_term(G,P),compound(G),is_grid(G),!.
dont_induce(P):- sub_term(G,P),compound(G),is_object(G),!.
dont_induce(grid(_)).
%dont_induce(iz(_)).
dont_induce(iz(_)).

%dont_induce(P):- compound(P),compound_name_arguments(P,_,[X]),number(X).
dont_induce(grid_ops(comp,_)). 
%dont_induce(iz(stype(_))). 
dont_induce(iz(symmetry_type(_,_))). % rot2D(rot90),grid_ops(comp,[]),changes([]),iz(fg_or_bg(iz_fg)),links_count(contained_by,0),links_count(contains,0),cc(plain_var,0),cc(bg,0),global2G(9,9),iz(sizeGX(1)),unique_colors_count(1),empty_area(0),iz(algo_sid(comp,sid_12)),iz(algo_sid(norm,sid_12)),iz(symmetry_type(flipDHV,false)),iz(symmetry_type(rot180,true)),iz(symmetry_type(flipV,true)),iz(symmetry_type(flipH,true)),iz(symmetry_type(rot270,false)),iz(symmetry_type(rot90,false)),iz(symmetry_type(sym_h_xor_v,false)),iz(symmetry_type(sym_hv,true)),iz(filltype(solid)),iz(colormass),iz(media(shaped)),iz(info(birth(colormass))),pg(_1477530,mass(_1477540),rankLS,largest),pg(_1477550,iz(sizeGX(_1477564)),rankLS,smallest),pg(_1477574,iz(sizeGY(_1477588)),rankLS,largest),pg(_1477598,iz(cenGX(_1477612)),rankLS,largest),pg(_1477622,iz(cenGY(_1477636)),rankLS,largest),pg(_1477646,unique_colors_count(_1477656),rankLS,smallest),pg(_1477666,empty_area(_1477676),rankLS,smallest).
%dont_induce(mass(2)). % center2G(2,9),vis2D(1,2),loc2D(2,8),grid_ops(norm,[rot90]),link(sees([cc(e,2)]),o_?_459_t_08ed6ac7_trn_1_out),cc(fg,2),iz(sizeGY(2)),iz(cenGY(9)),rotSize2D(grav,2,1),area(2),iz(sid(sid_12)),\+link(sees([cc(w,2)]),o_i_109_t_08ed6ac7_trn_0_out),\+link(sees([cc(w,2)]),o_?_641_t_08ed6ac7_trn_0_out),\+link(sees([cc(w,2)]),o_?_337_t_08ed6ac7_trn_0_out),\+link(sees([cc(w,2)]),o_Z_24_t_08ed6ac7_trn_1_out),\+link(sees([cc(w,2)]),o_?_459_t_08ed6ac7_trn_1_out).
dont_induce(oid(_)). % center2G(2,9),vis2D(1,2),loc2D(2,8),mass(2),grid_ops(norm,[rot90]),link(sees([cc(e,2)]),o_?_459_t_08ed6ac7_trn_1_out),cc(fg,2),iz(sizeGY(2)),iz(cenGY(9)),rotSize2D(grav,2,1),area(2),iz(sid(sid_12)),\+link(sees([cc(w,2)]),o_i_109_t_08ed6ac7_trn_0_out),\+link(sees([cc(w,2)]),o_?_641_t_08ed6ac7_trn_0_out),\+link(sees([cc(w,2)]),o_?_337_t_08ed6ac7_trn_0_out),\+link(sees([cc(w,2)]),o_?_532_t_08ed6ac7_trn_1_out),\+link(sees([cc(w,2)]),o_Z_24_t_08ed6ac7_trn_1_out),\+link(sees([cc(w,2)]),o_?_459_t_08ed6ac7_trn_1_out).
dont_induce(cc(plain_var,0)).
dont_induce(links_count(_,_)).
dont_induce(empty_area(_)).
dont_induce(unique_colors_count(_)).


% Define predicates that should be deduced
do_deduce(link(sees(_),_)).
do_deduce(rot2D(_)).
do_deduce(pen(_)).
do_deduce(iz(sid(_))).
do_deduce(iz(X)):- !,do_deduce(X),!.
do_deduce(P):- compound(P),compound_name_arguments(P,_,[X,Y]),number(X),number(Y).
%do_deduce(P):- compound(P),compound_name_arguments(P,_,[X,Y]),comparable_value(X),comparable_value(Y).
do_deduce(rotSize2D(grav,_,_)).
do_deduce(grid_rep(norm,_)). % pen([cc(blue,1)]),pg(_1489874,mass(_1489884),rank1,4).
do_deduce(grid_ops(norm,_)). % pen([cc(blue,1)]),pg(_1489874,mass(_1489884),rank1,4).

% Predicate to check if P should be deduced
ok_deduce(obj(L)):- nonvar(L),!.
ok_deduce(P):- \+ \+ dont_induce(P), !, fail.
ok_deduce(P):- \+ \+ do_deduce(P),!.
ok_deduce(P):- good_for_rhs(P),!.
%ok_deduce(P):- \+ \+ dont_notice(P),!,fail.









% Check if two values have the same property names but are not equal

%into_rhs(edit(_,_,_,R),P):- !, into_rhs(R,P).
maybe_deref_value(X1,Y1):- compound(X1), X1=edit(_,_,_,E1),!,ensure_deref_value(E1,Y1).
%maybe_deref_value(X1,Y1):- compound(X1), once(into_rhs(X1,E1)), E1\=@=X1,!,ensure_deref_value(E1,Y1).

ensure_deref_value(X1,E1):- maybe_deref_value(X1,E1),!.
ensure_deref_value(X1,X1).

other_val(X1,X2):- maybe_deref_value(X1,E1), !, other_val(E1,X2).
other_val(X2,X1):- maybe_deref_value(X1,E1), !, other_val(X2,E1).
other_val(X1,X2):- negated_s_lit(X1,P1), 
  ( negated_s_lit(X2,P2) -> other_val(P1,P2) ; other_val(X2,P1)).

other_val(X1,X2):- X1\=@=X2, same_prop_names(X1,X2),!.

same_prop_names(X1,X2):- maybe_deref_value(X1,E1), !, same_prop_names(E1,X2).
same_prop_names(X2,X1):- maybe_deref_value(X1,E1), !, same_prop_names(X2,E1).
same_prop_names(X1,X2):- 
  compound(X1),compound(X2), same_functor(X1,X2),!,
  make_unifiable_u(X1,U1), make_unifiable_u(X2,U2),!,  U1 =@= U2.

% Helper predicate to create a unifiable version of a term
make_unifiable_u(X1,X2):- maybe_deref_value(X1,E1), !, make_unifiable_u(E1,X2).
make_unifiable_u(P,U):- copy_term(P,PP),make_unifiable_u1(PP,U),!.
make_unifiable_u1(Atom,U):- is_ftVar(Atom),!,Atom=U.
make_unifiable_u1(Atom,U):- atomic(Atom),!,freeze(U,atomic(U)).
make_unifiable_u1(link(sees(L),A),link(sees(U),B)):- !, maplist(make_unifiable_u,[A|L],[B|U]),!.

make_unifiable_u1(P,U):- assume_prop(P),!,P=U.
make_unifiable_u1(X1,U1):- make_unifiable_cc(X1,U1),!.
make_unifiable_u1(X1,X1).

make_unifiable_ov(I,O):- make_unifiable_u(I,O),!.

make_unifiable_f(I,O):- make_unifiable_ov(I,O).
make_unifiable_f(I,O):- same_functor(I,O),!.


same_context(IO,Ctx):- nonvar(Ctx),!,io_to_cntx1(Out,In_Out_Out),once(Ctx==In_Out_Out;Ctx==Out),!, (once(IO=In_Out_Out;IO=Out)).
same_context(IO,Ctx):- nonvar(IO),!, io_to_cntx1(Out,In_Out_Out), once(IO==In_Out_Out;IO ==Out),!, (once(Ctx=In_Out_Out;Ctx=Out)).
same_context(IO,Ctx):- freeze(IO,same_context(IO,Ctx)),freeze(Ctx,same_context(IO,Ctx)).

io_to_cntx(IO,Ctx):- io_to_cntx1(IO,Ctx).
io_to_cntx1(in,in_out).
%io_to_cntx1(in,in_out_out).
io_to_cntx1(out,in_out_out).
io_to_cntx1(out,s(_)).
io_to_cntx1(X,X).


solve_via_scene_change:-  get_pair_mode(entire_suite),!, cls, 
 forall_count(all_arc_test_name(TestID),
   solve_via_scene_change(TestID)).

solve_via_scene_change:-  clsmake, ensure_test(TestID), %make,
 solve_via_scene_change(TestID).


solve_via_scene_change(TestID):-  
 must_det_ll((
  print_test(TestID),
  force_clear_test(TestID),
  clear_scene_rules(TestID),
  repress_some_output(learn_solve_via_grid_change(TestID)),
  ExampleNum=tst+_)),
  forall(kaggle_arc(TestID,ExampleNum,_,_),
     solve_via_scene_change_rules(TestID,ExampleNum)).

when_entire_suite(Goal,_Goal2):- get_pair_mode(entire_suite),!, call(Goal).
when_entire_suite(_Goal,Goal2):- call(Goal2).

maybe_repress_output(Goal):- call(Goal).
%repress_output(Goal):- wots(_,Goal).
repress_output(Goal):- call(Goal).
%repress_some_output(Goal):- when_entire_suite(with_pair_mode(whole_test,repress_output(Goal)),Goal).
repress_some_output(Goal):- call(Goal).

learn_solve_via_grid_change(TestID):- 
 repress_output((
  must_det_ll((
   detect_pair_hints(TestID),  
   save_test_hints_now(TestID),
   learn_grid_size(TestID))))),
 repress_some_output((
  must_det_ll(( 
   not_warn_skip(ensure_propcounts(TestID)),  
   clear_scene_rules(TestID),
   time(compute_scene_change(TestID)))))).

solve_via_scene_change_rules(TestID,ExampleNum):-
 must_det_ll((
  maybe_repress_output((ensure_scene_change_rules(TestID))),
  kaggle_arc(TestID,ExampleNum,In,Expected),
  duplicate_term(In,InOrig),  
  % predict_grid_size_now(TestID,In,PX,PY),
  obj_group5(TestID,ExampleNum,in,ROptions,TempObjs),TempObjs\==[],
  grid_to_tid(In,TID),
  into_fti(TID,ROptions,In,VM),
  individuate_1(VM),
  Objs = VM.objs,
  ensure_scene_change_rules(TestID),
  print_object_dependancy(TestID),
  repress_some_output(print_scene_change_rules_if_different(solve_via_scene_change_rules,ac_listing,TestID)),
  print_ss(wqs(expected_answer(ExampleNum)),Objs,Expected),
  dash_chars)),!,

 repress_some_output( once(enter_solve_obj(VM,TestID,ExampleNum,ROptions,Objs,ObjsO))),

 must_det_ll((
  dash_chars,
  print_ss(wqs(solve_via_scene_change_rules(ExampleNum)),Objs,ObjsO),
  dash_chars,
  into_solid_grid(ObjsO,OurSolution1),
  maybe_resize_our_solution(TestID,In,OurSolution1,OurSolution),
  into_solid_grid(Expected,ExpectedOut),
  count_difs(ExpectedOut,OurSolution,Errors))),
 !,
  (Errors == 0 ->  
   (nop((when_entire_suite(banner_lines(cyan,1),banner_lines(green,4)))),
    print_ss(wqs(solve_via_scene_change(TestID,ExampleNum,errors=Errors)),ExpectedOut,OurSolution),
    print_scene_change_rules(rules_at_time_of_success(green),TestID),force_report_count(1))
    ;(banner_lines(red,10),!,
      %show_time_of_failure(TestID),
      banner_lines(red,10),
      print_scene_change_rules(rules_at_time_of_failure(red),TestID),
      print_grid(in,InOrig),
      print_ss(wqs(solve_via_scene_change(TestID,ExampleNum,errors=Errors)),ExpectedOut,OurSolution),
      banner_lines(red,10),
      force_report_count_plus(-1),!,
      %when_entire_suite(print_test(TestID),true),
      banner_lines(red,1),!,fail,
      %if_t((findall(_,ac_rules(_,_,_,_),L), L == []), (get_scene_change_rules(TestID,pass2_rule_new,Rules),pp_ilp(Rules))),banner_lines(red,5),
      %print_object_dependancy(TestID),
      % only really fail for tests
      (ExampleNum == tst+_) -> (!,fail); true)).
      

resize_our_solution(PX,PY,OurSolution1,OurSolution):-
  once(ground(PX+PY)
     ->resize_grid(PX,PY,OurSolution1,OurSolution)
      ;notrace(=(OurSolution1,OurSolution));notrace(trim_outside2(OurSolution1,OurSolution))).

maybe_resize_our_solution(TestID,In,OurSolution1,OurSolution):-
  predict_grid_size_now(TestID,In,PX,PY),resize_our_solution(PX,PY,OurSolution1,OurSolution),!.


enter_solve_obj(VM,TestID,ExampleNum,ROptions,Objs,ObjsO):- solve_obj_group(VM,TestID,ExampleNum,ROptions,in_out,Objs,ObjsO),!.

enter_solve_obj(VM,TestID,ExampleNum,ROptions,Objs,ObjsO):- 
  solve_obj_group(VM,TestID,ExampleNum,ROptions,in_out,Objs,ObjsM1),
  solve_obj_group(VM,TestID,ExampleNum,ROptions,in_out_out,ObjsM1,ObjsM2),
  solve_obj_group(VM,TestID,ExampleNum,ROptions,s(_),ObjsM2,ObjsO), ObjsO \==[],!.

score_rule(Ways,Obj,Rule,Score):- is_object(Rule), \+ is_object(Obj),!,score_rule(Ways,Rule,Obj,Score).

score_rule(Ways,Obj,Rule,Score):- 
  into_lhs(Rule,PCond), into_rhs(Rule,P), 
  % indv_props_list(Obj,Props), \+ member(P,Props), %\+ \+ ((member(E,Props),member(E,PCond))),
 %  once( ( \+ is_bg_object(Obj) ); sub_var(black,PCond)),
    score_rule(Ways,Obj,PCond,P,Score).

score_rule(exact,Obj,PCond,_P,Score):-  score_all_props(PCond,Obj,S0),S0>0.3,!,Score=1000.
score_rule(_Ways,Obj,PCond,_P,Score):- %fail,
   obj_atoms(Obj,A),
   obj_atoms(PCond,B),
     intersection(A,B,Good,_Extra,_Bad),
     length(Good,Score).

has_all_props(CanL,Obj):- maplist(inv_has_prop(Obj),CanL).
score_all_props(CanL,Obj,Score):- maplist(inv_has_prop_score(Obj),CanL,ScoreL),sumlist(ScoreL,Score),!.

assume_prop(P):- \+ \+ assume_prop1(P),!.
assume_prop(P):- \+ \+ assume_prop2(P),!.
assume_prop(P):- \+ \+ is_debug_info(P).

is_debug_info(Var):- \+ compound(Var),!,fail.
is_debug_info(info(_)).
is_debug_info(iz(P)):-!,is_debug_info(P).

%not_assumed(P):- is_unbound_prop(P),!.
%not_assumed(P):- \+ assume_prop(P).

assume_prop1(P):- dont_notice(P).
assume_prop2(giz(_)).
assume_prop2(grid_sz(_)).
assume_prop2(global2G(_,_)).
assume_prop2(was_oid(_)).
assume_prop2(oid(_)).


max_prop_score(P,0.1):- assume_prop1(P),!.
max_prop_score(P,0.2):- assume_prop2(P),!.
max_prop_score(P,1.0):- ground(P),!.
max_prop_score(P,0.0):- is_unbound_prop(P),!.
max_prop_score(_,0.7).

inv_has_prop(Obj,Prop):- has_prop(Prop,Obj),!.
inv_has_prop(Obj,Prop):- inv_has_prop_score(Obj,Prop,Score),Score>0.

inv_has_prop_score(Obj,Prop, Score):- max_prop_score(Prop,Score), inv_has_prop2(Obj,Prop).

inv_has_prop2(_O,P):- \+ \+ assume_prop(P),!.
inv_has_prop2(Obj,pg(A,B,C,D)):- !, has_prop(Obj,pg(A,B,C,D)).
inv_has_prop2(Obj, \+ Prop):- !, \+ inv_has_prop(Obj,Prop).
inv_has_prop2(Obj,grid_ops(norm,Props)):- !, has_prop(grid_ops(norm,VProps),Obj),!,Props=@=VProps.
inv_has_prop2(Obj,grid_rep(norm,Props)):- !, has_prop(grid_rep(norm,VProps),Obj),!,Props=@=VProps.
inv_has_prop2(Obj,Prop):- has_prop(Prop,Obj).

match_ok(_,B):- plain_var(B),!.
match_ok(A,B):- \+ \+ A = B.

two_way_mapping(Ways,Obj,_Objs,Rules,Rule,Rules):-
  match_ok(Ways,exact),!,
  Res = res(Score,Rule),
  findall(Res,(member(Rule,Rules),score_rule(Ways,Obj,Rule,Score)),Results),
  sort(Results,ResultsSorted),
  last(ResultsSorted,Res),
  select(Rule,Rules,_RulesRest),!.
  %select(Obj,Objs,ObjsRest).

two_way_mapping(Ways,Obj,Objs,Rules,Rule,RulesRest):-
  \+ match_ok(Ways,exact),
   once((sort_by_jaccard(Obj,Rules,[Rule|RulesRest]),
   sort_by_jaccard(Rule,Objs,[PickedObj|_ObjsRest]))), 
    ((PickedObj == Obj)-> nop(match_ok(Ways,two_ways)) ; match_ok(Ways,one_way)),
  write_atoms_info(Ways,PickedObj),
  write_atoms_info(paired2,Rule),
  %maplist(write_atoms_info(leftover1),RulesRest),
  %maplist(write_atoms_info(leftover2),ObjsRest),
  !.
      
write_atoms_info(N,E):- obj_atoms(E,Atoms),!,%sort(Atoms,AE),
  nl,writeln(N=Atoms).

apply_rules_to_objects(_,_,_,[],[]):-!.
apply_rules_to_objects(_,_,[],_,[]):-!.


apply_rules_to_objects(Ways,Mapping,Rules,Objs,[apply(Rule,Obj)|More]):- 
   match_ok(Mapping,one_to_one),
   \+ match_ok(Ways,exact),

   two_way_mapping(two_way,Obj,Objs,Rules,Rule,RulesRest),

   select(Obj,Objs,ObjsRest),
   apply_rules_to_objects(Ways,Mapping,RulesRest,ObjsRest,More).

apply_rules_to_objects(Ways,Mapping,Rules,Objs,[apply(Rule,Obj)|More]):-
   match_ok(Mapping,each_object_once),
   select(Obj,Objs,ObjsRest),
  two_way_mapping(Ways,Obj,Objs,Rules,Rule,_),
   apply_rules_to_objects(Ways,Mapping,Rules,ObjsRest,More).

apply_rules_to_objects(Ways,Mapping,Rules,Objs,[apply(Rule,Obj)|More]):-
   match_ok(Mapping,each_rule_once),
   select(Rule,Rules,RulesRest),
   two_way_mapping(Ways,Rule,Rules,Objs,Obj,ObjRest),!,
   apply_rules_to_objects(Ways,Mapping,RulesRest,ObjRest,More).

apply_rules_to_objects(Ways,Mapping,[_|Rules],Objs,More):- 
 match_ok(Mapping,each_rule_once),!,
 apply_rules_to_objects(Ways,Mapping,Rules,Objs,More).

apply_rules_to_objects(Ways,Mapping,Rules,[_|Objs],More):-
 match_ok(Mapping,each_object_once),!,
 apply_rules_to_objects(Ways,Mapping,Rules,Objs,More).

apply_rules_to_objects(_Ways,_Mapping,_Rules,_Objs,[]).




solve_obj_group(VM,TestID,_ExampleNum,_ROptions,Ctx,ObjsIn,ObjsO):-
  my_exclude(is_bg_object_really,ObjsIn,Objs),
  (Rule = (Ctx:rhs(P):- obj_atoms(PCond))),
  %io_to_cntx(IO_,Ctx), 
  findall_vset_R(Rule,(ac_rules(TestID,Ctx,P,PCond)), Rules),
  member(Ways-Strategy,[exact-_,two_way-one_to_one,_-_]), 
  apply_rules_to_objects(Ways,Strategy,Rules,Objs,Todo), Todo\==[],
  maplist(into_solid_grid_strings,Todo,PStr),
  unwonk_ansi(PStr,PPStr),
  pp_ilp((see_Strategy(Ways-Strategy)=PPStr)), Todo\==[],
  maplist(pp_ilp(3),Todo),
  run_todo_output(VM,Todo,ObjsO),ObjsO\==[],!.


solve_obj_group(VM,TestID,_ExampleNum,_ROptions,Ctx,ObjsIn,ObjsO):-
  my_exclude(is_bg_object_really,ObjsIn,Objs),
  (Rule = (Ctx:rhs(P):- obj_atoms(PCond))),
  %io_to_cntx(IO_,Ctx), 
  findall_vset_R(Rule,(ac_rules(TestID,Ctx,P,PCond)), Rules),
  member(Ways-Strategy,[exact-_,two_way-one_to_one,_-_]), 
  apply_rules_to_objects(Ways,Strategy,Rules,Objs,Todo), Todo\==[],
  maplist(into_solid_grid_strings,Todo,PStr),
  unwonk_ansi(PStr,PPStr),
  pp_ilp((see_Strategy(Ways-Strategy)=PPStr)), Todo\==[],
  run_todo_output(VM,Todo,ObjsO),ObjsO\==[],!.

/*
solve_obj_group(_VM,TestID,_ExampleNum,Ctx,_ROptions,Objs,ObjsO):-
 must_det_ll((
  %PreObjsL,PostObjsL,_USame,_UPA2,_UPB2
  %map_pairs_info_io(TestID,_ExampleNum,Ctx,_Step,_TypeO,PreObjsL,PostObjsL,_USame,_UPA2,_UPB2),   
  CLS = prop_to_can(TestID,Ctx,SomeP,O,Can1,Cant,Preconds),
  findall(CLS,prop_to_can(TestID,Ctx,SomeP,O,Can1,Cant,Preconds),FwdRules),% prop_can(TestID,Ctx,SomeP,Preconds)
  maplist(apply_to_objs(Ctx,Objs),FwdRules,ObjsOFL),append(ObjsOFL,ObjsOF),
  flatten([ObjsOF],ObjsO),
  print_ss(Ctx,Objs,ObjsO))), ObjsO \==[],!.


solve_obj_group(_VM,_TestID,_ExampleNum,_Ctx,_ROptions,Objs,Objs).

  */
/*
apply_to_objs(Ctx,Objs,CLS1,ObjsO):-
 must_det_ll((
  CLS1 = prop_to_can(_TestID,Ctx,SomeP,O,_Can1,Cant,Preconds),
  CLS2 = cl(Preconds,O,SomeP),
  include(can_cant_props(Preconds,Cant),Objs,SelectedObjects),
  %maybe_apply
  findall(NewObjs,
     (%member(CLS1,FwdRules),  
      maybe_apply(CLS2,SelectedObjects,NewObjs)), NewObjL),
  flatten([Objs,NewObjL],NewObjs),
  variant_list_to_set(NewObjs,ObjsO))),!.
*/



/*
solve_obj_group(_VM,TestID,_ExampleNum,Ctx,_ROptions,Objs,ObjsO):-
  CLS = cl(Preconds,O,Cant),
  findall(CLS,% prop_can(TestID,Ctx,SomeP,Preconds)
    (prop_to_can(TestID,IO_,P,_O,_Can1,Cant,Can),
     include(can_cant_props(Can,Cant),Objs,SelctedObjects),

   prop_to_can(TestID,Ctx,SomeP,O,_Can1,Cant,Preconds),FwdRules),
  findall(NewObjs,
     (member(CLS,FwdRules),  maybe_apply(CLS,Objs,NewObjs)),
     NewObjL),
  flatten([Objs,NewObjL],NewObjs),
  variant_list_to_set(NewObjs,ObjsO),!.
maybe_apply(CLS,Objs,NewObj):-   
  CLS = cl(Preconds,O,_SomeP),
  maplist(has_all_props(Preconds),Objs),
  NewObj=O,!.
maybe_apply(CLS,Objs,NewObj):-   
  CLS = cl(Preconds,O,_SomeP),
  select(Obj,Objs,Rest),member(Obj2,Rest),
  flat_props([Obj,Obj2],Props),
  intersection(Props,Preconds,Matched,Missing,_Extra),
  pp_ilp(matched=Matched),
  Missing==[],
  NewObj=O,!.

%copy_obj(Rules,Objs,_TestID,_ExampleNum,_IO_,_ROptions,Obj,Obj):- is_bg_object(Obj),!.
copy_obj(Rules,Objs,VM,_TestID,_EN,_Ctx,_ROptions,Obj,OObj):- 
 must_det_ll(( %print_grid(copy_obj,Obj),
    sort_by_jaccard(Obj,Rules,[Rule|_]),
    pp_ilp(Rule),
    print_grid(Obj),
    sort_by_jaccard(Rule,Objs,[_PickedObj|_]),
    edit_object(VM,Rule,Obj,OObj))).
    %print_grid(copy_obj(Rules,Objs,Ps),Obj,OObj))),!.
%copy_obj(Rules,Objs,_VM,_TestID,_ExampleNum,_Ctx,_ROptions,Obj,Obj).
   %map_pairs_info_io(TestID,_EN,Ctx,_Step,_TypeO,_A,_B,USame,UPA2,UPB2)
   

%              findall(l2r(Info,Pre,Post),arc_cache:map_pairs(TestID,_,_IO_2,Info,Pre,Post),List),
%              variant_list_to_set(List,Set)
 
copy_obj(_VM,_TestID,_ExampleNum,_IO_,_ROptions,Obj,Obj).
%solve_obj(VM,_TestID,_ExampleNum,IO_,_ROptions,Obj,OObj):-
%  edit_object(VM,pen([cc(black,1)]),Obj,OObj).
%solve_obj(VM,_TestID,_ExampleNum,IO_,_ROptions,_Obj,[]).
*/

run_todo_output(VM,[],NewObjs):- NewObjs = VM.objs,!.
run_todo_output(VM,[apply(Rule,Obj)|TODO],NewObjs):-
  edit_object(VM,Rule,Obj),
  run_todo_output(VM,TODO,NewObjs).

clone_object(I,O):- duplicate_term(I,O).

edit_object(_VM,Ps,_Obj):- Ps==[],!.
%edit_object(VM,Ps,Obj):- Ps==[],!,edit_object(VM,pen([cc(black,1)]),Obj).
edit_object(VM,[H|T],Obj):- !,edit_object(VM,H,Obj),edit_object(VM,T,Obj).
edit_object(VM,copy_step(_,perfect_in_out),Obj):- addRObjects(VM,Obj).
edit_object(VM,creation_step(_,_,Props),Obj):-
  clone_object(Obj,NewObj), edit_object(VM,Props,NewObj).
edit_object(VM,Ps,Obj):-
  must_det_ll((
   %wots(SS,print(Ps)),
   override_object_1(VM,Ps,Obj,NewObj),
   remObjects(VM,Obj),
   addOGSObjects(VM,NewObj),
   addObjects(VM,NewObj),
   into_solid_grid([NewObj],SG),SG=_,
   dash_chars,
   %print_ss(override_object(SS),[Obj],[NewObj]),
   nop((
   indv_props_list(Obj,PL1),
   indv_props_list(NewObj,PL2),
   intersection(PL1,PL2,_Same,Removed,Added),
    pp_ilp(([[removed=Removed],[added=Added]])))))).

override_object_1(_VM,[],IO,IO):-!.
override_object_1(VM,[H|T],I,OO):- !, override_object_1(VM,H,I,M),!, override_object_1(VM,T,M,OO).
override_object_1(_VM,pen([cc(Red,N)]),Obj,NewObj):- pen(Obj,[cc(Was,N)]), !,
  subst001(Obj,Was,Red,NewObj),!.
override_object_1(_VM,loc2D(X,Y),Obj,Obj):- (X>3;Y>3),!.
override_object_1(VM,loc2D(X,Y),Obj,NewObj):- loc2D(Obj,WX,WY),  
  globalpoints(Obj,WPoints),deoffset_points(WX,WY,WPoints,LPoints),  
  offset_points(X,Y,LPoints,GPoints),rebuild_from_globalpoints(VM,Obj,GPoints,NewObj).
override_object_1(VM,Term,I,O):- sub_compound(rhs(P),Term), !,  override_object_1(VM,P,I,O).
override_object_1(VM,Term,I,O):- sub_compound(edit(P),Term), !,  override_object_1(VM,P,I,O).
override_object_1(VM,Term,I,O):- sub_compound(edit(_,_,P),Term), !, override_object_1(VM,P,I,O).
override_object_1(VM,Term,I,O):- sub_compound(edit(_,_,_,P),Term), !, override_object_1(VM,P,I,O).

%override_object_1(VM,Term,I,O):- sub_term(Sub,Term), compound(Sub),Sub=edit(_,_,_,P),  !, pp_ilp(Term), I=O,!. %override_object_1(VM,P,I,O).


override_object_1(_VM,O,I,OO):- override_object(O,I,OO),!.


mapping_step(    in_out).
mapping_step( in_in_out).
mapping_step(in_out_out).
mapping_step(   out_out).


p_of_post(P,Post):- indv_props_list(Post,Props),member(P,Props).



from_same_pair(Post,Pre):-
  has_prop(giz(example_num(trn+N)),Post),
  has_prop(giz(example_num(trn+N)),Pre).
     
     
obj_in_or_out(Pair,IO_):- is_mapping(Pair),!,
    get_mapping_info(Pair,Info,_In,_Out),arg(3,Info,IO_).
obj_in_or_out(Obj,IO_):- must_det_ll(is_object(Obj)),has_prop(giz(g(I_O)),Obj),!,I_O=IO_.
obj_in_or_out(Obj,IO_):- has_prop(iz(i_o(I_O)),Obj),!,I_O=IO_.
%obj_in_or_out(Obj,I_O):- is_input_object(Obj)-> IO_ =out ; IO_ =in.

is_pre_cond_obj(Obj,in_out):- obj_in_or_out(Obj,in).
is_pre_cond_obj(Obj,in_out_out):- obj_in_or_out(Obj,in);obj_in_or_out(Obj,out).
is_pre_cond_obj(Obj,in_in_out):- obj_in_or_out(Obj,in).
is_pre_cond_obj(Obj,s(X)):- nonvar(X), is_pre_cond_obj(Obj,out).
is_pre_cond_obj(Obj,IO_):- obj_in_or_out(Obj,IO_).
is_pre_cond_obj(Obj,in):- is_pre_cond_obj(Obj,in_out).


is_post_cond_obj(Obj,in_out):- obj_in_or_out(Obj,out).
is_post_cond_obj(Obj,in_out_out):- obj_in_or_out(Obj,out).
is_post_cond_obj(Obj,in_in_out):- obj_in_or_out(Obj,out).
is_post_cond_obj(Obj,s(X)):- nonvar(X), is_post_cond_obj(Obj,out).
is_post_cond_obj(Obj,out):- obj_in_or_out(Obj,out).
is_post_cond_obj(Obj,in):- is_post_cond_obj(Obj,in_out).










common_props([O|Objs],Props):-
   indv_props_list(O,List),
   findall(P,(member(P,List),\+ dont_notice(P),forall(member(E,Objs),has_prop(P,E))),Props).

current_example_nums(TestID,ExampleNum):- 
  (var(TestID)->get_current_test(TestID);true),
  ignore((ExampleNum=trn+_)), kaggle_arc(TestID,ExampleNum,_,_). 



save_how_io(HowIn,HowOut):- 
  get_current_test(TestID),save_how_io(TestID,HowIn,HowOut).
save_how_io(TestID,HowIn,HowOut):- 
  assert_test_property(TestID,common,indiv_how(in),HowIn),
  assert_test_property(TestID,common,indiv_how(out),HowOut),!.

obj_group_gg(TestID,ExampleNum,InC,OutC):- obj_group_pair(TestID,ExampleNum,InC,OutC).

obj_group_pair1(TestID,ExampleNum,InC,OutC):-
   current_example_nums(TestID,ExampleNum),
   no_repeats_var(OutC), % set_example_num(ExampleNum),
   obj_group5(TestID,ExampleNum,in,HowIn,InC), InC\==[],  length(InC,L),

   (((obj_group5(TestID,ExampleNum,out,HowOut,OOut),length(OOut,L),save_how_io(TestID,HowIn,HowOut)))
     ;obj_group5(TestID,ExampleNum,out,_,OOut)),   
   OutC = OOut.

obj_group_pair(TestID,ExampleNum,InC,OutC):-
   %findall(NV,(arc_test_property(TestID,ExampleNum,N,V),append_term(N,V,NV)),Props),
  
  obj_group_pair1(TestID,ExampleNum,InCC,OutCC),
  InC = InCC, OutC = OutCC.
  %Grid= VM.start_grid,
  %hv_point_value(1,1,Grid,PointNW),
  %hv_point_value(1,V,Grid,PointSW),
  %hv_point_value(H,1,Grid,PointNE),
  %hv_point_value(H,V,Grid,PointSE),
%%  once((kaggle_arc(TestID,ExampleNum,In,Out),grid_props(In,InProps),grid_props(Out,OutProps))),
%%  InC = [obj([giz(g(in))|InProps])|InCC], OutC = [obj([giz(g(out))|OutProps])|OutCC].
  %append(Props,[mass(0),vis2D(H,V),birth(named_grid_props),loc2D(1,1),iz(flag(always_keep)),iz(media(image)),iz(flag(hidden))],AllProps),
  %make_indiv_object(VM,AllProps,[PointNW,PointSW,PointNE,PointSE],_),!.
/*
objs_other_than_example(TestID,ExampleNum,InOut,Others):-
  findall(O,(current_example_nums(TestID,OExampleNum),
    ExampleNum\==OExampleNum,
    obj_group_io(TestID,OExampleNum,InOut,Objs),
    member(O,Objs)),Others).
*/
all_io_objs(TestID,InOut,Others):-
  findall(O,(current_example_nums(TestID,ExampleNum), 
   obj_group_io(TestID,ExampleNum,InOut,Objs), member(O,Objs)),Others).

with_individuated_cache(TF,Goal):- locally(nb_setval(use_individuated_cache,TF),Goal).

obj_group_io(TestID,ExampleNum,InOut,Objs):-
 arc_test_property(TestID,common,indiv_how(InOut),How),!,
 current_example_nums(TestID,ExampleNum), 
 with_individuated_cache(true,
   once(obj_group5(TestID,ExampleNum,InOut,How,Objs))).

obj_group_io(TestID,ExampleNum,InOut,Objs):- 
 current_example_nums(TestID,ExampleNum),
 with_individuated_cache(true,
   once(obj_group5(TestID,ExampleNum,InOut,_,Objs))).

obj_group5(TestID,ExampleNum,InOut,ROptions,Objs):- var(TestID),
  ensure_test(TestID),!,obj_group5(TestID,ExampleNum,InOut,ROptions,Objs).  
obj_group5(TestID,ExampleNum,InOut,ROptions,Objs):- var(ROptions),
 arc_test_property(TestID,common,indiv_how(InOut),ROptions),!,
 obj_group5(TestID,ExampleNum,InOut,ROptions,Objs).

obj_group5(TestID,ExampleNum,InOut,ROptions,Objs):-
  arc_cache:individuated_cache(TestID,TID,_GOID,ROptions,Objs), 
  once((sub_var(ExampleNum,TID),sub_var(InOut,TID))),!.

obj_group5(TestID,ExampleNum,InOut,ROptions,Objs):-
 kaggle_arc_io(TestID,ExampleNum,InOut,Grid),
  set_example_num(ExampleNum),
 other_grid(Grid,Other),
 with_other_grid(Other,
  
                 ((fail, arc_cache:individuated_cache(TestID,TID,GOID,ROptions,Objs), Objs\==[],
  once((testid_name_num_io_0(TID,_,Example,Num,InOut),
        testid_name_num_io_0(GOID,_,Example,Num,InOut))))*-> true ; grid_to_objs(Grid,ROptions,Objs))).


%show_object_dependancy(_TestID):-  !.
% =============================================================
show_object_dependancy(TestID):-  
% =============================================================
 ensure_test(TestID),
 clear_object_dependancy(TestID),
 learn_object_dependancy(TestID),
 print_object_dependancy(TestID).

% =============================================================
learn_object_dependancy(TestID):-
% =============================================================
 ensure_test(TestID),
  must_det_ll((
  ensure_individuals(TestID),
 ignore((ExampleNum=trn+_)),
 forall(kaggle_arc(TestID,ExampleNum,_,_),
	  learn_object_dependancy(TestID,ExampleNum)),
  merge_object_dependancy(TestID))).

learn_object_dependancy(TestID,ExampleNum):-
 %current_example_nums( TestID,ExampleNum),
 must_det_ll(( obj_group_pair(TestID,ExampleNum,LHSObjs,RHSObjs),
   maybe_learn_object_dependancy(TestID,ExampleNum,RHSObjs,LHSObjs))).

maybe_learn_object_dependancy(TestID,ExampleNum,_RHSObjs,_LHSObjs):-
  arc_cache:prop_dep(TestID,ExampleNum,_,_,_,_,_,_,_),
  arc_cache:trans_rule_db(TestID,ExampleNum,_,_),
  !.

maybe_learn_object_dependancy(TestID,ExampleNum,RHSObjs,LHSObjs):-
  learn_object_dependancy(TestID,ExampleNum,RHSObjs,LHSObjs).

learn_object_dependancy(TestID,ExampleNum,RHSObjs,LHSObjs):- 
 must_det_ll((
              RHSObjs\==[],LHSObjs\==[],
  Step=0,Ctx=in_out,IsSwapped=false,
  normalize_objects_for_dependancy(RelaxedLvl,TestID,ExampleNum,RHSObjs,LHSObjs,RHSObjsOrdered,LHSObjsOrdered),
    %prinnt_sbs_call(LHSObjsOrdered,RHSObjsOrdered),  
  TM = _{rhs:RHSObjsOrdered, lhs:LHSObjsOrdered},
  calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,Step,Ctx,[],LHSObjsOrdered,RHSObjsOrdered,Groups),
  %pp_ilp(groups=Groups),
  assert_map_pairs(TestID,ExampleNum,Ctx,Groups))).

normalize_objects_for_dependancy(RelaxedLvl,_TestID,_ExampleNum,RHSObjs,LHSObjs,RHSObjsOrdered,LHSObjsOrdered):-
  include(is_fg_object,LHSObjs,LHSObjsO),
  include(is_fg_object,RHSObjs,RHSObjsO),
  sort_by_jaccard(one(RHSObjsO),LHSObjsO,LHSObjsOrdered),
  sort_by_jaccard(one(LHSObjsO),RHSObjsO,RHSObjsOrdered),
  !.


prinnt_sbs_call([],[]):- dash_chars,!.
prinnt_sbs_call([G1|WP1],[G2|WP2]):- !,
  length(WP1,L1),length(WP2,L2),
   print_ss(blue,G1,L1,G2,L2),
   prinnt_sbs_call(WP1,WP2),!.
prinnt_sbs_call(R,[]):- !, dash_chars,!, wdmsg(input), print_side_by_side_l(1,R),!,dash_chars,dash_chars.
prinnt_sbs_call([],R):- !, dash_chars,!, wdmsg(output), print_side_by_side_l(1,R),!,dash_chars,dash_chars.
  

prinnt_sbs_call(WP1,WP2):- 
 must_det_ll((
    wots(S1,maplist(print_grid_nl,WP1)),
    wots(S2,maplist(print_grid_nl,WP2)),
    atomic_list_concat(SS10,'\n',S1),
    atomic_list_concat(SS20,'\n',S2),
    max_width(SS10,SS1,100), 
    max_width(SS20,SS2,100),
    %SS10=SS1,SS20=SS2,
    make_longest_len(SS1,SS2,SSS1,SSS2),
    print_to_string11(write,0,SSS1,SSS1A,Lad1),Lad is Lad1,
    maplist(print_to_string_using_up(Lad,''),SSS1A,SSS1B), 
    print_side_by_side0(SSS1B,_,SSS2))).

print_grid_nl(G):- nl,print_grid(G),nl.



/*
pair_obj_one_rule(TestID,Ctx,id(Ex,Step),Rule):- 
  Rule = r(Type,LHS,RHS,S,L,R, Ex, Step),
  pair_obj_props(TestID,Ex,Ctx,_Info,Step,Type,LHS,RHS,S,L,R).

trans_rules_combined(TestID,Ctx,Combined):-
  findall(Rule1,pair_obj_one_rule(TestID,Ctx,_RuleID1,Rule1),Rules),
  combine_trans_rules(Rules,CombinedRules),
  member(Combined,CombinedRules).


combine_more(Excluded,TestID,Ctx,Rule1,Combined):- 
   pair_obj_one_rule(TestID,Ctx,RuleID2,Rule2),
   \+ member(RuleID2,Excluded),
   combine_rule(Rule1,Rule2,NewRule),
   combine_more([RuleID2|Excluded],TestID,Ctx,NewRule,Combined).
combine_more(_Excluded,_TestID,_Ctx,Combined,Combined).
*/
assert_map_pairs(TestID,ExampleNum,Ctx,Group):- is_list(Group),!,maplist(assert_map_pairs(TestID,ExampleNum,Ctx),Group).
assert_map_pairs(TestID,ExampleNum,Ctx,l2r(Info,In,Out)):-!,
 must_det_ll((
  into_list(In,InL),into_list(Out,OutL),

  trans_rule(Info,InL,OutL,TransRules), TransRules \==[],
   
   assert_map_pairs(TestID,ExampleNum,Ctx,TransRules),
  %assertz_new(arc_cache:trans_rule_db(TestID,ExampleNum,Ctx,l2r(Info,InL,OutL))),
  once((diff_l_r(InL,OutL,Same,InFlatP,OutPFlat),
   unnumbervars(v5('$VAR'(0),'$VAR'('_'),Same,InFlatP,OutPFlat),UNV))),
                    must_det_ll((UNV = v5(_FG1,_BG1,USame,InFlatProps,OutFlatProps))),
  %pp_ilp(l2r(Info,InL,OutL)),!,  
  assertz_new(arc_cache:prop_dep(TestID,ExampleNum,Ctx,Info,InL,OutL,USame,InFlatProps,OutFlatProps)))).
assert_map_pairs(_TestID,_ExampleNum,_Ctx,call(Rule)):-!,must_det_ll(Rule),!.
assert_map_pairs(TestID,ExampleNum,Ctx,TransRule):-
   assertz_new(arc_cache:trans_rule_db(TestID,ExampleNum,Ctx,TransRule)),!.


merge_object_dependancy(TestID):-
  forall(arc_cache:trans_rule_db(TestID,ExampleNum,Ctx,TransRule),
   merge_map_pairs(TestID,ExampleNum,Ctx,TransRule)).
merge_map_pairs(_TestID,_ExampleNum,_Ctx,_TransRule).



:- dynamic(arc_cache:trans_rule_db/4).

% print the object dependencies for this test
% =============================================================
print_object_dependancy(TestID):-
% =============================================================
  /*if_t(( \+ arc_cache:map_pairs(TestID,_,_,_,_,_)),
   ( dash_chars,forall(arc_cache:map_group(TestID,_,_IO_,Group),
    once(((dash_chars,dash_chars,pp_ilp(Group),dash_chars,dash_chars)))))),
  dash_chars,*/
% findall_vset_R(l2r(Info,Pre,Post),arc_cache:map_pairs(TestID,_,_IO_2,Info,Pre,Post),Set1),
% maplist(pp_ilp,Set1),
 dash_chars,dash_chars,
 %pp_ilp_vset(l2r(Info,Pre,Post),pair_obj_info(TestID,_,_,Info,Pre,Post)),
 with_vset(
   arc_cache:prop_dep(TestID,_ExampleNum,_Ctx,Info,LHS,RHS,_USame,_InFlatProps,_OutFlatProps),
       pp_ilp(l2r(Info,LHS,RHS))),

 dash_chars,dash_chars.
 %if_t(Set1 =@= Set2,  wdmsg('Set 2 the same')),
 %if_t(Set1 \=@= Set2,

findall_vset_R(T,G,R):- findall_vset(T,G,S), vsr_set(S,R). %,reverse(R,L).
vsr_set(L,P):- flatten([L],F),vs_set(F,R),reverse(R,P).
vs_set(L,P):- variant_list_to_set(L,S),sort(S,P).
%pp_ilp_vset(G,T):- dash_chars,with_vset(G,pp_ilp(C)).
with_vset(G,C):- term_variables(C,Vs),findall_vset_R(Vs,G,L),forall(member(Vs,L),call(C)).
%:- dynamic(arc_cache:map_pairs/6).
:- abolish(prop_dep/9).
:- abolish(arc_cache:prop_dep/9).
:- dynamic(arc_cache:prop_dep/9).
:- abolish(arc_cache:trans_rule_db/4).
:- dynamic(arc_cache:trans_rule_db/4).
%:- dynamic(arc_cache:causes/5).
/*
pair_obj_props(TestID,ExampleNum,Ctx,Info,Step,TypeO,LHS,RHS,USame,InFlatProps,OutPFlatrops):-
 ensure_test(TestID),
  Info = info(Step,_IsSwapped,Ctx,TypeO,TestID,ExampleNum,ExampleNum),
  arc_cache:prop_dep(TestID,_,_,Info,LHS,RHS,USame,InFlatProps,OutPFlatrops).

pair_obj_props(TestID,ExampleNum,Ctx,Step,TypeO,LHS,RHS,USame,InFlatProps,OutPFlatrops):-  
 ensure_test(TestID),
  Info = info(Step,_IsSwapped,Ctx,TypeO,TestID,ExampleNum,ExampleNum),
  arc_cache:prop_dep(TestID,_,_,Info,LHS,RHS,USame,InFlatProps,OutPFlatrops).

pair_obj_info(TestID,ExampleNum,Ctx,Info,LHS,RHS):-
 ensure_test(TestID),
  Info = info(_Step,_IsSwapped,Ctx,_TypeO,TestID,ExampleNum,ExampleNum),
  arc_cache:prop_dep(TestID,_,_,Info,LHS,RHS,_USame,_InFlatProps,_OutPFlatrops).
*/

ok_intersect(L1,L2):-
  member(E1,L1),member(E2,L2),
  other_val(E1,E2),!,fail.
ok_intersect(_,_).

/*
pair_obj_props54321(TestID,Ex,Ctx,Info,Step,Type,LHS,RHS,S,L,R):- 
 ensure_test(TestID),
  trans_rules_combined(TestID,Ctx,Combined),
  r(Type,LHS,RHS,S,L,R, Ex, Step) = Combined,
  Info = info(Step,_IsSwapped,Ctx,Type,TestID,Ex, Ex).
*/
pair_obj_props54321(TestID,Ex,Ctx,Info,Step,Type,LHS,RHS,S,L,R):-
 ensure_test(TestID),
  (pair_obj_props5(TestID,Ex,Ctx,Info,Step,Type,LHS,RHS,S,L,R)*->true;
  (pair_obj_props4(TestID,Ex,Ctx,Info,Step,Type,LHS,RHS,S,L,R)*->true;
  (pair_obj_props3(TestID,Ex,Ctx,Info,Step,Type,LHS,RHS,S,L,R)*->true;
  (pair_obj_props2(TestID,Ex,Ctx,Info,Step,Type,LHS,RHS,S,L,R)*->true;
   pair_obj_props1(TestID,Ex,Ctx,Info,Step,Type,LHS,RHS,S,L,R))))).


into_solid_objs(RHS,RHSO):- flatten([RHS],RHSM),
  maplist(into_obj,RHSM,RHSO).


points_to_objects(ShapeType,Obj,Points,IndvPoints,NextScanPoints):- 
    %Points = VM.lo_points,
    %shape_min_points(VM,ShapeType,IndvPoints),
    %copy_term(ShapeType,OptionC),ShapeType=ShapeType,    
  select(C-HV,Points,Rest0), allowed_color(ShapeType,C), % non_free_fg(C), % \+ is_black(C),
  allowed_dir(ShapeType,Dir),adjacent_point_allowed(C,HV,Dir,HV2),select(C-HV2,Rest0,ScanPoints),
  all_individuals_near(_VM,Dir,ShapeType,C,[C-HV,C-HV2],ScanPoints,NextScanPoints,IndvPoints),%!,
  %make_indiv_object(VM,[iz(ShapeType),iz(media(shaped)),birth(i(ShapeType)),birth(i2(ShapeType))],IndvPoints,Obj),
   % meets_indiv_criteria(VM,ShapeType,IndvPoints),
  %set(VM.lo_points) = NextScanPoints,
  %assumeAdded(VM,Obj),
  %cycle_back_in(VM,OptionC).
  true,
  Obj = obj([globalpoints(IndvPoints)]).
/*
pair_obj_props1(TestID,Ex,Ctx,Info,Step,Type,LHS,RHS,S,L,R):- fail, % fail here is since we should not allow any single example to make a rule
  pair_obj_props(TestID,Ex,Ctx,Info,Step,Type,LHS,RHS,S,L,R).

pair_obj_props2(TestID,trn+Ex1,Ctx,Info,Step,Type,LHS,RHS,S,L,R):- 
  Info = info(Step1,_IsSwapped,Ctx,Type,TestID,trn+Ex1,trn+Ex1+Ex2),
  Ex1#<Ex2,
  pair_obj_props(TestID,trn+Ex1,Ctx,_Info1,Step1,Type1,LHS1,RHS1,S1,L1,R1),
  pair_obj_props(TestID,trn+Ex2,Ctx,_Info2,Step2,Type2,LHS2,RHS2,S2,L2,R2),
  combine_rule( do_requires, Step1,Type1,LHS1,RHS1,S1,L1,R1 , Step2,Type2,LHS2,RHS2,S2,L2,R2, Step,Type,LHS,RHS,S,L,R).

pair_obj_props3(TestID,trn+Ex1,Ctx,Info,Step,Type,LHS,RHS,S,L,R):-
  Info = info(Step1,_IsSwapped,Ctx,Type,TestID,trn+Ex1,trn+Ex1+Ex2+Ex3),
  Ex1#<Ex2,Ex2#<Ex3,
  pair_obj_props(TestID,trn+Ex1,Ctx,_Info1,Step1,Type1,LHS1,RHS1,S1,L1,R1),
  pair_obj_props(TestID,trn+Ex2,Ctx,_Info2,Step2,Type2,LHS2,RHS2,S2,L2,R2),
  combine_rule( do_requires, Step1,Type1,LHS1,RHS1,S1,L1,R1 , Step2,Type2,LHS2,RHS2,S2,L2,R2, Step12,Type12,LHS12,RHS12,S12,L12,R12),
  pair_obj_props(TestID,trn+Ex3,Ctx,_Info3,Step3,Type3,LHS3,RHS3,S3,L3,R3),
  combine_rule( do_requires, Step12,Type12,LHS12,RHS12,S12,L12,R12, Step3,Type3,LHS3,RHS3,S3,L3,R3, Step,Type,LHS,RHS,S,L,R).

pair_obj_props4(TestID,trn+Ex1,Ctx,Info,Step,Type,LHS,RHS,S,L,R):-
  Info = info(Step1,_IsSwapped,Ctx,Type,TestID,trn+Ex1,trn+Ex1+Ex2+Ex3+Ex4),
  Ex1#<Ex2,Ex2#<Ex3,Ex3#<Ex4,
  pair_obj_props(TestID,trn+Ex1,Ctx,_Info1,Step1,Type1,LHS1,RHS1,S1,L1,R1),
  pair_obj_props(TestID,trn+Ex2,Ctx,_Info2,Step2,Type2,LHS2,RHS2,S2,L2,R2),
  combine_rule( do_requires, Step1,Type1,LHS1,RHS1,S1,L1,R1 , Step2,Type2,LHS2,RHS2,S2,L2,R2, Step12,Type12,LHS12,RHS12,S12,L12,R12),
  pair_obj_props(TestID,trn+Ex3,Ctx,_Info3,Step3,Type3,LHS3,RHS3,S3,L3,R3),
  combine_rule( do_requires, Step12,Type12,LHS12,RHS12,S12,L12,R12, Step3,Type3,LHS3,RHS3,S3,L3,R3, Step123,Type123,LHS123,RHS123,S123,L123,R123),
  pair_obj_props(TestID,trn+Ex4,Ctx,_Info4,Step4,Type4,LHS4,RHS4,S4,L4,R4),
  combine_rule( do_requires, Step123,Type123,LHS123,RHS123,S123,L123,R123, Step4,Type4,LHS4,RHS4,S4,L4,R4, Step,Type,LHS,RHS,S,L,R).

pair_obj_props5(TestID,trn+N,Ctx,Info,Step,Type,LHS,RHS,S,L,R):-
  Info = info(Step1,_IsSwapped,Ctx,Type,TestID,trn+N,trn+0+1+2+3+N),
  pair_obj_props(TestID,trn+0,Ctx,_Info1,Step1,Type1,LHS1,RHS1,S1,L1,R1),
  pair_obj_props(TestID,trn+1,Ctx,_Info2,Step2,Type2,LHS2,RHS2,S2,L2,R2),
  combine_rule( do_requires, Step1,Type1,LHS1,RHS1,S1,L1,R1 , Step2,Type2,LHS2,RHS2,S2,L2,R2, Step12,Type12,LHS12,RHS12,S12,L12,R12),
  pair_obj_props(TestID,trn+2,Ctx,_Info3,Step3,Type3,LHS3,RHS3,S3,L3,R3),
  combine_rule( do_requires, Step12,Type12,LHS12,RHS12,S12,L12,R12, Step3,Type3,LHS3,RHS3,S3,L3,R3, Step123,Type123,LHS123,RHS123,S123,L123,R123),
  pair_obj_props(TestID,trn+3,Ctx,_Info4,Step4,Type4,LHS4,RHS4,S4,L4,R4),
  combine_rule( do_requires, Step123,Type123,LHS123,RHS123,S123,L123,R123, Step4,Type4,LHS4,RHS4,S4,L4,R4, Step1234,Type1234,LHS1234,RHS1234,S1234,L1234,R1234),
  pair_obj_props(TestID,trn+N,Ctx,_Info5,Step5,Type5,LHS5,RHS5,S5,L5,R5),
  combine_rule( do_requires, Step1234,Type1234,LHS1234,RHS1234,S1234,L1234,R1234, Step5,Type5,LHS5,RHS5,S5,L5,R5, Step,Type,LHS,RHS,S,L,R).

combine_rule(Rule1,Rule2,NewRule):-
  r(Type1,LHS1,RHS1,S1,L1,R1, Ex1, Step1) = Rule1,
  r(Type2,LHS2,RHS2,S2,L2,R2, Ex2, Step2) = Rule2,
  combine_rule(do_requires,
              Step1,Type1,LHS1,RHS1,S1,L1,R1, 
              Step2,Type2,LHS2,RHS2,S2,L2,R2,    
              Step, Type, LHS, RHS, S ,L ,R  ),!,
  r(Type,LHS,RHS,S ,L ,R ,Ex1+Ex2,Step) = NewRule.
combine_rule(Rule1,_Rule2,Rule1).

combine_rule(DoRequires,
              Step1,Type1,LHS1,RHS1,S1,L1,R1, 
              Step2,Type2,LHS2,RHS2,S2,L2,R2,   
              Step, Type, LHS, RHS, S, L, R ):-
              ignore(Step1=Step2), ignore(Step=Step2), 

              (DoRequires == do_requires -> (ok_intersect(R1,R2), something_common(R1,R2)) ; true),

              once((maplist(merge_vals,[Type1,LHS1,RHS1],[Type2,LHS2,RHS2],[Type,LHS,RHS]))),
              merge_vals(R1,R2,R),merge_vals(S1,S2,S),
                merge_vals(L1,L2,L),
                pp_ilp(merge_vals(L1,L2,L)).
*/
something_common(R1,R2):- \+ \+ ((member(E1,R1), good_for_rhs(E1),  member(E2,R2), E1=@=E2)).


%must_be_identical(step).

must_be_identical(edit).
must_be_identical(ctx).
must_be_identical(testid).

merge_list_vals(A,B,[E3|C]):- select(E1,A,AA),same_functor(E1,E2),select(E2,B,BB),!,merge_vals(E1,E2,E3),
 merge_list_vals(AA,BB,C).
merge_list_vals(A,B,C):- append_sets(A,B,C).

merge_vals(A,B,C):- atom(A),!,A==B,C=A.
merge_vals(A,B,C):- A=@=B,!,C=A.
merge_vals(A, A, A) :- !.
merge_vals(A,B,C):- A==[],!,B=C.
merge_vals(A,B,C):- B==[],!,A=C.

merge_vals(A,B,C):- is_obj_props(A),is_obj_props(B),!,merge_props(A,B,C).
merge_vals([A1,A2],[B],[C1,C2]):-  !, merge_vals(A1,B,C1),merge_vals(A2,B,C2).
merge_vals([A|AA],[B|BB],[C|CC]):- !, merge_vals(A,B,C), merge_vals(AA,BB,CC).

merge_vals(prop(Name,A),prop(Name,B),prop(Name,C)):- !, merge_vals(A, B, C).
merge_vals(prop(Name, A1, A2),prop(Name, B1, B2), prop(Name, C1, C2)):- !,
  merge_vals(A1, B1, C1),merge_vals(A2, B2, C2).

merge_vals(A,B,C):- ( \+ compound(A) ; \+ compound(B)),!, flatten_sets([A,B],C),!. 
merge_vals(T+A,T+B,C):-!,must_det_ll((C=(T+A+B))).

merge_vals(A,B,A):- functor(A,F,_),must_be_identical(F),!,A=@=B.

merge_vals(info(A),info(B),info(C)):- !, merge_list_vals(A,B,C).

merge_vals(A,B,C):- is_valid_testname(A),!,A=B,A=C.
%merge_vals(A,B,C):- good__rhs(A),!,same_rhs_operation(A,B),A=C.
%info([step(Step),is_swapped_lr(IsSwapped),ctx(Ctx),why(TypeO),testid(TestID),example(ExampleNum)])
merge_vals(A,B,C):-
  A =  ac_unit(TestID, IO, P1, PSame1),
  B =  ac_unit(TestID, IO, P2, PSame2),!,
  same_rhs_operation(P1,P2),
  merge_props(PSame1,PSame2,PSame),!,
  C =  ac_unit(TestID, IO, P1, PSame).

merge_vals(A,B,C):-
  A =  ac_db_unit(TestID, IO, P1, PSame1),
  B =  ac_db_unit(TestID, IO, P2, PSame2),!,
  same_rhs_operation(P1,P2),
  merge_props(PSame1,PSame2,PSame),!,
  C =  ac_db_unit(TestID, IO, P1, PSame).

merge_vals(A,B,C):-
  A =  ac_rules(TestID, IO, P1, PSame1),
  B =  ac_rules(TestID, IO, P2, PSame2),!,
  same_rhs_operation(P1,P2),
  merge_props(PSame1,PSame2,PSame),!,
  C =  ac_rules(TestID, IO, P1, PSame).

merge_vals(A,B,C):-
  A =  ac_listing(TestID, IO, P1, PSame1),
  B =  ac_listing(TestID, IO, P2, PSame2),!,
  same_rhs_operation(P1,P2),
  merge_props(PSame1,PSame2,PSame),!,
  C =  ac_listing(TestID, IO, P1, PSame).

/*
merge_vals(Rule1,Rule2,NewRule):-
  r(Type1,LHS1,RHS1,S1,L1,R1, Ex1, Step1) = Rule1,
  r(Type2,LHS2,RHS2,S2,L2,R2, Ex2, Step2) = Rule2,
  combine_rule(do_requires,
              Step1,Type1,LHS1,RHS1,S1,L1,R1, 
              Step2,Type2,LHS2,RHS2,S2,L2,R2,    
              Step, Type, LHS, RHS, S ,L ,R  ),!,
  r(Type,LHS,RHS,S ,L ,R ,Ex1+Ex2,Step) = NewRule.
*/

merge_vals(rhs(A),rhs(B),rhs(C)):- !, same_rhs_operation(A,B),!,merge_vals(A,B,C).

merge_vals(A,B,C):- compound(A),compound(B),var(C),
  compound_name_arguments(A,F,AA),compound_name_arguments(B,F,BB),!,
  maplist(merge_vals,AA,BB,CC),!, compound_name_arguments(C,F,CC).
%merge_vals(obj(A),obj(B),obj(C)):- is_list(A),is_list(B),!,merge_props(A,B,C).
merge_vals(A,B,C):-  flatten_sets([A,B],C),!. 

same_rhs_operation(A,B):- is_list(A),is_list(B),!.
same_rhs_operation(A,B):- (\+ compound(A) ; \+ compound(B)),!, A=@=B.
same_rhs_operation(A,B):-
  compound_name_arguments(A,F,AA),compound_name_arguments(B,F,BB),!,
  maplist(same_rhs_operation,AA,BB),!.




%good_for_rhs(iz(sid(_))).
%good_for_rhs(mass(_)).
%good_for_rhs(iz(cenGX(_))).
%good_for_rhs(iz(cenGY(_))).
%good_for_rhs(iz(sizeGX(_))).
%good_for_rhs(iz(sizeGY(_))).
/*good_for_rhs(vis2D(_, _)).
good_for_rhs(center2D(_, _)).
good_for_rhs(center2G(_, _)).
good_for_rhs(rot2D(_)).
good_for_rhs(iz(algo_sid(norm,_))).
good_for_rhs(grid_ops(norm,_)).
good_for_rhs(grid_rep(norm,_)).
*/
good_for_rhs(loc2D(_,_)).
good_for_rhs(pen(_)).

good_for_rhs(delete(_)).
good_for_rhs(edit(_)).
good_for_rhs(edit(_,_,_)).
good_for_rhs(edit(_,_,_,_)).
good_for_rhs(create(_)).
good_for_rhs(rhs(_)).
good_for_rhs(obj(_)).

good_for_lhs(P):- \+ ok_notice(P),!,fail.
%good_for_lhs(P):- make_unifiable(P,U),P=@=U,!,fail.
good_for_lhs(cc(bg, _)).
good_for_lhs(cc(fg, _)).
good_for_lhs(cc(_, 0)).
good_for_lhs(cc(FG, _)):- is_real_color(FG).
good_for_lhs(cc(_, _)):- !, fail.
good_for_lhs(center2D(_, _)).
good_for_lhs(empty_area(_)).
good_for_lhs(global2G(_, _)).
%good_for_lhs(grid_ops(comp, _)).
good_for_lhs(grid_ops(norm, _)).
good_for_lhs(iz(algo_sid(comp, _))).
good_for_lhs(iz(algo_sid(norm, _))).
good_for_lhs(iz(cenGX(_))).
good_for_lhs(iz(cenGY(_))).
%good_for_lhs(iz(fg_or_bg(_))).
good_for_lhs(iz(filltype(_))).
good_for_lhs(iz(info(_))).
good_for_lhs(iz(sid(_))).
good_for_lhs(iz(sizeGX(_))).
good_for_lhs(iz(sizeGY(_))).
good_for_lhs(iz(stype(_))).
good_for_lhs(link(sees(_),_)):-!,fail.
good_for_lhs(link(NS, _)):- !, NS\=sees(_).
good_for_lhs(links_count(_, _)).
good_for_lhs(loc2D(_, _)).
good_for_lhs(mass(_)).
good_for_lhs(pen(_)).
good_for_lhs(rot2D(_)).
good_for_lhs(rotSize2D(grav, _, _)).
good_for_lhs(unique_colors(_)).
%good_for_lhs(unique_colors_count(_)).
good_for_lhs(vis2D(_, _)).
good_for_lhs(pg(_,_,_,_)).
good_for_lhs(\+ P):- !, good_for_lhs(P).


/*
pass2_rule_new(TestID,Ctx,RHSO,[iz(info(spawn(Info)))|PSame]):- 
  pair_obj_props54321(TestID,_Ex,Ctx,Info,_Step,_Type,LHSO,RHSO,[],[],[]),flat_props(LHSO,PSame).
pass2_rule_new(TestID,Ctx,[delete(LHSO)],[iz(info(delete(Info)))|PSame]):- 
  pair_obj_props54321(TestID,_Ex,Ctx,Info,_Step,_Type,LHSO,[],[],[],[]),flat_props(LHSO,PSame).
pass2_rule_new(TestID,Ctx,P,[iz(info(copy_edit(Info)))|PSame]):- 
  pair_obj_props54321(TestID,_Ex,Ctx,Info,_Step,_Type,_LHSO,_RHSO,PSame,_L,R),member(P,R),good_for_rhs(P).
*/

/*
pass2_rule_R(TestID,Rule):-
  Rule = rule(RuleType,P,PSame),
  RuleType = edit_copy(Ctx,ReType,P), 
  pass2_rule_1(TestID,IO,P,PSame), 
  once((good_for_rhs(P),
  prop_type(P,ReType),io_to_cntx(IO,Ctx))).
*/


has_a_value(P):- make_unifiable_u(P,U),P\=@=U.

how_are_different(O1,O2,Set):-
  findall(Type=Same,prop_pairs2(O1,O2,Type,Same,_P),List),
  vsr_set(List,Set).
how_are_same(O1,O2,Set):-
  findall(Type=Same,prop_pairs2(O1,O2,Type,Same,_P),List),
  vsr_set(List,Set).

prop_pairs(O1,O2,Type,Same,P):- prop_pairs2(O1,O2,Type,Same,P).

prop_pairs2(O1,O2,Type,Change,P):- 
  flat_props(O1,F1),flat_props(O2,F2),!,
  member(P2,F2),make_unifiable_u(P2,P1),
 (once((member(P1,F1),(other_val(P2,P1)->Change=different;Change=same)))-> 
   min_unifier(P2,P1,P); ((Change=adding(P),P=P2))),
 prop_type(P2,Type),
\+ignore_prop_when(Change,P).   

into_lhs(OID,Out):- atom(OID),!,indv_props_list(OID,In),into_lhs(In,Out),!.
into_lhs(In,Out):- \+ compound(In),!,Out=In.
into_lhs(R,P):- sub_compound(lhs(E),R),!, into_lhs(E,P).
into_lhs(rule(_RuleType,_SortKey,In),Out):- nonvar(In),!,into_lhs(In,Out),!.
into_lhs(obj(In),Out):- nonvar(In),!,into_lhs(In,Out),!.
into_lhs(ac_unit(_Tst,_IO,_P,PConds),Out):- into_lhs(PConds,Out).
into_lhs(ac_db_unit(_Tst,_IO,_P,PConds),Out):- into_lhs(PConds,Out).
into_lhs(ac_listing(_Tst,_IO,_P,PConds),Out):- into_lhs(PConds,Out).
into_lhs(ac_rules(_Tst,_IO,_P,PConds),Out):- into_lhs(PConds,Out).
into_lhs(In,Out):- \+ is_list(In),!,Out=In.
into_lhs(In,Out):- flatten([In],InF),into_lhs1(InF,LHSF),flatten(LHSF,LHSV),variant_list_to_set(LHSV,Out),!.
into_lhs1(In,Out):- m_unifiers(In,MidF),o_unifiers(MidF,Mid),In\=@=Mid,!,into_lhs1(Mid,Out).
%into_lhs1(In,Out):- is_group(In),mapgroup(into_lhs1,In,MidF),flatten(MidF,Mid),In\=@=Mid,!,into_lhs1(Mid,Out).
%into_lhs1(In,Out):- my_exclude(hide_propchange1,In,Mid),In\=@=Mid,!,into_lhs1(Mid,Out).
%into_lhs1(In,Out):-    maplist(hide_propchange,In,Mid),In\=@=Mid,!,into_lhs1(Mid,Out).
%into_lhs1(In,Out):- remove_giz(In,Out),!.
into_lhs1(In,Out):- maplist(into_lhs,In,LHSF),flatten(LHSF,Mid),In\=@=Mid,!,into_lhs1(Mid,Out).
into_lhs1(In,Out):- include(good_for_lhs,In,Mid),In\=@=Mid,!,into_lhs1(Mid,Out).
into_lhs1(Out,Out).

%m_unifiers(In,Out):- \+ is_list(In),Out=In.
   

m_unifiers(In,Out):- my_partition(assume_prop,In,Skip,DontSkip), Skip\==[],
  m_unifiers(DontSkip,Mid), append_sets([Mid,Skip],Out),!.

%m_unifiers(In,Out):- is_list(In), select(E,In,More),is_prop1(E),is_unbound_prop(E),make_unifiable_u(E,U),select(U,More,UMore), 
%  min_unifier(U,E,S),!,m_unifiers([S|UMore],Out),!.

m_unifiers(In,Out):- is_list(In), select(E,In,More),is_prop1(E),make_unifiable_u(E,U),select(U,More,UMore), 
  min_unifier(U,E,S),!,m_unifiers([S|UMore],Out),!.
%m_unifiers(In,Out):- select(E,In,More),is_prop1(E),make_unifiable_u(E,U),select(U,More,UMore),other_val(E,U),merge_props(U,E,S),!,m_unifiers([S|UMore],Out).
m_unifiers(IO,IO).
%o_unifiers(In,Out):- select(E,In,More),is_prop1(E),make_unifiable(E,U),select(U,More,UMore),other_val(E,U),the_or_unifier(U,E,S),!,o_unifiers([S|UMore],Out).
o_unifiers(IO,IO). 
the_or_unifier(U,E,(U;E)).


merge_props(S1,S2,S):- my_partition(is_debug_info,S1,SP1,SO1),my_partition(is_debug_info,S2,SP2,SO2),
  the_min_unifier0(SO1,SO2,SO),append_vsets([SO,SP1,SP2],S).

the_min_unifier0(S1,S2,S):- the_min_unifier1(S1,S2,SA),
  m_unifiers(SA,SB),!,variant_list_to_set(SB,S).

the_min_unifier1(S1,S2,[E|S]):- 
   select(E1,S1,S1R),same_functor(E1,E2),select(E2,S2,S2R),

   %make_unifiable_u(E1,E2),
   other_val(E1,E2),%min_unifier(E1,E2,E),!,

   min_unifier(E1,E2,E),

   the_min_unifier1(S1R,S2R,S).
the_min_unifier1(S1,S2,S):- append(S1,S2,S),!.

propset_getter(is_group).
propset_getter(is_object).
propset_getter(is_obj_props).
two_prop_sets(TransRule,E1,E2):-
 sub_term(E1,TransRule),propset_getter(P1),call(P1,E1),subst(TransRule,E1,gone,RuleRest),
 sub_term(E2, RuleRest),propset_getter(Q1),call(Q1,E2).
/*
show_code_diff(Info,PA,[PB]):- !, show_code_diff(Info,PA,PB).
show_code_diff(Info,[PA],PB):- !, show_code_diff(Info,PA,PB).
show_code_diff(Info,[],_).
show_code_diff(Info,[P|A],PB):- !, show_code_diff(Info,P,PB),show_code_diff(Info,A,PB).
*/
%show_code_diff(_Info,O1,O2):- (is_grid(O1), is_grid(O2)),!, nop((flat_props(O1,E1),flat_props(O2,E2), show_cp_dff_rem_keep_add(E1,E2))),!.
%show_code_diff(_Info,O1,O2):- (is_grid(O1); is_grid(O2)),!, nop((flat_props(O1,E1),flat_props(O2,E2), show_cp_dff_rem_keep_add(E1,E2))),!.
show_code_diff(Info,O1,O2):- 
  must_det_ll((\+ is_grid(O1);\+ is_grid(O2))),
  into_list(O1,InL),into_list(O2,OutL),
  flat_props(InL,E1),flat_props(OutL,E2), show_cp_dff_rem_keep_add(E1,E2),
  trans_rule(Info,InL,OutL,TransRule),!,
  pp_ilp(TransRule).

/*
show_cp_dff_rem_keep_add([]):-!.
show_cp_dff_rem_keep_add(TransRule):-   %flat_props([B],PB), intersection(Same,PB,S,SS,_), append(S,SS,SSame),
  two_prop_sets(TransRule,E1,E2),  
  show_cp_dff_rem_keep_add(E1,E2).
*/
show_cp_dff_rem_keep_add(E1,E2):-  
  dash_chars,
  if_t(how_are_different(E1,E2,Set),pp_ilp(how_are_different=Set)),    
  noteable_propdiffs2(E1,E2,Same,InFlatP,OutPFlat),
  pp_ilp(sames=Same),
  pp_ilp(removed=InFlatP),
  pp_ilp(added=OutPFlat),
  dash_chars.




















prin_to_string(T,Text):- term_contains_ansi(T),Text=T,!.
prin_to_string(T,Text):- wots(Text,print(T)). 

into_solid_grid_strings(T,Text):- is_ftVar(T),Text=T,!.
into_solid_grid_strings(A,Y):-atom(A),into_obj(A,Y),!. %,into_solid_grid_strings(X,Y).
%into_solid_grid_strings(T,Text):- \+ compound(T),T=Text,!.
%into_solid_grid_strings(T,Text):- term_contains_ansi(T),Text=T,!.
%into_solid_grid_strings(T,Text):- as_is(T),T=Text,!.
%into_solid_grid_strings(T,Text):- is_object(T),object_color_glyph_long(T,Text),!.
%into_solid_grid_strings(T,Text):- is_object(T),as_grid_string(T,Text),!.
%into_solid_grid_strings(T,Text):- is_object(T),into_solid_grid_str(T,Text),!.
%into_solid_grid_strings(g rp(T),gr p(Text)):- is_list(T), wots(Text,print_ss(T)),!.
%into_solid_grid_strings(g rp(T),g rp(Text)):- is_list(T), maplist(into_solid_grid_strings,T,Text),!.
%into_solid_grid_strings(g rp(T),g rp(Text)):- is_list(T), prin_to_string(T,Text),!.
into_solid_grid_strings([T],WithGrids):- is_grid(T), !, into_solid_grid_strings(T,WithGrids).
into_solid_grid_strings([T],WithGrids):- \+ is_grid([T]), !, into_solid_grid_strings(T,WithGrids).
into_solid_grid_strings(T,WithGrids):-
  sub_term(TObj,T), compound(TObj), \+ is_list(TObj),
  arg(_,TObj,Obj), is_object(Obj), 
  into_solid_grid_str(Obj,GridStr),Obj\=@=GridStr,!,
  subst001(T,Obj,GridStr,MidTerm),
  into_solid_grid_strings(MidTerm,WithGrids).
into_solid_grid_strings(T,WithGrids):- fail,
  sub_term(Obj,T),is_grid(Obj),
  into_solid_grid_str(Obj,GridStr),Obj\=@=GridStr,!,
  subst001(T,Obj,GridStr,MidTerm),
  into_solid_grid_strings(MidTerm,WithGrids).
/*
into_solid_grid_strings(T,WithGrids):-
  sub_term(Obj,T),is_mapping(Obj),
  into_solid_grid_str(Obj,GridStr),Obj\=@=GridStr,!,
  subst001(T,Obj,GridStr,MidTerm),
  into_solid_grid_strings(MidTerm,WithGrids).
*/
%into_solid_grid_strings(MidTerm,WithGrids):- into_solid_grid_str(MidTerm,WithGrids). 
into_solid_grid_strings(WithGrids,WithGrids).
%  \+ arc_cache:map_group(TestID,ExampleNum,IO_,LeftRight),

need_positional_context(H,V):- (H=<3;V=<3),!.
need_positional_context(H,V):- (H=<12,V=<12),!.
need_positional_context(_H,_V).


into_solid_grid_str([Obj,Obj2],SS):- fail, is_object(Obj),is_object(Obj2),
 into_solid_grid_str(Obj,Grid1),
 into_solid_grid_str(Obj2,Grid2),
 wots(SS,print_ss(Grid1,Grid2)),!.

into_solid_grid_str(Obj,SS):- is_object(Obj),global_grid(Obj,GG),!,into_solid_grid_str(GG,SS).
into_solid_grid_str(Obj,SS):- is_object(Obj),global_grid(Obj,SS),!.

into_solid_grid_str(Obj,SS):- is_object(Obj),loc2D(Obj,X,Y),
 vis2D(Obj,H,V), vis2D(Obj,H,V),has_prop(giz(g(IO_)),Obj),
 (need_positional_context(H,V)->global_grid(Obj,GG);=(Obj,GG)),
  as_grid_string(GG,Grid), =((loc2D(IO_,X-Y,Grid)),SS),!.

%into_solid_grid_str(Obj,SS):- is_object(Obj),loc2D(Obj,X,Y),into_solid_grid(Obj,Grid), =((loc2D(X-Y,Grid)),SS),!.
into_solid_grid_str(Grid,GridStr):- into_solid_grid(Grid,Solid),Solid\=@=Grid,into_solid_grid_str(Grid,GridStr). %,wots(GridStr,(nl,print_grid(Grid))).
%into_solid_grid_str(Grid,(GridStr)):- as_grid_string(Grid,GridStr),!.%print_wots(GridStr,(nl,print_grid(Grid))).
into_solid_grid_str(O,O).

% =============================================================
clear_object_dependancy(TestID):-
% =============================================================
 ensure_test(TestID),
 forall(kaggle_arc(TestID,ExampleNum,_,_),
     ignore((clear_object_dependancy(TestID,ExampleNum)))).
clear_object_dependancy(TestID,ExampleNum):-  
 forall(arc_cache:prop_dep(TestID,ExampleNum,Ctx,Info,Right,Left,A,B,C),
    retract(arc_cache:prop_dep(TestID,ExampleNum,Ctx,Info,Right,Left,A,B,C))),
 forall(arc_cache:trans_rule_db(TestID,ExampleNum,Ctx,Info), 
   retract(arc_cache:trans_rule_db(TestID,ExampleNum,Ctx,Info))),
 !.



/*

Rule Generation (AQ Learning): First, you would need to implement AQ learning to generate a set of rules from your data. This might involve predicates for generating potential rules, testing them against your data, and selecting the best ones. The resulting rules would be a set of Prolog rules that can classify instances based on their attributes.

Causal Inference (Mill's Methods): Once you have your rules, you could then apply Mill's methods to them. This would involve creating predicates that implement the logic of each of Mill's methods, and then applying these predicates to your rules to infer potential causal relationships.

We wrote a program that can read the output into objects 

The program is such that is is able to regenerate those grids uisng object notation

We run that program on the input and gerenate a set of objects. 

Like before, we can regerenate the orignal grids

We now write a transformation programs that maps the two object notations together

we do this for each example pair

trying to find the mappings that make the most sense per object pairs

we now poke holes onto the object notations (any time there was a source level conflict between examples) 
 this is sijmular to the the AQ-algorythem



until it becomes clear what the special transforem was for the 








pg(4,mass(_),rank1,1).
pg(4,mass(10),count,2).
cc(fg,nz).

Scene

TheWholeGridObjects
Objects

7e0986d6 is a good example why a "search" might be expensive approach


Properties

Object->Object mapping


CountOfProperty

*/
  
% sort_by_generation(Grps,SortedByGen):-predsort(sort_on(by_generation),Grps,SortedByGen).
sort_by_generation(Grps,Grps).

maybe_remove_bg(RHSObjs,RHSObjs1):- my_partition(is_fg_object,RHSObjs,RHSObjs1,Rest),RHSObjs1\==[],Rest\==[],!.
%maybe_remove_bg(RHSObjs,RHSObjs1):- include(is_fg_object,RHSObjs,RHSObjs1),RHSObjs1\=@=RHSObjs,!.
maybe_remove_bg(RHSObjs,RHSObjs).

fg_to_bgc(FG,black):- is_fg_color(FG),!.
fg_to_bgc(FG,FG):- \+ compound(FG),!.


into_delete(_TestID,_ExampleNum,_IsSwapped,_Step,_Ctx,_Prev,_Info,Obj,Obj):- is_mapping(Obj),!.
into_delete(TestID,ExampleNum,IsSwapped,Step,Ctx,Prev,_Info,Obj,Pairs):- map_pred(fg_to_bgc, Obj,NewObj),
  make_pairs(TestID,ExampleNum,delete,IsSwapped,Step,Ctx,Prev,Obj,NewObj,Pairs),
  !. %edit_object(pen([cc(black,1)]))  % l2r(Info,[Obj],[])).

is_mapping_list([O|GrpL]):- is_mapping(O),is_list(GrpL),maplist(is_mapping,GrpL).
is_mapping(Grp):- is_functor(l2r,Grp).

get_mapping_info(l2r(Info,In,Out),Info,In,Out).
get_mapping_info_list(GRP,Info,InOut):-
  get_mapping_info(GRP,Info,In,Out),
  into_list(In,InL),into_list(Out,OutL),!,
  append_LR(OutL,InL,InOutL),!,
  must_det_ll((InOutL=InOut)).

best_match_rl(RHS,Left,l2r(lr,Left,Right)):-
  sort_by_jaccard(Left,RHS,[Right|_RRest]).
best_match_lr(LHS,Right,l2r(lr,Left,Right)):-
  sort_by_jaccard(Right,LHS,[Left|_RRest]).
% Generate all pairs of objects from two sets
% pairs(+Set1, +Set2, -Pairs)

pairs_agree(LHS,RHS,PairsR):-
   maplist(best_match_lr(RHS),LHS,PairsR),
   maplist(best_match_rl(LHS),RHS,PairsL),
   PairsR=PairsL.

pairs_agree_or_select(LHS,RHS,PairsR) :- 
  pairs_agree(LHS,RHS,PairsR)*->true;pairs_of_any(LHS,RHS,PairsR).

n_or_more(3,[_,_,_|_]).
n_or_more(2,[_,_|_]).
n_or_more(1,[_|_]).
pairs_of_any(LHS,RHS,PairsR):-
  pairs_of_any(LHS,RHS,[],PairsR).

pairs_of_any([LG1,LG2],RHS,SoFar,PairsR) :- 
    n_or_more(3,RHS),
    append(RG1,RG2,RHS), n_or_more(1,RG1),n_or_more(1,RG2),
    pairs_agree([[LG1],[LG2]],[RG1,RG2],[l2r(lr,L1,R1),l2r(lr,L2,R2)]),
    pairs_of_any(L1,R1,LR1), pairs_of_any(L2,R2,LR2),
    append_LR([SoFar,LR1,LR2],PairsR).

pairs_of_any(LHS,RHS,SoFar,PairsR) :- n_or_more(2,LHS),n_or_more(2,RHS),
    append(LG1,LG2,LHS), n_or_more(1,LG1),n_or_more(1,LG2),
    append(RG1,RG2,RHS), n_or_more(1,RG1),n_or_more(1,RG2),
    pairs_agree([LG1,LG2],[RG1,RG2],[l2r(lr,L1,R1),l2r(lr,L2,R2)]),
    pairs_of_any(L1,R1,LR1), pairs_of_any(L2,R2,LR2),
    append_LR([SoFar,LR1,LR2],PairsR).

pairs_of_any(LHS,RHS,SoFar,PairLR):-
  pairs_agree_l_r(LHS,RHS,Agreed,RemainingL,RemainingR),
  append_LR(Agreed,SoFar,AgreedSoFar),
  pairs_of_any(RemainingL,RemainingR,AgreedSoFar,PairLR).

pairs_of_any([],RHS,SoFar,PairLR):- 
  pairs_of_any(SoFar,RHS,SoFar,PairLR).

pairs_of_any(LHSObjs,[],SoFar,PairLR):- 
  flatten(LHSObjs,LHSObjsF),
  my_partition(is_mapping,LHSObjsF,Mappings,Objects),
  into_list([SoFar|Mappings],Kept),
  intersection(Kept,Objects,_,_,DeletedObjs),
  append_LR([Kept,l2r(delete,DeletedObjs,[])],PairLR).

pair_combinations([], _, []).
pair_combinations([H1|T1], List2, Pairs) :-
    pair_combinations(T1, List2, RemainingPairs),
    findall([H1, H2], (member(H2, List2), \+ member([H2, H1], RemainingPairs)), CurrentPairs),
    append(CurrentPairs, RemainingPairs, Pairs).


pairs_lr(LHS,RHS,PairsLR):- maplist(best_match_rl(RHS),LHS,PairsLR).




/*
In Prolog: I have two groups of objects where each object is denoted by `obj([center2D(2,6),mass(8),occurs_in_links(contains,1),pen([cc(blue,1)]),shape([square])])`
Each object looks at the other group of objects and keeps what its most simular to.. whenever an object from each group picks each other it forms a new pair .. remove those objects and keep going
there is no more objecs on one side any previous matches get adding back and a new set of pairs .. this goes on until there is no opbjects remaining on either side.
sometimes if there are an exact dividable number of objects on one side from the other try permutations of groups from the larger side
*/

% Predicate to find the most similar object in the other group for each object
most_similar(_, [], -1).
most_similar(Obj, [Other|Rest], MostSimilar) :-
    similarity(Obj, Other, Sim),
    most_similar(Obj, Rest, MostSimilarRest),
  (Sim > MostSimilarRest -> MostSimilar = Sim ; MostSimilar = MostSimilarRest).



%?- pair_combinations([o1, o2, o3], [o4, o5, o6], Pairs).
%Pairs = [[o1, o4], [o1, o5], [o1, o6], [o2, o4], [o2, o5], [o2, o6], [o3, o4], [o3, o5], [o3, o6]].


pairs_agree_l_r(LHS,RHS,Agreed,RemainingL,RemainingR):-
   maplist(best_match_rl(RHS),LHS,PairsR),
   maplist(best_match_lr(LHS),RHS,PairsL),
   once((
   intersection(PairsL,PairsR,Agreed,PairsLOnly,PairsROnly),
   Agreed \==[],
   %maplist(length,[Agreed,PairsLOnly,PairsROnly],[NAgreed,NPairsLOnly,NPairsROnly]),
   %NAgreed>NPairsLOnly,%NPairsLOnly>RPairsLOnly,
   %NAgreed>NPairsROnly,
   maplist(arg(1),PairsROnly,RemainingR),
   maplist(arg(1),PairsLOnly,RemainingL))).

combine_training(TestID,A,B,In012,Out012):-   
  obj_group_pair(TestID,_+A,In0,Out0),
  obj_group_pair(TestID,_+B,In1,Out1), A<B,
  pairs_agree_or_select(In0,In1,In01),
  pairs_agree_or_select(Out0,Out1,Out01),
  dif(C,A),dif(C,B), 
  dif(D,A),dif(D,B), dif(D,C),
  ignore((obj_group_pair(TestID,_+C,In2,_),pairs_agree_or_select(In01,In2,In012))),
  ignore((obj_group_pair(TestID,_+D,_,Out2), pairs_agree_or_select(Out01,Out2,Out012))),  
  ignore(In012=In01),ignore(Out012=Out01).





append_LR(Prev,Mappings,RestLR):- 
  flatten([Prev,Mappings],RestLR),!.
append_LR(Mappings,RestLR):- 
  flatten([Mappings],RestLR),!.

sometimes_when_lost(Goal):-!,fail,call(Goal).
:- discontiguous calc_o_d_recursively/10. 

calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,Step,Ctx,Prev,LHSObjs,RHSObjs,RestLR):-
  maybe_remove_bg(RHSObjs,RHSObjs1), \=@=(RHSObjs,RHSObjs1),!,
  must_det_ll((calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,Step,Ctx,Prev,LHSObjs,RHSObjs1,RestLR))).


calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,Step,Ctx,Prev,LHSObjs,RHSObjs,RestLR):- fail,
  sometimes_when_lost((maybe_remove_bg(RHSObjs,RHSObjs1), \=@=(RHSObjs,RHSObjs1), RHSObjs1\==[])), !,
  calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,Step,Ctx,Prev,LHSObjs,RHSObjs1,RestLR).

calc_o_d_recursively(TestID,ExampleNum,_TM,IsSwapped,Step,Ctx,Prev,LHSObjs,RHSObjs,RestLR):-
  LHSObjs==[], RHSObjs == [], !, 
  Info = info(Step,IsSwapped,Ctx,leftover,TestID,ExampleNum,_),
  append_LR([call(assert_test_property(TestID,ExampleNum,deps,perfect_balance(Info)))],Prev,RestLR).

calc_o_d_recursively(TestID,ExampleNum,_TM,IsSwapped,Step,Ctx,Prev,LHSObjs,RHSObjs,RestLR):- 
   Info = info(Step,IsSwapped,Ctx,leftover,TestID,ExampleNum,_),
   RHSObjs==[], !, 
    must_det_ll((maplist(into_delete(TestID,ExampleNum,IsSwapped,Step,Ctx,Prev,Info),
     LHSObjs,Mappings),append_LR(Prev,[call(assert_test_property(TestID,ExampleNum,deps,ignore_rest(Info))),Mappings],RestLR))).


calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,Step,Ctx,Prev,LHSObjs,[Right],RestLR):- 
  LHSObjs == [],
  into_list(Prev,PrevObjs), PrevObjs\==[],
  my_partition(is_input_object,PrevObjs,PrevLHS,PrevRHS),
  once((PrevRHS = [A,B|C] ; PrevLHS = [A,B|C])),
  sort_by_jaccard(Right,[A,B|C],Stuff),!,
  reverse(Stuff,[AA,BB|_Rest]),
  make_pairs(TestID,ExampleNum,assumed,IsSwapped,Step,Ctx,[],[BB,AA],Right,Pairs),
  append_LR(Prev,Pairs,NewPrev),
  calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,Step,Ctx,NewPrev,[],[],RestLR),!.


is_adjacent_same_color(R1,R2,NewLHS,RHSObjs,RHSRest):- member(R1,NewLHS), select(R2,RHSObjs,RHSRest), is_adjacent_same_color(R1,R2,0),!.
is_adjacent_same_color(R1,R2,NewLHS,RHSObjs,RHSRest):- member(R1,NewLHS), select(R2,RHSObjs,RHSRest), is_adjacent_same_color(R1,R2,1),!.
is_adjacent_same_color(R1,R2,NewLHS,RHSObjs,RHSRest):- member(R1,NewLHS), select(R2,RHSObjs,RHSRest), is_adjacent_same_color(R1,R2,2),!.

calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,Step,Ctx,Prev,LHSObjs,RHSObjs,RestLR):- 
   LHSObjs==[], 
    into_list(Prev,PrevObjs),
    my_partition(is_input_object,PrevObjs,PrevLHS,PrevRHS),
    append_LR(PrevRHS,PrevLHS,NewLHS),
    is_adjacent_same_color(R1,R2,NewLHS,RHSObjs,RHSRest),
    incr_step(Step,IncrStep),
    make_pairs(TestID,ExampleNum,is_adjacent_same_color,IsSwapped,Step,Ctx,Prev,R1,R2,Pairs),
    %once((PrevRHS = [A,B|C] ; PrevLHS = [A,B|C])), %append_LR(PrevRHS,PrevLHS,NewLHS), %NewLHS=PrevLHS,    
    !, must_det_ll((calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,IncrStep,Ctx,[Pairs|Prev],LHSObjs,RHSRest,RestLR))).

calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,Step,Ctx,Prev,LHSObjs,RHSObjs,RestLR):- 
   LHSObjs==[], !, must_det_ll((
    into_list(Prev,PrevObjs),
    my_partition(is_input_object,PrevObjs,PrevLHS,_PrevRHS),
    %once((PrevRHS = [A,B|C] ; PrevLHS = [A,B|C])), %append_LR(PrevRHS,PrevLHS,NewLHS), %NewLHS=PrevLHS,
    incr_step(Step,IncrStep),
    calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,IncrStep,Ctx,Prev,PrevLHS,RHSObjs,RestLR))).

calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,Step,Ctx,Prev,LHSObjsNil,RHSObjs,RestLR):- 
   LHSObjsNil==[], !, 
    incr_cntx(Ctx,IncrCtx),
    incr_step(Step,IncrStep), %incr_step(Step,IncrStep),
    into_list(Prev,PrevObjs),
    my_partition(is_input_object,PrevObjs,PrevLHS,PrevRHS),
    member(Type=LHSObjs,[perfect_combo=PrevLHS,perfect_combo=PrevRHS]),
      select_pair(Type,Prev,RHSObjs,LHSObjs,Right,Left,RHSRest1,LHSRest1),
      must_det_ll((
      remove_object(RHSRest1,Right,RHSRest2), remove_object(LHSRest1,Right,LHSRest2),
      remove_object(RHSRest2, Left,RHSRest ), remove_object(LHSRest2, Left,LHSRest ),
      make_pairs(TestID,ExampleNum,Type,IsSwapped,Step,IncrCtx,Prev,Left,Right,Pairs),
      append_LR(Prev,Pairs,NewPrev),
      
      calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,IncrStep,IncrCtx,NewPrev,LHSRest,RHSRest,RestLR))).

calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,_Step,Ctx,Prev,LHSObjs,RHSObjs,RestLR):- 
   LHSObjs==[], !, must_det_ll((
    incr_cntx(Ctx,IncrCtx),
    %incr_step(Step,IncrStep),
    into_list(Prev,NewLHS),
    calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,10,IncrCtx,Prev,NewLHS,RHSObjs,RestLR))).

calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,Step,Ctx,Prev,LHSObjs,[Right],RestLR):- LHSObjs=[_,_|_],
  sort_by_jaccard(Right,LHSObjs,[A,B|C]),
  make_pairs(TestID,ExampleNum,assumed,IsSwapped,Step,Ctx,[],[B,A],Right,Pairs),
  append_LR(Prev,Pairs,NewPrev),
  calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,Step,Ctx,NewPrev,C,[],RestLR),!.

new_object_splitter:-false.

calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,Step,Ctx,Prev,LHSObjs,RHSObjs,[Pairs|RestLR]):-
 new_object_splitter,
 Type = perfect,
 select_pair(Type,Prev,RHSObjs,LHSObjs,Right,Left,RHSRest1,LHSRest1),
 \+ has_prop(iz(info(faked(Ctx))),Right),
 must_det_ll((
  remove_object(RHSRest1,Right,RHSRest2), remove_object(LHSRest1,Right,LHSRest2),
  remove_object(RHSRest2, Left,RHSRest ), remove_object(LHSRest2, Left,LHSRest ),
  make_pairs(TestID,ExampleNum,Type,IsSwapped,Step,Ctx,Prev,Left,Right,Pairs),
  append_LR(Prev,Pairs,NewPrev),
  incr_step(Step,IncrStep),


((  left_over_props(Left,Right,PropsMissing), PropsMissing=[_,_|_],
  pp_ilp(left_over_props=PropsMissing),
  obj_to_oid(Right,OID),
  obj_in_or_out(Right,IO),
  FakeObj = obj([was_oid(OID),iz(i_o(IO)),iz(info(faked(Ctx)))|PropsMissing])) -> 
      calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,IncrStep,Ctx,NewPrev,[Right,Left|LHSRest],[FakeObj|RHSRest],RestLR);

      calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,IncrStep,Ctx,NewPrev,[Right,Left|LHSRest],RHSRest,RestLR)))).

left_over_props(L,R,LO):- 
  noteable_propdiffs2(L,R,_,_,LO).

calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,Step,Ctx,Prev,LHSObjs,RHSObjs,[Pairs|RestLR]):-
 select_pair(Type,Prev,RHSObjs,LHSObjs,Right,Left,RHSRest1,LHSRest1),
 must_det_ll((
  remove_object(RHSRest1,Right,RHSRest2), remove_object(LHSRest1,Right,LHSRest2),
  remove_object(RHSRest2, Left,RHSRest ), remove_object(LHSRest2, Left,LHSRest ),
  make_pairs(TestID,ExampleNum,Type,IsSwapped,Step,Ctx,Prev,Left,Right,Pairs),
  append_LR(Prev,Pairs,NewPrev),
  incr_step(Step,IncrStep),
  calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,IncrStep,Ctx,NewPrev,LHSRest,RHSRest,RestLR))).

%calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,Step,Ctx,Prev,LHSObjs,RHSObjs,RestLR):- LHSObjs==[],!,
%  must_det_ll(calc_o_d_recursively_lhs_z(TestID,ExampleNum,TM,IsSwapped,Step,Ctx,Prev,LHSObjs,RHSObjs,RestLR)).


calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,Step,Ctx,Prev,LHSObjs,RHSObjs,[Pairs|RestLR]):-
 must_det_ll((
  select_pair(Type,Prev,RHSObjs,LHSObjs,Right,Left,RHSRest1,LHSRest1),
  remove_object(RHSRest1,Right,RHSRest2), remove_object(LHSRest1,Right,LHSRest2),
  remove_object(RHSRest2, Left,RHSRest ), remove_object(LHSRest2, Left,LHSRest ),
  make_pairs(TestID,ExampleNum,Type,IsSwapped,Step,Ctx,Prev,Left,Right,Pairs),
  append_LR(Prev,Pairs,NewPrev),
  incr_step(Step,IncrStep),
  calc_o_d_recursively(TestID,ExampleNum,TM,IsSwapped,IncrStep,Ctx,NewPrev,LHSRest,RHSRest,RestLR))).



%incr_cntx(Ctx,NewCtx):- atom(Ctx),!, atom_concat(Ctx,'_out',NewCtx).
incr_cntx(Ctx,Next):- number(Ctx),!, plus(Ctx,1,Next).
incr_cntx(Ctx,Next):- Ctx == in_out,!, Next=in_out_out.
incr_cntx(W+Ctx,W+Next):- incr_cntx(Ctx,Next).
incr_cntx(Ctx,s(Ctx)).
incr_step(Ctx,Next):- incr_cntx(Ctx,Next).
swap_tf(Ctx,s(Ctx)).

%select_some(0,[],L,L).
select_some(1,[E],L,R):- select(E,L,R).  
select_some(2,[A,B],L,R):- select(A,L,R1),select(B,R1,R),A@<B.
select_some(3,[A,B,C],L,R):- select_some(2,[A,B],L,R1),select(C,R1,R),B@<C.
select_some(N,[A,B,C,D|More],L,R):- length(L,Max),between(4,Max,N),select_some(3,[A,B,C],L,R1),
  plus(M,3,N),select_some(M,[D|More],R1,R),C@<D.

in_to_ins(Ins,N,InsList):-
 findall(E,select_some(N,E,Ins,_),InsList).

%select_pair(perfect,_Prev,[A],[B],A,B,[],[]):-!.
select_pair(perfect,_Prev,RHSObjs,LHSObjs,Right,Left,RHSRest,LHSRest):-
  select(Left,LHSObjs,RestLeft),
  \+ is_mapping(Left),
  once((remove_object(RHSObjs,Left,RHSObjsMLeft),
  sort_by_jaccard(Left,RHSObjsMLeft,[Right|RHSRest]),
  remove_object(RestLeft,Right,LHSRest),
  sort_by_jaccard(Right,LHSObjs,[LeftMaybe|_]))),
  LeftMaybe = Left,!.

select_pair(perfect_w_prev,Prev,RHSObjs,LHSObjs,Right,Left,RHSRest,LHSRest):-
  select(Left,[Prev|LHSObjs],RestLeft),
  \+ is_mapping(Left),
  once((remove_object(RHSObjs,Left,RHSObjsMLeft),
  sort_by_jaccard(Left,RHSObjsMLeft,[Right|RHSRest]),
  remove_object(RestLeft,Right,LHSRest),
  sort_by_jaccard(Right,LHSObjs,[LeftMaybe|_]))),
  LeftMaybe = Left,!.

select_pair(perfect_combo,_Prev,RHSObjs,LHSObjs,Right,Left,RHSRest,LHSRest):-  
  into_list(LHSObjs,LHSObjsL),variant_list_to_set(LHSObjsL,LHSObjsSet),
  in_to_ins(LHSObjsSet,2,LHSObjs_Combos),
  select(Left,LHSObjs_Combos,LHSObjs_Combos_Rest),
  once((remove_object(RHSObjs,Left,RHSObjsMLeft),  
  sort_by_jaccard(Left,RHSObjsMLeft,[Right|RHSRest]),
  remove_object(LHSObjs_Combos_Rest,Right,LHSRest),
  sort_by_jaccard(Right,LHSObjs_Combos,[LeftMaybe|_]))),
  LeftMaybe = Left,!.


select_pair(need_prev,Prev,RHSObjs,LHSObjs,Right,Left,RHSRest,LHSRest):-
  select(Left,LHSObjs,RestLeft),
  once((remove_object(RHSObjs,Left,RHSObjsMLeft),
  bonus_sort_by_jaccard(Prev,Left,RHSObjsMLeft,[Right|RHSRest]),
  remove_object(RestLeft,Right,LHSRest),
  bonus_sort_by_jaccard(Prev,Right,LHSObjs,[LeftMaybe|_]))),
  LeftMaybe = Left,!.

select_pair(from_left,Prev,RHSObjs,LHSObjs,Right,Left,RHSRest,LHSRest):-
  select(Left,LHSObjs,RestLeft),
  remove_object(RHSObjs,Left,RHSObjsMLeft),
  bonus_sort_by_jaccard(Prev,Left,RHSObjsMLeft,[Right|RHSRest]),
  remove_object(RestLeft,Right,LHSRest),!.

select_pair(from_right,Prev,LHSObjs,RHSObjs,Left,Right,LHSRest,RHSRest):-
  select(Left,LHSObjs,RestLeft),
  remove_object(RHSObjs,Left,RHSObjsMLeft),
  bonus_sort_by_jaccard(Prev,Left,RHSObjsMLeft,[Right|RHSRest]),
  remove_object(RestLeft,Right,LHSRest),!.

remove_object(RHSObjs,[Left|More],RHSObjsMI):- 
  remove_object(RHSObjs,Left,Rest),!,remove_object(Rest,More,RHSObjsMI).
remove_object(RHSObjs,Left,RHSObjsMI):- select(Left,RHSObjs,RHSObjsMI),!.
remove_object(RHSObjs,_,RHSObjs).

prime_factor(N, D) :-
    find_prime_factor(N, 2, D).

find_prime_factor(N, D, D) :- 0 is N mod D.
find_prime_factor(N, D, R) :- D < N,
    (0 is N mod D
    -> (N1 is N/D, find_prime_factor(N1, D, R))
    ;  (D1 is D + 1, find_prime_factor(N, D1, R))
    ).

split_sorted_bg(Objs,SplitLHS,SplitRHS):- 
  my_partition(is_bg_object,Objs,SplitLHS,SplitRHS), SplitLHS\==[], SplitRHS\==[].
split_sorted_bg_real(Objs,SplitLHS,SplitRHS):- 
  my_partition(split_sorted_bg_real,Objs,SplitLHS,SplitRHS), SplitLHS\==[], SplitRHS\==[].

split_sorted(Objs,SplitLHS,SplitRHS):-
 length(Objs,Len),
 prime_factor(Len,Prime),
 split_sorted_by_len(Objs,Len,Prime,SplitLHS,SplitRHS).

split_sorted_by_len(Objs,_Len,Prime,SplitLHS,SplitRHS):- 
 variance_counts(Objs,PropObjsounts),
 pp_ilp(PropObjsounts),
 findall(E,(member(E,PropObjsounts),sub_var(Prime,E)),EL),
 member(E,EL),into_prop(E,P),
 my_partition(has_prop(P),Objs,SplitLHS,SplitRHS),!.

split_sorted_by_len(Objs, Len,Prime,SplitLHS,SplitRHS):- 
 Half is Len div Prime,
 count_each_value(Objs,PropObjsounts),
 findall(E,(member(E,PropObjsounts),sub_var(Prime,Half)),EL),
 member(E,EL),into_prop(E,P),
 my_partition(has_prop(P),Objs,SplitLHS,SplitRHS),!.

into_prop(CC,P):- sub_term(E,CC),compound(E),is_prop1(E),!,E=P.

cto_aa(A,AA):- atom(A),!,AA=A.
cto_aa(s(A),AA):- nonvar(A), !, cto_aa(A,AAA),atom_concat(s_,AAA,AA).
cto_aa(A,AA):- format(atom(AA),'~w',[A]).

%make_pairs(TestID,ExampleNum,Type,s(IsSwapped),Step,Ctx,Prev,LHS,RHS,GRP):- nonvar(IsSwapped),!,
%  make_pairs(TestID,ExampleNum,Type,IsSwapped,Step,Ctx,Prev,RHS,LHS,GRP).
%make_pairs(TestID,ExampleNum,Type,IsSwapped,Step,Ctx,Prev,LHS,RHS,GRP):- Prev\==[], !, 
%  make_pairs(TestID,ExampleNum,Type,IsSwapped,Step,Ctx,[],Prev,LHS,NLHS),
%  make_pairs(TestID,ExampleNum,Type,IsSwapped,Step,Ctx,[],NLHS,RHS,GRP).
make_pairs(TestID,ExampleNum,Type,IsSwapped,Step,Ctx,_Prev,LHS,RHS,GRP):-
  Info = info([step(Step),is_swapped_lr(IsSwapped),ctx(Ctx),why(TypeO),testid(TestID),example(ExampleNum)]),
  must_det_ll((
 listify(LHS,LHSL),maplist(obj_in_or_out,LHSL,LCtx),maplist(cto_aa,LCtx,LCtxA),atomic_list_concat(LCtxA,'_',LP),
 listify(RHS,RHSL),maplist(obj_in_or_out,RHSL,RCtx),maplist(cto_aa,[Type,LP|RCtx],AA),atomic_list_concat(AA,'_',TypeO))),
   (Type==delete -> true ; (TypeO\==in_out_out_out, TypeO\=in_out_in_in)),
  
  %into_list(LHS,LLHS),
  %append_LR(Prev,LHS,PLHS),
  GRP = l2r(Info,LHS,RHS),
  once(pp_ilp(make_pairs=GRP)).



saved_group(Why,IndvS):-
  is_why_grouped(_TestID,_Count,Why,IndvS).

is_why_grouped(TestID,Count,Why,IndvSO):-
  is_why_grouped_g(TestID,Count,Why,IndvSG),
  once(maplist(must_oid_to_object,IndvSG,IndvS)),
  IndvSO=IndvS.

must_oid_to_object(ID,O):- must_det_ll(oid_to_obj(ID,O)).

save_grouped(Why,G):-
  into_group(G,GS),
  get_current_test(TestID),
  length(GS,Len),
  mapgroup(register_obj,GS),
  maplist(obj_to_oid_u,GS,GGG),
  %maplist(obj_to_oid,GS,OIDs),
  my_asserta_if_new(is_why_grouped_g(TestID,Len,Why,GGG)).

obj_to_oid_u(Obj,OID):- obj_to_oid(Obj,OID).

normal_group_form(Group,Group):-!.

:- dynamic(is_why_grouped_g/4).
why_grouped(Why,Group):-
  ensure_test(TestID),
  why_grouped(TestID,Why,Group).

why_grouped(TestID,Why,Group):- 
  (is_why_grouped(TestID,_,Why,Group)*->true; 
     ((is_list(Group)->length(Group,Len);true),is_why_grouped(TestID,Len,Why,Grp),same_members(=@=,Group,Grp))).

same_members(P2,G1,G2):- 
  select(E1,G1,GG1),select(E2,G2,GG2),
  call(P2,E1,E2), same_members(P2,GG1,GG2).

%select_group(TestID,Group,How):- no_repeats(Group,select_group0(TestID,Group,How)).
select_group(TestID,Group,How):- select_group0(TestID,Group,How).
select_group0(TestID,Group,How):-
  ((is_why_grouped(TestID,_,How1,Group1), % dif(Group1,Group2), 
    is_why_grouped(TestID,_,How2,Group2),
    Group1\==[], Group2\==[],
    Group1\==Group2,
    once((sub_term(E,How1),sub_var(E,How2))),
    %length(Group1,G1), length(Group2,G2), G1>G2,
  once((sub_term(E,How1),sub_var(E,How2))),
  %member(M1,Group1),member(M2,Group2),M1=M2,
  append(Group1,Group2,GroupJ), sort_safe(GroupJ,Group),
  How = [How1,How2])) 
    *-> true ; is_why_grouped(TestID,_,How,Group).

select_group0(TestID,Group,obj_cache):- findall(O,obj_cache(TestID,O,_),GroupJ), GroupJ\==[], sort_safe(GroupJ,Group).



  


















compare_objects([],[]):-!.
compare_objects(Objs,Interesting):- 
  maplist(indv_props_for_noteablity,Objs,ObjProps),
  flatten(ObjProps,FlatProps),
  maplist(functorize_props,FlatProps,Functors),
  sort_safe(Functors,SortedFunctors),
  gather_props(SortedFunctors,FlatProps,ListOfLists),
  maplist(compare_values,ListOfLists,Diffs),
  include(\=([]),Diffs,Interesting).
  
functorize_props(iz(P),FA):- !, functorize_props(P,FA).
functorize_props(P,F/A):- functor(P,F,A).
gather_props([F/A|SortedFunctors],FlatProps,[(F-Candidates)|ListOfLists]):- 
  functor(Match,F,A), findall(Match,(member(Match,FlatProps);member(iz(Match),FlatProps)),Candidates),
  gather_props(SortedFunctors,FlatProps,ListOfLists).
gather_props([],_,[]).


compare_values(F-P,Notable):- predsort_using_only(number_varz,P,S),length(P,N),length(S,NS),
  is_notable(F-NS/N,Notable).

:- dynamic(repress_non_notables/0).
is_changeable_param(repress_non_notables/0).
repress_non_notables.

:- dynamic(never_noteable/1).
is_changeable_param(never_noteable/1).
never_noteable(colors_cc).
never_noteable(globalpoints).
never_noteable(P):- compound(P),functor(P,F,_),never_noteable(F).

is_prop_for_noteablity(P):- compound(P),functor(P,F,_),is_prop_for_noteablity(F),!.
is_prop_for_noteablity(P):- \+ never_noteable(P),!.

is_notable(_F-N/N,[]):- repress_non_notables, !.  
is_notable(_F-1/_,[]):- repress_non_notables, !.
is_notable(F-_,[]):- never_noteable(F),!.
is_notable(F-N/N,all_diff(F)):-!.
is_notable(F-1/_,all_same(F)):-!.
is_notable(F-S/N,notable(F,S/N)):-!.
%is_notable(F-S/N,Notable):- F-S/N = Notable.

   number_varz(I,C):- copy_term(I,C),numbervars(C,0,_,[attvar(skip)]).

:- style_check(+singleton).

found_in_w(Trait,List,L):- 
  findall(E,(member(_-Traits,List),sub_term(E,Traits),nonvar(E), \+ \+ (Trait = E) ),L).

found_in_o(Trait,List,L):- 
 findall(Obj,(member(Obj-Traits,List),sub_term(E,Traits),nonvar(E), \+ \+ (Trait =@= E)),L).


%each_1trait(Obj,self(Obj)).
each_1trait(Var,T):- var(Var),!, enum_object(Var),each_1trait(Var,T).
each_1trait(obj(L),T):- !, each_1trait(L,T).
each_1trait(iz(L),T):-  !, each_1trait(L,T).
each_1trait(L,T):- is_list(L),!,member(E,L),each_1trait(E,T).

each_1trait(T,T):- \+ too_verbose(T). 

each_trait(Obj,Obj-S):- findall(T,each_1trait(Obj,T),L),list_to_set(L,S).

get_peers(Obj,Peers):- 
  get_current_test(TestID),select_group(TestID,Group,_How), select(Obj,Group,Peers).
peerless_props(O1,Peers,PeerlessProps):-
 must_det_ll(( indv_props_list(O1,Props),
               (var(Peers)->get_peers(O1,Peers);true),
               (select(O1,Peers,PeersU)->true;PeersU=Peers),
  include(is_peerless_prop(PeersU),Props,PeerlessProps))).
not_peerless_props(O1,Peers,PeerlessProps):-
 must_det_ll(( indv_props_list(O1,Props),
               (var(Peers)->get_peers(O1,Peers);true),
               (select(O1,Peers,PeersU)->true;PeersU=Peers),
  include(not_peerless_prop(PeersU),Props,PeerlessProps))).

is_peerless_prop(Peers,P):- \+ sub_var(P,Peers).
not_peerless_prop(Peers,P):- sub_var(P,Peers).


too_unique(P):- compound(P),!,compound_name_arity(P,F,_),!,too_unique(F).
%too_unique(obj_to_oid).
too_unique(globalpoints).
%too_unique(o).
too_unique(link).
too_unique(obj_to_oid).
too_unique(/*b*/iz).
%good_overlap(colorlesspoints).

good_overlap(P):- compound(P),!,compound_name_arity(P,F,_),!,good_overlap(F).
good_overlap(localpoints).
good_overlap(rot2D).

too_non_unique(P):- compound(P),!,compound_name_arity(P,F,_),!,too_non_unique(F).
too_non_unique(grid_size).
too_non_unique(grid_sz).
%too_non_unique(/*b*/iz).
too_non_unique(grid).
too_non_unique(changes).

%too_non_unique(mass).

length_criteria(List,P):- compound(P), P=..[F,n,L],C=..[F,I,L],length(List,I),!,call(C).
length_criteria(List,P):- compound(P), P=..[F,L], C=..[F,I,L],length(List,I),!,call(C).
length_criteria(List,P):- compound(P), length(List,I), !, call(call,P,I).
length_criteria(List,N):- length(List,N).

is_fti_step(most_unique).
most_unique(symmetry_type,VM):-
  List = VM.objs,
  last(List,Obj),
  set(VM.solution)= Obj.

maplist_e(P2,A,B):- is_list(A),!,mapgroup(P2,A,B).
maplist_e(P2,A,B):- call(P2,A,B).

obj_exclude(Obj,Group,Others):- var(Obj),!,select(Obj,Group,Others).
obj_exclude(Obj,Group,Others):- select(O,Group,Others),(O==Obj *-> true; Group=Others).


  
/*

into_lst(ObjsL,[]):- ObjsL==[],!.
into_lst(ObjsL,[ObjsL]):- \+ compound(ObjsL),!.
into_lst(ObjsL,[ObjsL]):-is_gridoid(ObjsL),!.
into_lst(ObjsL,[ObjsL]):-is_grid(ObjsL),!.
into_lst(ObjsL,Lst):- is_list(ObjsL),!,maplist(into_lst,ObjsL,LstL),append(LstL,Lst).
into_lst(Grp,Lst):- is_mapping(Grp), get_mapping_info_list(Grp,_,List),!,into_lst(List,Lst).
into_lst(Grp,Lst):- arg(_,Grp,List),is_list(List),!,into_lst(List,Lst).
into_lst(ObjsL,[ObjsL]).

%solve_obj(_VM,_TestID,_ExampleNum,_IO_,_ROptions,Obj,Obj):- is_bg_object(Obj),!.

solve_obj_set([],_VM,_TestID,_ExampleNum,IO_,_ROptions,Objs,Objs):-!.
solve_obj_set([S|Set],VM,TestID,ExampleNum,IO__Start,ROptions,Objs,ObjsO):-
  solve_obj_list(S,VM,TestID,ExampleNum,IO__Start,ROptions,Objs,ObjsM),
  solve_obj_set(Set,VM,TestID,ExampleNum,IO__Start,ROptions,ObjsM,ObjsO).

solve_obj_list(_,_VM,_TestID,_ExampleNum,IO_,_ROptions,Objs,Objs):- Objs == [], !.
solve_obj_list(S,VM,TestID,ExampleNum,IO__Start,ROptions,[Obj|Objs],[NewObj|ObjsO]):-
  solve_obj(VM,TestID,ExampleNum,IO__Start,ROptions,Obj,NewObj),
  solve_obj_list(S,VM,TestID,ExampleNum,IO__Start,ROptions,Objs,ObjsO).


*/

has_individuals(TestID):- var(TestID), !, ensure_test(TestID), has_individuals_real(TestID).
has_individuals(TestID):- has_individuals_real(TestID),!.
has_individuals(TestID):- warn_skip(has_individuals(TestID)),!.
has_individuals_real(TestID):-  
 forall(current_example_nums(TestID,ExampleNum),
  (arc_cache:individuated_cache(TestID,TID,GID,_,Objs), sub_var(ExampleNum,(TID,GID)), Objs\==[])),!.
 


ensure_individuals(TestID):- var(TestID),!,ensure_test(TestID),ensure_individuals(TestID).
ensure_individuals(TestID):- has_individuals_real(TestID),!.
ensure_individuals(TestID):- load_file_dyn_pfc(TestID),has_individuals_real(TestID),!.
ensure_individuals(TestID):- 
 time((with_individuated_cache(true,
  once((with_pair_mode(whole_test, ensure_individuals1(TestID))))))), 
 save_test_hints_now(TestID).

% ensure_individuals1 tries the ensure_individuals2 
ensure_individuals1(TestID):- has_individuals_real(TestID),!.
ensure_individuals1(TestID):- 
  ensure_test(TestID),
    ignore(once((with_pair_mode(whole_test, 
          ensure_individuals2(TestID)),
    has_individuals_real(TestID)))),!.
 
ensure_individuals2(TestID):- ignore((ExampleNum=trn+_)),
  print_collapsed(200, forall( kaggle_arc(TestID,ExampleNum,GridIn,GridOut),
           individuate_pair(complete,GridIn,GridOut,_InC,_OutC))).
ensure_individuals2(TestID):- warn_skip(ensure_individuals2(TestID)),!.

ensure_individuals2(TestID):- once(with_luser(menu_key,'i',once(ndividuator(TestID)))).
ensure_individuals2(TestID):- once(with_luser(menu_key,'o',once(ndividuator(TestID)))).
ensure_individuals2(TestID):- calc_propcounts(TestID).


use_pair_info.
no_pair_info:- \+ use_pair_info.

gather_set(Ctx,Goal):-
  copy_term(Ctx+Goal,NRV+Copy),
  no_repeats_var(NRV), !, 
  call(Copy),Ctx=NRV.
/*

p_to_utbs(TestID,Ctx,P,UTBLists):-
 findall(UPB2,
  gather_set(UPB2,(map_pairs_info_io(TestID,_ExampleNum,Ctx,_Step,_TypeO,_A,_B,_USame,_UPA2,UPB2),member(P,UPB2))),UTBLists).
*/
:- use_module(library(ordsets)).

% common_members(+ListOfLists, -Common)
common_members([FirstList|Rest], Common) :-
    maplist(list_to_ord_set, [FirstList|Rest], OrdSets),
    foldl(ord_intersection, OrdSets, FirstList, Common).

% list_to_ord_set(+List, -OrdSet)
%list_to_ord_set(List, OrdSet) :- sort(List, OrdSet).

% Example query:
% ?- common_members([[1, 2, 3], [2, 3, 4], [1, 2, 3, 4, 5]], Common).
% Common = [2, 3].

%  is_post_objs(TestID,IO_,PostObjs),include(has_prop(P),PostObjs,PostObjsO).


make_common(NewOut1,LHS1,[E|NewOut],[E|NewLHS]):-
   select(O,NewOut1,NewOut2),
   make_unifiable_u(O,I),
   select(I,LHS1,LHS2),
   I=@=O, make_unifiable_u(I,E),!,
   make_common(NewOut2,LHS2,NewOut,NewLHS).
make_common(I,O,I,O).

% old code
diff_l_r_old(InL,OutL,Same,InFlatP,OutPFlat):-
 must_det_ll((
  (( \+ length(InL,1), OutL=[Out] ) -> sort_by_jaccard(Out,InL,[UseL|_]);UseL=InL),
  flat_props([UseL],PA), flat_props([OutL],PB),
  noteable_propdiffs(PA,PB,Same,InFlatP,OutPFlat))),!.



% no operation
diff_l_r([],[],[],[],[]):- !.

diff_l_r(InL,OutL,Same,InFlatP,OutPFlat):- \+ is_list(InL),!,diff_l_r([InL],OutL,Same,InFlatP,OutPFlat).
diff_l_r(InL,OutL,Same,InFlatP,OutPFlat):- \+ is_list(OutL),!,diff_l_r(InL,[OutL],Same,InFlatP,OutPFlat).

diff_l_r(InL,OutL,Same,InFlatP,OutPFlat):- fail,
 must_det_ll((
  (( \+ length(InL,1), OutL=[Out] ) -> sort_by_jaccard(Out,InL,[UseL|_]);UseL=InL),
  flat_props([UseL],PA), flat_props([OutL],PB),
  noteable_propdiffs(PA,PB,Same,InFlatP,OutPFlat))),!.

% -copy/transform  1-to-1
diff_l_r([InL],[OutL],PA,[],OutFlat):- OutL\==[],!,
  must_det_ll((flat_props([InL],PA), flat_props([OutL],PB),
  intersection(PA,PB,_Shared,_L,OutFlat))).

% -copy/transform
diff_l_r([InL],OutL,PA1,[],OutFlat):- OutL\==[],!,
  must_det_ll((flat_props([InL],PA), flat_props([OutL],PB),
  remove_o_giz(PA,PA1),remove_o_giz(PB,PB1),
  pred_intersection(propchange_unnoticable,PA1,PB1,_,_Same,_InFlatP,OutFlat))).

% create new
diff_l_r([],OutL,[],[],OutL):- OutL\==[],!.

% -delete some
diff_l_r(InL,[],Precond,[],[]):- !,
   flat_props([InL],InFlatP),
   remove_o_giz(InFlatP,Precond).

% -mutiple preconds
diff_l_r(InL,OutL,Same,InFlatP,OutPFlat):- OutL\==[],InL\==[],!,
  %pp_ilp(out=OutL), pp_ilp(in=InL),
  must_det_ll((
   sort_by_jaccard(OutL,InL,SharedInL),
   [UseL|Rest] = SharedInL,
   diff_l_r([UseL],OutL,Same1,InFlatP1,OutPFlat1),
   diff_l_r(Rest,OutL,SameR,InFlatPR,OutPFlatR),
   append_vsets([Same1,SameR],Same),
   append_vsets([InFlatP1,InFlatPR],InFlatP),
   append_vsets([OutPFlat1,OutPFlatR],OutPFlat))).

append_vsets(I,O):- flatten([I],M),variant_list_to_set(M,O),!.

ignore_prop_when(ARS,P):- compound(ARS),!,functor(ARS,F,_),!,ignore_prop_when(F,P).
ignore_prop_when(removing,P):- ignore_prop_when(adding,P).
ignore_prop_when(adding,link(contains,_)).
ignore_prop_when(adding,occurs_in_links(contains,_)).
%ignore_prop_when(adding,pg(_,_,rankLS,_)).
ignore_prop_when(adding,pg(_,_,_,_)).
ignore_prop_when(adding,grid_rep(_,_)).
ignore_prop_when(adding,samez(_,_)).
%ignore_prop_when(removing,cc(fg,_)).
%ignore_prop_when(removing,mass(_)).

noteable_propdiffs2(E1,E2,Same,InFlatP,OutPFlat):- 
  flat_props(E1,FP1),flat_props(E2,FP2),
  noteable_propdiffs(FP1,FP2,Same0,InFlatP0,OutPFlat0),
  my_exclude(ignore_prop_when(removing),InFlatP0,InFlatP),
  my_exclude(ignore_prop_when(adding),OutPFlat0,OutPFlat),
  my_exclude(ignore_prop_when(sames),Same0,Same),!.

noteable_propdiffs(PA,PB,Same,InFlatP,OutPFlat):- 
  noteable_propdiffs1(PA,PB,Same0,InFlatP0,OutPFlat0),
  my_exclude(ignore_prop_when(removing),InFlatP0,InFlatP),
  my_exclude(ignore_prop_when(adding),OutPFlat0,OutPFlat),
  my_exclude(ignore_prop_when(sames),Same0,Same),!.
  
  
noteable_propdiffs1(PA,PB,Same,InFlatP,OutPFlat):- 
  remove_o_giz(PA,PA1),remove_o_giz(PB,PB1),
  %=(PA,PA1),=(PB,PB1),
  pred_intersection(propchange_unnoticable,PA1,PB1,_,Same,InFlatP,OutPFlat),!.

noteable_propdiffs1(PA,PB,Same,InFlatP,OutPFlat):- 
  remove_o_giz(PA,PA1),remove_o_giz(PB,PB1),
  intersection(PA1,PB1,Same,InFlatP,OutPFlat),!.

propchange_unnoticable(InL,OutL):- InL=@=OutL,!.
propchange_unnoticable(InL,OutL):- make_unifiable_u(InL,AU),make_unifiable_u(OutL,BU), AU\=@=BU,!,fail.
propchange_unnoticable(InL,OutL):- hide_propchange(InL,AA),hide_propchange(OutL,BB),AA=@=BB,!.


bg_into_var(Var,BG,Var):- BG ==bg,!.
bg_into_var(Var,BG,Var):- is_bg_color(BG),!.
bg_into_var(_,FG,FG).

number_fg_colors(In,Out):- sub_var('@',In),!,subst(In,'@','$VAR'(0),Out),!.
number_fg_colors(In,Out):- sub_var('fg',In),!,In=Out,!.
number_fg_colors(In,Out):- mapgrid(bg_into_var('$VAR'('_')),In,Mid),In\=@=Mid,!,number_fg_colors(Mid,Out).
number_fg_colors(In,Out):- sub_var(777,In),!,copy_term(In,Mid),subst001(Mid,'$VAR'(777),'@',Out),term_variables(Out,Vs),maplist('='('$VAR'('_')),Vs),!.
number_fg_colors(In,Out):- \+ \+ (sub_term(E,In),is_real_fg_color(E)),!,  
  copy_safe(In,InC),unique_fg_colors(InC,Cs),
  Cs\==[], % at least some colors
  subst_colors_with_vars(Cs,Vs,InC,Mid),    
  ground(Cs), % fully grounded test
  numbervars(Vs,777,_,[functor_name('$VAR'),singletons(false),attvar(skip)]),!,
  number_fg_colors(Mid,Out).
number_fg_colors(InOut,InOut).

hide_propchange2(In,Out):- \+ compound(In),!,Out=In.
hide_propchange2(link(PA,_),link(PA,_)).
hide_propchange2(pg(_,P,rank1,N),pg(_,P,rank1,N)).
%hide_propchange2(occurs_in_links(PA,_),occurs_in_links(PA,_)).
%hide_propchange2(links_count(PA,_),links_count(PA,_)).
hide_propchange2(giz(example_num(ExampleNum)),giz(example_num(ExampleNum))).
hide_propchange2(giz(gid(_)),giz(gid(_))).
hide_propchange2(giz(InL),giz(OutL)):- make_unifiable_u(InL,OutL).
hide_propchange2(oid(_),oid(_)).
hide_propchange2((i_o(_)),(i_o(_))).
hide_propchange2(In,Out):- once((sub_term(E,In),is_grid(E),number_fg_colors(E,G),subst001(In,E,G,Mid))),In\=@=Mid,!,hide_propchange(Mid,Out).
hide_propchange2(grid_rep(InL,G),grid_rep(InL,G)).
hide_propchange2(iz(X),iz(Y)):-!,hide_propchange2((X),(Y)).
hide_propchange2(IO_,IO_).

hide_propchange1(iz(symmetry_type(_,False))):- False == false.
hide_propchange1(iz(symmetry_type(_,False))):- False == true.
%hide_propchange1(pg(_,_,_,_)).
hide_propchange1(link(sees(_),_)).
hide_propchange1(pg(_,_,rankLS,_)).
hide_propchange1(iz(P)):-!,hide_propchange1(P).
%hide_propchange1(P):- \+ ok_notice(P),!.
hide_propchange1(P):- dont_notice(P),!.
%hide_propchange1(P):- make_unifiable_u(P,U),!,P=@=U,!.

hide_propchange(PA,PB):- hide_propchange2(PA,PA1),PA\=@=PA1,!,hide_propchange(PA1,PB).
hide_propchange(PA,PA).

remove_o_giz(OID,Out):- atom(OID),!,indv_props_list(OID,In),remove_o_giz(In,Out),!.
remove_o_giz(In,Out):- \+ compound(In),!,Out=In.
remove_o_giz(In,Out):- is_group(In),mapgroup(remove_o_giz,In,MidF),flatten(MidF,Mid),In\=@=Mid,!,remove_o_giz(Mid,Out).
remove_o_giz(obj(In),Out):- nonvar(In),!,remove_o_giz(In,Out),!.
remove_o_giz(In,Out):- m_unifiers(In,MidF),o_unifiers(MidF,Mid),In\=@=Mid,!,remove_o_giz(Mid,Out).
remove_o_giz(In,Out):- my_exclude(hide_propchange1,In,Mid),In\=@=Mid,!,remove_o_giz(Mid,Out).
remove_o_giz(In,Out):-    maplist(hide_propchange,In,Mid),In\=@=Mid,!,remove_o_giz(Mid,Out).
%remove_o_giz(In,Out):- remove_giz(In,Out),!.
remove_o_giz(Out,Out).






%is_accompany_changed_verified(TestID,IO,P,PSame):- is_accompany_changed_computed(TestID,IO,P,PSame), PSame\==[].

%is_accompany_changed_computed(TestID,IO,P,PSame):-
%   ac_rules(TestID,IO,P,PSame) *->true ; prop_can(TestID,IO,P,PSame). 
   
prop_can(TestID,IO,P,Can):-    
  props_change(TestID,IO,P),
  once((prop_cant(TestID,IO,P,Cant),
  prop_can1(TestID,IO,P,Can1),
  intersection(Can1,Cant,_,Can,_))).
  %(Can == [] -> (CanL=Can1,fail) ; CanL= Can).

prop_can1(TestID,IO,P,Can):-  
  props_change(TestID,IO,P),
  findall(O,
    ((enum_object_ext(O),has_prop(giz(g(out)),O),has_prop(cc(bg,0),O),
      has_prop(P,O))),[I|L]),
  indv_props_list(I,List),
  findall(U,(member(U,List),U\=@=P,ok_notice(U),forall(member(E,L),has_prop(U,E))),Can).


prop_cant(TestID,IO,P,Set):-
  props_change(TestID,IO,P),
  findall(Cant,
    ((enum_object(O),has_prop(giz(g(out)),O),has_prop(cc(bg,0),O),
      not_has_prop(P,O),indv_props_list(O,List),member(Cant,List),ok_notice(Cant))),Flat),
   list_to_set(Flat,Set).

enum_object_ext(O):-
  ensure_test(TestID),
  current_example_nums(TestID,ExampleNum),
  once((obj_group_io(TestID,ExampleNum,out,Objs),Objs\==[])),member(O,Objs).


contains_same([],_):- !.
contains_same([E|L],P):- sub_var(E,P),!,contains_same(L,P).

/*
find_peers_with_same(TestID,IO,P,PSame,NewSame):- select(S,PSame,Next),S=@=P,!,find_peers_with_same(TestID,IO,P,Next,NewSame).
find_peers_with_same(TestID,IO,P,PSame,NewSame):- 
   sub_term(Color,P),is_real_color(Color), sub_term(N,P),number(N),
   my_partition(contains_same([Color]),PSame,SameW,SameWO),SameW\==[], SameWO\==[],!,
   find_peers_with_same(TestID,IO,P,SameWO,NewSame).
find_peers_with_same(_,_,PSame,PSame):-!.
   
   

   

merge_xtra_props_ac1([ac1(PO)|AC3],PSame):- !, merge_xtra_props_ac1_3(PO,AC3,PSame), PSame\==[].
merge_xtra_props_ac1_3(PO,[ac1(PO2)|MORE],OUT):-
  intersection(PO,PO2,IPO),
  merge_xtra_props_ac1_3(IPO,MORE,OUT).
merge_xtra_props_ac1_3(PO,[],PO).

merge_xtra_props_ac2([ac2(_,PSame)],PSame):-!.
merge_xtra_props_ac2(AC2,PSame):-
 select(ac2(ExampleNum,PO1),AC2,AC3),
 select(ac2(ExampleNum,PO2),AC3,AC4),
 intersection(PO1,PO2,Some),Some\==[],!,
 merge_xtra_props_ac2([ac2(ExampleNum,Some)|AC4],PSame).
merge_xtra_props_ac2(AC2,PSame):-
 select(ac2(ExampleNum,PO1),AC2,AC3),
 select(ac2(ExampleNum2,PO2),AC3,AC4),
 ExampleNum \== ExampleNum2,
 intersection(PO1,PO2,Some),Some\==[],!,
 merge_xtra_props_ac2([ac2(ExampleNum,Some)|AC4],PSame).

merge_xtra_props_ac2([ac2(ExampleNum,PO1)|AC3],[ac2(ExampleNum,PO1)|PSame]):-
  merge_xtra_props_ac2(AC3,PSame),!.
merge_xtra_props_ac2(PSame,PSame):-!.
*/

changing_props(TestID,X1,X2):- 
 ensure_test(TestID),
 findall(X1-InOut,props_change(TestID,InOut,X1),X1L),
 variant_list_to_set(X1L,X1S),
 member(X1-IO,X1S),
 member(X2-IO,X1S),
% X1@>X2,
 other_val(X1,X2). 



print_scene_change_rules(TestID):- ensure_test(TestID),
  print_scene_change_rules(print_scene_change_rules,TestID).

print_scene_change_rules(Why,TestID):- 
   print_scene_change_rules3(Why,ac_listing,TestID).

print_scene_change_rules3(Why,P4db,TestID):- 
 ensure_test(TestID),
  must_det_ll((
   get_scene_change_rules(TestID,P4db,Rules),
   remove_debug_info(Rules,NoDebug),
   nb_setval('$last_rules_printed_nodebug',NoDebug),
   if_t(maybe_color_this(Why,Color),banner_lines(Color,4)),
   %trans_rules_combined(TestID,_Ctx,CombinedR),reverse(CombinedR,Combined), pp_ilp(merged(Why)=Combined),
   /*
   trans_rules_current(TestID,Ctx,Rules),
   must_det_ll(( \+ (member(R,[1|Rules]), is_list(R)))),
   combine_trans_rules(Rules, Combined),!,
   must_det_ll(( \+ (member(R,[2|Combined]), is_list(R)))).
   */
   if_t(maybe_color_this(Why,Color),banner_lines(Color,2)),
   dash_chars,pp_ilp(rules(Why,P4db)=Rules),
   if_t(maybe_color_this(Why,Color),banner_lines(Color,4)))).

print_scene_change_rules_if_different(Why,P4db,TestID):-
  (nb_current('$last_rules_printed_nodebug',Prev);Prev=[]),!,
  get_scene_change_rules(TestID,P4db,Rules),
  remove_debug_info(Rules,NoDebug),
  if_t(Prev =@= NoDebug,dash_chars),
 ignore((
   Prev \=@= NoDebug,
   nb_setval('$last_rules_printed_nodebug',NoDebug),
   nop(banner_lines(cyan,4)),
   pp_ilp(updated(Why,P4db)=Rules),
   nop(banner_lines(cyan,4)))).

maybe_color_this(Why,Color):- sub_term(Color,Why),is_color(Color),!.
get_scene_change_rules(TestID,P4db,Rules):-
 ensure_test(TestID),
  findall_vset_R(ac_rules(TestID,IO,P,PSame),
    call(P4db,TestID,IO,P,PSame),Rules).




has_propcounts(TestID):- 
 forall(current_example_nums(TestID,ExampleNum),
  ( \+ \+ (propcounts(TestID, ExampleNum, IO, count, _, _), sub_var(in,IO)),
    \+ \+ (propcounts(TestID, ExampleNum, IO, count, _, _), sub_var(out,IO)))).

ensure_propcounts(TestID):- ensure_test(TestID),ensure_propcounts1(TestID).
ensure_propcounts1(TestID):- has_propcounts(TestID),!.
ensure_propcounts1(TestID):- ensure_individuals(TestID),!.
ensure_propcounts1(TestID):- calc_propcounts(TestID),has_propcounts(TestID),!.

ensure_propcounts1(TestID):- 
  once((with_pair_mode(whole_test,
    with_luser(menu_key,'o',once(ndividuator(TestID)))))),has_propcounts(TestID),!.
ensure_propcounts1(TestID):- show_prop_counts(TestID), has_propcounts(TestID),!.
ensure_propcounts1(_).

props_change(TestID,IO,P):- map_pairs_info(TestID,IO,P,_Step),good_for_rhs(P).
props_change2(TestID,IO,P):-
% -  ensure_propcounts(TestID),
  %ensure_prop_change(E),
  findall(Q-I_or_O,counts_change(TestID,_,I_or_O,Q,_,_),L),list_to_set(L,S),!,member(P-IO,S),ok_deduce(P).
%ensure_prop_change(IO,P):- (var(P)->props_change(_TestID,IO,P);true).

in_out_atoms(in,out).

counts_change(TestID,ExampleNum,In,P,N2,N1):- in_out_atoms(In,Out),
   ensure_propcounts(TestID),
   propcounts(TestID, ExampleNum, Out, count, N1, P), ok_deduce(P),
   ExampleNum = trn+_,
   (propcounts(TestID, ExampleNum, In, count, N2, P) -> true ; N2=0), N1\==N2.

counts_change(TestID,ExampleNum,Out,P,N1,N2):- in_out_atoms(In,Out),
   ensure_propcounts(TestID),
   propcounts(TestID, ExampleNum, In, count, N1, P), ok_deduce(P),
   ExampleNum = trn+_,
   (propcounts(TestID, ExampleNum, Out, count, N2, P) -> true ; N2=0), N1\==N2.




ensure_scene_change_rules(TestID):-
 ensure_test(TestID),
 (\+ ac_unit(TestID,_,_,_) -> compute_scene_change(TestID) ; true).



compute_scene_change(TestID):-
 ensure_test(TestID),
 with_pair_mode(whole_test,  
 must_det_ll((
  clear_scene_rules(TestID),  
  compute_scene_change_pass1(TestID),  
  compute_scene_change_pass2(TestID),
  compute_scene_change_pass3(TestID),
  compute_scene_change_pass4(TestID)))),!.


compute_scene_change_pass1(TestID):- 
  show_object_dependancy(TestID),!.
  %learn_object_dependancy(TestID).


compute_scene_change_pass2(TestID):- 
  retractall(ac_db_unit(TestID,_,_,_)),
    forall(pass2_rule(TestID,Ctx,P,PSame),
      assert_accompany_changed_db(TestID,Ctx,P,PSame)),
  print_scene_change_rules(compute_scene_change_pass2,TestID).

compute_scene_change_pass3(TestID):-
 must_det_ll((
 % set_of_changes(TestID,compute_scene_change_pass3b(TestID,correct_pass2a)),
  % set_of_changes(TestID,compute_scene_change_pass3b(TestID,correct_pass2b)),
  set_of_changes(TestID,compute_scene_change_pass3a(TestID)),
  set_of_changes(TestID,compute_scene_change_pass3b(TestID,correct_antes1)),
  set_of_changes(TestID,compute_scene_change_pass3b(TestID,correct_antes2)),
  set_of_changes(TestID,compute_scene_change_pass3b(TestID,correct_antes3)),
  set_of_changes(TestID,compute_scene_change_pass3b(TestID,correct_antes4)),
  set_of_changes(TestID,compute_scene_change_pass3c(TestID)),
 % set_of_changes(TestID,compute_scene_change_pass3b(TestID,correct_antes4a)),
 % set_of_changes(TestID,compute_scene_change_pass3b(TestID,correct_antes4b)),
  set_of_changes(TestID,compute_scene_change_pass3b(TestID,correct_antes5)),
  set_of_changes(TestID,compute_scene_change_pass3b(TestID,correct_antes6)),
  set_of_changes(TestID,compute_scene_change_pass3c(TestID)))),!.


compute_scene_change_pass3a(TestID,IO_-P):- 
   findall_vset_R(PSame,ac_unit(TestID,IO_,P,PSame),List),
   m_unifiers(List,ListR),
   update_accompany_changed_db(compute_scene_change_pass3a,TestID,IO_,P,ListR).
compute_scene_change_pass3a(_,_).

compute_scene_change_pass3b(TestID,P4,IO_-P):-
  findall_vset_R(PSame,ac_unit(TestID,IO_,P,PSame),SameS1),
  my_partition(is_debug_info,SameS1,Skip,SameS),
  call(P4,TestID,IO_,P,SameS,KeptS), KeptS\==[],!,
  if_t(SameS\=@=KeptS,
     (append(KeptS,Skip,Kept),
      update_accompany_changed_db(P4,TestID,IO_,P,Kept))).
compute_scene_change_pass3b(_,_,_). 

compute_scene_change_pass3z(TestID,P4,IO_-P):-
  %findall_vset_R(PSame,ac_unit(TestID,IO_,P,PSame),SameS),
  ac_unit(TestID,IO_,P,PSame),
  call(P4,TestID,IO_,P,PSame,KeptS), KeptS\==[],!,
  if_t(PSame\=@=KeptS,     
      update_accompany_changed_db(P4,TestID,IO_,P,KeptS)).
compute_scene_change_pass3z(_,_,_). 

compute_scene_change_pass3c(_,_):-!.
compute_scene_change_pass3c(TestID,IO_-P):-
  ac_unit(TestID,IO_,P,PSame1),
  my_partition(is_debug_info,PSame1,Skip,PSame),
  findall(DSame,
     (ac_db_unit(TestID,IO_,DP,DSame), 
      same_rhs_property(DP,P),at_least_one_overlap(DSame,PSame)),
   SL),  SL = [_,_|_],
  common_members(SL,Commons),
  forall((ac_db_unit(TestID,IO_,DP,DSame),same_rhs_property(DP,P)),
      (intersection(DSame,Commons,_,Kept,_),
        ignore((Kept\==[],append(Kept,Skip,Save),update_accompany_changed_db(TestID,IO_,P,Save))))),

  print_scene_change_rules_if_different(compute_scene_change_pass3c,ac_unit,TestID),
  !.
compute_scene_change_pass3c(_,_).


compute_scene_change_pass4(TestID):-
   nop(compute_scene_change_pass3(TestID)),!.

set_of_ps(TestID,Ps):-
  ((findall_vset_R(Ctx-P1,
    ((ac_unit(TestID,IO_,P,_)
     ;ensure_props_change(TestID,IO_,P)
     ;pass2_rule(TestID,IO_,P,_)),
    io_to_cntx(IO_,Ctx),into_rhs(P,P1)), Ps))).

set_of_changes(TestID,P1):-
 ((
  set_of_ps(TestID,Ps),
  why_last(P1,Why),
  %findall_vset_R(IO_-P,(ac_rules(TestID,IO_,P,_)), Ps),
  maplist(P1,Ps),
  print_scene_change_rules_if_different(Why,ac_db_unit,TestID))).

why_last1(A,E):- \+ compound(A),!, (atom(A);string(A)),A=E.
why_last1([H|T],E):- !, ((T\==[],why_last1(T,E));why_last1(H,E)),!.
why_last1(C,E):- compound_name_arguments(C,F,A),why_last1([F|A],E),!.
why_last(A,E):- why_last1(A,E),!.
why_last(E,E).

into_rhs(P,P):- \+ compound(P),!.
into_rhs(ac_unit(_Tst,_IO,P,_PConds),Out):- into_rhs(P,Out).
into_rhs(ac_db(_Tst,_IO,P,_PConds),Out):- into_rhs(P,Out).
into_rhs(ac_db_unit(_Tst,_IO,P,_PConds),Out):- into_rhs(P,Out).
into_rhs(ac_rules(_Tst,_IO,P,_PConds),Out):- into_rhs(P,Out).
into_rhs(ac_listing(_Tst,_IO,P,_PConds),Out):- into_rhs(P,Out).
into_rhs(edit(_,_,_,R),P):- !, into_rhs(R,P).
into_rhs(edit(_,_,R),P):- !, into_rhs(R,P).
into_rhs(edit(R),P):- !, into_rhs(R,P).
into_rhs(create(R),P):- !, into_rhs(R,P).
into_rhs(delete(R),P):- !, into_rhs(R,P).
into_rhs(P,E):- sub_compound(rhs(E),P),!. %into_rhs(rhs(R),P):- !, into_rhs(R,P).
into_rhs([R],P):- !, into_rhs(R,P).
into_rhs(P,P).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

about_same_property(DS,S):- \+ \+ (same_rhs_property(DS,S);( \+ DS\=S )).
same_rhs_property(DS,S):- \+ \+ (DS=@=S;other_val(S,DS)).


% Retain Overlap
correct_antes1(TestID,IO_,P,PSame,SL):- 
  %rev_in_out_atoms(OI,IO_),
  findall(S,
   (member(S,PSame),
     \+ \+ ((
       forall((ac_rules(TestID,IO_,DP,DSame),at_least_one_overlap(DSame,PSame)),
          ((P==DP)-> true; (member(DS,DSame),  
             \+ negated_s_lit(S,_), other_val(S,DS))))))),
   SL), SL\==[],!.
correct_antes1(_TestID,_IO_,_P,PSame,PSame).

is_unbound_prop(S):- make_unifiable(S,DS), S=@=DS,!.

% Make sure each arguement is transformed corretly
correct_antes2(_TestID,_IO_,_P,PSame,Kept):-  maplist(ensure_xformed,PSame,Kept),!.
ensure_xformed(pg(_,A,B,C),pg(_,A,B,C)):-!.
ensure_xformed(A,A).

% Remove Redundant Overlap
correct_antes3(_TestID,_IO_,_P,PSame,SL):- 
  findall(S, ( member(S,PSame), \+ is_unbound_prop(S)), SL), SL\==[],!.
correct_antes3(_TestID,_IO_,_P,PSame,PSame).

% Remove Redundant Overlap
correct_antes4(TestID,IO_,P,PSame,SL):- 
  findall(S,
   ( member(S,PSame), 
     (negated_s_lit(S,_)->true;
      \+ ((  
       forall((ac_rules(TestID,IO_,DP,DSame),
              same_rhs_property(P,DP)),          
            (member(DS,DSame), DS=@=S)))))),
   SL), 

  SL\==[],!.
correct_antes4(_TestID,_IO_,_P,PSame,PSame).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%






% Remove Redundant Overlap
correct_antes4a(TestID,IO_,VP,PSame,SLPSame):- fail,
  %rev_in_out_atoms(OI,IO_),
  ensure_deref_value(VP,P),
  \+ \+ ((ac_rules(TestID,IO_,DP,_),other_val(P,DP))),
  findall(mv4a(info(changes_from(S,P))),
       ((member(S,PSame), \+ negated_s_lit(S,_), S\= mv4a(info(_)),
         other_val(S,P))),
     SL), SL\==[],!, 
  append(PSame,SL,SLPSame).

correct_antes4a(_TestID,_IO_,_P,PSame,PSame).



% Remove Single Chhangers
correct_antes4b(TestID,IO_,VP,PSame,SLPSame):- fail,
  %rev_in_out_atoms(OI,IO_),
  ensure_deref_value(VP,P),
  \+ \+ ((ac_rules(TestID,IO_,DP,_),other_val(P,DP))),
  findall(mv4b(info(changes_into(S,P))),
       ((member(S,PSame), \+ negated_s_lit(S,_), S\= mv4b(info(_)), other_val(S,P),
         forall((ac_rules(TestID,IO_,DP,DSame),other_val(P,DP)),
           \+ \+ (member(DS,DSame), other_val(S,DS), \+ negated_s_lit(DS,_))))), 
     SL), SL\==[],!, 
  append(PSame,SL,SLPSame).
correct_antes4b(_TestID,_IO_,_P,PSame,PSame).



% Add Negations
correct_antes5(TestID,IO_,P,PSame,Kept):- correct_antes_neg(TestID,IO_,P,PSame,Kept),!.
correct_antes5(_TestID,_IO_,_P,PSame,Kept):- vsr_set(PSame,Kept),!.
correct_antes5(_TestID,_IO_,_P,PSame,PSame).
correct_antes_neg(TestID,IO_,P,PSame,Kept):-
  findall( ( \+ DS),
   ((member(S,PSame), \+ negated_s_lit(S,_), is_unbound_prop(S), make_unifiable(S,DS),
     ac_rules(TestID,IO_,DP,DSame),      
     other_val(P,DP), %at_least_one_overlap(DSame,PSame),
     member(DS,DSame), \+ negated_s_lit(DS,_), \+ is_unbound_prop(DS), 
       \+ member(\+ DS,PSame))), SL), SL\==[],
  append(PSame,SL,Kept),Kept\==[], !.
correct_antes_neg(_TestID,_IO_,_P,PSame,PSame).


% DISABLED not really a loops
correct_antes6(_TestID,_IO_,P,PSame,Kept):- fail,
  findall(S, (member(S,PSame), \+ same_rhs_property(P,S)), Kept), Kept\==[],!.
correct_antes6(_TestID,_IO_,_P,PSame,PSame).


negated_s_lit(N,P):- compound(N), N = ( \+ P ). 


/*
correct_antes5(TestID,IO_,P,PSame,Kept):-   
   make_unifiable_u(P,U),
   is_accompany_changed_computed(TestID,IO_,U,DSame),
   P\=@=U,
   maplist(make_unifiable_u,DSame,USame),
   pred_intersection(other_val,PSame,USame,Kept,_,_,_),Kept\==[].
correct_antes5(_TestID,_IO_,_P,PSame,PSame).


solve_obj_group(VM,TestID,ExampleNum,ROptions,Objs,ObjsO):-
 forall(kaggle_arc(TestID,trn+N,_,_),
  ( findall(Out,((arc_cache:map_pairs(TestID,_,trn+N,info(Step,_,in_out,perfect_in_out,_,trn+N),PreObjs,Out),
      indv_props_list(Out,PropsO),
       closest_object(Out,PreObjs,PreObj),
       rewrite_rules_for(PreObj,Out,Sames,Diffs),
       ,OutL),
    findall(PreObjs,arc_cache:map_pairs(TestID,_,trn+N,info(0,_,in_out,_,_,trn+N),PreObjs,Out),PreObjs),
  homogenize(OutL,Sames,Diffs),
*/


tesT_compare_objects:- compare_objects([
    obj([mass(1),shape_rep(grav,[hv(1,1)]),colors_cc([cc(yellow,1.0)]),localpoints([yellow-hv(1,1)]),
      vis2D(1,1),rot2D(sameR),loc2D(4,9),changes([]),iz(type(dots)),iz(type(dot)),iz(filltype(solid)),iz(jagged(true)),center2G(4,9),% obj_to_oid(t(af902bf9)>(tst+0)*in,37),globalpoints([yellow-point_04_09]),
      grid_size(10,10),iz(important)]),
    obj([mass(1),shape_rep(grav,[hv(1,1)]),colors_cc([cc(yellow,1.0)]),localpoints([yellow-hv(1,1)]),vis2D(1,1),rot2D(sameR),loc2D(4,6),changes([]),iz(type(dots)),iz(shape_rep(grav,dot)),iz(filltype(solid)),iz(jagged(true)),center2G(4,6),obj_to_oid(t(af902bf9)>(tst+0)*in,39),globalpoints([yellow-point_04_06]),grid_size(10,10),iz(important)]),
    obj([mass(1),shape_rep(grav,[hv(1,1)]),colors_cc([cc(yellow,1.0)]),localpoints([yellow-hv(1,1)]),vis2D(1,1),rot2D(sameR),loc2D(1,6),changes([]),iz(type(dots)),iz(shape_rep(grav,dot)),iz(filltype(solid)),iz(jagged(true)),center2G(1,6),obj_to_oid(t(af902bf9)>(tst+0)*in,40),globalpoints([yellow-point_01_06]),grid_size(10,10),iz(important)]),
    obj([mass(1),shape_rep(grav,[hv(1,1)]),colors_cc([cc(yellow,1.0)]),localpoints([yellow-hv(1,1)]),vis2D(1,1),rot2D(sameR),loc2D(10,5),changes([]),iz(type(dots)),iz(shape_rep(grav,dot)),iz(filltype(solid)),iz(jagged(true)),center2G(10,5),obj_to_oid(t(af902bf9)>(tst+0)*in,41),globalpoints([yellow-point_10_05]),grid_size(10,10),iz(important)]),
    obj([mass(1),shape_rep(grav,[hv(1,1)]),colors_cc([cc(yellow,1.0)]),localpoints([yellow-hv(1,1)]),vis2D(1,1),rot2D(sameR),loc2D(6,5),changes([]),iz(type(dots)),iz(shape_rep(grav,dot)),iz(filltype(solid)),iz(jagged(true)),center2G(6,5),obj_to_oid(t(af902bf9)>(tst+0)*in,42),globalpoints([yellow-point_06_05]),grid_size(10,10),iz(important)]),
    obj([mass(1),shape_rep(grav,[hv(1,1)]),colors_cc([cc(yellow,1.0)]),localpoints([yellow-hv(1,1)]),vis2D(1,1),rot2D(sameR),loc2D(10,1),changes([]),iz(type(dots)),iz(shape_rep(grav,dot)),iz(filltype(solid)),iz(jagged(true)),center2G(10,1),obj_to_oid(t(af902bf9)>(tst+0)*in,43),globalpoints([yellow-point_10_01]),grid_size(10,10),iz(important)]),
    obj([mass(1),shape_rep(grav,[hv(1,1)]),colors_cc([cc(yellow,1.0)]),localpoints([yellow-hv(1,1)]),vis2D(1,1),rot2D(sameR),loc2D(6,1),changes([]),iz(type(dots)),iz(shape_rep(grav,dot)),iz(filltype(solid)),iz(jagged(true)),center2G(6,1),obj_to_oid(t(af902bf9)>(tst+0)*in,44),globalpoints([yellow-point_06_01]),grid_size(10,10),iz(important)])],
    OUTPUT),
  print(OUTPUT).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
/*
  this is part of (H)MUARC  https://logicmoo.org/xwiki/bin/view/Main/ARC/

  This work may not be copied and used by anyone other than the author Douglas Miles
  unless permission or license is granted (contact at business@logicmoo.org)
*/


rhs_ground(G):- ground(G),!.
rhs_ground(G):- nop(writeln(G)),!.

ac_rules(List,Ctx,P,PSame):- is_list(List),!,member(Stuff,List),Stuff=..[_,Ctx,P,PSame].
ac_rules(TestID,Ctx,P,PSame):- 
  ac_db_unit(TestID,Ctx,P,Same),
  include(not_debug_info,Same,PSame), 
  %Same=PSame,
  PSame\==[].

not_debug_info(P):- \+ is_debug_info(P),!.

remove_debug_info(List,NoDebug):- \+ compound(List),!,NoDebug=List.
remove_debug_info(List,NoDebug):- is_list(List), is_obj_props(List),!,include(not_debug_info,List,NoDebug).
remove_debug_info(List,NoDebug):- is_list(List), !, maplist(remove_debug_info,List,NoDebug).
remove_debug_info(List,NoDebug):- compound_name_arguments(List,F,AA),
  maplist(remove_debug_info,AA,CC),!, compound_name_arguments(NoDebug,F,CC).

ac_db_unit(TestID,Ctx,P,Same):- ac_listing(TestID,Ctx,P,Same),include(not_debug_info,Same,PSame), PSame\==[].

ac_listing(List,Ctx,P,PSame):- is_list(List),!,member(Stuff,List),Stuff=..[_,Ctx,P,PSame].
%ac_listing(TestID,Ctx,P->ac_db_unit,PSame):- ac_db_unit(TestID,Ctx,P,PSame).
ac_listing(TestID,Ctx,P,PSame):- ac_unit(TestID,Ctx,P,PSame)*->true;pass2_rule(TestID,Ctx,P,PSame).
%ac_listing(TestID,Ctx,P,[iz(info(prop_can))|PSame]):- prop_can(TestID,Ctx,P,PSame).
%ac_listing(TestID,Ctx,P,[pass2|PSame]):- pass2_rule(TestID,Ctx,P,PSame), \+ ac_rules(TestID,Ctx,P,PSame).


ac_listing(TestID,rules,P->Ctx->current,LHS):- 
  member(Ctx,[in_out,in_out_out,s(_)]),
  trans_rules_current(TestID,Ctx,Rules),member(R,Rules),
  rule_to_pcp(R,P,LHS).
ac_listing(TestID,rules,P->Ctx->combined,LHS):- fail,
  member(Ctx,[in_out,in_out_out,s(_)]),
  trans_rules_combined(TestID,Ctx,Rules),member(R,Rules),
  rule_to_pcp(R,P,LHS).

show_time_of_failure(_TestID):- !.
show_time_of_failure(TestID):- 
    print_scene_change_rules3(show_time_of_failure,
       ac_listing,TestID).

rule_to_pcp(R,P,LHS):- 
  must_det_ll((
  into_rhs(R,P),into_lhs(R,Conds),
  subst(R,P,p,RR), subst(RR,Conds,conds,RRR),append(Conds,[iz(info(RRR))],LHS))).

%ac_rules(TestID,P,PSame):- ac_rules(TestID,_,P,PSame).

%pass2_rule(TestID,Ctx,P,PSame):- pass2_rule_old(TestID,Ctx,P,PSame).
%pass2_rule(TestID,Ctx,P,PSame):- pass2_rule_new(TestID,Ctx,P,PSame).

pass2_rule(TestID,Ctx,RHS,LHS):-  !, pass2_rule2(TestID,Ctx,RHS,LHS).
/*
pass2_rule(TestID,Ctx,RHS,LHS):-
  findall_vset(Ctx-RHS,(pass2_rule1(TestID,Ctx,RHS,LHS);pass2_rule2(TestID,Ctx,RHS,LHS)),List),
  member(Ctx-RHS,List),
  (pass2_rule1(TestID,Ctx,RHS,LHS)*->true;pass2_rule2(TestID,Ctx,RHS,LHS)).
*/

pass2_rule2(TestID,Ctx,RHS,LHS):- 
 ensure_test(TestID),
  trans_rules_current(TestID,Ctx,Combined),
  member(Rule,Combined),
  %Info = info(_Step,_IsSwapped,Ctx,_TypeO,TestID,_ExampleNum,_),
  %arg(_,Rule,Info),
  must_det_ll((
  rule_to_pcp(Rule,RHS,LHS))).

pass2_rule2(TestID,Ctx,RHS,LHS):- fail,
 ensure_test(TestID),
  trans_rules_combined(TestID,Ctx,Combined),
  member(Rule,Combined),
  %Info = info(_Step,_IsSwapped,Ctx,_TypeO,TestID,_ExampleNum,_),
  %arg(_,Rule,Info),
  must_det_ll((
  rule_to_pcp(Rule,RHS,LHS))).

pass2_rule2(TestID,Ctx,edit(Type,different,P),[iz(info(propcan(true,Ctx)))|PSame]):- fail,
  ensure_test(TestID), ensure_props_change(TestID,Ctx,P),
  prop_can(TestID,IO,P,PSame), once((io_to_cntx(IO,Ctx),prop_type(P,Type))).

/*pass2_rule(TestID,Ctx,RHS,[iz(info(Info))|LHS]):- 
 ensure_test(TestID),
  trans_rules_combined(TestID,_Ctx,Combined),
  member(Rule,Combined),
  arg(_,Rule,Info),
  must_det_ll((
  arg(_,Rule,rhs(RHS)),
  arg(_,Rule,lhs(LHS)))),
  rhs_ground(RHS).
*/



trans_rules_current(TestID,Ctx,Rules):-
  findall_vset_R(TransRule,arc_cache:trans_rule_db(TestID,_ExampleNum1,Ctx,TransRule),Rules),!.

trans_rules_combined(TestID,Ctx,Combined):-
  trans_rules_current(TestID,Ctx,Rules), must_det_ll(( \+ (member(R,[1|Rules]), is_list(R)))),
  combine_trans_rules(Rules, Combined), must_det_ll(( \+ (member(R,[2|Combined]), is_list(R)))),
  !.

combine_trans_rules([R1|Rules], CombinedRules):- 
  into_rhs(R1,RHS1),
  same_functor(R1,R2),
  select(R2,Rules,RulesN), % my_assertion(r1, \+ is_list(R1)), my_assertion(r2, \+ is_list(R2)),
  into_rhs(R2,RHS2),
  %into_step(R2,RHS2),
  RHS1=@=RHS2,
  merge_vals(R1,R2,R),  % my_assertion(r, \+ is_list(R)),
  combine_trans_rules([R|RulesN], CombinedRules).
  
  
  
  
combine_trans_rules([R|Rules], [R|CombinedRules]):- 
  combine_trans_rules(Rules, CombinedRules).
combine_trans_rules([],[]).



/*
pass2_rule(TestID,IO,P,OutputRule):-
  ensure_test(TestID),
  RuleType = edit_copy(IO,ReType,P), 
  SortKey = P,
  OutputRule = rule(RuleType,SortKey,SuperPreconds),
  KeyedRule = rule(RuleType,SortKey,Precond),
  Rule = rule(RuleType,P,LHS),
  findall(Rule,pass2_rule_R(TestID,Rule),Rules),
  maplist(arg(1),Rules,Keyz),vsr_set(Keyz,Keys),
  member(RuleType,Keys),
  findall(KeyedRule,
    (prop_type(P,ReType),findall(LHS,member(Rule,Rules),LHSList),flatten(LHSList,FFound),
      into_lhs(FFound,Precond)),KeyedRules),
  maplist(arg(3),KeyedRules,Preconds),into_lhs(Preconds,SuperPreconds),
  member(KeyedRule,KeyedRules),
  %include(has_a_value,SuperPreconds,UsedPrconds),
  true.
*/



%map_pairs_info(TestID,Ctx,P,Step):- !, map_pairs_info_io(TestID,_ExampleNum,Ctx,Step,_TypeO,_A,_B,_USame,_InFlatProps,UPB2),member(P,UPB2),nop(ok_deduce(P)).
ensure_props_change(TestID,IO,P):-  props_change(TestID,IO,P).

map_pairs_info(TestID,IO,P,Step):-
  no_repeats_var(IOP),
  map_pairs_info2(TestID,IO,P,Step),
  ground(P),
  IOP=(IO+P).

%  ((var(P),has_propcounts(TestID))->props_change2(TestID,IO,P);true),
map_pairs_info2(TestID,IO,P,_Step):- props_change2(TestID,IO,P).
map_pairs_info2(TestID,IO,P,_Step):- 
 var(P), \+ \+ ac_unit(TestID,IO,_,_), %!,
  ac_unit(TestID,IO,P,_).
map_pairs_info2(TestID,Ctx,P,Step):- 
  arc_cache:prop_dep(TestID,_ExampleNum,Ctx,Info,_InL,_OutL,_USame,_InFlatProps,OutFlatProps),
  sub_compound(step(Step),Info),
  member(P,OutFlatProps).

/*

:- abolish(good_conseq/4).
:- dynamic(good_conseq/4).

map_pairs_info2(_TestID,IO,P,_Step):- nonvar(P),nonvar(IO),!.
map_pairs_info2(TestID,IO,P,_Step):- nonvar(P),nonvar(IO),good_conseq(TestID,IO,P,YN),!,YN=yes.
  
  
map_pairs_info2(TestID,IO,P,Step):- 
 ((var(P),has_propcounts(TestID))->props_change2(TestID,IO,P);true),
 no_repeats_var(IOP),
 (map_pairs_info3(TestID,IO,P,Step)*->asserta(good_conseq(TestID,IO,P,yes));(asserta(good_conseq(TestID,IO,P,no)),fail)),
 IOP=IO+P.

map_pairs_info3(_TestID,_IO,_P,_Step).
*/
/*:- nonvar(P).
map_pairs_info3(TestID,IO,P,Step):- 
  %ensure_individuals(TestID),
  %ensure_propcounts(TestID),
  %learn_object_dependancy(TestID),
  
  (var(IO)->gather_set(Ctx,pair_obj_props(TestID,ExampleNum,Ctx,Step,TypeO,InL,OutL,USame,InFlatProps,OutFlatProps));true),
  %IO_ = in, Ctx = in_out,
  %gather_set(P,(map_pairs_info_io(TestID,ExampleNum,Ctx,Step,TypeO,InL,OutL,USame,UPA2,UPB2),member(P,PB2))).
  gather_set(P,(
      %nop(gather_set(Step,(map_pairs_info_io(TestID,ExampleNum,Ctx,Step,TypeO,InL,OutL,USame,UPA2,UPB2),member(P,UPB2)))),
      map_pairs_info_io(TestID,ExampleNum,Ctx,Step,TypeO,InL,OutL,USame,InFlatProps,UPB2),member(P,UPB2),ok_deduce(P))),
  %p_to_utbs(TestID,Ctx,P,UTBLists),  
  %common_members(UTBLists,Members), 
  %member(P,Members),

  ignore(gather_set(Step,(pair_obj_props(TestID,ExampleNum,Ctx,Step,TypeO,InL,OutL,USame,InFlatProps,OutFlatProps),member(P,OutFlatProps)))),
  io_to_cntx(IO,Ctx).

map_pairs_info_io(TestID,ExampleNum,Ctx,Step,TypeO,InL,OutL,USame,UPA2,UPB2):-
 pair_obj_props(TestID,ExampleNum,Ctx,Step,TypeO,InL,OutL,USame,UPA2,UPB2).

*/



% delete
trans_rule(Info,In,[],Rules):- listify(In,InL),
 findall(delete_object(Info,rhs(delete(In)),lhs(Preconds)),
   (member(In,InL),into_lhs(In,Preconds)),Rules), Rules\==[],!.

% mutiple postconds
trans_rule(Info,In,[Out,Out2|OutL],TransRule):- is_object(Out),is_object(Out2),
  maplist(trans_rule(Info,In),[Out,Out2|OutL],TransRule), TransRule\==[],!.

% create
trans_rule(Info,[],Out,Rules):- listify(Out,OutL),
 findall(create_object(Info,rhs(create(Out)),lhs(Preconds)),
   ((member(Out,OutL),into_lhs(Out,Preconds))),Rules), Rules\==[],!.

% 2 preconds
%trans_rule(Info,[In1,In2],[Out],TransRule):- is_object(In1),is_object(In2),
%  TransRule = create_object2(Info,rhs(create_obj(Out)),lhs(into_new(In1,In2))),!.

% 2 preconds
trans_rule(Info,[In1,In2],[Out],TransRule):- is_object(In1),is_object(In2), % fail,
   noteable_propdiffs(In1, Out,_Same1,_DontCare1,New1), 
   noteable_propdiffs(In2,New1,_Same2,_DontCare2,New2),
   %remove_o_giz(Out,RHSO), 
   remove_o_giz(In1,Precond1), remove_o_giz(In2,Precond2),
   %sub_comInfo = info(Step,_IsSwapped,_Ctx,TypeO,_,_,_),
   sub_compound(step(Step),Info), sub_compound(why(Type),Info),
   Type \== assumed_in_in_out,
 % append_sets(Same1,Same2,Same), append_sets(DontCare1,DontCare2,DC), append_sets(New1,New2,New),
 % append_sets(Same,New,NewObj),
  %make_common(RHSO,LHS1,NewOut1,NewLHS1),
  %make_common(NewOut1,LHS2,NewOut,NewLHS2),
  TransRule = [create_object1(Info,rhs(creation_step1(Step,Type,New1)), lhs(Precond1)),
               create_object2(Info,rhs(creation_step2(Step,Type,New2)), lhs(Precond2))],!.

% mutiple preconds
trans_rule(Info,[In,In2|InL],OutL,TransRule):- is_object(In),is_object(In2),
  trans_rule(Info,[In2|InL],OutL,TransRuleM), TransRuleM\==[],
  sub_compound(lhs(Precond),TransRuleM),
  noteable_propdiffs(In,OutL,Same,_L,_R),
  append_vsets([Precond,Same],NewPrecond),
  subst(TransRuleM,lhs(Precond),lhs(NewPrecond),TransRule),!.

% just copy an object
trans_rule(Info,[In],[Out],Rules):- 
  sub_compound(step(Step),Info), sub_compound(why(TypeO),Info),
  noteable_propdiffs(In,Out,Same,L,R),L==[],R==[],
  Rules = [ copy_if_match(Info,rhs(copy_step(Step,TypeO)),lhs(Same)) ],!.

% just copy an object
trans_rule(Info,In,Out,Rules):- 
  sub_compound(step(Step),Info), sub_compound(why(TypeO),Info),
  noteable_propdiffs(In,Out,Same,L,R),L==[],R==[],
  Rules = [ copy_if_match(Info,rhs(copy_step(Step,TypeO)),lhs(Same)) ],!.


% copy/transform 
trans_rule(Info,In,Out,Rules):- 
  noteable_propdiffs(In,Out,_Same,_L,R),
  into_lhs(In,LHS),  
  findall(edit_copy(Info,rhs(edit(Type,Change,P)),lhs(LHS)),
    (member(P,R),prop_pairs(In,Out,Type,Change,P),
      Change\==same,
      good_for_rhs(P)),Rules),Rules\==[],!.

trans_rule(Info,E1,E2,Rules):-
  noteable_propdiffs(E1,E2,NSame,NL,NR),
  %pp_ilp(l2r(Info,E1,E2)),
  dash_chars,
  if_t(how_are_different(E1,E2,Set),pp_ilp(how_are_different=Set)),
  flat_props(E1,FP1),flat_props(E2,FP2),
  intersection(FP1,FP2,Same,InFlatP,OutPFlat),
  pp_ilp(removed=InFlatP),
  pp_ilp(sames=Same),
  pp_ilp(added=OutPFlat),
  pp_ilp(info=Info),
  pp_ilp(nremoved=NL),
  pp_ilp(nsames=NSame),
  pp_ilp(nadded=NR),
  sub_compound(step(Step),Info), sub_compound(why(TypeO),Info),
  dash_chars,
  Rules = [ 
    create_object_step(Info,rhs(create3c(Step,TypeO,E2)),lhs(Same)) ],!.
    %copy_if_match(Info,rhs(copy_step(Step,TypeO)),lhs(Same)) ].















:- encoding(iso_latin_1 ).
/*
  this is part of (H)MUARC  https://logicmoo.org/xwiki/bin/view/Main/ARC/

  This work may not be copied and used by anyone other than the author Douglas Miles
  unless permission or license is granted (contact at business@logicmoo.org)
*/
:- include(kaggle_arc_header).

:- multifile(decl_pt/1).
:- discontiguous(decl_pt/1).
:- discontiguous(obj_to_program/3).

:- dynamic(decl_pt/1).

:- thread_local(t_l:id_cells/2).

redress_override(L,L):- var(L),!.
redress_override(L,LL):- select(unkept(_),L,LLL),!,redress_override(LLL,LL).
redress_override(L,LL):- select(kept(E),L,LLL),!,redress_override([E|LLL],LL).
redress_override(L,LL):- is_list(L),!,my_maplist(redress_override,L,LL).
redress_override(birth(I),iz(info(birth(I)))):-!.
redress_override(iz(birth(I)),iz(info(birth(I)))):-!.
redress_override(iz(I),iz(IT)):- iz_type(I,IT),!.
redress_override(iz(I),iz(info(I))):- atom(I),!.
redress_override(info(I),iz(info(I))):-!.
%redress_override(I,iz(IT)):- iz_type(I,IT),!.
redress_override(I,I).


iz_type(I,IT):-iz_type0(I,ITT),iz_type0(ITT,IT).
iz_type0(I,IT):- compound(I),functor(I,F,_),if_atype(F,FF),IT=..[FF,I].
iz_type0(I,IT):- atomic(I),if_atype(I,F),IT=..[F,I].
%iz_type0(I,IT):- compound(I),functor(I,F,_),if_atype(_,F),IT=I.
iz_type0(I,I).

if_atype(always_keep,flag).
if_atype(hidden,flag).
if_atype(nsew,indiv).
if_atype(indiv,info).
if_atype(birth,info).
if_atype(colomass,indiv).
if_btype(info).
if_btype(flag).



gpoints_to_iv(GPoints,Iv):-
  gpoints_to_iv_info(GPoints,_ColorlessPoints,_LocX,_LocY,_PenColors,_RotG,Iv,[],_LPoints,_Grid,_SH,_SV,_SizeY,_SizeX,_CentX,_CentY).
%     GPoints,ShapePoints,LocX,LocY,PenColors,RotG,Iv,LPoints,Grid,OX,OY,SizeX,SizeY,CentX,CentY)

% single point
gpoints_to_iv_info(Cmpd,ShapePoints,LocX,LocY,PenColors,RotG,Iv,_Overrides,[C-HV11],[[C]],OX,OY,SizeX,SizeY,CentX,CentY):-
    is_list(Cmpd),Cmpd=[CP], compound(CP),
    (CP=(C-P)),!,
    SizeX=1,SizeY=1,
    ShapePoints=[HV11],
    RotG=sameR,
    OX=1,OY=1,
    CentX=LocX,CentY=LocY,
    hv_point(LocX,LocY,P),
    PenColors=[cc(C,1)],hv_point(1,1,HV11),
    lpoints_to_iv_info(ShapePoints,LocX,LocY,PenColors,RotG,Iv).


gpoints_to_iv_info(GPoints,ShapePoints,LocX,LocY,PenColors,RotG,Iv,Overrides,LPoints,Grid,OX,OY,SizeX,SizeY,CentX,CentY):-
  %points_range(GPoints,LocX,LocY,HiH,HiV,_HO,_VO), once(member(vis2D(SizeX,SizeY),Overrides);(SizeX is HiH-LocX+1,SizeY is HiV-LocY+1)),
  must_det_ll((
  po_loc2D_vis2D(GPoints,Overrides,LocX,LocY,SizeX,SizeY),  
  deoffset_points(LocX,LocY,GPoints,LPoints),
  make_grid(SizeX,SizeY,Grid),
  physical_points(LPoints,PLPoints),
  %writeg([plPoints=PLPoints,grid=Grid]),
  add_global_points(PLPoints,Grid,Grid),
  %writeg([nowgrid=Grid]),
  ShapePoints=[_|_],
  into_solid_grid(Grid,Solid),
  %print_ss(grid_to_shape,Grid,Solid),
  grid_to_shape(Solid,RotG,OX,OY,ShapePoints,PenColors),
  
  %writeg([then=Grid]),
  lpoints_to_iv_info(ShapePoints,LocX,LocY,PenColors,RotG,Iv),
  gpoints_to_center(GPoints,LocX,LocY,SizeX,SizeY,CentX,CentY))).

lpoints_to_iv_info(ShapePoints,LocX,LocY,PenColors,RotG,Iv):- 
  L=[ shape_rep(grav,ShapePoints),  loc2D(LocX,LocY),  pen(PenColors),  rot2D(RotG)],
  iv_for(L,Iv).

%fg_shape_grid(RC,_):- plain_var(RC).
%fg_shape_grid(RC,fg):- is_real_color(RC), \+ is_bg_color(RC).
%fg_shape_grid(fg,_).

gpoints_to_center(GPoints,LocX,LocY,SizeX,SizeY,CentX,CentY):-
  % calc center2G
  must_det_ll(once(
   ((member(UFgPoints,[GPoints]),
    ((CentX is LocX + floor(SizeX/2),CentY is LocY + floor(SizeY/2), hv_point(CentX,CentY,Point), member(_-Point,UFgPoints));
    (length(UFgPoints,UFgLen),CP is round(UFgLen/2), nth1(CP,UFgPoints,Point),hv_point(CentX,CentY,Point)))));
   (CentX is LocX + floor(SizeX/2),CentY is LocY + floor(SizeY/2)))).

add_prop_list(O,Props):- nb_set_add(O,Props).
add_prop(O,N,V):- Prop=..[N,V],nb_set_add1(O,Prop).
add_prop_with_count(O,N,V):- my_assertion(is_list(V)),add_prop(O,N,V),
  length(V,Len),atom_concat(N,'_count',NN),add_prop(O,NN,Len).

real_colors(GPoints,Cs):- 
 findall(C,(sub_term(C,GPoints),is_real_color(C),is_fg_color(C)),L),list_to_set(L,S),!,Cs=S.

into_fg_ngrid(NormGrid,NormNGridFG):-
  mapgrid(into_fg_bg_as(fg,bg),NormGrid,MonoNorm),
  into_ngrid(MonoNorm,NormNGrid),mapgrid(fg_grid_syms,NormNGrid,NormNGridFG),!.

fg_grid_syms(BG,_):- is_bg_color(BG),!.
fg_grid_syms(BG,_):- var(BG),!.
fg_grid_syms(BG,_):- \+ ground(BG),!.
fg_grid_syms(S,SS):- S=='!',!,SS='|'.
fg_grid_syms(S,SS):- S=='=',!,SS='-'.
fg_grid_syms(S-FG,SS):- is_fg_color(FG),!,fg_grid_syms(S,SS).
fg_grid_syms(_-BG,_):- is_bg_color(BG),!.
%fg_grid_syms(FG,FG):- is_fg_color(FG),!.
fg_grid_syms(S,S).
  
add_extra_propz(obj(Obj),obj(ObjL)):- add_extra_propz_l(Obj,Obj,ObjL),!.

add_extra_propz_l(Obj,ObjO,[sym_counts(m4(TF),1)|ObjO]):- mass(Obj,Mass),into_true_false(Mass>4,TF),!.
add_extra_propz_l(_,O,O).

make_indiv_object_s(GID0,GridH,GridV,Overrides0,GPoints00,ObjO):- 
  make_indiv_object_s1(GID0,GridH,GridV,Overrides0,GPoints00,ObjM),
  add_extra_propz(ObjM,ObjO).

:- style_check(+singleton).
make_indiv_object_s1(GID0,GridH,GridV,Overrides0,GPoints00,ObjO):- 
 fix_point_colors(GPoints00,GPoints0),
 must_be_nonvar(GID0),
 testid_name_num_io(GID0,TestID,Example,Num,IO),
 %must_be_nonvar(IO),
 testid_name_num_io_gid(TestID,Example,Num,IO,GIDR),
 GID0=GID,
 physical_points(GPoints0,GPointsM),
 nop((Wfg = fg)),
 ((nonvar(Wfg),real_colors(GPointsM,[FG1]))->subst(GPointsM,FG1,Wfg,GPoints);GPointsM=GPoints),
 my_assertion(is_list([overrides|Overrides0])),
 my_assertion(is_cpoints_list(GPoints)),
  %luser_getval(test_pairname,ID),
 must_det_ll((
  redress_override(Overrides0,Overrides),
  gpoints_to_iv_info(GPoints0,ShapePoints,LocX,LocY,PenColors,RotG,Iv,Overrides,LPoints0,Grid,OX,OY,SizeX,SizeY,CentX,CentY),
  physical_points(LPoints0,LPoints),

  %writeg([gpoints0=GPoints0,lpoints=LPoints,shapePoints(RotG,OX,OY)=ShapePoints]),
  if_t(ShapePoints==[],
    (pp([make_indiv_object_s(GID0,GridH,GridV,Overrides0,GPoints0,ObjO),lPoints=LPoints]),
    ibreak)),
  make_localpoints(ShapePoints,RotG,OX,OY,PenColors,_CheckLPoints),
  %sort_safe(LPoints0,LPoints0S),
  %CheckLPoints=LPoints0S,
  %writeg([checkLPoints=CheckLPoints]),


  %add_prop(PropL,globalpoints,GPoints),
  %add_prop(PropL,localpoints,LPoints),
  %add_prop(PropL,colorlesspoints,ShapePoints),

  length(GPoints,Len),
  Area is SizeX * SizeY,
  Empty is Area - Len,
  PropL = [area(Area)],
  %add_prop(PropL,area,Area),
  add_prop(PropL,empty_area,Empty),

  asserta(special_sizes(SizeX,SizeY)),
  
  pixel_colors(GPoints,Pixels),
  



  pixels_to_cc(Pixels,CC), %add_prop_list(PropL,CC),

  sort_safe(Pixels,UniqueColors),  
  add_prop_with_count(PropL,unique_colors,UniqueColors),

  %my_partition(is_fg_color,UniqueColors,FGC,NotFGC),
  %my_partition(is_bg_color,NotFGC,BGC,OtherC),
  /*
  add_prop_with_count(PropL,unique_fg_colors,FGC),
  add_prop_with_count(PropL,unique_bg_colors,BGC),
  add_prop_with_count(PropL,unique_other_colors,OtherC),*/



  %my_maplist(on_edge(GridH,GridV),GPoints,EdgeL),count_sets([n,s,e,w,c|EdgeL],_,EdgeC),my_maplist(zero_one_more,EdgeC,EdgeS),
  
  once(member(grid(LocalGrid),Overrides);LocalGrid=Grid),


  ignore((member(iz(media(shaped)),Overrides),
      % \+ member(iz(media(image)),Overrides),
     learn_hybrid_shape(LocalGrid))),

  other_grid_size(GID,OtherH,OtherV),
  to_global_coord(LocX,GridH,OtherH,LocXG,GlobalXG),to_global_coord(LocY,GridV,OtherV,LocYG,GlobalYG),
  to_global_coord(CentX,GridH,OtherH,CentXG,_),to_global_coord(CentY,GridV,OtherV,CentYG,_),
  to_global_coord(SizeX,GridH,OtherH,SizeXG,_),to_global_coord(SizeY,GridV,OtherV,SizeYG,_),
  BottemX is LocX + SizeX, BottemY is LocY + SizeY,
  to_global_coord(BottemX,GridH,OtherH,BottemXG,_),to_global_coord(BottemY,GridV,OtherV,BottemYG,_),
  copy_term(Grid,GridInCopy),

  %grid_to_gridmap(Grid,ShapePoints), 

  findall(ShapeName,
   (guess_shape(GridH,GridV,Grid,LocalGrid,Ps,Empty,Len,SizeX,SizeY,CC,LPoints,ShapeName),
     close_enough_grid(Grid,GridInCopy,LocalGrid)),ShapeNamesUF),
  flatten([ShapeNamesUF],ShapeNamesU),list_to_set(ShapeNamesU,ShapeNames),
  my_maplist(append_term(iz),ShapeNames,OShapeNames),

  %my_assertion('LocX=<GridH',LocX=<GridH),
  %my_assertion('LocY=<GridV',LocY=<GridV),

  % rotated local points 
  /*(memberchk(rot2D(RotOut),Overrides)-> FinalLocalPoints=LPoints;
    must_det_ll((tips_to_rot(LPoints,GridH,GridV,RotOut,Final),localpoints(Final,FinalLocalPoints)))),
  delistify_single_element(RotOut,RotO),
  */
  %grid_to_shape(Grid,RotG,OX,OY,ShapePoints,PenColors),
  
  %shape_id(NormMonoLocalGrid,MonoNormShapeID),
 % RE=ADD=PHASE2 into_ngrid(Grid,NGrid),ngrid_syms(NGrid,Syms),
 % RE=ADD=PHASE2 
  normalize_grid(NormOps,Grid,NormGrid),local_shape_id(NormGrid,NormSID),
  into_fg_ngrid(NormGrid,NormNGrid), ngrid_syms(NormNGrid,NSymCounts),

  compress_grid(CompOps,NormGrid,CompGrid),local_shape_id(CompGrid,CompSID),
  %writeg([normgrid=NormGrid]), 
  %if_t([[black,_]]=@=NormGrid,atrace),
% RE=ADD=PHASE2   localpoints(NormGrid,NormLPoints),my_maplist(arg(2),NormLPoints,ShapeNormLPoints),
 
% RE=ADD=PHASE2
  %  
  % NormShapeID=ShapeID,
  shape_id(ShapePoints,ShapeID),
  ((fail,select(oid(OID),Overrides,NewOverrides),
     atomic_list_concat(['o',GlyphOMem,IvOMem|MustGID],'_',OID),
     atomic_list_concat(MustGID,'_',GIDOMem),GIDOMem==GID,IvOMem=Iv,GlyphOMem=Glyph,OIDOMem=OID) 
      -> true ;
        (NewOverrides=Overrides,
         %PenColors = [cc(C1,_)|_],new_obj_points(GID,obj,C1,GPoints,Len,OID),
         lpoints_to_iv_info(ShapePoints,LocX,LocY,PenColors,RotG,Iv), 
  int2glyph(Iv,Glyph), % object_glyph(Obj,Glyph),       
         atomic_list_concat(['o',Glyph,Iv,GIDR],'_',OID))),

  %ngridsyms_to_iz(NormNGridSyms,NSymsList),
  %grav_rot(Grid,NormOps,NormGrid),
  my_maplist(ignore,[GIDOMem==GID,IvOMem=Iv,GlyphOMem=Glyph,OIDOMem=OID]),
  (PenColors == [cc(Wfg,1)] -> PenColorsR = [cc(FG1,1)] ; PenColorsR = PenColors),
  flatten(
  [ PropL,
    shape_rep(grav,ShapePoints),    
    pen(PenColorsR),
    rot2D(RotG),
    rotSize2D(grav,OX,OY),

    loc2D(LocX,LocY), 
    iz(ngrid(NormNGrid)),
    iz(orderX(LocX)),
    NSymCounts,
    unkept(loc2G(LocXG,LocYG)),
    kept(center2D(CentX,CentY)),
    kept(center2G(CentXG,CentYG)),
    iz(cenGY(CentYG)),iz(cenGX(CentXG)),  
    unkept(bottem2D(BottemX,BottemY)),unkept(bottem2G(BottemXG,BottemYG)),
    vis2D(SizeX,SizeY), 
    %kept(iz(vis2G(SizeXG))), %
    iz(sizeGY(SizeYG)),iz(sizeGX(SizeXG)),

    global2G(GlobalXG,GlobalYG),
  % RE=ADD=PHASE2 iz(mono_algo_sid(norm,MonoNormShapeID)),    
    iz(sid(ShapeID)),
    %ngrid(NGrid),

        
    mass(Len),
    CC,        
  % RE=ADD=PHASE2  Syms,
    localpoints(LPoints),

    %mass(Len),
    
    %width(SizeX), height(SizeY), area(Area), %missing(Empty),
    changes([]),
    grid(LocalGrid),    
    OShapeNames,
    
  % RE=ADD=PHASE2 
    [grid_rep(norm,NormGrid),grid_ops(norm,NormOps),iz(algo_sid(norm,NormSID))],
    [grid_rep(comp,CompGrid),grid_ops(comp,CompOps),iz(algo_sid(comp,CompSID))],
    %[iz(locY(LocY)),iz(locX(LocX))], % iz(tall(SizeY)),iz(wide(SizeX)),
    
    %obj_to_oid(ID,Iv),
    
    kept(giz(g(IO))), kept(giz(testid(TestID))), kept(giz(example_num(Example+Num))),
    kept(giz(testid_example_io(TestID>(Example+Num)*IO))),       
    %unkept(giz(gid_omem(GIDOMem))), unkept(giz(oid_omem(OIDOMem))), unkept(iv_omem(IvOMem)),giz(glyph_omem(GlyphOMem)),
    kept(oid(OID)),kept(giz(iv(Iv))),kept(giz(glyph(Glyph))),kept(giz(gid(GIDR))),kept(giz(gido(GID))),
    

    globalpoints(GPointsM),
    giz(grid_sz(GridH,GridV)),
    []],Ps00),  
   redress_override(Ps00,Ps0),
  include('\\=='([]),Ps0,Ps),

  %make_localpoints(ShapePoints,RotG,OX,OY,PenColors,XX), assertion((XX == LPoints)),

  with_objprops(override,NewOverrides,Ps,OUT1),
  sort_obj_props(OUT1,OUT),!,as_obj(OUT,Obj),verify_object(Obj),!,
  remove_gridoid_props(Obj,ObjM),
 must_det_ll((ObjM = ObjO)))).

remove_gridoid_props(O,O):- !.
remove_gridoid_props(O,O):- \+ compound(O),!.
remove_gridoid_props(obj(List),obj(ListO)):- !, remove_gridoid_props(List,ListO).
remove_gridoid_props(O,O):- is_grid(O),!.
remove_gridoid_props(globalpoints(O),globalpoints(O)):-!.
remove_gridoid_props(localpoints(O),localpoints(O)):-!.
remove_gridoid_props([O|Obj],ObjM):- is_list(O),!,maplist(remove_gridoid_props,[O|Obj],ObjM).
remove_gridoid_props([O|Obj],ObjM):- is_object(O),!,maplist(remove_gridoid_props,[O|Obj],ObjM).
remove_gridoid_props([O|Obj],ObjM):- is_prop1(O),arg(_,O,E),is_grid_or_points(E),!,remove_gridoid_props(Obj,ObjM).
remove_gridoid_props([O|Obj],[O|ObjM]):- is_prop1(O),!,remove_gridoid_props(Obj,ObjM).

is_grid_or_points(E):- is_grid(E),!.
is_grid_or_points(E):- is_points_list(E),!.

:- use_module(library(clpfd)).


deoffset_points(1,1,Points,PointsO):-!,Points=PointsO.
deoffset_points(OH,OV,Point,LPoint):- map_pred(if_point_de_offset(OH,OV),Point,LPoint).
if_point_de_offset(OH,OV,Point,LPoint):- is_ncpoint(Point), hv_point(H,V,Point),
  HH is H -OH +1, VV is V - OV +1,
  hv_point(HH,VV,LPoint).

offset_points(1,1,Points,PointsO):-!,Points=PointsO.
offset_points(OH,OV,Point,LPoint):- map_pred(if_point_offset0(OH-1,OV-1),Point,LPoint).
offset_points0(0,0,Points,PointsO):-!,Points=PointsO.
offset_points0(OH,OV,Point,LPoint):- map_pred(if_point_offset0(OH,OV),Point,LPoint).

if_point_offset0(OH,OV,Point,LPoint):- is_ncpoint(Point), hv_point(H,V,Point),HH is H +OH , VV is V + OV,hv_point(HH,VV,LPoint).

%offset_point0(OH,OV,Point,LPoint):- is_ncpoint(Point), hv_point(H,V,Point),HH is H +OH -1, VV is V + OV -1,hv_point(HH,VV,LPoint).
%offset_point0(OH,OV,C-Point,C-LPoint):- is_ncpoint(Point), hv_point(H,V,Point),HH is H +OH -1, VV is V + OV -1,hv_point(HH,VV,LPoint).

obj_example_num(O,EN):- indv_props(O,giz(example_num(EN))).
obj_testid(O,EN):- indv_props(O,giz(testid(EN))).
obj_test_example_io(O,TestIDEN_IO):- indv_props(O,giz(testid_example_io(TestIDEN_IO))).

grid_to_individual(GridIn,Obj):- 
  %my_assertion(is_grid(Grid)),!,
  get_vm(VM),
  into_grid(GridIn,Grid),
  grid_size(Grid,H,V),
  grid_to_points(Grid,H,V,Points),
  (Points==[]-> empty_grid_to_individual(H,V,Obj); 
  (make_indiv_object(VM,[iz(grid),iz(whole_grid)],Points,Obj))).


grid_to_single_object(ID,GridIn,Obj):-   
 must_det_ll((  
  into_grid(GridIn,Grid),
  grid_size(Grid,H,V),
  grid_to_points(Grid,H,V,Points),
  make_indiv_object_no_vm(ID,H,V,[iz(grid),iz(whole_grid)],Points,Obj))).


empty_grid_to_individual(H,V,Obj):-
  Iv is H + V*34,
  Obj = obj( [ mass(0),
         shape_rep(grav,[]),
         colors_cc([]),
         localpoints([]), vis2D(H, V), 
         rot2D(sameR), 
         loc2D(1, 1),
         obj_iv(Iv),
         %pen([fg]),
         changes([]), 
         iz(grid),
         %obj_to_oid(empty_grid_to_individual(H,V), Iv),
         grid_size(H, V)]).


close_enough_grid(GridIn,GridInCopy,LocalGrid):- 
  \+ \+ (LocalGrid=GridIn, GridIn=@=GridInCopy).

make_indiv_object_list(_,[],[]):-!.
make_indiv_object_list(VM,[E|L],[O|OL]):-   
    must_det_ll(ensure_indiv_object(VM,E,O)),
    make_indiv_object_list(VM,L,OL).



:- module_transparent as_obj/2.
as_obj(L,Obj):- is_list(L),!,Obj = obj(L), !. % , register_obj(L).
as_obj(O,Obj):- compound(O), O = obj(_), Obj = O. % , register_obj(L).


enum_object(O):- var(O),!,no_repeats_cmp(=@=,O,enum_object0(O)).
enum_object(O):- nop(ppt(enum_object(O))),!.

%enum_object0(Obj):- oid_glyph_object(_,_,Obj).

enum_object0(Obj):- % listing(obj_cache/2),
      get_current_test(TestID), obj_cache(TestID,O,_S),as_obj(O,Obj).
enum_object0(Obj):- get_current_test(TestID), why_grouped(TestID,_Why,GS)*->member(Obj,GS);enum_object1(Obj).
enum_object1(Obj):- g2o(_,Obj)*->true; enum_object2(Obj).
enum_object2(_):- fail.
%enum_object2(Obj):- get_current_test(_).
/*
enum_object0(S):- why_grouped(TestID,_,IndvS),member(S,IndvS).
enum_object0(S):- clause(in_shape_lib(_,S),Body),catch(Body,_,fail).
enum_object0(S):- g2o(_,S).
enum_object0(S):- is_unshared_saved(_,IndvS),member(S,IndvS).
enum_object0(S):- is_grid_tid(S,_).
*/
internal_region(Obj,regionOf(Obj)).

% @TODO
reclumped([A,B,C,D|Rest],[A,B,C,D]):- reclumped(Rest,[A,B,C,D]),!.
reclumped([A,B,C|Rest],[A,B,C]):- reclumped(Rest,[A,B,C]),!.
reclumped([A,B|Rest],[A,B]):- reclumped(Rest,[A,B]),!.
reclumped(Rest,Seq):- append(Seq,_,Rest),!.
reclumped(PenColors,PenColors).


maybe_include_bg(Points,FgPoints):- fg_points(Points,FgPoints),FgPoints\==[],!.
maybe_include_bg(Points,Points).
fg_points(Points,FgPoints):- include(is_fg_point,Points,FgPoints).
is_fg_point(CPoint):- \+ \+ (only_color_data(CPoint,Color),is_fg_color(Color)).

rev_key(C-P,P-C).
rev_key(List,ListO):- is_list(List),!,my_maplist(rev_key,List,ListO).

sort_points(P0,P2):- 
   (P0==[] -> (rrtrace(true)) ; true),
   my_assertion(is_list(P0)),
   sort_safe(P0,P1),my_assertion(P1\==[]), 
   my_assertion(is_cpoints_list(P1)),  
   my_maplist(rev_key,P1,R1),keysort(R1,R2),my_maplist(rev_key,R2,P2).

%same_globalpoints(O1,O2):-  globalpoints_include_bg(O1,P1),same_globalpoints_ps_obj(P1,O2).

same_globalpoints_and_window(I,O):-
  %get_loc2D_vis2D(I,P1,H1,V1,OH1,OV1),
  %get_loc2D_vis2D(O,P2,H2,V2,OH2,OV2),!,  
  %P1=@=P2,H1=H2,V1=V2, OH1=OH2,OV1=OV2,
  loc2D(I,X1,Y1),loc2D(O,X2,Y2),X1=X2,Y1=Y2,
  vis2D(I,X1a,Y1a),vis2D(O,X2a,Y2a),X1a=X2a,Y1a=Y2a,
  shape_rep(grav,I,P1),shape_rep(grav,O,P2), P1=@=P2.
 
same_globalpoints_ovrs_ps_obj(Overrides,P1,O2):-
  po_loc2D_vis2D(P1,Overrides,H1,V1,OH1,OV1),
  get_loc2D_vis2D(O2,P2,H2,V2,OH2,OV2),
  P1=@=P2,H1=H2,V1=V2, OH1=OH2,OV1=OV2.

po_loc2D_vis2D(GPoints,Overrides,LocX,LocY,SizeX,SizeY):- is_list(Overrides), 
  select(loc2D(LocX,LocY),Overrides,Overrides0),!,
  po_loc2D_vis2D(GPoints,Overrides0,_,_,SizeX,SizeY).

po_loc2D_vis2D(GPoints,Overrides,LocX,LocY,SizeX,SizeY):- is_list(Overrides), 
  select(vis2D(SizeX,SizeY),Overrides,Overrides0),!,
  po_loc2D_vis2D(GPoints,Overrides0,LocX,LocY,_,_).

%po_loc2D_vis2D(GPoints,_Overrides,LocX,LocY,SizeX,SizeY):- points_range(GPoints,_LocX,_LocY,_HiH,_HiV,SizeX,SizeY).
po_loc2D_vis2D(GPoints,_Overrides,LocX,LocY,SizeX,SizeY):- 
  points_range(GPoints,LocX,LocY,HiH,HiV,_HO,_VO),
  SizeX #= HiH-LocX+1,SizeY #= HiV-LocY+1. 

get_loc2D_vis2D(O2,P2,H2,V2,OH2,OV2):- 
  globalpoints(O2,P2), loc2D(O2,H2,V2), vis2D(O2,OH2,OV2),!.

%get_loc2D_vis2D( O2,P2,_Props2,H2,V2,OH2,OV2):- nonvar(O2), (var(P2)-> globalpoints_include_bg(O2,P2) ; true), loc2D(O2,H2,V2), vis2D(O2,OH2,OV2),!.
%get_loc2D_vis2D(_O2,P2, Props2,H2,V2,OH2,OV2):- po_loc2D_vis2D(P2,Props2,H2,V2,OH2,OV2),!.
%get_loc2D_vis2D( O2,P2, Props2,H2,V2,OH2,OV2):- var(Props2), indv_props(O2,Props2), po_loc2D_vis2D(P2,Props2,H2,V2,OH2,OV2).



ensure_indiv_object(VM,IPoints,Obj):- 
  ((compound(IPoints), IPoints = obj(_)) -> (IPoints = Obj, nop(addObjects(VM,Obj)));
   (my_partition(is_cpoint,IPoints,Points,Overrides),
    u_dmsg(po(Points,Overrides)),
    make_indiv_object(VM,Overrides,Points,Obj))).

make_point_object(VM,Overrides,C-Point,Obj):- never_newd(C),
  must_det_ll(make_indiv_object(VM,Overrides,[C-Point],Obj)).

globalpoints_maybe_bg([],[]):-!.
globalpoints_maybe_bg(ScaledGrid,GPoints):- is_points_list(ScaledGrid),!,maybe_include_bg(ScaledGrid,GPoints).
globalpoints_maybe_bg(ScaledGrid,Points):- once(globalpoints(ScaledGrid,Points)),Points\==[],!.
globalpoints_maybe_bg(ScaledGrid,GPoints):- globalpoints_include_bg(ScaledGrid,GPoints),!.

globalpoints_include_bg(ScaledGrid,GPoints):- is_points_list(ScaledGrid),!,ScaledGrid=GPoints.
globalpoints_include_bg([],[]):-!.
globalpoints_include_bg(ScaledGrid,GPoints):- loc2D(ScaledGrid,OH,OV),
  localpoints_include_bg(ScaledGrid,Points),!,offset_points(OH,OV,Points,GPoints).

with_global_offset(X,Y,Goal):-
 nb_current(global_offset,loc2D(OX,OY)),
 NX #= X+OX-1, NY #= Y+OY-1, 
  locally(nb_setval(global_offset,loc2D(NX,NY)),Goal).
  
fix_global_offset(Points,PointsO):- nb_current(global_offset,loc2D(X,Y)),!, offset_points(X,Y,Points,PointsO).
fix_global_offset(GOPoints,OPoints):- GOPoints=OPoints,!.

make_indiv_object(VM,Overrides,GOPoints,NewObj):-
 must_det_ll((
  make_indiv_object_real(VM,Overrides,GOPoints,NewObj),
  %show_indiv(make_indiv_object,NewObj),
  nop(itrace))).
 %show_indiv_textinfo(NewObj),!.

make_indiv_object_real(VM,Overrides,GOPoints,NewObj):-
 
 fix_global_offset(GOPoints,OPoints),
 must_det_ll((
  GOPoints\==[],
  globalpoints_maybe_bg(OPoints,GPoints),
  sort_points(GPoints,Points),
  Objs = VM.objs,
  Orig = _,!,
  must_det_ll(((select(Orig,Objs,Rest), \+ is_whole_grid(Orig), same_globalpoints_ovrs_ps_obj(Overrides,Points,Orig))
    -> must_det_ll((override_object(Overrides,Orig,NewObj), ROBJS = Rest))
    ; must_det_ll((make_indiv_object_s(VM.gid,VM.h,VM.v,Overrides,Points,NewObj), ROBJS = Objs)))),!,

  if_t(NewObj\=@=Orig,
   (if_t(is_object(Orig),
      nop((obj_to_oid(Orig,OOID),
       retract_object(VM.gid,OOID,Orig),
       print_grid(remove_prev(OOID),Orig)))),
    NEW = [NewObj|ROBJS],
    set(VM.objs)=NEW)))).

maybe_replace_object(VM,Orig,NewObj):- 
  if_t(NewObj\=@=Orig,
   if_t(is_object(Orig),
     if_t(select(Orig,VM.objs,ROBJS),
      (nop((obj_to_oid(Orig,OOID),
       retract_object(VM.gid,OOID,Orig),
       print_grid(remove_prev(OOID),Orig))),
    set(VM.objs)= [NewObj|ROBJS])))).

grav_roll(Shape,SameR,Shape):- SameR == sameR,!.
%grav_roll([[Y]],sameR,[[Y]]):- nonvar(Y),!.
grav_roll(LPoints,RotG,Shape):- 
  must_det_ll((grav_rot(LPoints,RotG,Shape),
  undo_effect(RotG,Shape,LPoints0),LPoints0=LPoints)).

protect_black(Grid,PGrid,UndoProtect):-
  Grid=PGrid, UndoProtect = (=).

fix_point_colors(RShapeA,RShapeAR):-
  maplist(arg(1),RShapeA,Cs),list_to_set(Cs,CCS),
  (CCS==[bg]->subst(RShapeA,bg,black,RShapeAR);RShapeA=RShapeAR),!.
fix_point_colors(RShapeA,RShapeA):-!.

grid_to_shape([[Dot]],sameR,1,1,[point_01_01],[cc(Dot,1)]):-!.
  
grid_to_shape(Grid,RotG,OX,OY,ShapePoints,PenColors):-
%  writeg([grid=Grid]),
 must_det_ll((
  protect_black(Grid,PGrid,UndoProtect),
  grav_roll(PGrid,RotG,PRotShape),
%  writeg([pGrid2=PGrid,pRotShape=PRotShape]),
  call(UndoProtect,PRotShape,RotShape),
  globalpoints_include_bg(RotShape,RShapeA),
  fix_point_colors(RShapeA,RShapeAR),
  physical_points(RShapeAR,RShape),
  include(ground,RShape,LShape),  
  grid_size(RotShape,OX,OY),
  % colors_cc 
  %writeg([rotShape=RotShape,lShape=LShape]),
  my_maplist(arg(2),LShape,ShapePoints), 
  my_maplist(arg(1),LShape,Colorz),
  cclumped(Colorz,PenColors0),!,
  simplify_pen(PenColors0,PenColors))).

simplify_pen([cc(C,_)],[cc(C,1)]).
simplify_pen(Pen,Pen).


make_indiv_object_no_vm(ID,GridH,GridV,Overrides,OPoints,Obj):- 
  globalpoints_maybe_bg(OPoints,GPoints),
  sort_points(GPoints,SPoints),
  make_indiv_object_s(ID,GridH,GridV,Overrides,SPoints,Obj).

on_edge(H,V,_-P1,Edge):-
  hv_point(X,Y,P1), edge_of_grid(H,V,X,Y,Edge),!.

%zero_one_more(0-N,0-N).
zero_one_more(1-c,iz(on_edge(only))).
zero_one_more(_-c,iz(on_edge(some_off))).
%zero_one_more(_-c,[]).
zero_one_more(1-C,iz(edge(C,none))):- C\==c.
zero_one_more(2-C,iz(edge(C,touch))):- C\==c.
zero_one_more(_-C,iz(edge(C,touch))):- C\==c.
zero_one_more(_,[]).


% obj_to_oid(Obj,OID),loc2D(Obj,X,Y),oid_home_grid(OID,GID),vis2D(thru_offset(X,Y,
% [1,2,3]=27
% [1,1,1,2,2,2,3,3,3]=27

% [1,2,2,3]=12.
% [1,2,3]=12.

to_global_coord(H,LH,OH,GridH,Min):- max_min(LH,OH,Max,Min), GridH is  floor((H-1)*OH/Max)+1.

top(7).

%fix_clump([_-C],[1-C]).

%fix_clump(Cs,CsO):- append([A,B|Mid],[A,B],Cs),append([A|Mid],[],CsM),!,fix_clump(CsM,CsO).
%fix_clump(Cs,CsO):- append([A|Mid],[A],Cs),append([A|Mid],[],CsM),!,fix_clump(CsM,CsO).
%fix_clump(Cs,CsO):- append([CsM,CsM,CsM,CsM,CsM],Cs),!,fix_clump(CsM,CsO).
fix_clump([],O):- !, O =[],!.
fix_clump(Cs,CsO):- append([CsM,CsM,CsM],Cs),!,fix_clump(CsM,CsO).
fix_clump(Cs,CsO):- append([CsM,CsM],Cs),!,fix_clump(CsM,CsO).
fix_clump(Cs,Cs).

cclumped(Items, CountsO) :- cclump(Items, Counts),!,fix_clump(Counts,CountsO),!.
cclump([H|T0], [cc(H,C)|T]) :-
    lists:ccount(T0, H, T1, 1, C), cclump(T1, T). 
cclump([], []).  color_c(C,H,C-H).

prop_order([vis2D/2,mass/1,loc2D/2,mass/1,
  %center2G/2,
  pen/1,colorlesspoints/1,localpoints/1,rot2D/1,cc/2,iz/1,globalpoints/1,obj_to_oid/2,grid_size/2]).


iz_o(F,A):- member(F/A,[cenGX/1,cenGY/1,locY/1,locX/1,tall/1,wide/1,chromatic/2,dot/0]).
iz_o(F,A):- clause(guess_shape(_GridH,_GridV,_GridIn,_LocalGrid,_I,_Empty,_N,_H,_V,_CC,_Points,Term),_),nonvar(Term),functor(Term,F,A).
iz_o(stype(F),A):- clause(guess_shape_poly(_I,_Empty,_N,_H,_V,_CC,_Points,Term),_),nonvar(Term),functor(Term,F,A).

%cache_obj(Obj):- get_current_test(TestID), object_prop_val(O,P,V):- prop_order(List),member( 

record_object_change(Rot90,Obj,XObj):- is_object(Obj), object_changes(Obj,Was),
  override_object(changes([Rot90|Was]),Obj,XObj),!.
record_object_change(_Missied,XObj,XObj).

ignore_xf(_):-!.
ignore_xf(G):- ignore(notrace(catch(G,_,fail))).

%guess_pretty2(O):- mortvar((copy_term(O,C),pretty1(O),O=@=C)).

show_objs_as_code(O):- var(O),!,pp(var(O)),!.
show_objs_as_code(Grid):- is_grid(Grid),!.

show_objs_as_code(Objs):- is_list(Objs),!,
  debug_var('VirtMachine',VM),
  findall(Code,(member(Obj,Objs),obj_to_program(Obj,Code,VM),my_maplist(ignore_xf,Code)),List),
  flatten(List,LList),
  pretty1(LList),
  guess_prettyf(LList),
  ppt(LList).

show_objs_as_code(VM):-
  Objs = VM.objs,
  show_objs_as_code(Objs),!.

draw_seg(Pen,X,Y,H,V,VM):- nop(doing(draw_seg(Pen,X,Y,H,V,VM))).


obj_to_program(Obj,Program,VM):- 
  (isz(Obj,hv_line(_));isz(Obj,dg_line(_));vis2D(Obj,1,_);vis2D(Obj,_,1)),!,
  Program = 
  [loc2D(Obj,X,Y),vis2D(Obj,H,V),
   pen(Obj,Pen),
   draw_seg(Pen,X,Y,H,V,VM)].

add_grid_at_offset(X,Y,Grid,VM):- !,
  grid_to_points(Grid,Ps),
  offset_points(X,Y,Ps,GPs),
  addGridPoints(VM,GPs).



o(Obj,OG,W,LF,N):- enum_object(Obj), indv_props(Obj,pg(OG,W,LF,N)).
pg(Obj,OG,W,LF,N):- enum_object(Obj), indv_props(Obj,pg(OG,W,LF,N)).


obj_to_program(Obj,Program,VM):-
  (isz(Obj,outl);isz(Obj,outline(_))),!,
  Program = 
  [loc2D(Obj,X,Y),   
   object_grid(Obj,Grid),
   add_grid_at_offset(X,Y,Grid,VM)].

obj_to_program(Obj,Program,VM):-
  isz(Obj,dot),!,
  Program =  [addGridPoints(VM,Obj)].

obj_to_program(Obj,Program,VM):-
  Program = 
  [globalpoints(Obj,Ps), 
   addGridPoints(VM,Ps)].


%object_pen(Obj,pen([cc(Color,1)])):- color(Obj,Color),!.
%object_pen(Obj,[cc(Color,1)]):- color(Obj,Color),!.

prop_of(mass,mass(_)).
prop_of(colors_cc,pen(_)).

prop_of(visually,localpoints(_)).
prop_of(loc2D,loc2D(_,_)).

prop_of(size2D,vis2D(_,_)).
prop_of(mass,mass(_)).

prop_of(loc2D,center2G(_,_)).
prop_of(rot2D,rot2D(_)).
prop_of(visually,pen(_)).
prop_of(colorlesspoints,shape_rep(grav,_)).


sort_obj_props(obj(L),obj(LO)):- !, sort_obj_props(L,LO).
%sort_obj_props(L,LO):- L=LO.
sort_obj_props(L,LOR):- my_maplist(in_obj_keys,L,LL),keysort(LL,LLS),my_maplist(arg(2),LLS,LO),reverse(LO,LOR).
%obj_prop_sort_compare(R,A,B):- compound(A), compound(B), !, obj_prop_sort_compare2(R,B,A).
%obj_prop_sort_compare(R,A,B):- compare(R,B,A).
%obj_prop_sort_compare2(R,A,B):- obk_key(A,AK),obk_key(B,BK),!,compare(R,AK-A,BK-B).
e1_member(E,L):- \+ \+ member(E,L ).

in_obj_keys(P,(K-P)):- obk_key(P,K),!.

obk_key(A,P):- string(A), priority(A,P).
obk_key(A,0):- \+ compound(A),!.
obk_key(A,AKV):- callable(A), clause(prop_of(_,A),true,Ref),nth_clause(prop_of(_,_),AK,Ref),AKV is AK * 100, !. 
obk_key(iz(C),O):- compound(C),!,obk_key(C,O).
obk_key(touched(_,_,_),-150).
obk_key(touched(_,_),-150).
obk_key(link(_,_,_),-150).
obk_key(link(_,_),-150).
obk_key(chromatic(_,_),0):-!.
obk_key(A,99):- arg(1,A,L), is_grid(L).
obk_key(A,92):- arg(_,A,L), is_list(L).
obk_key(A,91):- arg(_,A,L), number(L).
obk_key(_,80). 

priority(Var,20):- var(Var),!.
priority("bckgrnd",0):-!.
priority("point",0):-!.
priority(T,10):- term_to_atom(T,A),atom_contains(A,")"),!.
priority(_,20).
longer_strings(R,A,B):- priority(A,PA),priority(B,PB),display_length(A,AL),display_length(B,BL),compare(R,PA+AL+A,PB+BL+B).


add_shape_info(Info,I,M):- add_shape_info0(Info,I,M),!.

add_shape_info0([Info|L],I,O):-!,add_shape_info0(Info,I,M),add_shape_info0(L,M,O).
add_shape_info0([],I,I):-!.
add_shape_info0(Info,I,O):- with_object(override,iz(Info),I,O).

verify_object(Obj):-
 % my_assertion(localpoints(Obj,_LP)),
 % my_assertion(globalpoints(Obj,_GP)),
  nop(assertion((iz(Obj,symmetry_type(What)), nonvar(What)))).

override_object([],I,I):-!.
override_object(E,I,O):- with_object(override,E,I,O).

with_object(Op,E,obj(List),O):- !, with_objprops(Op,E,List,MidList),O=obj(MidList),!,verify_object(O).
with_object(Op,E,I,O):- is_group(I), mapgroup(with_object(Op,E),I,O).
% with_object(Op,E,I,O):- is_list(I), !, with_objprops(Op,E,I,O).
with_object(Op,E,     I,     O):- with_objprops(Op,E,I,O).



with_objprops(Op,obj(E),List,MidList):- my_assertion(is_list(List)),my_assertion(is_list(E)), !, with_objprops(Op,E,List,MidList).
with_objprops(Op,E,obj(List),obj(MidList)):- my_assertion(is_list(List)), !, with_objprops(Op,E,List,MidList).
%with_objprops(Op,Info,List,ListO):- my_assertion(is_list(List)),[]==Nil,!,ListO=List.
with_objprops(_Op,Nil,List,ListO):- my_assertion(is_list(List)),[]==Nil,!,ListO=List.
with_objprops(Op,[E|Props],List,NewList):-!,
  with_objprops1(Op,E,List,MidList),
  with_objprops(Op,Props,MidList,NewList).
with_objprops(Op,E,List,MidList):-with_objprops1(Op,E,List,MidList).


with_objprops1(Op,E,List,MidList):- redress_override(E,EE),with_objprops2(Op,EE,List,MidList).

with_objprops2(delq,E,List,NewList):-functor(E,F,A),functor(R,F,A),
    append(Left,[R|Right],List), % E \=@= R,
    append(Left,Right,NewList),!.

with_objprops2(override,-E,List,NewList):-
    append(Left,[R|Right],List), E =@= R,
    append(Left,Right,NewList),!.

with_objprops2(override,E,List,NewList):- \+ aggregates(E), my_assertion(compound(E)), functor(E,F,A),functor(R,F,A),
    append(Left,[R|Right],List), % E \=@= R,
    append(Left,[E|Right],NewList),!.

with_objprops2(override,E,List,NewList):- 
    append(Left,[changes(G)|Right],List), !,
    (( \+ \+ (member(R,Right), R =@= E )) -> NewList = List ; append(Left,[changes(G),E|Right],NewList)),!.

with_objprops2(override,E,List,NewList):- 
    append(Left,[iz(G)|Right],List), 
    (( \+ \+ (member(R,Right), R =@= E )) -> NewList = List ; append(Left,[iz(G),E|Right],NewList)),!.


aggregates(iz(_)).
aggregates(occurs_in_links(_,_)).
aggregates(links_count(_,_)).
aggregates(creates_object(_,_)).
aggregates(links_to_object(_,_)).

%aggregates(unique_colors_count(_)).
aggregates(cc(_,_)).
aggregates(giz(_)).
aggregates(pg(_,_,_,_)).
%aggregates(birth(_)).
aggregates(link(_,_,_)).
aggregates(link(_,_)).
aggregates(insideOf(_)).

is_rule_mapping(Obj):- current_predicate(is_mapping/1), is_mapping(Obj),!.


%is_bg_object(Obj):- get_black(Black),has_prop(pen(  [cc(Black,_)]),Obj).
is_bg_object(Obj):- is_rule_mapping(Obj),!,fail.
is_bg_object(Obj):- is_whole_grid(Obj),!,fail.
is_bg_object(Obj):- is_edge_object(Obj),is_bg_object_really(Obj),!.
is_bg_object(Obj):- is_bg_object_really(Obj),!.

is_bg_object_really(Obj):- \+ is_object(Obj),!,sub_var(cc(fg,0),Obj),!.
is_bg_object_really(Obj):- \+ sub_var(cc(bg,0),Obj), sub_var(cc(fg,0),Obj).

old_is_bg_object(Obj):- sub_var(cc(fg,0),Obj).

is_edge_object(Obj):- must_det_ll((grid_size(Obj,X,Y),globalpoints(Obj,Points))),!,
  include(is_edge_point(X,Y),Points,Edges),!,Edges\==[].

is_edge_point(X,Y,Point):- point_to_hvc(Point,H,V,_),!,is_edge_hv(X,Y,H,V).
is_edge_hv(_,_,1,_):-!.
is_edge_hv(_,_,_,1):-!.
is_edge_hv(N,_,N,_):-!.
is_edge_hv(_,N,_,_,N):-!.

is_fg_object(Obj):- is_whole_grid(Obj),!.
is_fg_object(Obj):- sub_var(cc(bg,0),Obj),!.
%is_fg_object(Obj):- is_rule_mapping(Obj),!,fail.
is_fg_object(Obj):- \+ is_bg_object(Obj),!.

is_used_fg_object(Obj):- has_prop(cc(fg,FG),Obj),FG>0, \+ is_whole_grid(Obj). 

is_whole_grid(B):- has_prop(iz(stype(whole)),B), \+ has_prop(iz(stype(part)),B),!.



merge_objs(_VM,Bigger,[],_IPROPS,Bigger):-!.
merge_objs(VM,Bigger,[New|Inside],IPROPS,Combined):- 
  merge_2objs(VM,Bigger,New,IPROPS,NewBigger),
  merge_objs(VM,NewBigger,Inside,[],Combined).
      
merge_2objs(CreatorVM,Bigger,NewInside,IPROPS,Combined):-
 globalpoints(Bigger,GP1), globalpoints(NewInside,GP2),      
 indv_props(Bigger,Props1),indv_props(NewInside,Props2),
 append([GP1,GP2],GPoints), append([Props1,Props2,IPROPS],Info),
 my_partition(props_not_for_merge,Info,_Exclude,Include),
 make_indiv_object(CreatorVM,Include,GPoints,Combined).

props_not_for_merge(globalpoints(_)).
props_not_for_merge(shape_rep(grav,_)).
props_not_for_merge(localpoints(_)).
props_not_for_merge(obj_to_oid(_,_)).
props_not_for_merge(loc2D(_,_)).
props_not_for_merge(center2G(_,_)).
props_not_for_merge(vis2D(_,_)).
props_not_for_merge(cc(_,_)).
props_not_for_merge(grid_size(_,_)).

/*
transfer_props(O,Functors,NewO,obj(NewObjL)):-
  indv_props(O,L),
  indv_props(NewO,NewOL),
  transfer_props_l(L,Functors,NewOL,NewObjL).

transfer_props_l([],_,O,O):-!.
transfer_props_l([P|L],Functors,List,NewList):-
  functor(P,F,_),member(F,Functors), override_object(List,P,MidList),
  transfer_props_l(L,Functors,MidList,NewList).
transfer_props_l([_|L],Functors,List,NewList):-
  transfer_props_l(L,Functors,List,NewList).
*/


%indv_u_props(I,[localpoints(Ps),loc2D(X,Y),pen(Pen),vis2D(H,V),rot2D(Rot)]):- loc2D(I,X,Y),shape_rep(grav,I,Ps),pen(I,Pen),vis2D(I,H,V),rot2D(I,Rot),!.
indv_u_props(I,[ shape_rep(grav,C),  loc2D(X,Y),  pen(Ps),  rot2D(Rot)]):-  
  shape_rep(grav,I,C),loc2D(I,X,Y),pen(I,Ps),rot2D(I,Rot),!.
%indv_u_props(I,[ shape_rep(grav,C),  center2G(X,Y),  pen(Ps),  rot2D(Rot)]):- shape_rep(grav,I,C),center2G(I,X,Y),pen(I,Ps),rot2D(I,Rot),!.
%indv_u_props(I,[shape_rep(grav,Ps),center2G(X,Y),pen(Pen),vis2D(H,V),rot2D(Rot)]):- center2G(I,X,Y),shape_rep(grav,I,Ps),pen(I,Pen),vis2D(I,H,V),rot2D(I,Rot),!.

physical_points(GPoints,Points):- sub_var(wbg,GPoints),!,
   GPoints=Points,!.
physical_points(GPoints,Points):- sub_var(wfg,GPoints),!,
   GPoints=Points,!.
physical_points(GPoints,Points):- 
   my_partition(sub_var('$VAR'('_')),GPoints,BGPoints,OPoints),
   BGPoints\==[],OPoints\==[],!,physical_points(OPoints,Points).

physical_points(GPoints,Points):- numbervars(GPoints,0,_,[singletons(true),attvars(skip)]),
   \+ (sub_compound('$VAR'(S),GPoints),S\=='_'),
   my_partition(sub_var('$VAR'('_')),GPoints,BGPoints,OPoints),
   BGPoints\==[],OPoints\==[],!,physical_points(OPoints,Points).

physical_points(GPoints,OPoints):- 
   my_partition(sub_var(bg),GPoints,BGPoints,OPoints),
   BGPoints\==[],OPoints\==[],!.

/*
physical_points(GPoints,Points):- 
   my_partition(sub_var(fg),GPoints,FGPoints,_),
   FGPoints\==[],!, Points = FGPoints.
*/
physical_points(GPoints,Points):-
   my_partition(sub_var(black),GPoints,BGPoints,OPoints),
   BGPoints\==[],OPoints\==[],!,physical_points(OPoints,Points).
physical_points(Points,Points).

physical_colorless_points(CPoints,Points):- is_ncpoints_list(CPoints),!,Points=CPoints.
physical_colorless_points(CPoints,Points):- is_cpoints_list(CPoints),!,
  physical_points(CPoints,PhysicalPoints),my_maplist(arg(2),PhysicalPoints,Points).
physical_colorless_points(Other,Points):- localpoints(Other,CPoints),!,physical_colorless_points(CPoints,Points).



local_shape_id(NormGrid,NormShapeID):- 
 physical_colorless_points(NormGrid,NormLPoints),
 shape_id(NormLPoints,NormShapeID).

cpoints_to_shapepoints(GPoints,ShapePoints):- cpoints_to_shapepoints(GPoints,_RotG,_OffsetX,_OffsetY,ShapePoints,_PenColors).
cpoints_to_shapepoints(GPoints,RotG,OX,OY,ShapePoints,PenColors):-
  po_loc2D_vis2D(GPoints,[],LocX,LocY,SizeX,SizeY),  
  deoffset_points(LocX,LocY,GPoints,LPoints),
  make_grid(SizeX,SizeY,Grid),
  physical_points(LPoints,PLPoints),
  add_global_points(PLPoints,Grid,Grid),
  grid_to_shape(Grid,RotG,OX,OY,ShapePoints,PenColors),!.

shape_id(Shape,ShapeID):- var(Shape),!,id_shape(Shape,ShapeID).
shape_id(Shape,ShapeID):-  \+ is_points_list(Shape), localpoints(Shape,LPoints),shape_id(LPoints,ShapeID).
shape_id(Shape,ShapeID):- is_cpoints_list(Shape), cpoints_to_shapepoints(Shape,ShapePoints),shape_id(ShapePoints,ShapeID).
shape_id(Shape,ShapeID):- is_shape_id_for(Shape,ShapeID),!.
shape_id(Shape,ShapeID):- term_hash(Shape,Hash), atomic_list_concat(['s',Hash],ShapeID), asserta(is_shape_id_for(Shape,ShapeID)).
id_shape(ShapeID,Shape):- is_shape_id_for(Shape,ShapeID).

% eqq

:- dynamic(is_iv_for/2).
iv_for(L,Iv):- copy_term(L,CT,_),numbervars(CT,0,_,[attvar(bind),singletons(true)]),term_hash(CT,Fv),
 number(Fv), Iv is (Fv rem 800) + 1,!. % (\+ is_iv_for(Iv,_) -> asserta_if_new(is_iv_for(Iv,L)) ; true).

%obj_iv(obj(obj(Obj)),Iv):- !, obj_iv(obj((Obj)),Iv).
obj_iv(Obj,Iv):- indv_props(Obj,giz(iv(Iv))),!.
obj_iv(Obj,Iv):- sub_compound(oid(OID),Obj),nonvar(OID),oid_to_iv(OID,Iv),!.
obj_iv(Obj,Iv):- indv_u_props(Obj,L),iv_for(L,Iv),!.
obj_iv(Obj,Iv):- globalpoints(Obj,GP),gpoints_to_iv(GP,Iv),!.
obj_iv(Obj,_Iv):- arcST,pp(Obj),trace.

/*
    kept(giz(g(IO))), kept(giz(testid(TestID))), kept(giz(example_num(Example+Num))),
    kept(giz(testid_example_io(TestID>(Example+Num)*IO))),*/
obj_to_parent_gid(Obj,GID):-  indv_props(Obj,giz(gid(GID))),!.
obj_to_parent_gid(Obj,GID):-  obj_to_decl_oid(Obj,OID),oid_to_parent_gid(OID,GID),!.

oid_to_parent_gid(OID,GID):- atomic_list_concat(['o',_Glyph,_IV,V,ID,Example,Num,IO],'_',OID), 
 atomic_list_concat([V,ID,Example,Num,IO],'_',GID).

oid_to_iv(OID,IV):- atomic_list_concat(['o',_Glyph,IV|_],'_',OID),!.


is_oid(OID):- oid_glyph_object(OID,_,_).
is_oid(OID):- gid_type_oid(_,_,OID), \+ oid_glyph_object(OID,_,_).

obj_to_decl_oid(L,OID):-
((sub_compound(obj_to_oid(OID),L);sub_compound(was_oid(OID),L);sub_compound(oid(OID),L);sub_compound(omem_oid(OID),L)),atom(OID)),!.
/*
obj_to_oid(I,X):- var_check(I,obj_to_oid(I,X))*->!;
 (indv_props(I,L),((member(obj_to_oid(X),L);member(oid(X),L)),!,
  object_glyph(I,Glyph),
  assert_object_oid(_,I,Glyph,X))).
*/
obj_to_oid(Obj,OID):-  var(Obj),!,oid_glyph_object(OID,_,Obj).
obj_to_oid(Obj,OID):-  atom(Obj),display_length(Obj,L),L>5,Obj=OID,!.
obj_to_oid(obj(obj(Obj)),OID):- !, obj_to_oid(obj(Obj),OID).
obj_to_oid(Obj,OID):-  oid_glyph_object(OID,_,Obj),!.
obj_to_oid(Obj,OID):-  obj_to_decl_oid(Obj,OID),!, 
  %must_det_ll(object_glyph(Obj,Glyph)),!,
  assert_object_oid(_TID,Obj,_Glyph,OID).
/*obj_to_oid(Obj,OID):- 
 must_det_ll((
   obj_iv(Obj,Iv), int2glyph(Iv,Glyph), % object_glyph(Obj,Glyph),       
   obj_to_parent_gid(Obj,GID), !,
   atomic_list_concat(['o',Glyph,Iv,GID],'_',OID),
   assert_object_oid(GID,Obj,Glyph,OID))).
   %assert(oid_glyph_object(OID,Glyph,Obj)))).*/
obj_to_oid(Obj,OID):-  assert_object_oid(_,Obj,_Glyph,OID),!.

assert_object_oid(_TID,Obj,Glyph,OID):-     
 must_det_ll((   
   is_object(Obj),
   obj_iv(Obj,Iv), int2glyph(Iv,Glyph), % object_glyph(Obj,Glyph),       
   obj_to_parent_gid(Obj,GID),  
   %(nonvar(GID)->tid_to_gid(TID,GID);true),

   if_t((nonvar(OID),var(GID)),
    (atomic_list_concat(['o',Glyph,Iv|GIDLst],'_',OID),
     atomic_list_concat(GIDLst,'_',GID))),

   if_t((nonvar(GID),var(OID)),
    (atomic_list_concat(['o',Glyph,Iv,GID],'_',OID))),

   retractall(oid_glyph_object(OID,_,_)),
   retractall(gid_glyph_oid(GID,Glyph,_)), 
   retractall(gid_glyph_oid(GID,_,OID)),

   arc_assert_fast(oid_glyph_object(OID,Glyph,Obj)),
   arc_assert_fast(gid_glyph_oid(GID,Glyph,OID)),
   assert_object2(OID,Obj))).

assert_object2(OID,obj(List)):-!,my_maplist(assert_object2(OID),List).
assert_object2(OID,List):- is_list(List),!,my_maplist(assert_object2(OID),List).
assert_object2(OID,Prop):- Prop=..[F|List],CINDV=..[cindv,OID,F|List],arc_assert1(CINDV),
  append(LL,[E],List),
  ignore((is_list(E),atom_concat(F,'_count',NN),append(LL,[Count],CList),
  length(E,Count),
  CINDVL=..[cindv,OID,NN|CList],
  arc_assert1(CINDVL))).

/*
  assert_object5(OID,F,Pre,Last,List).
assert_object5(OID,F,Pre,Last,_List):- 
  AProp=..[cindv,OID,F,Pre,Last],
  % (\+ ground(AProp)->dumpST;true),
  arc_assert1(AProp).
*/

arc_assert1(A):- assertz_if_new(A),!.
arc_assert1(A):- arc_assert_fast(A).
arc_assert_fast(A):- assertz_if_new(A),!.
 
retract_object(GID,OID,_):- 
 retractall(gid_glyph_oid(GID,_,OID)),
 retractall(cindv(OID,_,_)),
 retractall(cindv(OID,_,_,_)),
 retractall(cindv(OID,_,_,_,_)).
/*
assert_object(GID,NewObj):-
  obj_to_oid(NewObj,NOID),
  assert_object(GID,NOID,NewObj).

assert_object(GID,OID,NewObj):- 
  tid_to_gid(GID,GOID),
  o2g(NewObj,Glyph),
  retract_object(GID,OID,_),
  pfcAdd(gid_glyph_oid(GOID,Glyph,OID)),
  assert_object1(OID,NewObj).

assert_object1(OID,obj(List)):-!,my_maplist(assert_object1(OID),List).
assert_object1(OID,List):- is_list(List),!,my_maplist(assert_object1(OID),List).
assert_object1(OID,Prop):- Prop=..List, AProp=..[cindv,OID|List],
  (\+ ground(AProp)->dumpST;true),
  pfcAdd(AProp).
*/

current_gid(GID):- get_vm(VM), GID = VM.gid.
   %tid_to_gids(ID,GID),!.

oid_to_obj(OID,Obj):- oid_glyph_object(OID,_,Obj).



%obj_to_oid(Obj,_,MyID):- obj_to_oid(Obj,MyID).
id_to_gid(TID,GID):- is_grid(TID),!,grid_to_gid(TID,GID).
tid_to_gid(TID,GID):- var(TID),!,current_gid(GID).
tid_to_gid(TID,GID):- tid_to_gids(TID,GID),!.

%o2g_f(Obj,Glyph):-  atom(Obj),display_length(Obj,1),Obj=Glyph,!.
o2g_f(Obj,Glyph):- oid_glyph_object(_,Glyph,Obj),!.
o2g_f(Obj,Glyph):- obj_to_oid(Obj,OID),oid_glyph_object(OID,Glyph,Obj),!.




%obj_to_oid(I,_,Iv):- is_object(I), obj_iv(I,Iv).
%obj_to_oid(I,_ID,Fv):- is_grid(I),!, flag(indiv,Fv,Fv+1).
%obj_to_oid(I,ID,Iv):- indv_props(I,obj_to_oid(ID,Iv)),!.
%obj_to_oid(I,ID,Fv):- into_obj(I,O),!,obj_to_oid(O,ID,Fv).
%obj_to_oid(I,ID,Iv):- trace_or_throw(missing(obj_to_oid(I,ID,Iv))).
%obj_to_oid(_,ID,_Iv):- luser_getval(test_pairname,ID).

grid_mass(I,Count):- append(I,Cs),!,cell_mass(Cs,Count),!.

cell_mass(C,1):- is_fg_color(C),!.
cell_mass(C,0):- \+ compound(C),!.
cell_mass(_-C,M):- cell_mass(C,M).

cells_mass(C,0):- \+ compound(C),!.
cells_mass([Cell|Cells],Count):- cell_mass(Cell,Count),cells_mass(Cells,Count).


mass(C,1):- is_fg_color(C),!.
mass(C,0):- (is_bg_color(C);var(C);C==[]),!.
mass(I,Count):- is_grid(I),!,append(I,Cs),!,mass(Cs,Count),!.
mass([G|Grid],Points):- (is_group(Grid);(is_list(Grid),is_group(G))),!,mapgroup(mass,[G|Grid],MPoints),sum_list(MPoints,Points).
mass([G|Grid],Points):- my_maplist(mass,[G|Grid],MPoints),sum_list(MPoints,Points),!.
mass(Point,Mass):- is_point(Point),!,(is_fg_point(Point)->Mass=1;Mass=0).
mass(I,X):- is_object_or_oid(I),indv_props(I,mass(X)),!.
mass(I,X):- var_check(I,mass(I,X)),!.
mass(I,Count):- globalpoints(I,Points),mass(Points,Count),!.

is_object_or_oid(I):- once((is_object(I) ; is_oid(I))).


unique_fg_colors(In,Cs):- is_grid(In),!,
  unique_colors(In,UC),
  include(p1_call((is_fg_color,is_real_color,\==(zero))),UC,Cs),!.
unique_fg_colors(Obj,List):- indv_props(Obj,unique_fg_colors(List))*->true;unique_fg_colors2(Obj,List).

%unique_fg_colors(G,FG):- indv_props(G,unique_colors(SUCOR)),include(is_fg_color,SUCOR,FG),!.
unique_fg_colors2(G,SUCOR):- colors_cc(G,GF),quietly((my_maplist(arg(1),GF,UC),include(is_real_fg_color,UC,SUCO))),reverse(SUCO,SUCOR).


%remove_color(C-_,hv(1,1)):- is_bg_color(C),!.
%remove_color(_-P,P).
%remove_color(LPoints,ShapePoints):- mapgroup(remove_color,LPoints,ShapePoints).

:- decl_pt(setq(object,prop,object)).

setq(Orig,Todo,Result):- is_object(Orig),!,override_object(Todo,Orig,Result).
setq(Orig,Todo,Result):- metaq(setq_1,Orig,Todo,Result).
setq_1(_Old,New,Saved):- Saved=New.

delq(I,E,O):-is_object(I),!, with_object(delq,E,I,O).
delq(Orig,Todo,Result):- metaq(delq_1,Orig,Todo,Result).
delq_1(_Old,_New,Saved):- Saved=delq.


metaq(_,Orig,[],Orig):-!.
metaq(P3,Orig,[New|Todo],Result):- !, metaq(P3,Orig,New,Midway),metaq(P3,Midway,Todo,Result).
metaq(P3,Orig,New,Saved):- functor(New,F,A),functor(Old,F,A),Did=done(nil),map_pred(metaq_1(P3,Did,Old,New),Orig,Saved).
metaq_1(_,done(t),_,_,Orig,Orig):-!.
metaq_1(P3,Did,Old,New,Orig,Saved):- compound(Orig),Orig=Old, call(P3,Old,New,Saved),nb_setarg(1,Did,t).






:- decl_pt(helper,indv_props(is_object,+)).

%indv_prop_val1(I,V):- indv_props(I,V).
%indv_prop_val1(I,X):- compound(X),I=obj(List),member(X,List).
indv_props_list(Obj,Props):- var(Obj),!,enum_object(Obj),indv_props_list0(Obj,Props).
indv_props_list(Grp,GrpOO):- is_group(Grp),!,mapgroup(indv_props_list0,Grp,GrpO),append(GrpO,GrpOO).
indv_props_list(OID,NVL):- indv_props_list0(OID,NVL).


indv_props_list0(OID,NVL):- is_oid(OID),!,oid_to_propslist(OID,NVS), combine_cindv(OID,NVS,NVL).
indv_props_list0(Obj,NVL):- is_object(Obj),!,obj_to_propslist(Obj,NVS), combine_cindv(Obj,NVS,NVL).
indv_props_list0(obj(PA),PA):- my_assertion(is_list(PA)).
%indv_props_list0(OID,List):- is_oid(OID), oid_to_obj(OID,Obj),!,indv_props_list(Obj,List).
indv_props_list0(OProps,Props):- is_obj_props(OProps),!,Props=OProps.
indv_props_list0([E|OID],[E|NVL]):- is_prop1(E),!,indv_props_list1(OID,NVL).
indv_props_list0(Objs,Props):- is_list(Objs),!,my_maplist(indv_props_list0,Objs,Props).
indv_props_list0(PA,PAP):- is_list(PA),!,PAP=PA.
indv_props_list0(alone(_OID,PA),PA):- my_assertion(is_list(PA)).
indv_props_list0(Obj,Props):- lock_doing(has_prop_list,Obj,has_prop_list(Obj,Props)).

indv_props_list1(Var,Var):- var(Var),!.
indv_props_list1([],[]):-!.
indv_props_list1([E|OID],[E|NVL]):- is_prop1(E),!,indv_props_list1(OID,NVL).

has_prop_list(Obj,Props):- findall(Prop,has_prop(Prop,Obj),Props),Props\==[],!.

combine_cindv(_,NVL,NVL):- \+ really_use_cindv,!.
combine_cindv(OID,NVS,NVL):- atom(OID),!,findall(NV,cindv0(OID,NV),Props2),append_sets(NVS,Props2,NVL),!.
combine_cindv(Obj,NVS,NVL):- obj_to_oid(Obj,OID), findall(NV,cindv0(OID,NV),Props2),append_sets(NVS,Props2,NVL),!.
/*
indv_props_list_e(Obj,NV):- var(Obj),!,enum_object(Obj),indv_props_list_e(Obj,NV).
indv_props_list_e(Obj,NV):- \+ is_object(Obj),!,into_obj(Obj,O),!,indv_props_list_e(O,NV).
indv_props_list_e(obj(L),E):- is_list(L),member(E,L).
indv_props_list_e(Obj,NV):- obj_to_oid(Obj,OID),!,cindv(OID,NV).
*/
%indv_props(I,_):- \+ is_object(I),!,fail.
%indv_props(I,_):- atom(I),my_assertion(is_oid(I)),fail.
%indv_props(I,Prop):- (atom(I);var(I)),indv_props_list_e(I,Prop).
indv_props(I,Props):- var(I),!,enum_object(I),indv_props(I,Props).
indv_props(I,NV):-  must_be(compound,NV), cindv(I,NV).
%indv_props(I,Props):- atom(I), \+ \+ cindv(I,_,_), var(Props),!,indv_props_list(I,Props).
%indv_props(obj(L),Prop):- is_list(L),!,member(Prop,L ).
%indv_props(C,LL):- \+ compound(C),nonvar(C),g2o(C,I),!,indv_props(I,LL).
%indv_props(I,_):- \+ is_object(I),!,fail.
%indv_props(I,Prop):- compound(Prop),!,Prop=..PropL,apply(indv_props,[I|PropL]).
%indv_props(I,Prop):- var(Prop),!,indv_props_list_e(I,Prop).

cindv(OID,NV):- var(OID),!,is_oid(OID),cindv(OID,NV).
cindv(OID,NV):- is_oid(OID),!,cindv0(OID,NV).
cindv(Obj,_):- \+ is_object(Obj),!,fail.
cindv(Obj,NV):- obj_to_propslist(Obj,L),member(NV,L).
cindv(Obj,NV):- really_use_cindv, obj_to_oid(Obj,OID),cindv0(OID,NV).

cindv0(OID,NV):- \+ nb_current(o2obj,t), oid_to_propslist(OID,L),nv_member(NV,L).
cindv0(OID,NV):- really_use_cindv, cindv1(OID,NV).

cindv1(OID,NV):- compound(NV),!,NV=..NVL,apply(cindv(OID),NVL).
cindv1(OID,NV):- cindv(OID,A,B),NV=..[A,B].
cindv1(OID,NV):- cindv(OID,A,B,C),NV=..[A,B,C].
cindv1(OID,NV):- cindv(OID,A,B,C,D),NV=..[A,B,C,D].
cindv1(OID,NV):- cindv(OID,A,B,C,D,E),NV=..[A,B,C,D,E].

really_use_cindv:- false.

oid_to_propslist(OID,List):- oid_to_obj(OID,Obj),obj_to_propslist(Obj,List).

obj_to_propslist(obj(List),ListO):- member(was_oid(OID),List),!,oid_to_obj(OID,obj(ListM)),append_sets(ListM,List,ListO).
obj_to_propslist(obj(List),List).
obj_to_propslist(Obj,[NV]):- fail, \+ nb_current(o2obj,t), locally(nb_setval(o2obj,t),is_in_subgroup(_Grp,Obj,NV)).

cindv(OID,A,B):- oid_to_propslist(OID,L),member(NV,L),NV=..[A,B].
cindv(OID,A,B,C):- oid_to_propslist(OID,L),member(NV,L),NV=..[A,B,C].
cindv(OID,A,B,C,D):- oid_to_propslist(OID,L),member(NV,L),NV=..[A,B,C,D].
cindv(OID,A,B,C,D,E):- oid_to_propslist(OID,L),member(NV,L),NV=..[A,B,C,D,E].

nv_member(NV,L):- var(NV),nonvar(L),!,member(PNV,L),pnv_to_nv(PNV,NV).
nv_member(PNV,L):- nonvar(PNV),pnv_to_nv1(PNV,NV),!,member(PNV2,L),pnv_to_nv(PNV2,NV).
nv_member(NV,L):- member(NV,L).

pnv_to_nv1(io(NV),NV):-!.
pnv_to_nv1(oi(NV),NV):-!.
pnv_to_nv1(if(NV),NV):-!.
pnv_to_nv(PNV,NV):-pnv_to_nv1(PNV,NV).
pnv_to_nv(NV,NV):-!.

indv_props(Obj,A,B):- NV=..[A,B], indv_props(Obj,NV).
indv_props(Obj,A,B,C):- NV=..[A,B,C], indv_props(Obj,NV).
indv_props(Obj,A,B,C,D):- NV=..[A,B,C,D], indv_props(Obj,NV).
indv_props(Obj,A,B,C,D,E):- NV=..[A,B,C,D,E], indv_props(Obj,NV).

indv_prop_val(Obj,A,BL):- indv_props(Obj,NV),NV=..[A|BL]. 
%indv_props(C,LL):- arc_expand_arg(C,I,G),call(G),!,indv_props(I,LL).
%indv_props(I,X):- var_check(I,indv_props(I,X))*->true;(indv_props(I,X)).
%indv_props(I,NV):- indv_prop_val1(I,NV);indv_prop_val2(I,NV).
%indv_props(Obj,L):- compound(Obj), arg(1,Obj,L), is_list(L),!.
%indv_props(C,LL):- C=obj(L),!,(is_list(L)->LL=L ; (copy_term(L,LL),append(LL,[],LL))),!.



indv_props_for_noteablity(obj(L),Notes):- my_assertion(nonvar(L)),!, include(is_prop_for_noteablity,L,Notes).




%is_not_prop_for_noteablity(globalpoints).
%is_not_prop_for_noteablity(grid_size).
%is_not_prop_for_noteablity(obj_to_oid).

%indv_props(G,L):- arcST,atrace,into_obj(G,O),is_object(O),indv_props(O).

%pmember(E,X):- indv_props(X,E).
%pmember(E,X):- sub_term(EE,X),nonvar_or_ci(EE),EE=E,ground(E).
/*pmember(E,L):- is_vm_map(Points),!,E=grid_size(H,V),!,Points.grid_size=grid_size(H,V).
pmember(E,L):- member(EE,L),(EE=E;(is_list(EE),pmember(E,EE))).
pmember(E,L):- member(obj(EE),L),pmember(E,EE).
*/

walls_thick1(G):- localpoints(G,Points),counted_neighbours(Points,ListOfSizes),walls_thick1_sizes(ListOfSizes).
walls_thick1_sizes(List):- mapgroup(size2D(2),List).

size2D(A,A):- A==A.

maybe_localpoints_list(I,_):- is_points_list(I),!,fail.
maybe_localpoints_list(I,X):- localpoints(I,X).

counted_neighbours(G,CountOut):- maybe_localpoints_list(G,List),!,counted_neighbours(List,CountOut).
counted_neighbours([],[]):-!.
counted_neighbours([_-C],[0-C]):-!.
counted_neighbours(List,CountOut):- counted_neighbours(List,[],CountOut).
counted_neighbours(List,CountIn,CountsOut):- counted_neighbours(List,List,CountIn,CountsOut).

colors_join(C,CC):- C==CC,!.
colors_join(C,CC):- is_bg_color(C),!,is_bg_color(CC).
colors_join(CC,C):- is_bg_color(C),!,is_bg_color(CC).
colors_join(C,CC):- (plain_var(C);plain_var(CC)),!,fail.
colors_join(C,CC):- is_color(C),is_color(CC),!,fail.
colors_join(C,CC):- (is_color(C);is_color(CC)),!.
%colors_join(_,_)



counted_neighbours([],_,CountInOut,CountInOut):-!.
counted_neighbours([H|T],List,CountIn,CountsOut):-!,
  counted_neighbours(H,List,CountIn,CountsM),
  counted_neighbours(T,List,CountsM,CountsOut).
counted_neighbours(C-HV,List,CountIn,[P|CountIn]):- 
 findall(Dir,(is_adjacent_point(HV,Dir,HV2),Dir\==c,member(CC-HV2,List),colors_join(C,CC)),Ns),
  length(Ns,I),P = I-HV.

var_check(I,_):- is_grid(I),!,fail.
var_check(I,_):- I==[],!,fail.
var_check(I,G):- resolve_reference(I,O),I\==O,!,subst001(G,I,O,GG),GG\==G,!,call(GG).
var_check(I,G):- var(I),!,(enum_object(I)*->G;var_check_throw(I,G)).
%var_check(I,G):- var(I),!,var_check_throw(I,G).
var_check_throw(I,G):- var(I),u_dmsg(error(var(G))),!,arcST,u_dmsg(error(var(G))),ibreak,trace_or_throw(maybe_enum_i(I,G)),call(G).

object_shapeW(I,X):- compound(I),I=obj(L),!,my_assertion(is_list(L)),!,member(iz(X),L ).
object_shapeW(I,X):- indv_props(I,iz(X)).

isz(I,X):- is_list(I),I=[O],!,isz(O,X).
isz(I,X):- var_check(I,isz(I,X))*->true;(indv_props(I,iz(X))).


vm_to_printable(D,R) :- Objs = D.objs,!, (Objs\==[] -> R = Objs; R = D.grid ).

resolve_reference(R,Var):- is_vm_map(R),!,Objs = R.objs,!, (Objs\==[] -> Var=Objs; Var = R.grid).
resolve_reference(R,Var):- compound(R),arc_expand_arg(R,Var,Goal),!,call(Goal).
resolve_reference(R,Var):- arc_expand_atom(R,Var),!.
resolve_reference(R,Var):- nonvar(R),R\=obj(_),known_gridoid(R,Var),!.

rot2D(G,X):- is_group(G),!,mapgroup(rot2D,G,Points),append_sets(Points,X).
rot2D(I,X):- var_check(I,rot2D(I,X)).
rot2D(I,X):- indv_props(I,rot2D(X)).
rot2D(_,sameR).

object_changes(G,X):- is_group(G),!,mapgroup(object_changes,G,Points),append_sets(Points,X).
object_changes(I,X):- indv_props(I,changes(X)).


%hv_cvalue(Grid,Color,H,V):- hv_cg_value(Grid,C,H,V),!,as_cv(C,Color),!.
%as_cv(C,Color):- plain_var(C),!,=(C,Color).
%as_cv(C,Color):- sub_term(Color,C),nonvar_or_ci(Color),is_color(Color).
%as_cv(C-_,Color):- as_cv(C,Color).
%as_cv(C,Color):- integer(C),!,color_code(C,Color).


% Is there an advantage to counting down?
all_points_between(_Grid,_LowH,_LowV,_GridH,GridV,_Hi,Vi,Points,Points):- Vi>GridV,!.
all_points_between(Grid,LowH,LowV,GridH,GridV,Hi,Vi,PointsIn,PointsO):-
  (Hi>GridH -> (H = LowH, V is Vi+1) ; (H is Hi +1, V = Vi )),
   all_points_between(Grid,LowH,LowV,GridH,GridV,H,V,PointsIn,Points),
  ((hv_c_value(Grid,C,Hi,Vi), hv_point(Hi,Vi,Point)) -> 
   (PointsO = [C-Point|Points],never_newd(C)) ; PointsO = Points).


color_spec_or_fail(Grid,C,Hi,Vi):- hv_c_value(Grid,C,Hi,Vi),!.
/*
color_spec_or_fail(Grid,C,Hi,Vi):- hv_c_value(Grid,C2,Hi,Vi),
  (is_spec_fg_color(C2,C);(attvar(C2),C=C2); (\+ plain_var(C2), C=C2)),!,
  get_bgc(BGC),C\==BGC.
*/

%never_newd(C):- plain_var(C),!,freeze(C, ignore(never_newd(C))).
%never_newd(C):- compound(C),C =(_-_), dumpST,throw(never_newd(C)).
never_newd(_).

all_points_between_include_bg(_Grid,_LowH,_LowV,_GridH,GridV,_Hi,Vi,Points,Points):- Vi>GridV,!.
all_points_between_include_bg(Grid,LowH,LowV,GridH,GridV,Hi,Vi,PointsIn,PointsO):-
  (Hi>GridH -> (H = LowH, V is Vi+1) ; (H is Hi +1, V = Vi )),
   all_points_between(Grid,LowH,LowV,GridH,GridV,H,V,PointsIn,Points),
  (((once(hv_c_value(Grid,C,Hi,Vi)), hv_point(Hi,Vi,Point))) -> 
   (PointsO = [C-Point|Points],never_newd(C)) ; PointsO = Points).

/*
% Is there an advantage to counting down?
all_points_between_include_bg(_Grid,_LowH,_LowV,_GridH,GridV,_Hi,Vi,Points,Points):- Vi>GridV,!.
all_points_between_include_bg(Grid,LowH,LowV,GridH,GridV,Hi,Vi,Points,PointsO):-
  ((color_spec_or_fail_include_bg_more(Grid,C,Hi,Vi),
  hv_point(Hi,Vi,Point))
     -> (PointsT = [C-Point|Points], never_newd(C)) ; PointsT = Points),

   (Hi>GridH -> (H = LowH, V is Vi+1) ; (H is Hi +1, V = Vi )),!,
   all_points_between_include_bg(Grid,LowH,LowV,GridH,GridV,H,V,PointsT,PointsO).
*/

color_spec_or_fail_include_bg(Grid,C,Hi,Vi):-
  hv_c_value(Grid,C2,Hi,Vi),
  (is_spec_color(C2,C);(atomic(C2),C=C2);(compound(C2),C=C2);(attvar(C2),C=C2);(fail,var(C2),fail,C=C2)).

color_spec_or_fail_include_bg_more(Grid,C,Hi,Vi):- 
  get_bgc(BGC),
  hv_c_value_or(Grid,C2,Hi,Vi,BGC),
  (is_spec_color(C2,C);(atomic(C2),C=C2);(compound(C2),C=C2);(attvar(C2),C=C2);(fail,var(C2),C=BGC)).
  
grid_cpoint(Grid,C-Point,Hi,Vi):- hv_c_value(Grid,C2,Hi,Vi),never_newd(C),
 (is_spec_color(C2,C);(atomic(C2),C=C2);(compound(C2),C=C2);(attvar(C2),C=C2);(fail,var(C2),C=C2)),
  hv_point(Hi,Vi,Point).

grid_to_points(Grid,Points):- grid_size(Grid,HH,HV),!, grid_to_points(Grid,HH,HV,Points).
% Is there an advantage to counting down?
grid_to_points(Grid,HH,HV,Points):- 
  all_points_between(Grid,1,1,HH,HV,1,1,[],Points),!. 
% Is there an advantage to counting down?
grid_to_points_include_bg(Grid,Points):- grid_size(Grid,HH,HV),!,
  all_points_between_include_bg(Grid,1,1,HH,HV,1,1,[],Points),!. 
/*
grid_to_points(Grid,HH,HV,Points):-  trace_or_throw(all_points_between),
  findall(C-Point,(between(1,HV,V),between(1,HH,H),
    once((hv_cg_value(Grid,C2,H,V),
          %pp(hv_cg_value(C2,H,V)),
          is_spec_fg_color(C2,C),
          hv_point(H,V,Point)))),Points),!.
*/
point_corners(Obj,Dir,CPoint):- enum_object(Obj),  globalpoints(Obj,Points), gp_point_corners(Obj,Points,Dir,CPoint).


gp_point_corners(Obj,_Points0,Dir,CPoint):-  %sort_points(Points,SPoints), 
   isz(Obj,Shape),SPoints=Points,
   shape_rep(grav,Obj,Points),member('+'-P1,Points),localpoints(Obj,CPoints),member(C-P1,CPoints),
   C-P1 = CPoint,
  (points_corner_dir(Shape,Dir)*->(SPoints=[CPoint|_];last(SPoints,CPoint));fail).
   
fixed_defunt_obj(OL,Obj):- compound(OL),OL=obj(I),defunct_objprops(I),
  ((member(oid(OID),I);member(was_oid(OID),I)),atom(OID)),!,
  oid_to_obj(OID,Obj),Obj\=@=obj(I).




defunct_objprops(I):- member(was_oid(_),I),!.
defunct_objprops(I):- \+ ( member(globalpoints(Ps),I), is_cpoints_list(Ps)),
                       \+ ( member(localpoints(Ps),I), is_cpoints_list(Ps)),!.
%globalpoints(ID,Points):- \+ \+ cmem(ID,_,_), no_repeats(ID,cmem(ID,_,_)), findall(-(C,HV),cmem(ID,HV,C),Points).
%globalpoints(Grid,Points):- grid_to_gid(Grid,ID),\+ \+ cmem(ID,_,_),findall(-(C,HV),cmem(ID,HV,C),Points).
globalpoints(I,_):-  var(I),!,fail.

globalpoints(I,O):- fixed_defunt_obj(I,Obj),!,globalpoints(Obj,O).

globalpoints(Grid,Points):- is_grid(Grid),!, grid_to_points(Grid,Points).
globalpoints(obj(L),O):- object_l(globalpoints(O),L),!.
globalpoints(CP,[CP]):- is_point(CP),!.
globalpoints(I,X):-  (var_check(I,globalpoints(I,X)), deterministic(TF), true), (TF==true-> ! ; true).
globalpoints([],[]):-!.
globalpoints(G,[G]):- is_cpoint(G),!.
globalpoints(C-P,[C-P]):-!.
globalpoints(G,G):- is_cpoints_list(G).
globalpoints(Grid,Points):- is_group(Grid),!,mapgroup(globalpoints,Grid,MPoints),append_sets(MPoints,Points).
globalpoints(G,Ps):- is_vm_map(G),vm_to_printable(G,R),!,globalpoints(R,Ps).
globalpoints(options(X),_Points):- trace_or_throw(globalpoints(options(X))).
globalpoints(I,X):- indv_props(I,globalpoints(X)), nop(my_assertion(is_cpoints_list(X))),!.
globalpoints(I,G):- is_object(I),object_localpoints(I,L),is_points_list(L),loc2D(I,X,Y),offset_points(X,Y,L,G),!.
%globalpoints(I,X):- localpoints(I,X),!.
globalpoints(_,[]):-!.
globalpoints(Atom,_):- \+ compound(Atom),!,my_assertion(gp=Atom),trace_or_throw(globalpoints(Atom)).
globalpoints(I,X):- my_assertion(gp=I), trace_or_throw(unknown(globalpoints(I,X))).

localpoints(Grid,Points):- is_grid(Grid),!, must_det_ll(grid_to_points(Grid,Points)).
localpoints(G,G):- is_cpoints_list(G),!.
localpoints(I,X):- is_object(I),!,must_det_ll(object_localpoints(I,X)),!.
localpoints(I,X):- (var_check(I,localpoints(I,X)), deterministic(TF), true), (TF==true-> ! ; true).
localpoints(G,[G]):- is_point(G),!.
localpoints(G,Ps):- is_vm_map(G),vm_to_printable(G,R),!,localpoints(R,Ps).
localpoints(Grid,Points):- is_group(Grid),!,mapgroup(localpoints,Grid,MPoints),append_sets(MPoints,Points).
localpoints(G,G):- is_points_list(G).
localpoints(Grid,Points):- is_list(Grid),!,my_maplist(localpoints,Grid,MPoints),append_sets(MPoints,Points).
%localpoints(Atom,_):- \+ compound(Atom),!,trace_or_throw(localpoints(Atom)).
localpoints(I,X):- trace_or_throw(unknown(localpoints(I,X))).

  %localpoints(I,X):- into_grid(I,G),!,grid_size(G,H,V),grid_to_points(G,H,V,X).

must_det_11(G):- must_det_ll(call(call,(G))).

localpoints_include_bg(I,X):- must_be_free(X),  \+ is_grid(I), !, must_det_11((localpoints(I,X),is_cpoints_list(X))),!.
localpoints_include_bg(Grid,Points):- is_grid(Grid),!, 
  must_det_11((grid_to_points_include_bg(Grid,Points),is_cpoints_list(Points))),!.


object_grid(I,G):- is_grid(I),!,G=I.
object_grid(I,G):- indv_props(I,grid(G)),!.
object_grid(Group,List):- is_group(Group),!,override_group(object_grid(Group,List)),!.
object_grid(ObjRef,List):- \+ is_object(ObjRef), into_obj(ObjRef,Obj), is_object(Obj), !,object_grid(Obj,List).
object_grid(I,G):- object_localpoints(I,LP),vis2D(I,H,V),!,points_to_grid(H,V,LP,G),!.

%object_localpoints(obj(I),_):- member(obj(_),I),!,ibreak.
/*
object_localpoints(I,XX):- must_be_free(XX), %stack_check_or_call(3000,(dmsg(stackcheck>3000),ibreak)),
 must_det_ll((indv_props_list(I,L),
   setup_call_cleanup(flag('$olp',X,X+1),(X<30,object_localpoints0(I,L,XX)),flag('$olp',_,X)),
   is_cpoints_list(XX))),!.
*/



object_localpoints(I,X):- 
  indv_props_list(I,L), must_det_ll(object_l(localpoints(X),L)),!.

object_l(P,[Obj|L]):- (is_group(L);is_object(Obj)),!,mapgroup(object_l(P),[Obj|L]).
object_l(P,L):- stack_check(999), compound(P),functor(P,F,A),functor(PP,F,A), member(PP,L),!,P=PP.
object_l(globalpoints(O),L):- object_l(loc2D(OH,OV),L),object_l(localpoints(LPoints),L),!, offset_points(OH,OV,LPoints,O).
object_l(loc2D(OH,OV),L):-  
  member(iz(cenGX(CX)),L),member(iz(cenGY(CY)),L),member(iz(sizeGX(SX)),L),member(iz(sizeGY(SY)),L),
  OH is floor(CX-(SX/2)), OV is floor(CY-(SY/2)).


object_l(localpoints(O),L):- member(globalpoints(XX),L),is_list(XX),object_l(loc2D(OH,OV),L),!,deoffset_points(OH,OV,XX,O).
object_l(localpoints(O),L):- member(iz(sid(ShapeID)),L),!,
  must_det_ll((id_shape(ShapeID,ShapePoints),
       object_l(rot2D(RotG),L), object_l(pen(PenColors),L),%object_l(rotSize2D(OX,OY),L),
       OX=1,OY=1, make_localpoints(ShapePoints,RotG,OX,OY,PenColors,O))),!.
object_l(localpoints(O),L):- must_det_ll((object_l(grid(In),L),!,release_some_c(In,Out),localpoints(Out,O))).

%object_l(localpoints(O),L):- object_l(points_rep(grav,O),L),!.
%grid_to_points(LocalGrid,O))
object_l(grid(O),L):-
 once((
    (member(f_grid(In),L),include(p1_arg(1,is_real_color),In,O))
    ;(member(grid_rep(Norm,NormGrid),L),member(grid_ops(Norm,Ops),L), unreduce_grid(NormGrid,Ops,O))
    ;(object_l(localpoints(LPoints),L), points_to_grid(LPoints,O))
    ;(object_l(grid(grav,SCGrid),L), object_l(rot2D(RotG),L), grid_call(RotG,SCGrid,O)))),!.

object_l(f_grid(O),L):- object_l(grid(In),L),fpad_grid(f,var,In,O).

object_l(shape_rep(grav,Shape),L):- shape_rep(obj(L),grav,Shape).
%member(iz(sid(ShapeID)),L),id_shape(ShapeID,Shape).

object_l(grid_rep(Grav,Grid),L):- (grav_algo(Grav);algo_list(Grav)),  member(points_rep(Grav,Points),L), 
   member(rotSize2D(Grav,OX,OY),L), points_to_grid(OX,OY,Points,Grid).

object_l(points_rep(Grav,ColoredShape),L):- grav_algo(Grav), 
  member(shape_rep(Grav,ShapePoints),L),object_l(pen(PenColors),L),
  colorize_points(ShapePoints,PenColors,ColoredShape).


object_l(Prop,L):- Prop = iz(algo_sid(Algo,NormShapeID)),algo_list(Algo), \+ member(Prop,L), 
 object_l(grid_rep(Algo,NormGrid),L),
 local_shape_id(NormGrid,NormShapeID),!. %shape_id(NormGrid,NormShapeID).

grid_rep(I,Algo,NormGrid):- indv_props(I,grid_rep(Algo,NormGrid))*->true; algo_ops_grid(I,Algo,_NormOps,NormGrid).
grid_ops(I,Algo,NormOps):- indv_props(I,grid_ops(Algo,NormOps))*->true; algo_ops_grid(I,Algo,NormOps,_NormGrid).

/*
      localpoints(NormGrid,NormLPoints),my_maplist(arg(2),NormLPoints,ShapeNormLPoints),  
     shape_id(ShapeNormLPoints,NormShapeID),
     PropsOut = [grid_ops(Algo,NormOps),iz(algo_sid(Algo,NormShapeID)),grid_rep(Algo,NormGrid)].*/


algo_ops_grid(obj(List),Algo,NormOps,NormGrid):- 
  member(grid_ops(Algo,NormOps),List),member(grid_rep(Algo,NormGrid),List),!.
algo_ops_grid(Obj,Comp,NormOps,NormGrid):- 
  algo_depends_algo(Comp,Norm),
  algo_ops_grid(Obj,Norm,_NormOps,CompNormGrid),
  call_algo(Comp,NormOps,CompNormGrid,NormGrid).

algo_ops_grid(Obj,Algo,NormOps,NormGrid):- 
  algo_list(Algo),into_grid(Obj,Grid),
  call_algo(Algo,NormOps,Grid,NormGrid).

call_algo(comp,NormOps,Grid,NormGrid):- compress_grid(NormOps,Grid,NormGrid).
call_algo(norm,NormOps,Grid,NormGrid):- normalize_grid(NormOps,Grid,NormGrid).
algo_depends_algo(comp,norm).
algo_list(norm).
algo_list(comp).
grav_algo(grav).




colorize_points(ShapePoints,PenColors,LPointS):-
  combine_pen(ShapePoints,PenColors,PenColors,LPoints),!,
  sort_safe(LPoints,LPointS).

make_localpoints(RotLCLPoints,RotG,OX,OY,PenColors,LPointS):- 
  must_det_ll((   
     maybe_undo_effect_points(OX,OY,RotLCLPoints,RotG,ShapePoints),
     PenColors\==[],is_list(PenColors),
     combine_pen(ShapePoints,PenColors,PenColors,LPoints) )),!,
  sort_safe(LPoints,LPointS).

maybe_undo_effect_points(_,_,RotLCLPoints,sameR,LPoints):- must_be_free(LPoints),!,RotLCLPoints=LPoints.
maybe_undo_effect_points(OX,OY,RotLCLPoints,RotG,LPoints):- 
 must_det_ll((points_to_grid(OX,OY,RotLCLPoints,Grid),   
   undo_effect(RotG,Grid,Grid90),localpoints_include_bg(Grid90,LPoints))).

/*

          _______
         |   @   |
         | @ @   |
         |       |
          ¯¯¯¯¯¯¯
*/

combine_pen(A,B,C,D):- nonvar(D),!,combine_pen(A,B,C,V),!,V=D.
combine_pen([],_,_,[]):-!.
combine_pen(X,[],Reset,XX):- my_assertion(Reset\==[]), !,combine_pen(X,Reset,Reset,XX).

combine_pen([P],[cc(C,_)|_],_,[C-P]):- atom(P),!.
combine_pen([_-L|LL],C,Reset,XX):- nonvar(L),!,combine_pen([L|LL],C,Reset,XX).
%combine_pen([_-P1|L],C,Reset,[C-P1|XX]):- is_color(C),!,
combine_pen([P1|L],C,Reset,CP1XX):- \+ is_list(C), is_color(C),!,[C-P1|XX]=CP1XX, 
  combine_pen(L,C,Reset,XX).

combine_pen(L,[cc(C,N)],[cc(C,N)],XX):- add_color(L,C,XX),!.

combine_pen(L,[cc(C,N)|PenColors],Reset,XX):- number(N), make_list(C,N,List),append(List,PenColors,ListPenColors),
  combine_pen(L,ListPenColors,Reset,XX).

combine_pen([P1|L],[C|PenColors],Reset,[C-P1|XX]):- is_color(C),!,
  combine_pen(L,PenColors,Reset,XX).

add_color([],_,[]):-!.
add_color([C1-P|L],C,[C1-P|XX]):- !, add_color(L,C,XX).
add_color([P|L],C,[C-P|XX]):- !, add_color(L,C,XX).

shape_rep(grav,I,X):- is_object(I),!, indv_props_list(I,L),(member(shape_rep(grav,X),L)->true; (member(iz(sid(ShapeID)),L),is_shape_id_for(X,ShapeID))).
shape_rep(Grav,G,X):- is_group(G),!,mapgroup(shape_rep(Grav),G,Points),append_sets(Points,X).
% returns the objects decolorize localpoints
shape_rep(grav,I,ShapePoints):- into_grid(I,Grid),grid_to_shape(Grid,_RotG,_SH,_SV,ShapePoints,_PenColors).
  %localpoints(I,Points), grid_to_shape(Points,X).

%globalpoints(Grid,Points):- is_object(Grid),!,globalpoints(Grid,Points).
/*
globalpoints(ID,Points):- \+ \+ cmem(ID,_,_), findall(-(C,HV),cmem(ID,HV,C),Points).
globalpoints(Grid,Points):- grid_to_tid(Grid,ID),findall(-(C,HV),cmem(ID,HV,C),Points).
*/

is_color_cc(cc(C,_)):- is_color(C).
%colors_cc(Points,CC):- is_list(Points),nth0(_,Points,C-_),is_color(C), CC = [cc(C,3)],!.
colors_cc(I,X):- nonvar(X),!,colors_cc(I,XX),!,X=XX.
colors_cc(G,[cc(Black,0),cc(fg,0),cc(bg,0)]):-  G==[],!,get_black(Black).
colors_cc(I,X):- is_object(I),!,CC=cc(_,_),findall(CC,(indv_props(I,CC),is_color_cc(CC)),X).
colors_cc(I,X):- is_oid(I),!,CC=cc(_,_),findall(CC,(indv_props(I,CC),is_color_cc(CC)),X).
%colors_cc(G,X):- is_group(G),mapgroup(colors_cc,G,GG),combine_results(GG,X).
%colors_cc(G,X):- is_grid(G),mapgrid(colors_cc,G,GG),combine_results(GG,X).
colors_cc(I,X):- is_vm_map(I),!,into_grid(I,G),!,colors_cc(G,X).
colors_cc(G,CC):- pixel_colors(G,Pixels),pixels_to_cc(Pixels,CC).

sort_color_by_mass(_,[E],[E]):-!.
sort_color_by_mass(Obj,List,SortedColors):-colors_cc(Obj,CC),predsort(sort_on(cc_mass(CC)),List,SortedColors).

cc_mass(CC,Color,N):- member(cc(Color,N),CC).
/*colors_cc(All,CC):-
  findall(Nm-C,(enum_colors_test(C),occurs:count((sub_term(Sub, All), \+ \+ cmatch(C,Sub)), Nm), 
    once(Nm\==0 ; (atom(C), C\==is_colorish, C\==var, \+ is_real_color(C)))),BF),
  keysort(BF,KS),reverse(KS,SK),
  into_cc(SK,CC),!.*/

pixels_to_cc(Pixels,ECC):- get_ccs(Pixels,RCC),add_summary_colors(RCC,ECC),!.

is_cc_n(P1,cc(_,N)):-call(P1,N).
add_summary_colors(CC,CCO):- total_summary_colors(0,0,0,BG,FG,Vars,CC),
   include(is_cc_n('=<'(0)),[cc(bg,BG),cc(fg,FG),cc(plain_var,Vars)],CCE),append(CC,CCE,CCO).

special_plus(N,NP,NNP):-   ((N>=0)->plus(N,NP,NNP);NNP=N).

total_summary_colors(BG,FG,Vars,BGO,FGO,VarsO,[CC|CCs]):- 
  total_summary_colors_e(BG,FG,Vars,BGM,FGM,VarsM,CC),
  total_summary_colors(BGM,FGM,VarsM,BGO,FGO,VarsO,CCs).
total_summary_colors(BG,FG,Vars,BG,FG,Vars,[]).

total_summary_colors_e(BG,FG,N,BG,FG,NNP,cc(C,NP)):- plain_var(C),!,special_plus(N,NP,NNP).
total_summary_colors_e(_BG,FG,Vars,-1,FG,Vars,cc(bg,_)).
total_summary_colors_e(BG,_FG,Vars,BG,-1,Vars,cc(fg,_)).
total_summary_colors_e(BG,FG,_Vars,BG,FG,-1,cc(plain_var,_)).
total_summary_colors_e(N,FG,Vars,NNP,FG,Vars,cc(C,NP)):- is_bg_color(C),!,special_plus(N,NP,NNP).
total_summary_colors_e(BG,N,Vars,BG,NNP,Vars,cc(C,NP)):- is_fg_color(C),!,special_plus(N,NP,NNP).
total_summary_colors_e(BG,FG,Vars,BG,FG,Vars,_).

mostly_usefull_colors_cc(O,CCO):- colors_cc(O,CC), into_mostly_real_colors(CC,CCO),!.
into_mostly_real_colors(CC,CCO):- include(is_real_cc,CC,CCO),CCO\==[],!.
into_mostly_real_colors(CC,CCO):- include(is_some_cc,CC,CCO),CCO\==[],!.
into_mostly_real_colors(CC,CC):- !.

is_real_cc(cc(C,N)):- N>0, is_real_color(C),!.
is_some_cc(cc(_,N)):- N>0,!.



  
%color_cc_via_pixels(G,BFO):- quietly((pixel_colors(G,GF),count_sets(GF,_,SK),into_cc(SK,BFO))).
get_ccs(GF,CC):-
  %count_sets(GF,SK),
  sort_safe(GF,GS), count_each(GS,GF,UC),keysort(UC,KS),reverse(KS,SK),
  into_cc(SK,CC),!.

count_sets(GF,SK):- sort_safe(GF,GS), count_each(GS,GF,UC),keysort(UC,KS),reverse(KS,SK),!.
count_sets(GF,GS,SK):- (var(GS)->list_to_set(GF,GS);true), count_each(GS,GF,UC),keysort(UC,KS),reverse(KS,SK),!.

/*
pixels_to_cc([ blue, cyan,blue,blue,cyan,cyan,blue,blue,blue,blue,yellow,yellow,cyan,blue,blue,yellow],Pixels_to_cc))

*/
%colors_cc(G,X):- is_group(G),!,mapgroup(colors_cc,G,Points),append_sets(Points,X).


get_instance_method(Obj,Compound,F):- is_object(Obj), compound(Compound),compound_name_arity(Compound,Name,A),
   A1 is A+1, atom_concat('object_',Name,F),current_predicate(F/A1).

pen(I,C):- indv_props(I,pen(C)),!.



object_ngrid(Obj,GNGridFG):- object_grid(Obj,Grid), into_ngrid(Grid,GNGrid),mapgrid(fg_grid_syms,GNGrid,GNGridFG).

object_ngrid_symbols(Obj,Syms):- object_ngrid(Obj,NGrid), ngrid_syms(NGrid,Syms).

ngrid_syms(NGrid,NSymCounts):- fix_tt_juctions(NGrid,TGrid90),
 subst_syms(bg,TGrid90,GFlatSyms),get_ccs(GFlatSyms,Syms),
 create_sym_vectors(Syms,NSymCounts).

/*
ngrid_syms(NGrid,[Extra]):- !,
 fix_tt_juctions(NGrid,TGrid90),
 subst_syms(bg,TGrid90,GFlatSyms),get_ccs(GFlatSyms,Syms),
 ignore(member(cc('*',Stars),Syms)), ignore(member(cc('+',Plusses),Syms)), ignore(Plusses=0),ignore(Stars=0),
 PS is 10* Plusses+Stars,
 Extra= sym_counts('+*',PS).
*/ 
create_sym_vectors(Syms,Counts):-
  findall(sym_counts(Sym,Count),
    (vector_pairs(T,ListU),
     sort(ListU,List),atomic_list_concat([sym,T|List],'_',Sym),
     total_ccs(1,List,Syms,Count)),Counts).

total_ccs(_,[],_,0).
total_ccs(N,[S|List],Syms,Count):- 
 N2 is N * 10, 
 total_ccs(N2,List,Syms,CT),!,
 (member(cc(S,C),Syms)->(Count is (CT + (C*N))); Count=CT).

into_sym_count(cc(Sym,Count),sym_counts(Sym,Count)).

%vector_pairs([A,B]):- find_syms(T,A),find_syms(T,B),A@<B.
%vector_pairs([S]):- find_syms(S).
%vector_pairs([S]):- find_syms(_,S).
vector_pairs(T,SS):- findall_vset(T,find_syms(T,_),TT),member(T,TT),findall(S,find_syms(T,S),SS).

find_syms(node,'@'). find_syms(node,'+'). find_syms(node,'*'). find_syms(node,'~').
find_syms(dir,'<'). find_syms(dir,'>'). find_syms(dir,'v'). find_syms(dir,'^').
find_syms(extend,'-'). find_syms(extend,'|'). 
find_syms(extend,'\\'). find_syms(extend,'/').
/*
find_syms('~'). find_syms('0').
find_syms('='). find_syms('!'). 
find_syms('X'). find_syms('#').
find_syms('7'). find_syms('`').
*/
subst_syms(IBGC,List, L) :-
 must_det_ll(( flatten([List],L1),   
   my_maplist(cell_syms(IBGC),L1, L2),
   my_maplist(on_edge_sym, L2, L3),
  include(\==(''),L3,L))).

on_edge_sym(W,S):- on_edge_become(W,S),!. on_edge_sym(S,S).

cell_syms(_IBGC,Cell,''):- plain_var(Cell),!.
cell_syms( IBGC,Cell,''):- sub_var(IBGC,Cell).
cell_syms(_IBGC,Cell,'@'):- is_color(Cell),!.
cell_syms(_IBGC,Sym,Sym):- atom(Sym),atom_length(Sym,1),!.
cell_syms(_IBGC,Cell,Cell):- \+ compound(Cell),!.
cell_syms(IBGC,Cell-_,Sym):- cell_syms(IBGC,Cell,Sym),!.

object_global_ngrid(Obj,GNGrid):- global_grid(Obj,Grid), into_ngrid(Grid,GNGrid).

/*
global_grid(I,G):- is_grid(I),!,G=I.
global_grid(ObjRef,List):- \+ is_object(ObjRef), into_obj(ObjRef,Obj),!,global_grid(Obj,List).
%global_grid(Group,List):- is_group(Group),globalpoints(Group,Points),!,
global_grid(I,G):- must_det_ll((call((grid_size(I,H,V),globalpoints_maybe_bg(I,LP),points_to_default_grid(H,V,LP,G))))),!.
global_grid(I,G):- globalpoints(I,GP),points_to_default_grid(GP,G),!.
global_grid(I,G):- is_object(I), object_grid(I,G),!.
*/
global_grid0(I,G):- is_grid(I),!,G=I.
global_grid0(ObjRef,List):- \+ is_object(ObjRef), into_obj(ObjRef,Obj),!,global_grid0(Obj,List).
global_grid0(I,G):- must_det_ll((call((grid_size(I,H,V),globalpoints_maybe_bg(I,LP),points_to_grid(H,V,LP,G))))),!.
global_grid0(I,G):- object_grid(I,G1),into_solid_grid(G1,G0),!,loc2D(I,H,V),pad_top(V,G0,GV),pad_left(H,GV,G).

global_grid(I,G):- global_grid(I,_OID,G),!.
global_grid(I,G):- global_grid0(I,G),!.

invent_oid_grid(OID,G):- is_grid(G),grid_to_image_oid(G,OID),!.
invent_oid_grid(OID,G):- is_grid(G),mapgrid(black_vs_bg,G,GG),grid_to_image_oid(GG,OID),!.
invent_oid_grid(OID,G):- is_grid(G),mapgrid(black_vs_bg,G,GG),nonvar(OID),assert_if_new(oid_to_global_grid(OID,GG)).


global_grid(I,OID,G):- is_grid(I),!,G=I,invent_oid_grid(OID,G),!.
global_grid(_,OID,G):- atom(OID),oid_to_global_grid(OID,G),!.
global_grid(I,OID,G):- atom(I),OID=I,oid_to_global_grid(OID,G),!.
global_grid(I,OID,G):- is_group(I),must_det_ll((call((grid_size(I,H,V),globalpoints_maybe_bg(I,LP),points_to_grid(H,V,LP,G))))),
  invent_oid_grid(OID,G).
global_grid(I,OID,G):- var(OID),is_object(I),obj_to_oid(I,OID),!,global_grid(I,OID,G),
  assert_if_new(oid_to_global_grid(OID,G)).
global_grid(I,OID,G):- global_grid0(I,G0),!,mapgrid(black_vs_bg,G0,G), assert_if_new(oid_to_global_grid(OID,G)).

%black_vs_bg(C,O):- C == black,!, O = wbg.
black_vs_bg(C,O):- plain_var(C),!,O = bg.
black_vs_bg(C,O):- C == bg,!, O = _.
black_vs_bg(C,C).

locG_term(I,loc2G(X,Y)):- loc2G(I,X,Y),!.
loc2G(Grid,H,V):- is_grid(Grid),!,other_grid_size(Grid,H,V).
loc2G(G,X,Y):- is_group(G),!,mapgroup(locG_term,G,Offsets),sort_safe(Offsets,[loc2G(X,Y)|_]). % lowest loc2G
%loc2G(Grid,H,V):- is_grid(Grid),!,globalpoints(Grid,Points),!,points_range(Points,LocX,LocY,_,_,_,_), H is LocX, V is LocY.
loc2G(I,X,Y):- is_object(I), indv_props(I,loc2G(X,Y)),!.
loc2G(I,X,Y):- into_obj(I,O), indv_props(O,loc2G(X,Y)),!.

obj_var(O):- var(O).
maybe_defunct(O,obj(Obj)):- compound(O),O=obj(L),nonvar(L),member(was_oid(OID),L),!,oid_to_obj(OID,obj(Obj)).

loc_term(I,loc2D(X,Y)):- loc2D(I,X,Y),!.
loc2D(O,H,V):- obj_var(O),!,into_obj(O,Obj),loc2D(Obj,H,V).
loc2D(O,H,V):- maybe_defunct(O,Obj),!,loc2D(Obj,H,V).
loc2D(I,X,Y):- is_object(I), indv_props(I,io(loc2D(X,Y))),!.
loc2D(Grid,H,V):- is_grid(Grid),!,H=1,V=1.
loc2D(G,X,Y):- is_group(G),!,mapgroup(loc_term,G,Offsets),sort_safe(Offsets,[loc2D(X,Y)|_]). % lowest loc2D
%loc2D(Grid,H,V):- is_grid(Grid),!,globalpoints(Grid,Points),!,points_range(Points,LocX,LocY,_,_,_,_), H is LocX, V is LocY.
loc2D(I,X,Y):- is_object(I), indv_props(I,loc2D(X,Y)),!.
loc2D(I,X,Y):- sub_cmpd(I,loc2D(X,Y)).
loc2D(I,X,Y):- into_obj(I,O), indv_props(O,loc2D(X,Y)),!.
%loc2D(NT,H,V):- atrace, known_gridoid(NT,G),loc2D(G,H,V).
    


:- decl_pt(prop_g,vis_hv_term(is_object_or_grid,size2D)).

vis_hv_term(I,size2D(X,Y)):- vis2D(I,X,Y),!.

vis2D(Grid,H,V):- is_grid(Grid),!,grid_size(Grid,H,V).
vis2D(I,X,Y):- indv_props(I,vis2D(X,Y)),!.
vis2D(Grid,H,V):- is_grid(Grid),!,globalpoints(Grid,Points),!,points_range(Points,LocX,LocY,HiH,HiV,_,_), H is HiH-LocX+1, V is HiV-LocY+1.
vis2D(G,X,Y):- is_group(G),!,mapgroup(vis_hv_term,G,Offsets),sort_safe(Offsets,HighToLow),last(HighToLow,size2D(X,Y)).
vis2D(Points,H,V):- points_range(Points,LocX,LocY,HiH,HiV,_,_), H is HiH-LocX+1, V is HiV-LocY+1.
vis2D(NT,H,V):-  known_gridoid(NT,G),G\==NT, vis2D(G,H,V).

rotSize2D(grav,I,X,Y):- indv_props(I,rotSize2D(grav,X,Y)),!.
rotSize2D(grav,Grid,H,V):- is_grid(Grid),!,grav_roll(Grid,_RotG,RotShape),grid_size(RotShape,H,V).
rotSize2D(grav,NT,H,V):-  into_gridoid(NT,G),G\==NT, rotSize2D(grav,G,H,V).


%externalize_links(obj_group(O1L,Grp),[link(C,A),EL|More],[link(C,A),elink(C,Ext)|LMore]):- EL\=elink(_,_),externalize_obj(Obj,Other,Ext),!,externalize_links(obj_group(O1L,Grp),[EL|More],LMore).

externalize_links(Grp,NewObjs):- Grp==[],!,NewObjs=[].
externalize_links(Grp,Grp):-!.
/*
externalize_links(Grp,NewObjs):- 
 must_det_ll((is_group_or_objects_list(Grp), 
   maplist(externalize_links((Grp)),Grp,NewObjs))).
%externalize_links(obj_group(O1L,Grp),NewObj):- is_object(Obj),!,externalize_obj_links(Obj,NewObj),!.
%externalize_links(obj_group(O1L,Grp),Objs):-!.

externalize_links((Grp),Obj,NewObj):-
   indv_props_list(Obj,O1L), 
   maplist(externalize_links(obj_group(O1L,Grp)),O1L,NewList), 
   NewObj=obj(NewList).
%externalize_links(obj_group(O1L,Grp),link(C,A),elink(C,Ext)):- !, externalize_obj(obj_group_link(O1L,Grp,C),A,Ext).
*/
/*
externalize_links(obj_group(_O1L,_Grp),A,A).

externalize_obj(obj_group_link(O1,_Grp, C),OID2,Ext):- 
 must_det_ll((
   indv_props_list(O1,O1L), 
   indv_props_list(OID2,O2L),
   findall(Prop,
     (member(Functor,[giz(glyph),iz(sid),iz(type),iz(stype),delta(loc2D),delta(vis2D),delta(rot2D),delta(pen)]),
      externalize_prop(O1L,C,O2L,Functor,Prop)),Ext))).
*/
%[loc2D,vis2D,rot2D,iz(sid),iz(stype),colors]
externalize_prop(O1L,_C,O2L,delta(Functor),Delta):- 
  select_prop(Functor,O1L,Prop1),
  select_prop(Functor,O2L,Prop2),
  must_det_ll(proportional(Prop1,Prop2,Delta)),!.
externalize_prop(O1L,C,O2L,delta(Functor),Prop):- !, externalize_prop(O1L,C,O2L,Functor,Prop).
externalize_prop(_O1L,_C,O2L,Functor,Prop):-  select_prop(Functor,O2L,Prop),!.
%externalize_prop(_Obj,_C,_O2L,Functor,unk(Functor)). 
   
select_prop(Functor,O2L,Prop):- atom(Functor),!,member(Prop,O2L), functor(Prop,Functor,_).
select_prop(iz(Functor),O2L,Prop):- atom(Functor),!,member(iz(Prop),O2L), functor(Prop,Functor,_).
select_prop(giz(Functor),O2L,Prop):- atom(Functor),!,member(giz(Prop),O2L), functor(Prop,Functor,_).

%vis2D(Obj,size2D(H,V)):- vis2D(Obj,H,V).
%loc2D(Obj,loc2D(H,V)):- loc2D(Obj,H,V).

center_term(Obj,loc2D(H,V)):- center2G(Obj,H,V).

:- decl_pt(prop_g,hw_rat(is_object_or_grid,size2D)).
hw_rat(Obj,HV):- vis2D(Obj,OH,OV), HV is rationalize(OH/OV).

:- decl_pt(prop_g,colormass_object_count(is_grid  ,size2D)).
colormass_object_count(Obj,HV):- vis2D(Obj,OH,OV), HV is rationalize(OH/OV).

center2G(I,X,Y):- is_grid(I), !, grid_size(I,H,V),X is floor(H/2),Y is floor(V/2).
center2G(I,X,Y):- indv_props(I,center2G(X,Y)),!.
center2G(I,X,Y):- indv_props(I,iz(cenGX(X))),indv_props(I,iz(cenGY(Y))),!.


% Calculate the center of mass of a list of points
center2D(I,X,Y):- is_cpoint(I),!,I=(_-P),hv_point(X,Y,P),!.
center2D(I,X,Y):- is_point(I),!,hv_point(X,Y,I),!.
center2D(I,X,Y):- indv_props(I,center2D(XX,YY)),nonvar(XX),nonvar(YY),!,XX=X,YY=Y.
center2D(I,X,Y):- is_grid(I), !, grid_size(I,H,V),X is floor(H/2),Y is floor(V/2).
center2D([], inf, inf):-!.
center2D(I,X,Y):- \+ is_list(I),!, must_det_ll((globalpoints(I,Points),center2D(Points,XX,YY))),!,XX=X,YY=Y.
center2D(Points, CenterX, CenterY) :- maplist(center2D,Points,X,Y),
   length(Points,Count), sumlist(X,SumX),sumlist(Y,SumY),
    Count > 0, % Ensure there's at least one point to avoid division by zero
    CenterX is round(SumX / Count), CenterY is round(SumY / Count).

%center2D(I,X,Y):- indv_props(I,iz(cenXD(X))),indv_props(I,iz(cenYD(Y))),!.
%center2G(Obj,CentX,CentY):- vis2D(Obj,H,V), loc2D(Obj,X,Y),CentX is X + floor(H/2),CentY is Y + floor(V/2).


object_color(HV,C):- color(HV,C).

color(HV,C):- colors_cc(HV,[cc(C,_)]),!.
color(HV,multicolor(Stuff)):- colors_cc(HV,Stuff),!.

main_color(HV,C):- colors_cc(HV,[cc(C,_)|_]).
first_gpoint(HV,P):- globalpoints(HV,[P|_]).
last_gpoint(HV,P):- globalpoints(HV,PS),last(PS,P).
any_gpoint(HV,P):- globalpoints(HV,P).

rebuild_from_localpoints(Obj,NewObj):-
  localpoints_include_bg(Obj,Points),
  rebuild_from_localpoints(Obj,Points,NewObj).

rebuild_from_localpoints(Obj,WithPoints,NewObj):-
 get_vm(VM),
 must_det_ll((
  localpoints_include_bg(WithPoints,Points),

  localpoints_include_bg(Obj,PrevPoints),

  (Points=@=PrevPoints -> (NewObj=Obj) ;

 (rot2D(Obj,Rot),undo_p2(Rot,UnRot),
  loc2D(Obj,X,Y),%vis2D(Obj,H,V),  
  %obj_to_oid(Obj,ID,_Iv),
  %uncast_grid_to_object(Orig,Grid,NewObj),
  points_to_grid(Points,Grid),
  call(UnRot,Grid,UnRotGrid),
  localpoints_include_bg(UnRotGrid,LPoints),
  offset_points(X,Y,LPoints,GPoints),
  indv_props_list(Obj,Props),my_partition(is_prop_automatically_rebuilt,Props,_,PropsRetained),
  remObjects(VM,Obj),
  make_indiv_object(VM,[loc2D(X,Y),globalpoints(GPoints),localpoints(Points)|PropsRetained],GPoints,NewObj))))),
   verify_object(NewObj),
   assumeAdded(VM,NewObj),
  !.

:- style_check(-singleton).
/*
@TODO
?-  into_obj(t('1b60fb0c')>(trn+1)*in,X),blur_p2(rot90,X,Y),print_grid(Y).

   _____________________
  |                     |
  |       R R R R R     |
  |       R R R R R     |
  |           R     R R |
  |           R     R R |
  |           R R R R R |
  |           R     R R |
  |           R     R R |
  |       R R R R R     |
  |       R R R R R     |
   ---------------------
   _____________________
  |                     |
  |                     |
  |                     |
  | R R           R R   |
  | R R           R R   |
  | R R R R R R R R R   |
  | R R     R     R R   |
  | R R     R     R R   |
  |     R R R R R       |
  |     R R R R R       |
   ---------------------
   _____________________
  |                     |
  |       R R R R R     |
  |       R R R R R     |
  | R R       R   R R R |
  | R R       R   R R R |
  | R R R R R R R R R R |
  | R R     R R   R R R |
  | R R     R R   R R R |
  |     R R R R R R     |
  |     R R R R R R     |
   ---------------------

*/
blur_p2(P2,Obj,NewObj):-  
  into_obj(Obj,X),
  %center2G(X,XCH,XCV),
  
  call(P2,X,Y),!,
  globalpoints(X,XGP),
  globalpoints(Y,YGP),
  pct((
  vis2D(X,XH,XV),
  vis2D(Y,YH,YV),
  grid_size(X,XGridH,XGridV),
  grid_size(Y,YGridH,YGridV),
  % center2G(Y,YCH,YCV),
  loc2D(X,XX,XY),
  loc2D(Y,YX,YY))),
  print_grid(XGridH,XGridV,XGP),
  print_grid(YGridH,YGridV,YGP),
  append(XGP,YGP,XYGP),
  must_det_ll(rebuild_from_globalpoints(_VM,Obj,XYGP,NewObj)).
:- style_check(+singleton).

pct(G):- call(G), ppt(G).

%rebuild_from_glob alpoints(Obj,NewObj):-
%  globalpoints_in clude_bg(Obj,GPoints),
%  rebuild_from_l ocalpoints(Obj,GPoints,NewObj).

rebuild_from_globalpoints(VM,Obj,GPoints,NewObj):-
 must_det_ll((
  
  indv_props_list(Obj,Props),my_partition(is_prop_automatically_rebuilt,Props,_,PropsRetained),
  (var(VM) -> peek_vm(VM) ; true),
  
  %ppa(before=Obj),
  remObjects(VM,Obj),
  make_indiv_object(VM,PropsRetained,GPoints,NewObj),
  assumeAdded(VM,NewObj),
  %ppa(propsRetained=PropsRetained),
  %ppa(after=NewObj),
    verify_object(NewObj))),
 !.



is_prop_automatically_rebuilt(iz(birth(_))):-!,fail.
is_prop_automatically_rebuilt(Prop):- sub_term(CP,Prop),(is_color(CP);is_ncpoint(CP)),!.
is_prop_automatically_rebuilt(Prop):- compound(Prop),functor(Prop,F,_),(atom_contains(F,'color');atom_contains(F,'points')),!.
is_prop_automatically_rebuilt(Prop):-
 member(Prop,[cc(_),mass(_),mass(_),shape_rep(grav,_),rot2D(_),roll_shape(_),pen(_),grid_rep(_,_),grid_ops(_,_),
              iz(multicolored(_)),iz(chromatic(_,_)),
              iz(symmetry_type(_,_)),iz(stype(_)),iz(monochrome),
              globalpoints(_),localpoints(_)]),!.


%illegal_for_outlines(HV1,e,sw,w
%print_pairs(

dirs_ok0(n,e,ne). dirs_ok0(s,e,se).
dirs_ok0(n,w,nw). dirs_ok0(s,w,sw).
dirs_ok(N,E,NE):- dirs_ok0(N,E,NE).
dirs_ok(E,N,NE):- dirs_ok0(N,E,NE).

dir_not_ok(N,E,NE):- dirs_ok(N,E,NE),!,fail.
dir_not_ok(_,_,_).

%two_dirs(Dir1,Dir2):- select(Dir1,[n,s,e,w,sw,ne,se,nw],Rest),member(Dir2,Rest).
%two_dirs(Dir1,Dir2):- select(Dir1,[n,s,e,w],Rest),member(Dir2,Rest).
%two_dirs(Dir1,Dir2):-member(Dir1,[n,s,e,w]),member(Dir2,[n,s,e,w]).
two_dirs(Dir1,Dir2):-member(Dir1,[n,s,e,w,sw,ne,se,nw]),member(Dir2,[n,s,e,w,sw,ne,se,nw]).

find_outline(X):-
  X = 
  [[black,green,green,black],
   [green,black,black,green],
   [green,black,black,green],
   [black,green,green,black]].

find_outline(X):-
  X = 
  [[green,green,green,green],
   [green,black,black,green],
   [green,black,black,green],
   [green,green,green,green]].

:- arc_history(test_find_outline).
test_find_outline:- clsmake, forall(find_outline1,true).
find_outline1:- arc_grid(_,Grid), dash_chars, once(find_outline1(Grid)).
find_outline1(Grid):- find_outline_pred(find_outlines_fast(_),Grid).



%find_outline_path:- clsmake, forall(find_outline_path1,true).
%find_outline_path1:- arc_grid(Grid), dash_chars, find_outline_pred(find_outline_sols(find_outline_path),Grid).

find_outlines(Grid):- find_outline_pred(find_outlines3,Grid).
%find_outline_paths(Grid):- find_outline_pred(find_outline_sols(find_outline_path),Grid).

fail_over_time(Secs,Goal,Else):- 
 locally(set_prolog_flag(runtime_must,keep_going),
   locally(nb_setval(cant_rrtrace,t),
    notrace(catch(call_with_time_limit(Secs,Goal),time_limit_exceeded,(Else,fail))))).
fail_over_time(Secs,Goal):- fail_over_time(Secs,Goal,true).

grid_of(LO,LO,[]):- is_grid(LO),!.
grid_of(LO,O,H):- arg(1,LO,O),arg(2,LO,H).
find_outline_pred(P3,Grid):- is_grid(Grid),!,
   grid_to_tid(Grid,ID),   
   grid_size(Grid,H,V),
   writeln(ID),
   set_current_test(ID),
   fail_over_time(6,call(P3,Grid,SOLS,LeftOver),
     (writeln("TOO SLOWWWW"=P3),
      print_grid(H,V,Grid),
      writeln("TOO SLOWWWW"=P3))),
   append(SOLS,[leftover(LeftOver)],SOLSL),
   dash_chars,
   (SOLS==[]-> ((writeln("NOTHING FROM"=P3),ignore((fail,catch((print_grid(H,V,ID,Grid),writeln("NOTTAAA"=P3),!,fail),_,fail)))));
   member(OL,SOLSL),
   (OL=leftover(LeftOver)
    -> (nl,
      ignore((nonvar(LeftOver),nl,write(leftover=P3),print_grid(H,V,LeftOver))),
      write('from '),write(P3),print_grid(H,V,Grid))
    ;((grid_of(OL,O,Hits),once((mass(O,M))),
     nl,write(solution(Hits,M)), print_grid(H,V,O))))).
find_outline_pred(ID):- io_side_effects, into_grid(ID,Grid),find_outlines(Grid).

%arc_grid(Nth,X):- (var(Nth)->Nth=1;true), offset(Nth,arc_grid(X)).
%find_outline(Grid,Result,Grid4):- is_grid(Grid),!,grid_to_points(Grid,Points),!,find_outline(Points,Result,Grid4).

/*
find_outline(Grid,Sol,Rest):-
  find_outlines3(Grid,Sols,Rest),!,
  member(Sol,Sols).
  */
fix_rest(Options,Rest0,Sols0,Rest,Sols):- 
  select(C-HV,Rest0,Rest1),  
  \+ (is_adjacent_point(HV,_,TVH),member(C-TVH,Rest1)),
  select(sol(O,Hits),Sols0,Sols1),
  is_adjacent_point(HV,_,HV2),member(C-HV2,O),!,
 fix_rest(Options,Rest1,[sol([HV|O],[HV|Hits])|Sols1],Rest,Sols).
fix_rest(_Options,Rest,Sols,Rest,Sols).


find_outlines_fast(Options,Grid,Sols,Rest):-
 localpoints(Grid,Points),
 point_groups_by_color(colormass,Groups,Points,Rest2), !,
% mapgroup(print_grid(H,V),Groups),
 find_group_outlines(Options,Groups,Sols,Rest1),
 append(Rest1,Rest2,Rest).

find_group_outlines(Options,[G1|G2],Sols,Rest):-!,
  find_group_outlines_fix_rest(Options,G1,Sols1,Rest1),
  find_group_outlines(Options,G2,Sols2,Rest2),
  append(Sols1,Sols2,Sols), append(Rest1,Rest2,Rest).
find_group_outlines(_,[],[],[]).

find_group_outlines_fix_rest(Options,G,Sols,Rest):-
  find_outlines(Options,G,Sols0,Rest0),!,
  fix_rest(Options,Rest0,Sols0,Rest,Sols).


find_outlines3(Grid,Solutions,Rest):- 
  as_localpoints(Grid,Points),
  find_outlines([perfect],Points,Solutions,Rest).

find_outlines(Options,Grid,[Sol|Solutions],Rest):-
  find_outlinez(Options,Grid,Sol,More),!,
  find_outlines(Options,More,Solutions,Rest).
find_outlines(_,Rest,[],Rest).
  
as_localpoints(Grid,Points):- is_grid(Grid),!,localpoints(Grid,Points).
as_localpoints(Points,Points).

:- discontiguous(find_outlinez/4).

three_points(C,Grid2,HV1,Dir1,HV2,Dir2,HV3,Grid4):-
  is_adjacent_point(HV1,Dir1,HV2),select(C-HV2,Grid2,Grid3),
  %w_in_90(Dir1,Dir2),
  is_adjacent_point(HV2,Dir2,HV3),select(C-HV3,Grid3,Grid4).
  
find_outlinez([_Perfect|_],Grid,sol(ResultO,[]),LeftOver):-  !, fail, % Perfect = perfect, 
  as_localpoints(Grid,Points),
  select(C-HV1,Points,Grid2),
  w_in_n(Dir1,Dir2),
  three_points(C,Grid2,HV1,Dir1,HV2,Dir2,HV3,Grid4),
 \+ (is_adjacent_point(HV2,_,HV), member(C-HV,Grid4)),
  outline_only2(HV1,C,HV3,[C-HV1|Grid4],Result,LeftOver), [C-HV1,C-HV2|Result] = ResultO, Result=[_,_,_|_].
  

outline_only2(Exit,_,HV2,Grid,[],Grid) :- HV2==Exit,!.
outline_only2(Exit,C,HV2,Grid2,[C-HV2,C-HV3|Found],LeftOver) :-
  w_in_n(Dir1,Dir2),
  three_points(C,Grid2,HV2,Dir1,HV3,Dir2,HV4,Grid4),
  \+ (is_adjacent_point(HV2,_,HV), member(C-HV,Grid4)),
  outline_only2(Exit,C,HV4,Grid4,Found,LeftOver).


nav_three_points(C,Grid2,HV1,Dir1,HV2,Dir2,HV3,Grid4):-
  is_adjacent_point(HV1,Dir1,HV2), select(C-HV2,Grid2,Grid3),
  after_dir_check(Dir1,Dir2,Dir3),
  is_adjacent_point(HV2,Dir2,HV3), select(C-HV3,Grid3,Grid4),
  (\+ is_adjacent_point(HV,Dir3,HV), member(C-HV,Grid4)).

outline_nav(Exit,_,_,HV2,Grid,[],Grid) :- HV2==Exit,!.
outline_nav(Exit,C,Dir1,HV2,Grid2,[C-HV2,C-HV3|Found],LeftOver) :-
  nav_three_points(C,Grid2,HV2,Dir1,HV3,Dir2,HV4,Grid4),
  outline_nav(Exit,C,Dir2,HV4,Grid4,Found,LeftOver).

w_in_n(_,_).

find_outlinez(_,Grid,sol(ResultO,[Hits]),LeftOver):-  !,
  localpoints(Grid,Points),  
  select(C-HV1,Points,Grid2),  
  w_in_90(Dir1,Dir2),
  three_points(C,Grid2,HV1,Dir1,HV2,Dir2,HV3,Grid4),
  \+ (is_adjacent_point(HV2,_,HV),member(C-HV,Grid4)),
  (outline_only(HV1,C,HV3,[C-HV1|Grid4],Result,LeftOver,0,Hits), [C-HV1,C-HV2|Result] = ResultO, Result=[_,_,_|_]).

find_outlinez(_Opts,Grid,sol(ResultO,[]),LeftOver):- 
  localpoints(Grid,Points),
  select(C-HV1,Points,Grid2),  
  w_in_90(Dir1,Dir2),
  nav_three_points(C,Grid2,HV1,Dir1,HV2,Dir2,HV3,Grid4),
  ((outline_nav(HV1,C,Dir2,HV3,[C-HV1|Grid4],Result,LeftOver), [C-HV1,C-HV2|Result] = ResultO,Result=[_,_,_,_|_])).


outline_only(Exit,_,HV2,Grid,[],Grid,N,N) :- HV2==Exit,!.

outline_only(Exit,C,HV2,Grid2,[C-HV2,C-HV3|Found],LeftOver,N,O) :-
  w_in_n(Dir1,Dir2),
  three_points(C,Grid2,HV2,Dir1,HV3,Dir2,HV4,Grid4),
 (\+ (is_adjacent_point(HV2,_,HV), member(C-HV,Grid4)) ->
   (M is N -1,outline_only(Exit,C,HV4,Grid4,Found,LeftOver,M,O));
   (M is N +1,outline_onlya(Exit,C,HV4,Grid4,Found,LeftOver,M,O))).

outline_onlya(Exit,C,HV2,Grid2,[C-HV2,C-HV3|Found],LeftOver,N,O) :-
  w_in_n(Dir1,Dir2),
  three_points(C,Grid2,HV2,Dir1,HV3,Dir2,HV4,Grid4),
 (\+ (is_adjacent_point(HV2,_,HV), member(C-HV,Grid4)) ->
   (M is N -1,outline_onlya(Exit,C,HV4,Grid4,Found,LeftOver,M,O));
   (M is N +1,outline_onlyb(Exit,C,HV4,Grid4,Found,LeftOver,M,O))).

outline_onlyb(Exit,C,HV2,Grid2,[C-HV2,C-HV3|Found],LeftOver,N,O) :-
  w_in_n(Dir1,Dir2),
  three_points(C,Grid2,HV2,Dir1,HV3,Dir2,HV4,Grid4),
 (\+ (n_s_e_w(Dir),is_adjacent_point(HV2,Dir,HV), member(C-HV,Grid4)) ->
   (M is N -1,outline_only(Exit,C,HV4,Grid4,Found,LeftOver,M,O))).





is_jagged(Points):- member(C-HV,Points),
  findall(Dir,(is_adjacent_point(HV,Dir,HV2),Dir\==c,member(C-HV2,Points)),L),L=[_,_],!.

solidity(Points,Res):- 
  solidness(Points,2,inf,HVNs),
  findall(N=C,
    (between(2,8,N),findall(_,member(N-_HV,HVNs),L),length(L,C)),Res).



solidness(Points,Lo,H,Res):- 
 findall(N-HV,
  (member(C-HV,Points),findall(Dir,(is_adjacent_point(HV,Dir,HV2),Dir\==c,
   member(C-HV2,Points)),L),length(L,N1),N is N1-1,between(Lo,H,N)),Res).

solidness_no_diag(Points,Lo,H,Res):- 
 findall(N-HV,
  (member(C-HV,Points),findall(Dir,(is_adjacent_point(HV,Dir,HV2),\+ is_diag(Dir),Dir\==c,
   member(C-HV2,Points)),L),length(L,N1),N is N1-1,between(Lo,H,N)),Res).

solidness_is_diag(Points,Lo,H,Res):- 
 findall(N-HV,
  (member(C-HV,Points),findall(Dir,(is_adjacent_point(HV,Dir,HV2), is_diag(Dir),
   member(C-HV2,Points)),L),length(L,N1),N is N1+1,between(Lo,H,N)),Res).

%guess_shape(GridH,GridV,G,LocalGrid,I,O,N,H,V,Colors,Points,walls_thick(1)):- walls_thick1(G).
/*
guess_shape(GridH,GridV,GridIn,Grid,I,E,N,H,V,Colors,Points,subI(InvS)):- E>2, fail,
   once((I.loc2D=loc2D(LocX,LocY),
   make_grid(H,V,Grid),
   calc_add_points(LocX,LocY,Grid,Points),
   compute_shared_indivs(Grid,InvS))),!,
   InvS=[_,_|_].
*/


find_outline_sols(P5,Grid,[Sol|Solutions],Rest):-
  enum_colors(C),
  find_outline_pred_call(P5,C,Grid,Sol,More),!,
  find_outline_sols(P5,More,Solutions,Rest).
find_outline_sols(_,Rest,[],Rest).

find_outline_pred_call(P5,C,Grid,ResultO,LeftOverO):-
  call(P5,C,3,Grid,ResultO,LeftOverO).

find_outline_path2(C,L,Grid,sol(ResultO,[]),LeftOverO):- 
  localpoints(Grid,Points),
  my_partition(=(C-_),Points,Grid1,Others),
  select(C-HV1,Grid1,Grid2),  
  nav_three_points(C,Grid2,HV1,Dir1,HV2,Dir2,HV3,Grid4),
  %print_grid([blue-HV1,yellow-HV2,red-HV3|Grid4]), 
  (((outline_nav(HV1,C,Dir2,HV3,[C-HV1|Grid4],Result,LeftOver), [C-HV1,C-HV2|Result] = ResultO,once(length(Result,M)),M>L)
   ;(outline_nav(HV3,C,Dir1,HV1,[C-HV3|Grid4],Result,LeftOver), [C-HV3,C-HV2|Result] = ResultO,once(length(Result,M)),M>L))),
  append(Others,LeftOver,LeftOverO).


object_nm_grid(Obj,SSP):-
  vis2D(Obj,H,V),
  localpoints(Obj,LPoints),
  points_to_grid(H,V,LPoints,GridIn),
  grid_to_gridmap(GridIn,SSP),
  print_grid(SSP).

fast_arc:- fail.

%neighbor_map
grid_to_gridmap(GridIn,GridIn):- fast_arc,!.
grid_to_gridmap(GridIn,GridON):- 
  neighbor_map(GridIn,GridO),
  mapgrid(only_neib_data,GridO,GridON),
  %subst_1L(['*'-'.','~'-'red','+'-'blue','.'-'yellow'],GridON,SSP),
  nop((subst_1L(['*'-'.'],GridON,_SSP))).

object_to_nm_points(Obj,NPoints):-
  object_nm_grid(Obj,SSP),
  localpoints(SSP,NPoints),!.

:- style_check(-singleton).
:- style_check(-discontiguous).

cc_fg_count(Colors,Len):- include(\=(cc(_,0)),Colors,NonZero),my_maplist(arg(1),NonZero,Colorz),include(is_real_fg_color,Colorz,FGC),length(FGC,Len).
cc_bg_count(Colors,Len):- include(\=(cc(_,0)),Colors,NonZero),my_maplist(arg(1),NonZero,Colorz),include(is_real_bg_color,Colorz,FGC),length(FGC,Len).


guess_shape(GridH,GridV,GridIn,LocalGrid,I,Empty,N,H,V,[cc(Black,_)|Rest],Points, bfc(FGB)):-  Rest == [], ((is_bg_color(Black);Black==wbg)->FGB=bg;FGB=fg).
%guess_shape(GridH,GridV,GridIn,LocalGrid,I,Empty,N,H,V,[cc(Black,_)|Rest],Points, fbc(FGB)):- Rest == [], ((is_fg_color(Black);Black==fg)->FGB=fg;FGB=bg).
%guess_shape(GridH,GridV,GridIn,LocalGrid,I,0,N,H,V,Colors,Points,view_sq):- H == V.%guess_shape(GridH,GridV,GridIn,LocalGrid,I,I,N,H,V,Colors,Points,rectangle):- H>1, V>1.
% TODO guess_shape(GridH,GridV,GridIn,LocalGrid,I,_,N,H,V,Colors,Points,chromatic(Len,BGLen)):- cc_fg_count(Colors,Len),cc_bg_count(Colors,BGLen).
 
%guess_shape(GridH,GridV,GridIn,LocalGrid,I,_,N,H,V,Colors,Points,monochrome):- Colors=[_],length(Colors,Len).
guess_shape(GridH,GridV,GridIn,LocalGrid,I,0,9,3,3,Colors,Points,keypad).

%guess_shape(GridH,GridV,GridIn,LocalGrid,I,0,N,H,V,Colors,Points,filltype(solid)):- N > 1.
%guess_shape(GridH,GridV,GridIn,LocalGrid,I,Empty,N,H,V,Colors,Points,filltype(nonsolid)):- N > 1, Empty > 0.
%guess_shape(GridH,GridV,GridIn,LocalGrid,I,O,N,H,V,Colors,Points,polygon):- O\==0,once(H>1;V>1).

guess_shape(GridH,GridV,GridIn,LocalGrid,I,_,N,H,V,Colors,Points,R):- N>=2, iz_symmetry(GridIn,R).

guess_shape(GridH,GridV,GridIn,LocalGrid,I,Empty,N,H,V,Colors,Points,diagonal(u)):- Empty>0, rollD(GridIn,GridInRolled),my_maplist(=(E),GridInRolled).
guess_shape(GridH,GridV,GridIn,LocalGrid,I,Empty,N,H,V,Colors,Points,diagonal(d)):- Empty>0, rollDR(GridIn,GridInRolled),my_maplist(=(E),GridInRolled).

guess_shape(GridH,GridV,GridIn,LocalGrid,I,E,N,H,V,Colors,Points,stype(Keypad)):- 
  guess_shape_poly(I,E,N,H,V,Colors,Points,Keypad).

guess_shape_poly(I,0,1,1,1,Colors,Points,dot):-!.
guess_shape_poly(I,_,_,_,_,Colors,[Point],dot):-!.
guess_shape_poly(I,E,N,1,GridV,Colors,Points,column).
guess_shape_poly(I,E,N,GridH,1,Colors,Points,row).

guess_shape_poly(I,0,N,N,1,Colors,Points,hv_line(h)):- N > 1.
guess_shape_poly(I,0,N,1,N,Colors,Points,hv_line(v)):- N > 1.
guess_shape_poly(I,0,N,H,V,Colors,Points,rectangulator):- N>1, H\==V,!.
guess_shape_poly(I,0,N,H,V,Colors,Points,square):- N>1,H==V,!.


%guess_shape(GridH,GridV,GridIn,LocalGrid,I,O,N,H,V,Colors,Points,solidity(A)):- solidity(Points,A).
%guess_shape(GridH,GridV,GridIn,LocalGrid,I,O,N,H,V,Colors,Points,Solid):- (is_jagged(Points)->Solid=jagged(true);Solid=jagged(false)).
guess_shape(GridH,GridV,GridIn,LocalGrid,I,_,N,H,V,Colors,Points,outl2):- H>2,V>2,N>4,
  once((grid_to_gridmap(GridIn,GridON), \+ member('*',GridON), member('.',GridON))).
  
guess_shape(GridH,GridV,GridIn,LocalGrid,I,_,N,H,V,Colors,Points,outline(SN)):- H>2,V>2,N>4,
  (find_outlines3(Points,Sol,Rest)->(length(Sol,SN),SN>0,length(Rest,RN))),!.

guess_shape(GridH,GridV,GridIn,LocalGrid,I,_,N,H,V,[cc(Color,_)],Points,outl):- H>2,V>2, N>7,add_borders(Color,GridIn,LocalGrid).

guess_shape(GridH,GridV,GridIn,LocalGrid,I,O,N,H,V,Colors,Points,fp(NPoints)):- fail,
  grid_to_gridmap(GridIn,GridON),
  subst_1L(['~'-'red','+'-'blue','.'-'yellow'],GridON,SSP),
  localpoints(SSP,NPoints),!.
  %clumped(ON,COO),!,my_maplist(arg(1),COO,PAT).
  %points_to_grid(H,V,FGridO,RGridO).

:- style_check(+singleton).

flipSym_checks(Rot90,GridIn):-
  copy_term(GridIn,G,_),!,
  flipSym(Rot90,G).

%iz_symmetry(GridIn,H,V,N,R):- N == 2, H==1, 
iz_symmetry(GridIn,R):-
  (flipSym_checks(SN,GridIn)*->R=SN;R=symmetry_type(_ALL_TODO,false)).

symmetric_types(Any,QQ):- into_grid(Any,Grid), 
  findall(Q,(flipSym_checks(Q,Grid)),QQ).
/*
symmetric_types(Any,QQ):- into_grid(Any,Grid), 
  findall(Q,iz_symmetry(Grid,Q),QQ), QQ\==[],!.
*/

:- meta_predicate(flipSym(-,+)).

  


%then_sym(Dif,I,O):- flipSym(Dif,I),!,I=O.


%flipSym(Rot90,Grid):- (flipSym(flipH,Grid),flipSym(flipV,Grid)),   (flipSym(rot90,Grid) -> (Rot90=full ; Rot90 = sym_hv) ; Rot90 = sym_hv).
flipSym(Rot90,Obj):- into_grid(Obj,Grid),
                     (var(Rot90)->rot_p_plus_trim(Rot90);true),
                     once((grid_call(Rot90,Grid,LocalGridM),!,Grid=@=LocalGridM)).
%flipSym3(sym_hv,Grid):- !, flipSym3(flipH,Grid),flipSym3(flipV,Grid).
%flipSym3(  full,Grid):- !, flipSym3(rot90,Grid),flipSym3(sym_hv,Grid).
%flipSym( Rot90,Grid):-  grid_call_unbound_p1(rot_p2,Rot90,Grid,LocalGridM),!,Grid=@=LocalGridM.
%flipSym3( Rot90,Grid):-  grid_call(Rot90,Grid,LocalGridM),!,Grid=@=LocalGridM.

/*
grid_call_unbound_p1(P1,Rot90,GridIn,GridOut):- var(Rot90),!,call(P1,Rot90),grid_call_unbound_p1(P1,Rot90,GridIn,GridOut).
grid_call_unbound_p1(P1,symmetry_after(A,B),GridIn,GridOut):- !, grid_call(A,GridIn,GridM), grid_call_unbound_p1(P1,B,GridM,GridOut).
grid_call_unbound_p1(P1,[A],GridIn,GridOut):- !, grid_call_unbound_p1(P1,A,GridIn,GridOut).
grid_call_unbound_p1(P1,[A|B],GridIn,GridOut):- !, grid_call_unbound_p1(P1,A,GridIn,GridM), grid_call_unbound_p1(P1,B,GridM,GridOut).
*/
grid_call_unbound_p1(_P1,Call,GridIn,GridOut):- grid_call(Call,GridIn,GridOut).

into_true_false(P0,TF):- (call(P0)->TF=true;TF=false).
rot_p_plus_trim(symmetry_after(trim_to_rect,Type,_)):- rot_p_plus_full(Type).
rot_p_plus_trim(symmetry_after(trim_outside,Type,_)):-  rot_p_plus_full(Type).
rot_p_plus_trim(symmetry_type(Type,_)):- rot_p_plus_full(Type).

%symmetry_after(A,B,I,O):- grid_call_alters(A,I,M), grid_call(B,M,O).
symmetry_after(P2,Type,TF,I,M):- grid_call(P2,I,M),!,I\=@=M, symmetry_type(Type,TF,M).
symmetry_type(R,TF,I,O):- symmetry_type(R,TF,I),!,O=I.

symmetry_type(Var,TF,I):- var(Var),!,rot_p_plus_full(Var),symmetry_type(Var,TF,I).
symmetry_type(full,TF,I):- !,flipSym_checks(rot90,I),!,symmetry_type(sym_hv,TF,I).
symmetry_type(sym_hv,TF,I):- !, flipSym_checks(flipH,I),!,symmetry_type(flipV,TF,I).
symmetry_type(sym_h_xor_v,TF,I):- !, symmetry_type(flipH,TF1,I), symmetry_type(flipV,TF2,I), !, into_true_false(TF1\=@=TF2,TF).
symmetry_type(R,TF,I):- grid_call(R,I,O)->into_true_false(I=@=O,TF).

rot_p_plus_full(sym_hv). rot_p_plus_full(full). rot_p_plus_full(sym_h_xor_v). 
rot_p_plus_full(P):- rot_p2(P).

%rot_p2(flipDH). % rot_p2(flipDV). 
rot_p2(flipD). 
rot_p2(rot90). rot_p2(rot270). 
rot_p2(flipH). rot_p2(flipV).
rot_p2(rot180). rot_p2(flipDHV). 
rot_p2(rollD). %rot_p2(rollDR).



%rot_p(P):- rot_p1(P).
%rot_p(and(trim_to_rect,P)):- rot_p1(P).
%rot_p(and(into_bicolor,P)):- rot_p2(P).

%rot_p1(and(into_monochrome,P)):- rot_p2(P).


:- dynamic(arc_cache:individuated_cache/3).
:- retractall(arc_cache:individuated_cache(_,_,_,_)).
:- dynamic(is_why_grouped_g/4).
:- retractall(is_why_grouped_g(_,_,_,_)).

call_i1(M,O,V):- M=..[F|Args],!,MO=..[F,O|Args], \+ missing_arity(MO,1),call(MO,V).
assert_i1(M,O,V):- M=..[F|Args],!,append(Args,[V],AV),MOV=..[F,O|AV],asserta_if_new(MOV).

o_m_v(O,M,V):- is_grid(O),!,call_i1(M,O,V).
o_m_v(O,M,V):- is_object(O),!,(indv_prop_val(O,M,V)*->true;call_i1(M,O,V)).
o_m_v(O,M,V):- is_dict(O),!,get_dict(M,O,OOV),get_oov_value(OOV,V).
o_m_v(S,M,V):- structure_type_data(S,Type,O),!,call(Type,O,M,V).
o_m_v(O,M,V):- must_det_ll((id_to_o(O,I),O\=@=I)),!,o_m_v(I,M,V).

% *->true;(\+ is_dict(O)->o_m_v(O,K,V))).

is_structure_type(color_set).
structure_type_data(S,Type,O):- compound(S),S=..[Type,O],is_structure_type(Type),!.
structure_type_data(S,Type,O):- is_list(S),Type=list_of(_),S=O.
inv(I,M,O):- call(M,I,O).

color_set(CsIn,append(CsOut),Result):- !, append_sets(CsIn,CsOut,Result).
color_set(CsIn,add(CsOut),Result):- !, append_sets(CsIn,CsOut,Result).
color_set(CsIn,rem(CsOut),Result):- include(not_in(CsOut),CsIn,Result).

list_of(_Elem,CsIn,Memb,Result):- color_set(CsIn,Memb,Result).

id_to_o(O,I):- atomic(O),gid_to_grid(O,I),!.
id_to_o(O,I):- g2o(O,I),!.
id_to_o(O,I):- compound(O), O=(_>_),into_gridoid(O,I),!.

set_o_m_v(O,M,V):- is_dict(O),!, nb_set_dict(M,O,V).
set_o_m_v(O,N,V):- is_rbtree(O),!, (nb_rb_get_node(O,N,Node)->nb_rb_set_node_value(Node,V);nb_rb_insert(O,N,V)).
set_o_m_v(O,M,V):- is_grid(O),!,assert_i1(M,O,V).
set_o_m_v(O,M,V):- is_object(O),!,(missing_arity(M,1)->add_prop(O,M,V);assert_i1(M,O,V)).
set_o_m_v(S,M,V):- structure_type_data(S,Type,O),!,call(Type,O,set(S,M),V).
set_o_m_v(O,M,V):- must_det_ll((id_to_o(O,I),O\=@=I)),!,arc_setval(I,M,V).


:- multifile(dictoo:dot_overload_hook/4).
:- dynamic(dictoo:dot_overload_hook/4).
:- module_transparent(dictoo:dot_overload_hook/4).

dictoo:dot_overload_hook(M,Obj,Memb,Value):- 
 findall(i(M,Obj,Memb,Value),
 ((o_m_v(Obj,Memb,Value)*->true;
 ( dmsg(called(dictoo:dot_overload_hook(M,Obj,Memb,Value))),fail))),List), List\==[],!,
  member(i(M,Obj,Memb,Value),List).

:- multifile(dictoo:is_dot_hook/4).
:- dynamic(dictoo:is_dot_hook/4).
:- module_transparent(dictoo:is_dot_hook/4).

%dictoo:is_dot_hook(_,_,_,_):-!.
is_hooked_obj(Self):- is_dict(Self),!,fail.
is_hooked_obj(Self):- is_object(Self),!.
is_hooked_obj(Self):- is_grid(Self),!.
is_hooked_obj(Self):- is_list(Self),!.
is_hooked_obj(Self):- structure_type_data(Self,_,_),!.
is_hooked_obj(Self):- g2o(Self,_).
is_hooked_obj(Self):- gid_to_grid(Self,_),!.
dictoo:is_dot_hook(_M,_Self,Func,_Value):- Func==program,!,fail.
dictoo:is_dot_hook(_M,Self,_Func,_Value):- is_hooked_obj(Self),!.
dictoo:is_dot_hook(M,Self,Func,Value):- M\==thread_util,M\==shell, \+ is_dict(Self),
  (is_vm(Self)->nop(dmsg(called(dictoo:is_dot_hook(M,vm,Func,Value))));dmsg(called(dictoo:is_dot_hook(M,Self,Func,Value)))),fail.



:- include(kaggle_arc_footer).

