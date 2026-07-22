/*
  this is part of (H)MUARC  https://logicmoo.org/xwiki/bin/view/Main/ARC/

  This work may not be copied and used by anyone other than the author Douglas Miles
  unless permission or license is granted (contact at business@logicmoo.org)
*/






merge_rules(TestID,common, RulesList, NewRulesList):- !,
 must_det_ll((
  %unnumbervars2a(RulesList0,RulesList),
  var(NewRulesList),
  is_list(RulesList),
  gensym(newTestID, GenSym),
  forall(member(R, RulesList), assert_ac_db(Gensym, R)),
  set_of_changes(GenSym, compute_scene_change_pass3a(GenSym)),
  set_of_changes(GenSym, compute_scene_change_pass3b(GenSym, correct_antes1)),
  set_of_changes(GenSym, compute_scene_change_pass3b(GenSym, correct_antes2)),
  set_of_changes(GenSym, compute_scene_change_pass3b(GenSym, correct_antes3)),
  set_of_changes(GenSym, compute_scene_change_pass3b(GenSym, correct_antes3z)),
  set_of_changes(GenSym, compute_scene_change_pass3b(GenSym, correct_antes4)),
  set_of_changes(GenSym, compute_scene_change_pass3c(GenSym)),
  compute_scene_change_pass3d(GenSym),
  ignore(compute_scene_change_pass3e(GenSym)),
  ignore(compute_scene_change_pass3f(GenSym)),
  set_of_changes(GenSym, compute_scene_change_pass3b(GenSym, correct_antes4a)),
  set_of_changes(GenSym, compute_scene_change_pass3b(GenSym, correct_antes4b)),
  set_of_changes(GenSym, compute_scene_change_pass3b(GenSym, correct_antes5)),
  set_of_changes(GenSym, compute_scene_change_pass3b(GenSym, correct_antes6)),
  set_of_changes(GenSym, compute_scene_change_pass3c(GenSym)),
  compute_scene_change_pass3d(GenSym),
  ignore(compute_scene_change_pass3e(GenSym)),
  ignore(compute_scene_change_pass3f(GenSym)),
  %ignore(compute_scene_change_pass3g(GenSym)),
  forall(retract(arc_cache:trans_rule_db(GenSym,E,C,P)),assert_rule_db(TestID,E,C,P)),
  %set_of_updates(GenSym, compute_scene_change_pass3d(GenSym)),
  true)),
  R = ac_unit(TestID, Ctx, P, PSame),
  findall(R, retract(ac_db_unit(Gensym, Ctx, P, PSame)), NewRulesList).


merge_example_rules(TestID, ExampleNum, RulesList, NewRulesList):-
   merge_example_rules1(TestID, ExampleNum, RulesList, MidRulesList),
   merge_example_rules2(TestID, ExampleNum, MidRulesList, NewRulesList).


merge_example_rules2(_TestID, _ExampleNum, RulesList, RulesList):- pp(merge_example_rules2(RulesList)),!.

merge_example_rules1(TestID, ExampleNum, RulesList, NewRulesList):-
  identical_props(RulesList,P),
  LR = lhs,
  each_has_more_than_one_non_assumable(LR,P,RulesList),!,
  marginalize_prop(TestID,ExampleNum,LR, P, RulesList, RulesListM),!,
  merge_example_rules1(TestID,ExampleNum, RulesListM, NewRulesList).

merge_example_rules1(_TestID,ExampleNum, RulesList, RulesList):- ExampleNum \== common,!.



same_rules(R1,R2):-
  ctx_p_conds(R1, _Ctx1, P1, PSame1),
  ctx_p_conds(R2, _Ctx2, P2, PSame2),!,
  P1=@=P2,PSame1=@=PSame2,!.
/*
compute_scene_change_pass3d(RulesList, IO_-PU):-
  findall(ac_unit(RulesList, IO_, PU, PSame),ac_unit(RulesList, IO_, PU, PSame),SimRules),
  maplist(tc_arg(3),SimRules,SimRulesA3),
  maplist(tc_arg(4),SimRules,SimRulesA4),flatten(SimRulesA4).
  */

compute_scene_change_pass3a(RulesList, IO_-P):-
  Why = pass3a,
  must_det_ll((
   findall(PSame, ac_db_unit(RulesList, IO_, P, PSame), ListF),
   append_LR(ListF, List),
   %\+ is_task_rule(P),
   dash_chars,
   pp_ilp(IO_-P=ListF),
   (( true;  \+ is_task_rule_head(P))->m_unifiers(lhs,List,ListR);m_unifiers(rhs,List,ListR)))),
   warn_and_fail_if_empty(ListR),
   pred_intersection(=@=, List, ListR, _, _, Missing, New),
   pp_ilp(listR(IO_-P)=ListR),
   update_accompany_changed_db_now(Why, RulesList, IO_, P, iz(info(reduced(Why, Missing->New))), ListR).
compute_scene_change_pass3a(_,_).

compute_scene_change_pass3b(RulesList, P4, IO_-P):-
  findall_vset_R(PSame, ac_db_unit(RulesList, IO_, P, PSame), SameS1),
  Why = P4-pass3,
  my_partition(is_debug_info,SameS1,Skip,SameS),
  call(P4, RulesList, IO_, P, SameS, KeptS),
  if_t(warn_and_fail_if_empty(KeptS),
  if_t(SameS\=@=KeptS,
     (append(KeptS,Skip,Kept),
      intersection(SameS, KeptS, _, Missing, New),
      update_accompany_changed_db_now(Why, RulesList, IO_, P, iz(info(reduced(Why, Missing->New))), Kept)))).
compute_scene_change_pass3b(_,_,_).

update_accompany_changed_db_now(P4, RulesList, IO_, P, More, Kept):- More\=iz(info(reduced(_, ([]->[])))),
  append_LR([More, Kept], MoreKept),
  if_t(warn_and_fail_if_empty(MoreKept),update_accompany_changed_db(P4, RulesList, IO_, P, MoreKept)), !.
