%------------------------------------------------------------------------------
% File     : NUM695^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 24b
% Version  : Especial.
% English  : more (suc x) n_1

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz24b [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.00 v6.1.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.2.0, 0.20 v4.1.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :   12 (   3 unit;   6 type;   0 defn)
%            Number of atoms       :   39 (   4 equality;  11 variable)
%            Maximal formula depth :    8 (   4 average)
%            Number of connectives :   20 (   6   ~;   0   |;   0   &;  12    )
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    5 (   5   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   6   :)
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

tff(more,type,(
    more: (nat * nat) > $o )).

tff(suc,type,(
    suc: nat > nat )).

tff(n_1,type,(
    n_1: nat )).

tff(et,axiom,(
    ! [Xa: $o] :
      ( ~ ( ~ ( Xa ) )
     => Xa ) )).

tff(satz3,axiom,(
    ! [Xx: nat] :
      ( ( Xx != n_1 )
     => ~ ( ! [Xx_0: nat] :
              ( Xx
             != suc(Xx_0) ) ) ) )).

tff(ax3,axiom,(
    ! [Xx: nat] :
      ( suc(Xx)
     != n_1 ) )).

tff(pl,type,(
    pl: (nat * nat) > nat )).

tff(satz18,axiom,(
    ! [Xx: nat,Xy: nat] :
      more(pl(Xx,Xy),Xx) )).

tff(satz4g,axiom,(
    ! [Xx: nat] :
      ( suc(Xx)
      = pl(n_1,Xx) ) )).

tff(satz24b,conjecture,
    more(suc(x),n_1)).

%------------------------------------------------------------------------------
