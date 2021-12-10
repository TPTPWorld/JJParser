%------------------------------------------------------------------------------
% File     : NUM663^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 16a
% Version  : Especial.
% English  : less x z

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz16a [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.00 v6.1.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.2.0, 0.20 v4.1.0, 0.00 v4.0.0, 0.33 v3.7.0
% Syntax   : Number of formulae    :   10 (   4 unit;   5 type;   0 defn)
%            Number of atoms       :   30 (   1 equality;   8 variable)
%            Maximal formula depth :    8 (   4 average)
%            Number of connectives :   19 (   3   ~;   0   |;   0   &;  12    )
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
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

tff(less,type,(
    less: (nat * nat) > $o )).

tff(l,axiom,
    ( ~ less(x,y)
   => ( x = y ) )).

tff(k,axiom,
    less(y,z)).

tff(et,axiom,(
    ! [Xa: $o] :
      ( ~ ( ~ ( Xa ) )
     => Xa ) )).

tff(satz15,axiom,(
    ! [Xx: nat,Xy: nat,Xz: nat] :
      ( less(Xx,Xy)
     => ( less(Xy,Xz)
       => less(Xx,Xz) ) ) )).

tff(satz16a,conjecture,
    less(x,z)).

%------------------------------------------------------------------------------