update_accompany_changed_db_now(P4, RulesList, IO_, P, _, Kept):-
  if_t(warn_and_fail_if_empty(Kept),update_accompany_changed_db(P4, RulesList, IO_, P, Kept)).

compute_scene_change_pass3c(_,_):-!.
compute_scene_change_pass3c(RulesList, IO_-P):-
  ac_db_unit(RulesList, IO_, P, PSame1),
  my_partition(is_debug_info,PSame1,Skip,PSame),
  findall(DSame,
     (ac_db_unit(RulesList, IO_, DP, DSame),
      same_name_and_value(DP,P),at_least_one_name_overlap(DSame,PSame)),
   SL),  SL = [_,_|_],
  common_members(SL,Commons),
  forall((ac_db_unit(RulesList, IO_, DP, DSame), same_name_and_value(DP, P)),
      (intersection(DSame,Commons,_,Kept,_),
        ignore((warn_and_fail_if_empty(Kept),
          append(Kept, Skip, Save),
          warn_and_fail_if_empty(Save),
          update_accompany_changed_db(pass3c, RulesList, IO_, P, Save))))),

  print_scene_change_rules_if_different(pass3c, ac_db_unit, RulesList),
  !.
compute_scene_change_pass3c(_,_).


compute_scene_change_pass4(RulesList):-
   nop(compute_scene_change_pass3(RulesList)), !.

set_of_ps(RulesList, Ps):-
  ((findall_vset_R(Ctx-P1,
    ((ac_db_unit(RulesList, IO_, P, _)
     %;ensure_props_change(RulesList, IO_, P)
     ;( pass2_rule(RulesList, IO_, P, _))),
    % % functor(P,F,A),F
    io_to_cntx(IO_,Ctx),into_rhs(P,P1)), Ps))).

set_of_changes(RulesList, P1):-
 ((
  set_of_ps(RulesList, Ps),
  why_last(P1,Why),
  my_exclude(is_functor(add_dependant_scenery),Ps,PsP1),
  %findall_vset_R(IO_-P, (ac_rules(RulesList, IO_, P, _)), Ps),
  maplist(P1, PsP1),
  print_scene_change_rules_if_different(Why, ac_db_unit, RulesList))).

set_of_updates(RulesList, P1):-
 ((
  set_of_ps(RulesList, Ps),
  why_last(P1,Why),
  maplist(make_as_update_head,Ps,PsU),variant_list_to_set(PsU,PUs),
  maplist(P1, PUs),
  print_scene_change_rules_if_different(Why, ac_db_unit, RulesList))).

make_as_update_head(IO-P,IO-PU):- make_unifiable_r(P,PU).

make_unifiable_r(P,PU):- sub_term(E,P),compound(E),is_prop1(E),\+ is_unbound_prop(E),make_unifiable_u(E,U),E\=U,
 subst001(P,E,U,PU),!.


is_bound_prop(P):- \+ is_unbound_prop(P).

why_last1(A,E):- \+ compound(A),!, (atom(A);string(A)),A=E.
why_last1([H|T],E):- !, ((T\==[],why_last1(T,E));why_last1(H,E)),!.
why_last1(C,E):- compound_name_arguments(C,F,A),why_last1([F|A],E),!.
why_last(A,E):- why_last1(A,E),!.
why_last(E,E).




/*
update_accompany_changed_db(TestID, IO_, P, Kept):- warn_and_fail_if_empty(Kept),
 forall(io_to_cntx(IO_, Ctx), forall(retract(ac_db_unit(TestID, Ctx, P, _)), true)),
 assert_accompany_changed_db(TestID,IO_,P,Kept).

assert_accompany_changed_db(_TestID,_IO_,_P,Kept):- Kept==[],!.
assert_accompany_changed_db(TestID,IO_,P,Kept):-
  io_to_cntx(IO_,Ctx),
   assert_ilp_b(ac_db_unit(TestID,Ctx,P,Kept)).

%assert_ilp_b(Term):- \+ clause_asserted(Term), !, pp_ilp(assert_ilp_b=Term), asserta_out(Term).
assert_ilp_b(Term):- asserta_out(Term).
%assert_ilp_b(Term):- pp_ilp(assert_ilp_b=Term), !, assert_if_out(Term).
*/




/*
ac_db_unit_unv(TestID, Ctx, P, PSame):-
  ac_db_unit(TestID, Ctx, PU, PSameU),
  unnumbervars2a(PU+PSameU, P+PSame).
*/


% Retain Overlap
correct_antes1(RulesList, IO_, P, PSame, SL):-
  %make_unifiable_u(P, DP),
  %rev_in_out_atoms(OI,IO_),
  %\+ is_task_rule_head(P),
  findall(S,
   (member(S,PSame),
     \+ \+ (verbatum_unifiable(S); negated_s_lit(S, _); sub_var(S, P) ; ((
       forall(
         (ac_rules(RulesList, IO_, DP, DSame),
          competing_rhs_property(P, DP),
          at_least_one_name_overlap(DSame, PSame)),
          ((P=@=DP)-> true;
            (make_unifiable_u(S, DS), member(DS, DSame), other_val(S, DS))
            )))))),
   SL), warn_and_fail_if_empty(SL), !.
correct_antes1(_RulesList, _IO_, _P, PSame, PSame).



correct_antes2a(TestID, IN_OUT, P, PSame, Kept):-   fail,
   make_unifiable_u(P, U),
   ac_rules(TestID, IN_OUT, U, DSame),
   P\=@=U,
   maplist(make_unifiable_u, DSame, USame),
   intersection(PSame, USame, Kept, _, _), warn_and_fail_if_empty(Kept).
correct_antes2a(_TestID, _IN_OUT, _P, PSame, PSame).

% Make sure each arguement is transformed corretly
correct_antes2(_RulesList, _IO_, _P, PSame, Kept):-  maplist(ensure_xformed, PSame, Kept), !.
ensure_xformed(pg(_,A,B,C),pg(_,A,B,C)):-!.
ensure_xformed(A,A).


