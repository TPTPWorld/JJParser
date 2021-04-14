tff(p_type,type,p: [$int,$int] > $o).
tff(tuple,axiom,p([0,1])).

tff(q_type,type,q: $int > $o).
tff(ite_o,axiom,$ite(q(0),$true,$false)).
tff(ite_i,axiom,q($ite(q(0),0,1))).

tff(let_o,axiom,$let(r: ($int * $int) > $o,
                     r(X,Y) := $greater(X,Y),
                     r(0,1))).
tff(let_i,axiom,q($let(f: $int,
                       f := 0,
                       f))).

tff(s_type,type,s: $o > $o).
tff(nested,axiom,s(! [X:$int] : q(X))).
tff(boolean,axiom,! [X:$o] : s(X)).
tff(nested_equality,axiom,s(1 = 0)).
