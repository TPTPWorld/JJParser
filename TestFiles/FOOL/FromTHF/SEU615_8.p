%------------------------------------------------------------------------------
% File     : SEU615^2 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Set Theory
% Problem  : Preliminary Notions - Operations on Sets - Symmetric Difference
% Version  : Especial * Reduced > Especial.
% English  : (! A:i.! B:i.! x:i.~(in x A) -> ~(in x B) -> ~(in x
%            (symdiff A B)))

% Refs     : [Bro08] Brown (2008), Email to G. Sutcliffe
% Source   : [Bro08]
% Names    : ZFC117l [Bro08]

% Status   : Theorem
% Rating   : 0.00 v6.0.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.2.0, 0.20 v4.1.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :    5 (   1 unit;   3 type;   1 defn)
%            Number of atoms       :   41 (   1 equality;  21 variable)
%            Maximal formula depth :   13 (   7 average)
%            Number of connectives :   35 (   5   ~;   0   |;   0   &;  20    )
%                                         (   0 <=>;  10  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   3   :)
%            Number of variables   :    7 (   0 sgn;   7   !;   0   ?;   0   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : http://mathgate.info/detsetitem.php?id=493
%          : 
%------------------------------------------------------------------------------
tff(in_type,type,(
    in: ($i * $i) > $o )).

tff(symdiff_type,type,(
    symdiff: ($i * $i) > $i )).

tff(symdiffE_type,type,(
    symdiffE: $o )).

tff(symdiffE,definition,
    ( symdiffE
    = ( ! [A: $i,B: $i,Xx: $i] :
          ( in(Xx,symdiff(A,B))
         => ! [Xphi: $o] :
              ( ( in(Xx,A)
               => ( ~ in(Xx,B)
                 => Xphi ) )
             => ( ( ~ in(Xx,A)
                 => ( in(Xx,B)
                   => Xphi ) )
               => Xphi ) ) ) ) )).

tff(symdiffIneg2,conjecture,
    ( symdiffE
   => ! [A: $i,B: $i,Xx: $i] :
        ( ~ in(Xx,A)
       => ( ~ in(Xx,B)
         => ~ in(Xx,symdiff(A,B)) ) ) )).

%------------------------------------------------------------------------------