% dont credit wrong literal
correct_antes3(TestID, IN_OUT, P, PSame, Kept):-
  length_gte(PSame,2), member(S,PSame), is_bound_prop(S),

  different_rhs_simular_lhs_ele(TestID, IN_OUT, P, S, _U1, DSame1, D1),
  length_gte(DSame1,2), is_bound_prop(D1),S =@=D1,

  different_rhs_simular_lhs_ele(TestID, IN_OUT, P, S, _U2, DSame2, D2),
  length_gte(DSame2,2), is_bound_prop(D2),S\=@=D2,

  make_unifiable_u(P, PU), make_unifiable_u(S, SU),
  marginalize_propwhen(TestID,_ExampleNum,why(IN_OUT),PU,SU),
  Kept = [iz(info(killed(PU,SU)))|PSame].

correct_antes3(_TestID, _IN_OUT, _P, PSame, PSame).

length_gte(DSame,Size):- length(DSame,Len),!,Size>=Len.

% Remove Duped Simularz/Samez
correct_antes3z(RulesList, IO_, P, PSame, SLO):-
  select(samez(N, V1), PSame, PSame1),
  member(samez(N, V2), PSame1),
  V1\==V2,
  findall(S, ( member(S, PSame1), \+ (S = samez(N, _))), SL),
  correct_antes3z(RulesList, IO_, P, SL, SLO).
correct_antes3z(_RulesList, _IO_, _P, PSame, PSame).

% Remove Unbound Props
correct_antes3u(_RulesList, _IO_, _P, PSame, SL):- fail,
  findall(S, ( member(S, PSame), \+ is_unbound_prop(S)), SL), warn_and_fail_if_empty(SL), !.
correct_antes3u(_RulesList, _IO_, _P, PSame, PSame).


compute_scene_change_pass3d(RulesList):-
 must_det_ll((
  testid_to_rules(RulesList,_Ctx,Rules),
 % freeze(PC,is_copy_or_delete_object(PC)),
 % my_partition(is_rule_functor_black_only(PC),Rules0,_,Rules),
 % update_ac_db(RulesList,Rules0,Rules),
  maplist(get_pconds,Rules,LitsNeeded),
  common_props(LitsNeeded,Common),
  remove_from_rules(=@=,Common,Rules,NewRules),
  update_ac_db(RulesList,Rules,NewRules))).

is_rule_rhs(PC,P):-  rule_units(P, _Ctx, PC, _PConds).
is_rule_functor_black_only(PC,P):-  (rule_units(P, _Ctx, PC, PConds), PConds=@=[pen([cc(black,_)])]).

compute_scene_change_pass3e(RulesList):-
  PC = perfect_copy(_Range,_Nth),
  ignore(compute_scene_change_pass3e(PC,RulesList)),
  DO = delete_object(_),
  ignore(compute_scene_change_pass3e(DO,RulesList)),
  CE = cp_with_edit(_,_,_,[_Coloring], _OneP),
  ignore(compute_scene_change_pass3f(CE,RulesList)),!.


compute_scene_change_pass3e(PC,RulesList):-
 must_det_ll((
  testid_to_rules(RulesList,_Ctx,Rules0),
  %my_partition(is_rule_functor_black_only(PC),Rules0,_,Rules), update_ac_db(RulesList,Rules0,Rules),
  Rules0=Rules,
  my_partition(chk(is_rule_rhs(PC)),Rules,PCRules,RestRules))),
  PCRules \==[],
  must_det_ll(( common_props(PCRules,PC_Common))),!,
  PC_Common\==[],
  findall(PCC,(member(PCC,PC_Common),maplist(not_in_rule_lhs(PCC),RestRules)),PCCL),PCCL\==[],!,
  must_det_ll((  %Range = 0..inf, Nth = inf,
  member(OldRule,PCRules),OldRule = ac_unit(TestID,Ctx,PC,_),
  NewRule = ac_unit(TestID,Ctx,PC,PCCL),
  update_ac_db(RulesList,PCRules,[NewRule]))).


compute_scene_change_pass3f(PC,RulesList):-
 must_det_ll((
  testid_to_rules(RulesList,_Ctx,Rules0),
  %my_partition(is_rule_functor_black_only(PC),Rules0,_,Rules), update_ac_db(RulesList,Rules0,Rules),
  Rules0=Rules,
  my_partition(chk(is_rule_rhs(PC)),Rules,PCRules,RestRules))),
  PCRules\==[],
  must_det_ll(( common_props(PCRules,PC_Common))),!,
  PC_Common\==[],
  findall(PCC,(member(PCC,PC_Common),maplist(not_in_rule_lhs(PCC),RestRules)),PCCL),PCCL\==[],!,
  must_det_ll((  %Range = 0..inf, Nth = inf,
  member(OldRule,PCRules),OldRule = ac_unit(TestID,Ctx,PC,_),
  NewRule = ac_unit(TestID,Ctx,PC,PCCL),
  update_ac_db(RulesList,PCRules,[NewRule]))).


compute_scene_change_pass3f(RulesList):-
  PC = cp_with_edit(_,_,_,_Coloring,_OneP),
  ignore(compute_scene_change_pass3f(PC,RulesList)),!.


same_lhs_props(L1,L2):- sort(L1,S1),sort(L2,S2),S1=@=S2.

generalize_lhs(LHS,[Rule|Rules],NewRules):- !,
  generalize_lhs(LHS,Rules,NewRulesA),
  generalize_lhs(LHS,Rule,NewRule),
  append(NewRule,NewRulesA,NewRules).
