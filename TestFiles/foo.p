tff(ww,type,ww: $o > $o ).
tff(c,type,c: $o).
tff(ee,type,ee: ($o * $o) > $o).
tff(qq,type,qq: $o > $o).

%----TPTP4X and SyntaxBNF like this. The (X) is a <tff_logic_formula> within
%----<tff_unitary_term>. If the ()s are left off (X) then the X is a <variable>
%----within <tff_unitary_term>. The scope of the ! [X: $o] is the whole thing
%--- that is a <tff_unit_formula>. 
%tff(large1,axiom,
%    ! [X: $o] : 
%      (X) = 
%        ( ? [Y: $o] : 
%          Y = ww(Y) )).

%----Added ()s to make it a <tff_defined_infix> at the top level.
%tff(large2,axiom,
%    ( ! [X: $o] : (X) ) = 
%    ( ? [Y: $o] : Y = ww(Y) )).

%----TPTP4X likes this (should not). SyntaxBNF dislikes the ? not ()ed
%----But TPTP4X reformats to large4, which is correct but TPTP4X dislikes!
%tff(large3,axiom,
%    ! [X: $o] : 
%      (X) = 
%        ? [Y: $o] : 
%          Y = ww(Y) ).

%----SyntaxBNF likes this but TPTP4X does not (should!)
tff(large4,axiom,
    ! [X: $o] : 
       X = 
        ( ? [Y: $o] : 
          Y = ww(Y)  )).
