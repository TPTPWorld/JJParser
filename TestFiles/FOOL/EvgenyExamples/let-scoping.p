tff(a,type,a: $tType).
tff(b,type,b: $tType).

tff(0,axiom,
    $let(
      [ q1: (a * b) > $i,
        q2: (a * b) > $i ],
      [ q1(X1,X2):= c1,
        q2(Y1,Y2):= c2 ],
      $true) ). 

tff(t,type,t: $tType).
tff(h,type,h: t > t).
tff(c,type,c: t).

%----No type error - occurrences of h inside the body of f refer to the global 
%----h, whereas occurrence of h inside the body of $let refers to the defined h
tff(1,axiom,
    $let(
      [ h: $i > $i,
        f: t > $i ],
      [ h(X):= X,
        f(X):= h(h(X)) ],
      ! [X: t] : ( f(X) = f(f(X)) )) ).

%----Error - duplicate variables
tff(2,axiom,
   $let(f: ( $i * $i) > $o,
     f(X,X):= $true,
     f(i,c)) ).

%----Error - duplicating function definitions
tff(3,axiom,
    $let(
      f: $i > $i,
      [ f(X):= X,
        f(Y):= Y ],
      f(i) = f(i)) ).

%----Error - predicate and function symbols share scope
tff(4,axiom,
    $let(f: $o > $o,
      [ f(X):= X,
        f(X):= X = X ],
      f(f(i))) ).

%----No error - functions are allowed to be overriden by arity
tff(5,axiom,
    $let(
      [ f: $i > $i,
        f: ($i * $i) > $i ],
      [ f(X):= X,
        f(X,Y):= Y ],
      f(i,f(i)) = i )) .

%----Innermost definitions shadow outermost one
tff(6,axiom,
    $let(
      [ f: $i > $i,
        g: $i > t ],
      [ f(X):= X,
        g(X):= c ],
      $let(f: t > t,
        f(X):= g(f(i)),
        f(c) = c)) ).

tff(7,axiom,
    $let(f: $i > $i,
      f(X):= X,
      $let(f: $i > $i,
        f(X):= f(X) = X,
        f(i))) ).

%----Bindings are parallel
tff(8,axiom,
    $let(
      [ f: $i > $i,
        h: t > $i ],
      [ f(X):= X,
        h(X):= i ],
      $let(
        [ f: t > t,
          g: $i > t ],
        [ f(X):= X,
          g(X):= f(f(X)) ],
        g(i) = h(c))) ).

%----Scoping of variables is well-behaved
tff(9,axiom,
    ! [X] : 
      $let(f: (t * $i) > t,
        f(X,Y):= X = c,
        f(c,X)) ).

tff(10,axiom,
    $let(f: (t * $i) > t,
      f(X,Y):= X = c,
      ! [X] : f(c,X)) ).

%----Scoping for $let inside the body of the function is well-behaved 
tff(11,axiom,
    $let(f: $i > $i,
      f(X):= 
        $let(f: t > t,
          f(X):= X,
          f(c))
      ,f(i) = c) ).

%----Symbols bound inside $let do not clash with symnonymous symbols of 
%----inferred sorts
tff(12,axiom,
    $let(p1: $o,
      p1:= $true,
      p1)).

tff(13,axiom,p1).

tff(14,axiom,
    $let(c1: $i,
      c1:= i,
      c1 = i)).

tff(15,axiom,c1 = i).

tff(16,axiom,
    $let(p2: $o,
      p2:= $true,
      p2)).

tff(17,axiom,p2).

tff(18,axiom,
    $let(p2: $o,
      p2:= $false,
      p2)).

tff(19,axiom,
    $let(c2: $i,
      c2:= i,
      c2 = i)).

tff(20,axiom,c2 = i).

tff(21,axiom,
    $let(c2: $i,
      c2:= i,
      c2 = i)).