generalize_lhs(LHS,ac_unit(TstID,Ctx,P,RConds),NewRule):-
  lhs_conds(RConds,Comment,Assumed,Unbound,Required),
  at_least_one_name_value_overlap(LHS,Required),
  append_LR([Unbound,Required],URequired),
  append_LR([URequired,LHS],LRRequired),
  m_unifiers(lhs,LRRequired,NewLHS),
  \+ same_lhs_props(NewLHS,LRRequired),!,
  append_LR([Comment,Assumed,NewLHS],NewRLHS),
  NewRule=[ac_unit(TstID,Ctx,P,NewRLHS)].
generalize_lhs(_LHS,Rule,Rule).

compute_scene_change_pass3g(RulesList):-
 must_det_ll((
  testid_to_rules(RulesList,_Ctx,Rules0),
  Rules0=Rules,
  my_partition(chk(is_rule_rhs(perfect_copy(_,_))),Rules,PCRules,RestRules),
  PCRules\==[],
  my_partition(chk(is_rule_rhs(cp_with_edit)),RestRules,CWERules,_RRestRules))),
  ignore(((must_ll((select(CWER,CWERules,_), select(PCR,PCRules,_), lhs_subsumes(CWER,PCR))),!,

  must_det_ll((into_lhs(PCR,LHS),
  generalize_lhs(LHS,RestRules,NewRules),
  update_ac_db(RulesList,Rules,NewRules)))))).

lhs_subsumes(More,Less):-
  lhs_conds(More,_MComments,_MAssumed,MUnbound,MRequired),
  lhs_conds(Less,_Comments,_Assumed,_Unbound,LRequired),
  maplist(lhs_subsumes1(MUnbound,MRequired),LRequired).
lhs_subsumes1(_Unbound,MRequired,Prop):- member(R,MRequired),same_name_and_value(R,Prop),!.
lhs_subsumes1(MUnbound,_Required,Prop):- member(U,MUnbound),about_same_property(U,Prop),!.


lhs_conds(More,Comments,Assumed,Unbound,Required):-
  into_lhs(More,LHS),
  my_partition(is_unbound_prop,LHS,Unbound,Rest),
  my_partition(is_debug_info,Rest,Comments,Rest0),
  my_partition(is_assumed,Rest0,Assumed,Required).


not_in_rule_lhs(PCC,Rule):- \+ ( rule_units(Rule, _Ctx, _PC, PConds),member(E,PConds),E=@=PCC).
/*
compute_scene_change_pass3d(RulesList):-
 findall(
    ac_db_unit(Gensym, Ctx, P, PSame),

% Remove Redundant Overlap
correct_antes4(RulesList, IO_, P, PSame, SL):-
  length(PSame,PSameLen),
  findall(S,
   ( member(S,PSame),
      \+ ((
       forall(ac_rules(RulesList, IO_, DP, DSame),
            (member(DS,DSame), DS=@=S))))),
   SL),
  length(SL,Len),
  warn_and_fail_if_empty(SL), !,
correct_antes4(_RulesList, _IO_, _P, PSame, PSame).
*/

% Remove Redundant Overlap
correct_antes4(RulesList, IO_, P, PSame, SL):- fail,
  findall(S,
   ( member(S,PSame),
     (negated_s_lit(S,_)->true;
      \+ ((
       forall((ac_rules(RulesList, IO_, DP, DSame),
              same_name_and_value(P,DP)),
            (member(DS,DSame), DS=@=S)))))),
   SL),

  warn_and_fail_if_empty(SL), !.
correct_antes4(_RulesList, _IO_, _P, PSame, PSame).





% Remove Redundant Overlap
correct_antes4a(RulesList, IO_, VP, PSame, SLPSame):- fail,
  %rev_in_out_atoms(OI,IO_),
  ensure_deref_value(VP,P),
  \+ \+ ((ac_rules(RulesList, IO_, DP, _), other_val(P, DP))),
  findall(mv4a(info(changes_from(S,P))),
       ((member(S,PSame), \+ negated_s_lit(S,_), S\= mv4a(info(_)),
         other_val(S,P))),
     SL), warn_and_fail_if_empty(SL), !,
  append(PSame,SL,SLPSame).

correct_antes4a(_RulesList, _IO_, _P, PSame, PSame).



% Remove Single Chhangers
correct_antes4b(RulesList, IO_, VP, PSame, SLPSame):-  fail,
  %rev_in_out_atoms(OI,IO_),
  ensure_deref_value(VP,P),
  \+ \+ ((ac_rules(RulesList, IO_, DP, _), other_val(P, DP))),
  findall(mv4b(info(changes_into(S,P))),
       ((member(S,PSame), \+ negated_s_lit(S,_), S\= mv4b(info(_)), other_val(S,P),
         forall((ac_rules(RulesList, IO_, DP, DSame), other_val(P, DP)),
           \+ \+ (member(DS,DSame), other_val(S,DS), \+ negated_s_lit(DS,_))))),
     SL), warn_and_fail_if_empty(SL), !,
  append(PSame,SL,SLPSame).
correct_antes4b(_RulesList, _IO_, _P, PSame, PSame).



% Add Negations
correct_antes5(RulesList, IO_, P, PSame, Kept):- correct_antes_neg(RulesList, IO_, P, PSame, Kept), !.
correct_antes5(_RulesList, _IO_, _P, PSame, Kept):- vsr_set(PSame, Kept), !.
correct_antes5(_RulesList, _IO_, _P, PSame, PSame).
correct_antes_neg(RulesList, IO_, P, PSame, Kept):- fail,
  findall( ( \+ DS),
   ((member(S,PSame), \+ negated_s_lit(S,_), is_unbound_prop(S), make_unifiable(S,DS),
     ac_rules(RulesList, IO_, DP, DSame),
     competing_rhs_property(P,DP), %at_least_one_overlap(DSame,PSame),
     member(DS,DSame), \+ negated_s_lit(DS,_), \+ is_unbound_prop(DS),
       \+ member(\+ DS, PSame))), SL),
  append(PSame, SL, Kept),
  warn_and_fail_if_empty(Kept), !.
correct_antes_neg(_RulesList, _IO_, _P, PSame, PSame).


