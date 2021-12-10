%------------------------------------------------------------------------------
% File     : NUM654^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 10e
% Version  : Especial.
% English  : ~(less x y) -> x = y

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz10e [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.00 v6.0.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.2.0, 0.20 v4.1.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :    9 (   3 unit;   5 type;   0 defn)
%            Number of atoms       :   29 (   2 equality;   8 variable)
%            Maximal formula depth :    8 (   4 average)
%            Number of connectives :   18 (   6   ~;   0   |;   0   &;   8    )
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    8 (   5   :)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
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

tff(more,type,(
    more: (nat * nat) > $o )).

tff(n,axiom,(
    ~ more(x,y) )).

tff(less,type,(
    less: (nat * nat) > $o )).

tff(et,axiom,(
    ! [Xa: $o] :
      ( ~ ( ~ ( Xa ) )
     => Xa ) )).

tff(satz10a,axiom,(
    ! [Xx: nat,Xy: nat] :
      ( ( Xx != Xy )
     => ( ~ more(Xx,Xy)
       => less(Xx,Xy) ) ) )).

tff(satz10e,conjecture,
    ( ~ less(x,y)
   => ( x = y ) )).

%------------------------------------------------------------------------------
