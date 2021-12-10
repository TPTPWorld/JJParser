%------------------------------------------------------------------------------
% File     : NUM651^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 9b
% Version  : Especial.
% English  : ~((x = y -> ~(~(forall x_0:nat.~(x = pl y x_0)))) ->
%            ~(~((~(forall x_0:nat.~(x = pl y x_0)) ->
%            ~(~(forall x_0:nat.~(y = pl x x_0)))) ->
%            ~(~(forall x_0:nat.~(y = pl x x_0)) -> ~(x = y)))))

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz9b [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.43 v5.5.0, 0.50 v5.4.0, 0.60 v5.1.0, 0.80 v5.0.0, 0.60 v4.1.0, 0.33 v4.0.1, 0.67 v4.0.0, 0.33 v3.7.0
% Syntax   : Number of formulae    :    9 (   3 unit;   4 type;   0 defn)
%            Number of atoms       :   57 (   9 equality;  19 variable)
%            Maximal formula depth :   14 (   6 average)
%            Number of connectives :   46 (  18   ~;   0   |;   0   &;  22    )
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   4   :)
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

tff(satz7,axiom,(
    ! [Xx: nat,Xy: nat] :
      ( Xy
     != pl(Xx,Xy) ) )).

tff(satz6,axiom,(
    ! [Xx: nat,Xy: nat] :
      ( pl(Xx,Xy)
      = pl(Xy,Xx) ) )).

tff(et,axiom,(
    ! [Xa: $o] :
      ( ~ ( ~ ( Xa ) )
     => Xa ) )).

tff(satz5,axiom,(
    ! [Xx: nat,Xy: nat,Xz: nat] :
      ( pl(pl(Xx,Xy),Xz)
      = pl(Xx,pl(Xy,Xz)) ) )).

tff(satz9b,conjecture,(
    ~ ( ( ( x = y )
       => ~ ( ~ ( ! [Xx_0: nat] :
                    ( x
                   != pl(y,Xx_0) ) ) ) )
     => ~ ( ~ ( ( ~ ( ! [Xx_0: nat] :
                        ( x
                       != pl(y,Xx_0) ) )
               => ~ ( ~ ( ! [Xx_0: nat] :
                            ( y
                           != pl(x,Xx_0) ) ) ) )
             => ~ ( ~ ( ! [Xx_0: nat] :
                          ( y
                         != pl(x,Xx_0) ) )
                 => ( x != y ) ) ) ) ) )).

%------------------------------------------------------------------------------