% DISABLED not really a loops
correct_antes6(_RulesList, _IO_, P, PSame, Kept):- fail,
  findall(S, (member(S, PSame), \+ same_name_and_value(P, S)), Kept), warn_and_fail_if_empty(Kept), !.
correct_antes6(_RulesList, _IO_, _P, PSame, PSame).































make_equation_between_all(NumberListLeft, NumberListRight, LVar, RVar, EquationUsesLRVars) :-
    (linear_relation(NumberListLeft, NumberListRight, Ratio, Constant) ->
        (Constant =:= 0 -> EquationUsesLRVars = (RVar is LVar * Ratio)
        ; EquationUsesLRVars = (RVar is LVar * Ratio + Constant))
    ;  find_conditional_relationship(NumberListLeft, NumberListRight, LVar, RVar, EquationUsesLRVars)
    ).

linear_relation(NumberListLeft, NumberListRight, Ratio, Constant) :-
    get_ratio_and_constant(NumberListLeft, NumberListRight, Ratio, Constant),
    check_ratio_and_constant(NumberListLeft, NumberListRight, Ratio, Constant).

get_ratio_and_constant([L1, L2 | LTail], [R1, R2 | RTail], Ratio, Constant) :-
    Ratio is (R2 - R1) // (L2 - L1),
    Constant is R1 - L1 * Ratio,
    check_ratio_and_constant(LTail, RTail, Ratio, Constant).

check_ratio_and_constant([], [], _, _).
check_ratio_and_constant([LH | LTail], [RH | RTail], Ratio, Constant) :-
    RH =:= LH * Ratio + Constant,
    check_ratio_and_constant(LTail, RTail, Ratio, Constant).


find_conditional_relationship(NumberListLeft, NumberListRight, LVar, RVar, EquationUsesLRVars) :-
    pairs_keys_values(Pairs, NumberListLeft, NumberListRight),
    sort(Pairs, SortedPairs),
    generate_equation(SortedPairs, LVar, RVar, EquationList),
    list_to_equation(EquationList, EquationUsesLRVars).


generate_equation([], _, _, []).
generate_equation([L-R|Tail], LVar, RVar, [(LVar = L -> RVar = R)|RestEquations]) :-
    generate_equation(Tail, LVar, RVar, RestEquations).

list_to_equation([E], E).
list_to_equation([E1, E2|Rest], (E1 ; EquationRest)) :-
    list_to_equation([E2|Rest], EquationRest).

end_of_file.




?- make_equation_between_all([1,2,3],[11,21,31],LVar,RVar,EquationUsesLRVars).
EquationUsesLRVars=  RVar is LVar * 10 + 1.


?- make_equation_between_all([1,3,1],[7,21,7],LVar,RVar,EquationUsesLRVars).
EquationUsesLRVars=  RVar is LVar * 7.


?- make_equation_between_all([1,3,1,4],[0,2,0,3],LVar,RVar,EquationUsesLRVars).
EquationUsesLRVars=  RVar is LVar * 1 + - 1.

?- make_equation_between_all([1,3,1,4],[0,1,0,1],LVar,RVar,EquationUsesLRVars).
EquationUsesLRVars=  (LVar>=3 -> RVar=1 ; RVar=0)



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

/*
correct_antes5(TestID,IO_,P,PSame,Kept):-
   make_unifiable_u(P,U),
   is_accompany_changed_computed(TestID,IO_,U,DSame),
   P\=@=U,
   maplist(make_unifiable_u,DSame,USame),
   pred_intersection(other_val, PSame, USame, Kept, _, _, _), warn_and_fail_if_empty(Kept).
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

/*
grid_indv_versions(TestID, ExampleNum, Dir, LHOInS):-
  findall(lho(CI, InPSS, HowIn, InC),
    (get_each_ndividuator(Dir, HowIn),
    obj_group_io_5(TestID, ExampleNum, Dir, HowIn, InC),
    length(InC, CI), CI=<50, objs_to_spoints(InC, InPSS)), LHOIn),
   sort(LHOIn, LHOInS), !.
best_obj_group_pair(TestID, ExampleNum, HowIO, InC, OutC):-
  OGP = best_ogp(TestID, ExampleNum, HowIO, InC, OutC),
  (arc_cache:trans_rule_db(TestID, ExampleNum, best_obj_group_pairs, OGPL)*-> true ;
   (time(findall(OGP, best_obj_group_pair1(TestID, ExampleNum, HowIO, InC, OutC), OGPL)),
     assert_test_property(TestID, ExampleNum, best_obj_group_pairs, OGPL))),

  member(OGP, OGPL).
*/
/*
calc_best_individuals(TestID):-
 current_example_scope(TestID, ExampleNum),
 forall(kaggle_arc(TestID, ExampleNum, _, _),
  (grid_indv_versions(TestID, ExampleNum, in, _LHOInS),
   grid_indv_versions(TestID, ExampleNum, out, _LHOOutS))),
 guess_io_opts(TestID, in, InOpts),
 guess_io_opts(TestID, out, OutOpts),
 print(pre_best=in_out(InOpts, OutOpts)), !.

guess_io_opts(TestID, IO, HowIn):-
 current_example_scope(TestID, ExampleNum),
 findall(hi(HowIn, s(Sizes-S)),
  (kaggle_arc(TestID, ExampleNum, _, _),
   grid_indv_versions(TestID, ExampleNum, IO, LHOInS),
   member(lho(S, InPSS, HowIn, _), LHOInS),

   maplist(length, InPSS, Sizes),
   Sizes \= [_, 1|_], Sizes\= [c_] ),
  SizeList),
 maplist(count_peers(SizeList), SizeList, SLPeers),
 reverse_sort(SLPeers, Sorted),
 pp_ilp(s(IO)=Sorted),
 Sorted=[hi(_, HowIn, s(_))|_].

reverse_sort(InputList, OutputList) :-
    sort(InputList, Sorted),
    reverse(Sorted, OutputList).

count_peers(CP, hi(HowIn, s(Sizes)), hi(N, HowIn, s(Sizes))):- findall_count(_, sub_var(s(Sizes), CP), N).
*/


