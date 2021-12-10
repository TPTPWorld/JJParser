%------------------------------------------------------------------------------
% File     : SEU787^2 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Set Theory
% Problem  : Binary Relations on a Set
% Version  : Especial * Reduced > Especial.
% English  : (! A:i.! R:i.breln1 A R -> (! S:i.breln1 A S -> (! x:i.in x A ->
%            (! y:i.in y A -> in (kpair x y) (binunion R S) ->
%            (! phi:o.(in (kpair x y) R -> phi) ->
%            (in (kpair x y) S -> phi) -> phi)))))

% Refs     : [Bro08] Brown (2008), Email to G. Sutcliffe
% Source   : [Bro08]
% Names    : ZFC289l [Bro08]

% Status   : Theorem
% Rating   : 0.00 v6.1.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.2.0, 0.20 v5.1.0, 0.40 v5.0.0, 0.20 v4.1.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :    7 (   1 unit;   5 type;   1 defn)
%            Number of atoms       :   77 (   1 equality;  39 variable)
%            Maximal formula depth :   20 (   8 average)
%            Number of connectives :   60 (   0   ~;   1   |;   0   &;  44    )
%                                         (   0 <=>;  15  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    8 (   8   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   5   :)
%            Number of variables   :   11 (   0 sgn;  11   !;   0   ?;   0   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : http://mathgate.info/detsetitem.php?id=352
%          : 
%------------------------------------------------------------------------------
tff(in_type,type,(
    in: ($i * $i) > $o )).

tff(binunion_type,type,(
    binunion: ($i * $i) > $i )).

tff(kpair_type,type,(
    kpair: ($i * $i) > $i )).

tff(breln1_type,type,(
    breln1: ($i * $i) > $o )).

tff(breln1unionE_type,type,(
    breln1unionE: $o )).

tff(breln1unionE,definition,
    ( breln1unionE
    = ( ! [A: $i,R: $i] :
          ( breln1(A,R)
         => ! [S: $i] :
              ( breln1(A,S)
             => ! [Xx: $i] :
                  ( in(Xx,A)
                 => ! [Xy: $i] :
                      ( in(Xy,A)
                     => ( in(kpair(Xx,Xy),binunion(R,S))
                       => ( in(kpair(Xx,Xy),R)
                          | in(kpair(Xx,Xy),S) ) ) ) ) ) ) ) )).

tff(breln1unionEcases,conjecture,
    ( breln1unionE
   => ! [A: $i,R: $i] :
        ( breln1(A,R)
       => ! [S: $i] :
            ( breln1(A,S)
           => ! [Xx: $i] :
                ( in(Xx,A)
               => ! [Xy: $i] :
                    ( in(Xy,A)
                   => ( in(kpair(Xx,Xy),binunion(R,S))
                     => ! [Xphi: $o] :
                          ( ( in(kpair(Xx,Xy),R)
                           => Xphi )
                         => ( ( in(kpair(Xx,Xy),S)
                             => Xphi )
                           => Xphi ) ) ) ) ) ) ) )).

%------------------------------------------------------------------------------
