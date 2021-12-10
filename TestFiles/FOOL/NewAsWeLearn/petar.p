% Testing semantics of variables in let expressions. Options:
% 1. Dynamic scoping (like old Lisp): Variables get bound upon use. This is 
% widely regarded as broken.
% 2. Static scoping (like Scheme and most other languages): Variables get 
% bound in the definition.
% 3. Petar's conservative proposal (cf. no language I know): No free 
% variables appear in RHS.

% 2 is the chosen one. This example tests the implementation.
% Satisfiable if the problem is interpreted as in the method 2
% and Unsatisfiables if it is method 1. 

tff(a, type, a: $i).
tff(b, type, b: $i).
tff(p, type, p: $i > $o).
tff(p, type, q: $i > $o).
tff(p, type, g: ($i * $i) > $i).

tff(ax1, axiom,
        ![X:$i]:(p(X) |
                 $let(f : $i > $i, f(Y) := g(X,Y),
                       ![X:$i, Z:$i]: q(f(Z)) ) )).

%- tff(ax1, axiom,
%-         ![X:$i]:(p(X) |
%-                  ((![X:$i, Z:$i]: (q(g(X,Z).

tff(ax2, axiom, ~p(a)).
tff(ax3, axiom, ~q(g(b, a))).