% Predicate to check that the equation RVar = LVar * Ratio + Constant holds for given LVar and RVar
check_equation(Ratio, Constant, LVar, RVar) :-
    RVar =:= LVar * Ratio + Constant.


make_equation_between_all(NumberListLeft,NumberListRight,LVar,RVar,EquationUsesLRVars) :- !,
    % Get the first elements of both lists
    NumberListLeft = [FirstLeft|_],
    NumberListRight = [FirstRight|_],
    % Calculate the ratio and constant term
    Ratio is FirstRight // FirstLeft,
    Constant is FirstRight mod FirstLeft,
    % Check that the equation holds for all elements in the lists
    maplist(check_equation(Ratio, Constant), NumberListLeft, NumberListRight),
    % Create the equation
    ( Constant =:= 0 ->
        EquationUsesLRVars = (RVar is LVar * Ratio)
    ; EquationUsesLRVars = (RVar is LVar * Ratio + Constant)
    ).


make_equation_between_all(NumberListLeft,NumberListRight,LVar,RVar,EquationUsesLRVars) :-
    % Try to find a linear relationship with a constant offset
    (find_linear_relationship_with_offset(NumberListLeft,NumberListRight,LVar,RVar,EquationUsesLRVars)
    % If no linear relationship with offset, try to find a simple linear relationship
    ; find_linear_relationship(NumberListLeft,NumberListRight,LVar,RVar,EquationUsesLRVars)
    % If no linear relationship, try to find a conditional relationship
    ; find_conditional_relationship(NumberListLeft,NumberListRight,LVar,RVar,EquationUsesLRVars)
    ).

find_linear_relationship_with_offset(NumberListLeft, NumberListRight, LVar, RVar, EquationUsesLRVars) :-
    maplist(subtract_by_first, NumberListRight, NumberListLeft, Differences),
    same_elements(Differences, Difference),
    nth0(0, NumberListRight, FirstRight),
    nth0(0, NumberListLeft, FirstLeft),
    Ratio is (FirstRight - Difference) // FirstLeft,
    EquationUsesLRVars =  (RVar is (LVar * Ratio + Difference)).

find_linear_relationship(NumberListLeft, NumberListRight, LVar, RVar, EquationUsesLRVars) :-
    maplist(divide_by_first, NumberListRight, NumberListLeft, Ratios),
    same_elements(Ratios, Ratio),
    EquationUsesLRVars =  (RVar is (LVar * Ratio)).

find_conditional_relationship(NumberListLeft, NumberListRight, LVar, RVar, EquationUsesLRVars) :-
    pairs_keys_values(Pairs, NumberListLeft, NumberListRight),
    sort(0, @=<, Pairs, SortedPairs),
    SortedPairs = [Pair1, Pair2|_],
    Pair1 = _-Value1,
    Pair2 = Threshold-Value2,
    (Value1 \= Value2 -> EquationUsesLRVars =  ((LVar >= Threshold) -> (RVar = Value2) ; (RVar = Value1))).

subtract_by_first(Num1, Num2, Difference) :-
    Difference is Num1 - Num2.

divide_by_first(Num1, Num2, Ratio) :-
    Ratio is Num1 // Num2.

same_elements([], _).
same_elements([H|T], H) :-
    maplist(=(H), T).



end_of_file.




Code this predicate:

make_equation_between_all(NumberListLeft,NumberListRight,LVar,RVar,EquationUsesLRVars):- ...






