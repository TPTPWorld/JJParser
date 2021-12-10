tff(a,type,a: $tType).
tff(b,type,b: $tType).
tff(c,type,c: $tType).
tff(t,type,t: [a,$o,b]).
tff(f,type,f: [a,b] > [a,b]).

tff(1,axiom,
    ! [T: [a,b]] : ( T = f(T) ) ).

tff(first,axiom,
    ! [T: [a,b]] : 
      $let(
        [ x: a,
          y: b ],
        [x,y] := T,
        x = x) ).

tff(x,type,x:$int).
tff(y,type,y:$int).

tff(makeXgreatest,conjecture,
  $let(
    [ x: $int,
      y: $int ],
    [x,y] :=
      $ite($greater(x,y),
        $let(
          [ x: $int,
            y: $int,
            t: $int ],
          [x,y,t] := [x,y,x],
          $let(
            [ x: $int,
              y: $int,
              t: $int ],
            [x,y,t] := [y,y,t],
            $let(
              [ x: $int,
                y: $int,
                t: $int],
              [x,y,t] := [x,t,t],
              [x,y]))),
        [x,y]),
      $greatereq(x,y)) ).
