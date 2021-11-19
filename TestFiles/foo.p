thf(cEXT2_def,definition,
    ( cEXT2
    = ( ( cC @ cA )
     => ( cC @ ~ ( ~ ( cA ) ) ) ) )).

thf(connective_terms,axiom,(
    ! [P: $o,C: $i] :
      ( ( (&) @ ( p @ C ) @ P )
      = ( (~) @ ( (~&) @ ( p @ C ) @ P ) ) ) )).
