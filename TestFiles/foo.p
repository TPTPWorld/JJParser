tff(i_type,type,i: $int).
tff(j_type,type,j: $int).
tff(f_type,type,f: ($int * $int * $int * $int) > $rat).
tff(p_type,type,p: $rat > $o ).
tff(let_2,axiom,$let(ff: ($int * $int) > $rat, ff(X,Y):= f(X,X,Y,Y), p(ff(i,j))) ).
