%------------------------------------------------------------------------------
% File     : NUM653^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 10d
% Version  : Especial.
% English  : ~(more x y)

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz10d [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.00 v6.1.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v4.1.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :    9 (   3 unit;   5 type;   0 defn)
%            Number of atoms       :   38 (   3 equality;  14 variable)
%            Maximal formula depth :   12 (   4 average)
%            Number of connectives :   30 (  11   ~;   0   |;   0   &;  12    )
%                                         (   0 <=>;   7  =>;   0  <=;   0 <~>)
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

tff(less,type,(
    less: (nat * nat) > $o )).

tff(l,axiom,
    ( ~ less(x,y)
   => ( x = y ) )).

tff(more,type,(
    more: (nat * nat) > $o )).

tff(et,axiom,(
    ! [Xa: $o] :
      ( ~ ( ~ ( Xa ) )
     => Xa ) )).

tff(satz10b,axiom,(
    ! [Xx: nat,Xy: nat] :
      ~ ( ( ( Xx = Xy )
         => ~ more(Xx,Xy) )
       => ~ ( ~ ( ( more(Xx,Xy)
                 => ~ less(Xx,Xy) )
               => ~ ( less(Xx,Xy)
                   => ( Xx != Xy ) ) ) ) ) )).

tff(satz10d,conjecture,(
    ~ more(x,y) )).

%------------------------------------------------------------------------------
