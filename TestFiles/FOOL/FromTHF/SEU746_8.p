%------------------------------------------------------------------------------
% File     : SEU746^2 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Set Theory
% Problem  : Typed Set Theory - Laws for Typed Sets
% Version  : Especial * Reduced > Especial.
% English  : (! A:i.! X:i.in X (powerset A) -> (! Y:i.in Y (powerset A) ->
%            (! phi:o.! x:i.in x A -> in x (binunion X Y) ->
%            (in x X -> phi) -> (in x Y -> phi) -> phi)))

% Refs     : [Bro08] Brown (2008), Email to G. Sutcliffe
% Source   : [Bro08]
% Names    : ZFC248l [Bro08]

% Status   : Theorem
% Rating   : 0.00 v6.0.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.2.0, 0.20 v4.1.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :    6 (   1 unit;   4 type;   1 defn)
%            Number of atoms       :   48 (   1 equality;  23 variable)
%            Maximal formula depth :   16 (   6 average)
%            Number of connectives :   35 (   0   ~;   1   |;   0   &;  24    )
%                                         (   0 <=>;  10  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    5 (   5   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   4   :)
%            Number of variables   :    8 (   0 sgn;   8   !;   0   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : http://mathgate.info/detsetitem.php?id=308
%          : 
%------------------------------------------------------------------------------
tff(in_type,type,(
    in: ($i * $i) > $o )).

tff(powerset_type,type,(
    powerset: $i > $i )).

tff(binunion_type,type,(
    binunion: ($i * $i) > $i )).

tff(binunionE_type,type,(
    binunionE: $o )).

tff(binunionE,definition,
    ( binunionE
    = ( ! [A: $i,B: $i,Xx: $i] :
          ( in(Xx,binunion(A,B))
         => ( in(Xx,A)
            | in(Xx,B) ) ) ) )).

tff(binunionTE,conjecture,
    ( binunionE
   => ! [A: $i,X: $i] :
        ( in(X,powerset(A))
       => ! [Y: $i] :
            ( in(Y,powerset(A))
           => ! [Xphi: $o,Xx: $i] :
                ( in(Xx,A)
               => ( in(Xx,binunion(X,Y))
                 => ( ( in(Xx,X)
                     => Xphi )
                   => ( ( in(Xx,Y)
                       => Xphi )
                     => Xphi ) ) ) ) ) ) )).

%------------------------------------------------------------------------------
