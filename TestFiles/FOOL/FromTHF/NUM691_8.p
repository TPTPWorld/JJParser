%------------------------------------------------------------------------------
% File     : NUM691^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 23
% Version  : Especial.
% English  : ~(more (pl x z) (pl y u)) -> pl x z = pl y u

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz23 [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.00 v6.1.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.1.0, 0.60 v5.0.0, 0.40 v4.1.0, 0.33 v3.7.0
% Syntax   : Number of formulae    :   13 (   5 unit;   7 type;   0 defn)
%            Number of atoms       :   71 (   5 equality;  22 variable)
%            Maximal formula depth :   11 (   5 average)
%            Number of connectives :   51 (   7   ~;   0   |;   0   &;  34    )
%                                         (   0 <=>;  10  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   7   :)
%            Number of variables   :    9 (   0 sgn;   9   !;   0   ?;   0   ^)
%                                         (   9   :;   0  !>;   0  ?*)
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

tff(u,type,(
    u: nat )).

tff(more,type,(
    more: (nat * nat) > $o )).

tff(m,axiom,
    ( ~ more(x,y)
   => ( x = y ) )).

tff(n,axiom,
    ( ~ more(z,u)
   => ( z = u ) )).

tff(pl,type,(
    pl: (nat * nat) > nat )).

tff(et,axiom,(
    ! [Xa: $o] :
      ( ~ ( ~ ( Xa ) )
     => Xa ) )).

tff(satz22a,axiom,(
    ! [Xx: nat,Xy: nat,Xz: nat,Xu: nat] :
      ( ( ~ more(Xx,Xy)
       => ( Xx = Xy ) )
     => ( more(Xz,Xu)
       => more(pl(Xx,Xz),pl(Xy,Xu)) ) ) )).

tff(satz22b,axiom,(
    ! [Xx: nat,Xy: nat,Xz: nat,Xu: nat] :
      ( more(Xx,Xy)
     => ( ( ~ more(Xz,Xu)
         => ( Xz = Xu ) )
       => more(pl(Xx,Xz),pl(Xy,Xu)) ) ) )).

tff(satz23,conjecture,
    ( ~ more(pl(x,z),pl(y,u))
   => ( pl(x,z)
      = pl(y,u) ) )).

%------------------------------------------------------------------------------
