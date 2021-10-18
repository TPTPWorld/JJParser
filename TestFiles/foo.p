thf(p_type,type,
    p: $i > $o ).

thf(description_choice,axiom,
    ( ? [X: $i] :
        ( ( p @ X )
        & ! [Y: $i] :
            ( ( p @ Y )
           => ( X = Y ) ) )
   => ( ( @-[X: $i] :
            ( p @ X ) )
      = ( @+[X: $i] :
            ( p @ X ) ) ) )).
