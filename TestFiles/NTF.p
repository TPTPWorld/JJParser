tff(semantics,logic,
    $alethic_modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_T ] ).

tff(p_type,type,
    p: $o ).

tff(short,axiom,
    [.] p ).

tff(short_bracketed,axiom,
    [.] (p) ).

tff(long,axiom,
    {$box} @ (p) ).

tff(longer,axiom,
    {$box} @ (p,p,p) ).

thf(short_thf,axiom,
    [.] p ).

thf(short_thf,axiom,
    [.] (p) ).

thf(long_thf,axiom,
    {$box} @ p ).

thf(long_bracketed_thf,axiom,
    {$box} @ (p) ).

thf(longer_thf,axiom,
    {$box} @ p @ p @ p ).

thf(operator_thf,axiom,
    ([.]) @ p ).

tff(2,axiom,{$box(#i,foo==bar)} @ (p,p,p)).
tff(2,axiom,{$dia} @ (p)).

tff(an,axiom,{$box(a(X)==! [X] : p(X))} @ (p)).

tff(jon_says_common_knowledge,axiom,
        ! [S: $o] :
          ( says(jon,S) => {$common($agents==[alice,bob,claire])} @ (S) ) ).

