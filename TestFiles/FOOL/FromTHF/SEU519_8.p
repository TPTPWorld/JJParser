%------------------------------------------------------------------------------
% File     : SEU519^2 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Set Theory
% Problem  : Preliminary Notions - Power Sets and Unions
% Version  : Especial * Reduced > Especial.
% English  : (! A:i.in emptyset (powerset A))

% Refs     : [Bro08] Brown (2008), Email to G. Sutcliffe
% Source   : [Bro08]
% Names    : ZFC021l [Bro08]
%          : ZFC022l [Bro08]

% Status   : Theorem
% Rating   : 0.00 v6.0.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.2.0, 0.20 v4.1.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :    8 (   3 unit;   5 type;   2 defn)
%            Number of atoms       :   32 (   2 equality;   9 variable)
%            Maximal formula depth :    9 (   4 average)
%            Number of connectives :   17 (   0   ~;   0   |;   0   &;  12    )
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   5   :)
%            Number of variables   :    6 (   0 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : http://mathgate.info/detsetitem.php?id=389
%          : 
%------------------------------------------------------------------------------
tff(in_type,type,(
    in: ($i * $i) > $o )).

tff(emptyset_type,type,(
    emptyset: $i )).

tff(powerset_type,type,(
    powerset: $i > $i )).

tff(emptysetE_type,type,(
    emptysetE: $o )).

tff(emptysetE,definition,
    ( emptysetE
    = ( ! [Xx: $i] :
          ( in(Xx,emptyset)
         => ! [Xphi: $o] : Xphi ) ) )).

tff(powersetI_type,type,(
    powersetI: $o )).

tff(powersetI,definition,
    ( powersetI
    = ( ! [A: $i,B: $i] :
          ( ! [Xx: $i] :
              ( in(Xx,B)
             => in(Xx,A) )
         => in(B,powerset(A)) ) ) )).

tff(emptyinPowerset,conjecture,
    ( emptysetE
   => ( powersetI
     => ! [A: $i] :
          in(emptyset,powerset(A)) ) )).

%------------------------------------------------------------------------------
