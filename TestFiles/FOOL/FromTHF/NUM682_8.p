%------------------------------------------------------------------------------
% File     : NUM682^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 20c
% Version  : Especial.
% English  : less x y

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz20c [Lan30]
%          : satz33c [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.00 v6.1.0, 0.14 v6.0.0, 0.29 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.2.0, 0.20 v4.1.0, 0.00 v4.0.1, 0.33 v3.7.0
% Syntax   : Number of formulae    :   14 (   4 unit;   7 type;   0 defn)
%            Number of atoms       :   72 (   5 equality;  32 variable)
%            Maximal formula depth :   12 (   5 average)
%            Number of connectives :   53 (  11   ~;   0   |;   0   &;  32    )
%                                         (   0 <=>;  10  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    6 (   6   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   7   :)
%            Number of variables   :   11 (   0 sgn;  11   !;   0   ?;   0   ^)
%                                         (  11   :;   0  !>;   0  ?*)
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

tff(pl,type,(
    pl: (nat * nat) > nat )).

tff(l,axiom,
    less(pl(x,z),pl(y,z))).

tff(et,axiom,(
    ! [Xa: $o] :
      ( ~ ( ~ ( Xa ) )
     => Xa ) )).

tff(more,type,(
    more: (nat * nat) > $o )).

tff(satz10b,axiom,(
    ! [Xx: nat,Xy: nat] :
      ~ ( ( ( Xx = Xy )
         => ~ more(Xx,Xy) )
       => ~ ( ~ ( ( more(Xx,Xy)
                 => ~ less(Xx,Xy) )
               => ~ ( less(Xx,Xy)
                   => ( Xx != Xy ) ) ) ) ) )).

tff(satz19a,axiom,(
    ! [Xx: nat,Xy: nat,Xz: nat] :
      ( more(Xx,Xy)
     => more(pl(Xx,Xz),pl(Xy,Xz)) ) )).

tff(satz19b,axiom,(
    ! [Xx: nat,Xy: nat,Xz: nat] :
      ( ( Xx = Xy )
     => ( pl(Xx,Xz)
        = pl(Xy,Xz) ) ) )).

tff(satz10a,axiom,(
    ! [Xx: nat,Xy: nat] :
      ( ( Xx != Xy )
     => ( ~ more(Xx,Xy)
       => less(Xx,Xy) ) ) )).

tff(satz20c,conjecture,
    less(x,y)).

%------------------------------------------------------------------------------
