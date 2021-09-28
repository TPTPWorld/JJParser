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
%----<tff_defined_infix>. JJparser treats large1 and large1_reformatted the
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
tff(large3,axiom,
    ! [X: $o] :
      (X) =
        ? [Y: $o] :
          Y = ww(Y) ).
