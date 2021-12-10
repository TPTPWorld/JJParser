tff(p_type,type,p: [$int,$int] > $o).
tff(tuple,axiom,p([0,1])).

tff(q_type,type,q: $int > $o).
tff(ite_o,axiom,$ite(q(0),$true,$false)).
tff(ite_i,axiom,q($ite(q(0),0,1))).
`
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

tff(ww,type,ww: $o > $o ).
%----The (X) is a <tff_unitary_term> within a <tff_defined_infix> within a
%----<tff_unit_formula>, and the scope of ! [X: $o] is that whole 
%----<tff_unit_formula>.
tff(large1,axiom,
    ! [X: $o] : 
      (X) = 
      ( ? [Y: $o] :
          Y = ww(Y) )).

%----The extra ()s around the equality add a <tff_unitary_formula> LPAREN
%----<tff_logic_formula> layer between the <tff_unit_formula> and the 
%----<tff_defined_infix>. JJParser treats large1 and large1_reformatted the
%----same. Yay.
tff(large1_reformatted,axiom,(
    ! [X: $o] :
      ( (X)
      = ( ? [Y: $o] : (Y) = ww(Y) ) ) )).

%----Added ()s to make it a <tff_defined_infix> at the top level.
tff(large2,axiom,
    ( ! [X: $o] : (X) ) =
    ( ? [Y: $o] : Y = ww(Y) )).

%----TPTP4X likes this (should not). SyntaxBNF dislikes the ? not ()ed
%----But TPTP4X reformats to large1_reformatted.
% tff(large3,axiom,
%     ! [X: $o] :
%       (X) =
%         ? [Y: $o] :
%           Y = ww(Y) ).

tff(a_type,type,a: $i).
tff(c,type,c: $o).
tff(ee,type,ee: ($o * $o) > $o).
tff(qq,type,qq: $o > $o).
tff(ppp_type,type,ppp : ($int * $o * $int) > $o).

tff(c0,axiom,ppp(1,[2,[0,0,0],3],4)).
tff(c1,axiom,ppp(1,[2,(c & c),3],4)).
tff(c2,axiom,ppp(1,! [Q: $int] : ppp(Q,[2,(c & c),3],Q),4)).
tff(c3,axiom,ppp(1,[2,! [Q: $int] : ppp(Q,[2,(c & c),3],Q),3],4)).
tff(c4,axiom,ppp(1,[2,! [Q: $int] : ppp(Q,[(c & c),2,3],Q),3],4)).
tff(c5,axiom,ppp(1,[2,! [Q: $int] : ppp(Q,[2,3,(c & c)],Q),3],4)).