end_of_file.










                      in_out: cp_with_edit(1..1,1,0..inf,[positioning],[iz(cenX(2))])
                                                :-
                                                                        [ pg(_,cc(fg,_),rankLS,1),
                                                                          pg(_,cc(fg,_),rank1,4)]

                                                                        iz(cenX(14)),
                                                                        iz( ngrid( [ [  t , - , t ],
                                                                                     [ '|', _ ,'|'],
                                                                                     [  t , - , t ]])),
                                                                        iz(sid(s28352)),
                                                                        iz(algo_sid(norm,sid_hollow_3x3)),
                                                                        mass(26),
                                                                        cc(fg,26),
                                                                        grid_ops(norm,[c_r(and(copy_row_ntimes(3,5),copy_row_ntimes(1,3))),rot270]),
                                                                        links_count(bg(contains),1),
                                                                        sym_counts(sym_corners_t_T_t_U_u_z_?_?_?,4000),
                                                                        sym_counts('sym_extend_-_/_\\_|',20020).
 _________________________________________________________________________________

                        in_out: cp_with_edit(1..1,1,0..inf,[positioning],[iz(cenX(6))])
                                                :-
                                                                        [ pg(_,cc(fg,_),rankLS,2),
                                                                          pg(_,cc(fg,_),rank1,3)]

                                                                        iz(cenX(2)),
                                                                        iz( ngrid( [ [  t , - ,'U', - , t ],
                                                                                     [ '|', _ ,'|', _ ,'|'],
                                                                                     [  t , - ,'U', - , t ]])),
                                                                        iz(sid(s4586150)),
                                                                        iz(algo_sid(norm,s16201681)),
                                                                        mass(25),
                                                                        cc(fg,25),
                                                                        grid_ops(norm,[c_r(copy_row_ntimes(5,5)),rot90]),
                                                                        links_count(bg(contains),2),
                                                                        sym_counts(sym_corners_t_T_t_U_u_z_?_?_?,24000),
                                                                        sym_counts('sym_extend_-_/_\\_|',30040).
 _________________________________________________________________________________

                        in_out: cp_with_edit(1..1,1,0..inf,[positioning],[iz(cenX(10))])
                                                :-
                                                                        [ pg(_,cc(fg,_),rank1,2),
                                                                          pg(_,cc(fg,_),rankLS,3)]

                                                                        iz(cenX(6)),
                                                                        iz( ngrid( [ [  t , - ,'U', - ,'U', - , t ],
                                                                                     [ '|', _ ,'|', _ ,'|', _ ,'|'],
                                                                                     [  t , - ,'U', - ,'U', - , t ]])),
                                                                        iz(sid(s1135288)),
                                                                        iz(algo_sid(norm,s15984027)),
                                                                        mass(24),
                                                                        cc(fg,24),
                                                                        grid_ops(norm,[c_r(copy_row_ntimes(7,3)),rot270]),
                                                                        links_count(bg(contains),3),
                                                                        sym_counts(sym_corners_t_T_t_U_u_z_?_?_?,44000),
                                                                        sym_counts('sym_extend_-_/_\\_|',40060).
 _________________________________________________________________________________

                        in_out: cp_with_edit(1..1,1,0..inf,[positioning],[iz(cenX(14))])
                                                :-
                                                                        [ pg(_,cc(fg,_),rank1,1),
                                                                          pg(_,cc(fg,_),rankLS,4)]

                                                                        iz(cenX(10)),
                                                                        iz( ngrid( [ [  t , - ,'U', - ,'U', - ,'U', - , t ],
                                                                                     [ '|', _ ,'|', _ ,'|', _ ,'|', _ ,'|'],
                                                                                     [  t , - ,'U', - ,'U', - ,'U', - , t ]])),
                                                                        iz(sid(s2194736)),
                                                                        iz(algo_sid(norm,s2194736)),
                                                                        mass(23),
                                                                        cc(fg,23),
                                                                        grid_ops(norm,[rot90]),
                                                                        links_count(bg(contains),4),
                                                                        sym_counts(sym_corners_t_T_t_U_u_z_?_?_?,64000),
                                                                        sym_counts('sym_extend_-_/_\\_|',50080).
 _________________________________________________________________________________

                        in_out: cp_with_edit(1..1,1,0..inf,[positioning],[iz(cenX(B3))])
                                                :-
                                                                        always(of_obj_use(1,lhs,iz(cenX(C3)),(-8#=2-10,B3#=C3+ -8),gp0)),
                                                                        always(of_obj_use(1,lhs,iz(cenX(C3)),(-8#=6-14,B3#=C3+ -8),gp0)),
                                                                        always(of_obj_use(1,lhs,iz(cenX(C3)),(-4#=6-10,B3#=C3+ -4),gp0)),
                                                                        always(of_obj_use(1,lhs,iz(cenX(C3)),(-4#=10-14,B3#=C3+ -4),gp0)).






































































rhs_ground(G):- ground(G),!.
rhs_ground(G):- nop(writeln(G)),!.

ac_rules(List,Ctx,P,PSame):- is_list(List),!,member(Stuff,List),Stuff=..[_,Ctx,P,PSame].
ac_rules(TestID,Ctx,P,PSame):-
  ac_unit(TestID,Ctx,P,Same), \+ never_use_horn_rhs(P),
  include(not_debug_info,Same,PSame),
  %Same=PSame,
  PSame\==[].

not_debug_info(P):- \+ is_debug_info(P),!.

remove_debug_info(List,NoDebug):- \+ compound(List),!,NoDebug=List.
remove_debug_info(List,NoDebug):- is_list(List), is_obj_props(List),!,include(not_debug_info,List,NoDebug).
remove_debug_info(List,NoDebug):- is_list(List), !, maplist(remove_debug_info,List,NoDebug).
remove_debug_info(List,NoDebug):- compound_name_arguments(List,F,AA),
  maplist(remove_debug_info,AA,CC),!, compound_name_arguments(NoDebug,F,CC).

ac_unit(TestID,Ctx,P,Same):- ac_listing(TestID,Ctx,P,Same).

ac_listing(List,Ctx,P,PSame):- is_list(List),!,member(Stuff,List),Stuff=..[_,Ctx,P,PSame].
%ac_listing(TestID,Ctx,P->ac_db_unit,PSame):- ac_db_unit(TestID,Ctx,P,PSame).
ac_listing(TestID,Ctx,P,PSame):- (ac_db_unit(TestID,Ctx,P,PSame)*->true;pass2_rule(TestID,Ctx,P,PSame)), \+ never_use_horn_rhs(P).
%ac_listing(TestID,Ctx,P,[iz(info(prop_can))|PSame]):- prop_can(TestID,Ctx,P,PSame).
%ac_listing(TestID,Ctx,P,[pass2|PSame]):- pass2_rule(TestID,Ctx,P,PSame), \+ ac_rules(TestID,Ctx,P,PSame).

/*
ac_listing(TestID,rules,P->Ctx->current,LHS):-
  member(Ctx,[in_out,in_out_out,s(_)]),
  synth_program_from_one_example(TestID,Ctx,R),
  rule_to_pcp(R,P,LHS).
ac_listing(TestID,rules,P->Ctx->combined,LHS):- fail,
  member(Ctx,[in_out,in_out_out,s(_)]),
  trans_rules_combined_members(TestID,Ctx,R),
  rule_to_pcp(R,P,LHS).
*/
show_time_of_failure(_TestID):- !.
show_time_of_failure(TestID):-
    print_scene_change_rules3(show_time_of_failure,
       ac_listing,TestID).

rule_to_pcp5(TestID,R,Ctx,P,LHS):- is_list(R),!,
 member(E,R),rule_to_pcp(TestID,E,Ctx,P,LHS).
rule_to_pcp5(_TestID,R,Ctx,P0,LHS):- R =..[ac_unit|Rest],append(_,[Ctx,P0,LHS],Rest),!.
rule_to_pcp5(_TestID,R,Ctx,P0,LHS):-
  must_det_ll((
  find_rhs(R,P),
  find_lhs(R,Conds0),listify(Conds0,Conds),
  subst001(R,P,p,RR), subst001(RR,Conds,conds,RRR),
  append(Conds,[iz(info(RRR))],LHS),
  ignore((sub_compound(ctx(Ctx),R))))),!,P0=P.

%pcp_to_rule(TestID,Ctx,P,LHS,rule(TestID,Ctx,P,LHS)).


%ac_rules(TestID,P,PSame):- ac_rules(TestID,_,P,PSame).

%pass2_rule(TestID,Ctx,P,PSame):- pass2_rule_old(TestID,Ctx,P,PSame).
%pass2_rule(TestID,Ctx,P,PSame):- pass2_rule_new(TestID,Ctx,P,PSame).

pass2_rule(TestID,Ctx,RHS,LHS):-
  pass2_rule1(TestID,Ctx,RHS,LHS)*->true;
  pass2_rule2(TestID,Ctx,RHS,LHS)*->true;
  fail.
/*
pass2_rule(TestID,Ctx,RHS,LHS):-
  findall_vset(Ctx-RHS,(pass2_rule1(TestID,Ctx,RHS,LHS);pass2_rule2(TestID,Ctx,RHS,LHS)),List),
  member(Ctx-RHS,List),
  (pass2_rule1(TestID,Ctx,RHS,LHS)*->true;pass2_rule2(TestID,Ctx,RHS,LHS)).
*/

pass2_rule1(TestID,Ctx,RHS,LHS):- fail,
 ensure_test(TestID),
  trans_rules_combined_members(TestID,Ctx,Rule),
  %Info = info(_Step,_IsSwapped,Ctx,_TypeO,TestID,_ExampleNum,_),
  %arg(_,Rule,Info),
  must_det_ll((
  rule_to_pcp5(TestID,Rule,Ctx,RHS,LHS))).

pass2_rule2(TestID,Ctx,RHS0,LHS0):-
 ensure_test(TestID),
  synth_program_from_one_example(TestID,Ctx,Rule),
  %Info = info(_Step,_IsSwapped,Ctx,_TypeO,TestID,_ExampleNum,_),
  %arg(_,Rule,Info),
  must_det_ll((
  rule_to_pcp5(TestID,Rule,Ctx,RHS,LHS))),
  RHS0=RHS, LHS0=LHS.


%pass2_rule3(TestID,Ctx,edit(Type,different,P),[iz(info(propcan(true,Ctx)))|PSame]):- fail,ensure_test(TestID), ensure_props_change(TestID,Ctx,P).

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

% adds debugging to info/1
trans_rule(Info,In,Out,Rules):- sub_cmpd(info(InfoL),Info),!,trans_rule(InfoL,In,Out,Rules).
trans_rule(Info,In,Out,Clauses):- \+ is_list(In),!,trans_rule(Info,[In],Out,Clauses).
trans_rule(Info,In,Out,Clauses):- \+ is_list(Out),!,trans_rule(Info,In,[Out],Clauses).
trans_rule(Info,In,Out,Rules):-
  ( \+ sub_cmpd(oin(_),Info); \+ sub_cmpd(oout(_),Info)),
  into_oids(In,OIDIns),into_oids(Out,OIDOuts),
  append_sets(Info,[oin(OIDIns),oout(OIDOuts)],InfM),!,
  trans_rule(InfM,In,Out,Rules).

trans_rule(Info,[],[],[ac_unit(_,Ctx,happy_ending(Type),Info)]):-
   ignore((sub_compound(ctx(Ctx),Info))),
   ignore((sub_compound(type(Type),Info))).


% delete
trans_rule(Info,[In],[],[Unit]):-
 into_lhs(In,Preconds),into_rhs(Info,InfoR),
 Unit = ac_unit(_,_,delete_object(InfoR,In),[iz(info(Info))|Preconds]),!.


% create
trans_rule(Info,[],[Out],[Unit]):-
 into_lhs(Out,Preconds),into_rhs(Info,InfoR),
 Unit = ac_unit(_,_,create_object(InfoR,Out),[iz(info(Info))|Preconds]),!.

% mutiple postconds
trans_rule(Info,In,[Out,Out2|OutL],TransRule):- is_object(Out),is_object(Out2),
  maplist(trans_rule(Info,In),[Out,Out2|OutL],TransRule), TransRule\==[],!.

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
  noteable_propdiffs(In,Out,Same,_L,R),R==[],
  Rules = [ copy_if_match(Info,rhs(copy_step(Step,TypeO)),lhs(Same)) ],!.

% just copy an object
trans_rule(Info,[In],[Out],Rules):-
  how_are_different(In,Out,_TypeChanges,Diff),Diff==[],
  into_lhs(In,LHS),
  %%must_det_ll((sub_compound(step(Step),Info), sub_compound(why(TypeO),Info))),
  Rules = [ copy_if_match(Info,rhs(copy_step),lhs(LHS)) ],!.

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
      P\==pen([cc(black,1)]),
      good_for_rhs(P)),Rules),Rules\==[],!.

trans_rule(Info,E1,E2,Rules):-
  noteable_propdiffs(E1,E2,NSame,NL,NR),
  dash_chars,
  pp_ilp(l2r(Info,E1,E2)),
  dash_chars,
  if_t(how_are_different(E1,E2,Set),pp_ilp(how_are_different=Set)),
  flat_props(E1,FP1),flat_props(E2,FP2),
  intersection(FP1,FP2,Same,InFlatP,OutPFlat),
  pp_ilp(info=Info),
  pp_ilp(nadded=NR),
  pp_ilp(added=OutPFlat),
  pp_ilp(nremoved=NL),
  pp_ilp(removed=InFlatP),
  pp_ilp(nsames=NSame),
  pp_ilp(sames=Same),
  itrace,
  sub_compound(step(Step),Info), sub_compound(why(TypeO),Info),
  dash_chars,
  Rules = [
    create_object_step(Info,rhs(create3c(Step,TypeO,E2)),lhs(Same)) ],!.
    %copy_if_match(Info,rhs(copy_step(Step,TypeO)),lhs(Same)) ].














:- consult(kaggle_arc_logicmoo).
