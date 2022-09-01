%----Taken from https://link.springer.com/content/pdf/10.1007%2FBF00370836.pdf

tff(futureWillBe_decl,type,
    futureWillBe: $o > $o ).

tff(pastHasBeen_decl,type,
    pastHasBeen: $o > $o ).

tff(futureWillAlwaysBe_decl,type,
    futureWillAlwaysBe: $o > $o ).

tff(pastHasAlwaysBeen_decl,type,
    pastHasAlwaysBeen: $o > $o ).

tff(since_decl,type,
    since: ( $o * $o ) > $o ).

tff(until_decl,type,
    until: ( $o * $o ) > $o ).

tff(futureWillAlwaysBe_futureWillBe,axiom,
    ! [Alpha: $o] :
      ( futureWillAlwaysBe(Alpha)
    <=> ~ futureWillBe( ~Alpha ) ) ).

tff(pastHasAlwaysBeen_pastHasBeen,axiom,
    ! [Alpha: $o] :
      ( pastHasAlwaysBeen(Alpha)
    <=> ~ pastHasBeen( ~Alpha ) ) ).

tff(future_A7,axiom,
    ! [U: $i,V: $i] :
      ( ( U = V )
     => futureWillAlwaysBe( U = V ) ) ).

tff(past_A7,axiom,
    ! [U: $i,V: $i] :
      ( ( U = V )
     => pastHasAlwaysBeen( U = V ) ) ).

tff(until_UBF,axiom,
    ! [Gamma: $o,Beta: $o] :
      ( until(
          ? [X] : Gamma,
          Beta)
     => ? [X] : until(Gamma,Beta) ) ).

tff(since_UBF,axiom,
    ! [Gamma: $o,Beta: $o] :
      ( until(
          ? [X] : Gamma,
          Beta)
     => ? [X] : since(Gamma,Beta) ) ).

tff(future_B1,axiom,
    ! [Alpha: $o,Beta: $o,Delta: $o] :
      ( futureWillAlwaysBe(
          Alpha => Beta )
     => ( until(Alpha,Delta)
       => until(Beta,Delta) ) ) ).

tff(past_B1,axiom,
    ! [Alpha: $o,Beta: $o,Delta: $o] :
      ( pastHasAlwaysBeen(
          Alpha => Beta )
     => ( since(Alpha,Delta)
       => since(Beta,Delta) ) ) ).

tff(future_B2,axiom,
    ! [Alpha: $o,Beta: $o,Delta: $o] :
      ( futureWillAlwaysBe(
          Alpha => Beta )
     => ( until(Delta,Alpha)
       => until(Delta,Beta) ) ) ).

tff(past_B2,axiom,
    ! [Alpha: $o,Beta: $o,Delta: $o] :
      ( pastHasAlwaysBeen(
          Alpha => Beta )
     => ( since(Delta,Alpha)
       => since(Delta,Beta) ) ) ).

tff(future_B3,axiom,
    ! [Alpha: $o,Beta: $o,Delta: $o] :
      ( ( Alpha
        & until(Beta,Delta) )
     => until(
          Beta & since(Alpha,Delta),
          Delta) ) ).

tff(past_B3,axiom,
    ! [Alpha: $o,Beta: $o,Delta: $o] :
      ( ( Alpha
        & since(Beta,Delta) )
     => since(
          Beta & until(Alpha,Delta),
          Delta) ) ).

tff(future_B4,axiom,
    ! [Alpha: $o,Beta: $o] :
      ( until(Alpha,Beta)
     => until(
          Alpha,
          Beta & until(Alpha,Beta)) ) ).

tff(past_B4,axiom,
    ! [Alpha: $o,Beta: $o] :
      ( since(Alpha,Beta)
     => since(
          Alpha,
          Beta & since(Alpha,Beta)) ) ).

tff(future_B5,axiom,
    ! [Alpha: $o,Beta: $o] :
      ( until(
          Beta & until(Alpha,Beta),
          Beta)
     => until(Alpha,Beta) ) ).

tff(past_B5,axiom,
    ! [Alpha: $o,Beta: $o] :
      ( since(
          Beta & since(Alpha,Beta),
          Beta)
     => since(Alpha,Beta) ) ).

tff(future_B6,axiom,
    ! [Alpha: $o,Beta: $o,Delta: $o,Theta: $o] :
      ( ( until(Alpha,Beta)
        & until(Delta,Theta) )
     => ( until(
            Alpha & Delta,
            Beta & Theta)
        | until(
            Alpha & Theta,
            Beta & Theta)
        | until(
            Beta & Delta,
            Beta & Theta) ) ) ).

tff(past_B6,axiom,
    ! [Alpha: $o,Beta: $o,Delta: $o,Theta: $o] :
      ( ( since(Alpha,Beta)
        & since(Delta,Theta) )
     => ( since(
            Alpha & Delta,
            Beta & Theta)
        | since(
            Alpha & Theta,
            Beta & Theta)
        | since(
            Beta & Delta,
            Beta & Theta) ) ) ).

