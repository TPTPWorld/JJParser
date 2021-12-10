%------------------------------------------------------------------------------
% File     : NUM647^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 8a
% Version  : Especial.
% English  : y = z

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz8a [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.00 v6.0.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.2.0, 0.20 v5.1.0, 0.40 v5.0.0, 0.20 v4.1.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :    9 (   4 unit;   5 type;   0 defn)
%            Number of atoms       :   29 (   4 equality;   8 variable)
%            Maximal formula depth :    9 (   4 average)
%            Number of connectives :   14 (   4   ~;   0   |;   0   &;   8    )
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    8 (   5   :)
%            Number of variables   :    4 (   0 sgn;   4   !;   0   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
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

tff(i,axiom,
    ( pl(x,y)
    = pl(x,z) )).

tff(et,axiom,(
    ! [Xa: $o] :
      ( ~ ( ~ ( Xa ) )
     => Xa ) )).

tff(satz8,axiom,(
    ! [Xx: nat,Xy: nat,Xz: nat] :
      ( ( Xy != Xz )
     => ( pl(Xx,Xy)
       != pl(Xx,Xz) ) ) )).

tff(satz8a,conjecture,(
    y = z )).

%------------------------------------------------------------------------------
