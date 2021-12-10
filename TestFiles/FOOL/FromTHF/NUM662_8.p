%------------------------------------------------------------------------------
% File     : NUM662^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 15
% Version  : Especial.
% English  : ~(forall x_0:nat.~(z = pl x x_0))

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz15 [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.14 v5.5.0, 0.33 v5.4.0, 0.20 v5.3.0, 0.40 v4.1.0, 0.00 v4.0.0, 0.33 v3.7.0
% Syntax   : Number of formulae    :   10 (   4 unit;   5 type;   0 defn)
%            Number of atoms       :   35 (   4 equality;  11 variable)
%            Maximal formula depth :    9 (   5 average)
%            Number of connectives :   23 (   8   ~;   0   |;   0   &;  14    )
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    8 (   5   :)
%            Number of variables   :    7 (   0 sgn;   7   !;   0   ?;   0   ^)
%                                         (   7   :;   0  !>;   0  ?*)
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

tff(l,axiom,(
    ~ ( ! [Xx_0: nat] :
          ( y
         != pl(x,Xx_0) ) ) )).

tff(k,axiom,(
    ~ ( ! [Xx: nat] :
          ( z
         != pl(y,Xx) ) ) )).

tff(et,axiom,(
    ! [Xa: $o] :
      ( ~ ( ~ ( Xa ) )
     => Xa ) )).

tff(satz5,axiom,(
    ! [Xx: nat,Xy: nat,Xz: nat] :
      ( pl(pl(Xx,Xy),Xz)
      = pl(Xx,pl(Xy,Xz)) ) )).

tff(satz15,conjecture,(
    ~ ( ! [Xx_0: nat] :
          ( z
         != pl(x,Xx_0) ) ) )).

%------------------------------------------------------------------------------
