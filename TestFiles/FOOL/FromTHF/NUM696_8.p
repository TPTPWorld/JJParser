%------------------------------------------------------------------------------
% File     : NUM696^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 25
% Version  : Especial.
% English  : ~(~(forall x_0:nat.~(y = pl (pl x n_1) x_0))) -> y = pl x n_1

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz25 [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.43 v5.5.0, 0.50 v5.4.0, 0.60 v5.1.0, 0.80 v5.0.0, 0.60 v4.1.0, 0.33 v4.0.1, 0.67 v4.0.0, 0.33 v3.7.0
% Syntax   : Number of formulae    :   11 (   4 unit;   5 type;   0 defn)
%            Number of atoms       :   55 (   8 equality;  19 variable)
%            Maximal formula depth :   13 (   6 average)
%            Number of connectives :   40 (  14   ~;   0   |;   0   &;  22    )
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    8 (   5   :)
%            Number of variables   :   12 (   0 sgn;  12   !;   0   ?;   0   ^)
%                                         (  12   :;   0  !>;   0  ?*)
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

tff(pl,type,(
    pl: (nat * nat) > nat )).

tff(m,axiom,(
    ~ ( ! [Xx_0: nat] :
          ( y
         != pl(x,Xx_0) ) ) )).

tff(n_1,type,(
    n_1: nat )).

tff(et,axiom,(
    ! [Xa: $o] :
      ( ~ ( ~ ( Xa ) )
     => Xa ) )).

tff(satz24,axiom,(
    ! [Xx: nat] :
      ( ~ ( ~ ( ! [Xx_0: nat] :
                  ( Xx
                 != pl(n_1,Xx_0) ) ) )
     => ( Xx = n_1 ) ) )).

tff(satz19a,axiom,(
    ! [Xx: nat,Xy: nat,Xz: nat] :
      ( ~ ( ! [Xx_0: nat] :
              ( Xx
             != pl(Xy,Xx_0) ) )
     => ~ ( ! [Xx_0: nat] :
              ( pl(Xx,Xz)
             != pl(pl(Xy,Xz),Xx_0) ) ) ) )).

tff(satz6,axiom,(
    ! [Xx: nat,Xy: nat] :
      ( pl(Xx,Xy)
      = pl(Xy,Xx) ) )).

tff(satz25,conjecture,
    ( ~ ( ~ ( ! [Xx_0: nat] :
                ( y
               != pl(pl(x,n_1),Xx_0) ) ) )
   => ( y
      = pl(x,n_1) ) )).

%------------------------------------------------------------------------------
