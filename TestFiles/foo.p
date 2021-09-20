tff(a,type,a: $tType).
tff(b,type,b: $tType).
tff(f,type,f: [a,b] > [a,b]).

tff(1,axiom,
    ! [T: [a,b]] : ( T = f(T) ) ).
