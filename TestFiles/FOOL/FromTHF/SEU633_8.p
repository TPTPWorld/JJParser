%------------------------------------------------------------------------------
% File     : SEU633^2 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Set Theory
% Problem  : Ordered Pairs - Singletons
% Version  : Especial * Reduced > Especial.
% English  : (! A:i.! x:i.in x (setunion A) -> (? X:i.in X A & in x X))

% Refs     : [Bro08] Brown (2008), Email to G. Sutcliffe
% Source   : [Bro08]
% Names    : ZFC135l [Bro08]

% Status   : Theorem
% Rating   : 0.00 v6.0.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.2.0, 0.20 v4.1.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :    5 (   1 unit;   3 type;   1 defn)
%            Number of atoms       :   31 (   1 equality;  14 variable)
%            Maximal formula depth :   12 (   6 average)
%            Number of connectives :   21 (   0   ~;   0   |;   1   &;  14    )
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    5 (   3   :)
%            Number of variables   :    7 (   0 sgn;   6   !;   1   ?;   0   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : http://mathgate.info/detsetitem.php?id=190
%          : 
%------------------------------------------------------------------------------
tff(in_type,type,(
    in: ($i * $i) > $o )).

tff(setunion_type,type,(
    setunion: $i > $i )).

tff(setunionE_type,type,(
    setunionE: $o )).

tff(setunionE,definition,
    ( setunionE
    = ( ! [A: $i,Xx: $i] :
          ( in(Xx,setunion(A))
         => ! [Xphi: $o] :
              ( ! [B: $i] :
                  ( in(Xx,B)
                 => ( in(B,A)
                   => Xphi ) )
             => Xphi ) ) ) )).

tff(setunionE2,conjecture,
    ( setunionE
   => ! [A: $i,Xx: $i] :
        ( in(Xx,setunion(A))
       => ? [X: $i] :
            ( in(X,A)
            & in(Xx,X) ) ) )).

%------------------------------------------------------------------------------
