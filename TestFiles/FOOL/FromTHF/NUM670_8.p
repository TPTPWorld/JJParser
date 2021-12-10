%------------------------------------------------------------------------------
% File     : NUM670^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 19a
% Version  : Especial.
% English  : ~(forall x_0:nat.~(pl x z = pl (pl y z) x_0))

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz19a [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.14 v5.5.0, 0.33 v5.4.0, 0.40 v5.3.0, 0.60 v5.2.0, 0.40 v5.1.0, 0.60 v5.0.0, 0.40 v4.1.0, 0.00 v4.0.1, 0.33 v3.7.0
% Syntax   : Number of formulae    :   10 (   4 unit;   5 type;   0 defn)
%            Number of atoms       :   41 (   4 equality;  14 variable)
%            Maximal formula depth :    9 (   5 average)
%            Number of connectives :   27 (   6   ~;   0   |;   0   &;  20    )
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    8 (   5   :)
%            Number of variables   :    8 (   0 sgn;   8   !;   0   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : 
%------------------------------------------------------------------------------
tff(nat_type,type,(
    nat: $tType )).

tff(x,type,(
    x: nat )).

tff(y,type,(
    y: nat )).

tff(z,type,(
    z: nat )).

tff(pl,type,(
    pl: (nat * nat) > nat )).

tff(m,axiom,(
    ~ ( ! [Xx_0: nat] :
          ( x
         != pl(y,Xx_0) ) ) )).

tff(et,axiom,(
    ! [Xa: $o] :
      ( ~ ( ~ ( Xa ) )
     => Xa ) )).

tff(satz6,axiom,(
    ! [Xx: nat,Xy: nat] :
      ( pl(Xx,Xy)
      = pl(Xy,Xx) ) )).

tff(satz5,axiom,(
    ! [Xx: nat,Xy: nat,Xz: nat] :
      ( pl(pl(Xx,Xy),Xz)
      = pl(Xx,pl(Xy,Xz)) ) )).

tff(satz19a,conjecture,(
    ~ ( ! [Xx_0: nat] :
          ( pl(x,z)
         != pl(pl(y,z),Xx_0) ) ) )).

%------------------------------------------------------------------------------
