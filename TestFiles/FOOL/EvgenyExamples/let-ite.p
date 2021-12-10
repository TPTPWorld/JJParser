tff(1,axiom,
    $ite(
      $let(c: $o,
        c:= $false,
        c),
      $true,
      $false) ).

tff(2,axiom,
    $ite($true,
      $let(c: $o,
        c:= $false,
        c),
      $false) ).

tff(3,axiom,
    $ite($true,$false,
      $let(c: $o,
        c:= $false,
        c)) ).

tff(4,axiom,
    $ite(
      $let(c: $int,
        c:= i,
        $true),
      $true,
      $false) ).

tff(5,axiom,
    $ite($true,
      $let(c: $int,
        c:= i,
        $true),
      $false) ).

tff(6,axiom,
    $ite($true,
      $false,
      $let(c: $int,
        c:= i,
        $true)) ).

tff(7,axiom,
    ( $ite(
        $let(f: $int > $int,
          f(X):= X,
          f(i) = f(i)),
        i,
        i) 
    = i ) ).

tff(8,axiom,
    ( $ite($false,
        $let(f: $int > $int,
          f(X):= X,
          f(i)),
        i) 
    = i ) ).

tff(9,axiom,
    ( $ite($false,
        i,
        $let(f: $int > $int,
          f(X):= X,
          f(i)))
    = i ) ).

tff(10,axiom,
    ( $ite(
        $let(c: $o,
          c:= $false,
          c),
        i,
        i) 
    = i ) ).

tff(11,axiom,
    ( $ite($false,
        $let(c: $o,
          c:= $false,
          i),
        i) 
    = i ) ).

tff(12,axiom,
    ( $ite($false,
        i,
        $let(x: $o,
          x:= $false,
          i)) 
    = i ) ).

tff(11,axiom,
    $let(f: ($i * $i) > $o,
      f(X,Y):= X = Y,
      $ite(
        ! [X,Y] : f(X,Y),
        $true,
        $false)) ).

tff(12,axiom,
    $let(f: $int > $int,
      f(X):= X,
      $ite(f(i) = i,
        $true,
        $false)) ).

tff(13,axiom,
    $let(
      f: $o > $int,
      f(X) := ($ite(X,i,i) = i ),
      f( ! [X] : ( X = X) )) ).
