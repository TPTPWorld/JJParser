tff(ww,type,ww: $o > $o ).
tff(c,type,c: $o).
tff(ee,type,ee: ($o * $o) > $o).
tff(qq,type,qq: $o > $o).

tff(large,axiom,
    ! [X: $o] : 
      ( qq( 
          ! [Z: $o] : 
            ee( ( Z 
                & ( ( X = ww(Z) ) 
                  | c ) )
              , $false) )
      | X 
      | ( X = 
          ? [Y: $o] : 
            ( Y = ww(Y) ) ) ) ).

tff(large,axiom,(
    ! [X: $o] :
      ( qq(
          ! [Z: $o] : ee(
  Z
  & ( X = ww(Z)
    | c ),$false))
      | X
      | X

tff(aaa,type,thing : $tType).
tff(bbb,type,f : $o > thing).
tff(eee,type,g : thing).
tff(ccc,type,p : (thing * $o) > $o).
tff(ddd,type,q : $o).
tff(afs,axiom,p(f(? [Y: $int] : (( q & q) => q )),! [X:$int] : (q => p(g,$true)) )).

