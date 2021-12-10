tff(1,axiom,
    $let(f: $i,
      f:= i,
      f = i) ).

tff(2,axiom,
    $let(f: $o,
      f:= $true,
      f) ).

tff(3,axiom,
    $let(f: $i > $i,     %function f gets arity 0 -> 1
      f(X):= X,
      f(i) = i) ).

tff(5,axiom,
    $let(f: ($i * $i) > $o,     %prdicate f gets arity 0 -> 2
      f(X,Y):= X = Y,
      f(i,i)) ).

tff(9,axiom,
    $let(
      [ f: $i,
        g: $i ],
      [ f:= i,
        g:= i ],
      f = g) ).

tff(10,axiom,
    $let(
      [ f: $i > $i,
        g: $i > $i ],
      [ f(X):= X,
        g(X):= X ],
      f(i) = g(i)) ).

