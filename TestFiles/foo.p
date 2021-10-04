thf(p_type,type,
    p: $i > $o ).

thf(ptt_type,type,
    ptt: [$int,$i,$o] > $o > $i > $o ).

thf(tuples_2,axiom,
    ( p
    = ( ^ [X: $i] :
          ( ptt @ [33,a,$true] @ ( ( q @ a @ b ) ) ) ) ) ).
