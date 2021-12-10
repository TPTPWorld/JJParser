tff(a,type,a: $o).
tff(b,type,b: $o).
tff(c,type,c: $o).
tff(p,type,p: $o > $o).
tff(q,type,q: $i > $i).
tff(r,type,r: ($i * $i) > $i).

tff(1,axiom,p( $ite(c,a,b) = $false ) ).

tff(2,axiom,p( $ite(c,a,b) | $false ) ).

tff(3,axiom,p( $ite(c,a,b) = $false ) ).

tff(4,axiom,p( $ite(c,a,b) | $false ) ).

tff(5,axiom,$ite(c,a,b ) ).

tff(6,axiom,$ite(c,a,b ) ).

tff(7,axiom,$ite(c,a,b ) ).

tff(8,axiom,p( $ite(c,a,b) = $false ) ).

tff(9,axiom,p( ( $ite(c,a,b) 
               | $false ) ) ).

tff(10,axiom,p( $ite(c,a,b) ) ).

tff(11,axiom,p( $ite(c,a,b) ) ).

tff(12,axiom,p( $ite(c,a,b) ) ).

tff(13,axiom,$ite($ite(c,a,b),a,b) ).

tff(14,axiom,$ite(c,$ite(c,a,b),b) ).

tff(15,axiom,$ite(c,a,$ite(c,a,b)) ).

tff(16,axiom,i = $ite(c,i,i) ).

tff(17,axiom,$ite(c,i,i) = i ).

tff(18,axiom,q( $ite(c,i,i) ) = i ).

tff(19,axiom,p( $ite(c,i,i) = i ) ).

tff(20,axiom,p(p(p( $ite(c,i,i) = i ))) ).

tff(21,axiom,
    ( r($ite(c,i,i),
        $ite(c,i,i) ) 
    = i ) ).

tff(22,axiom,
    ( $ite(c,
        q( $ite(c,i,i) ),
        i ) 
    = i ) ).
