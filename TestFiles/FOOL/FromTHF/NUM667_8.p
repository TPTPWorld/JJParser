%------------------------------------------------------------------------------
% File     : NUM667^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 17
% Version  : Especial.
% English  : ~(less x z) -> x = z

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz17 [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.00 v6.1.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v4.1.0, 0.33 v4.0.1, 0.67 v4.0.0, 0.33 v3.7.0
% Syntax   : Number of formulae    :   11 (   4 unit;   5 type;   0 defn)
%            Number of atoms       :   51 (   5 equality;  18 variable)
%            Maximal formula depth :   10 (   5 average)
%            Number of connectives :   35 (   7   ~;   0   |;   0   &;  18    )
%                                         (   0 <=>;  10  =>;   0  <=;   0 <~>)
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

tff(less,type,(
    less: (nat * nat) > $o )).

tff(l,axiom,
    ( ~ less(x,y)
   => ( x = y ) )).

tff(k,axiom,
    ( ~ less(y,z)
   => ( y = z ) )).

tff(et,axiom,(
    ! [Xa: $o] :
      ( ~ ( ~ ( Xa ) )
     => Xa ) )).

tff(satz16a,axiom,(
    ! [Xx: nat,Xy: nat,Xz: nat] :
      ( ( ~ less(Xx,Xy)
       => ( Xx = Xy ) )
     => ( less(Xy,Xz)
       => less(Xx,Xz) ) ) )).

tff(satz16b,axiom,(
    ! [Xx: nat,Xy: nat,Xz: nat] :
      ( less(Xx,Xy)
     => ( ( ~ less(Xy,Xz)
         => ( Xy = Xz ) )
       => less(Xx,Xz) ) ) )).

tff(satz17,conjecture,
    ( ~ less(x,z)
   => ( x = z ) )).

%------------------------------------------------------------------------------
