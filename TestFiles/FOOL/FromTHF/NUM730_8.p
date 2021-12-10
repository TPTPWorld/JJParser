%------------------------------------------------------------------------------
% File     : NUM730^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 41
% Version  : Especial.
% English  : orec3 (ts (1x x) (2y y) = ts (1y y) (2x x)) (more (ts (1x x)
%            (2y y)) (ts (1y y) (2x x))) (less (ts (1x x) (2y y)) (ts (1y y)
%            (2x x)))

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz41 [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.00 v6.0.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v4.1.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :   14 (   4 unit;  12 type;   0 defn)
%            Number of atoms       :   69 (   2 equality;   6 variable)
%            Maximal formula depth :    8 (   4 average)
%            Number of connectives :   38 (   0   ~;   0   |;   0   &;  38    )
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :   13 (  13   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (  12   :)
%            Number of variables   :    2 (   0 sgn;   2   !;   0   ?;   0   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : 
%------------------------------------------------------------------------------
tff(frac_type,type,(
    frac: $tType )).

tff(x,type,(
    x: frac )).

tff(y,type,(
    y: frac )).

tff(orec3,type,(
    orec3: ($o * $o * $o) > $o )).

tff(nat_type,type,(
    nat: $tType )).

tff(ts,type,(
    ts: (nat * nat) > nat )).

tff(c1x,type,(
    c1x: frac > nat )).

tff(c2y,type,(
    c2y: frac > nat )).

tff(c1y,type,(
    c1y: frac > nat )).

tff(c2x,type,(
    c2x: frac > nat )).

tff(more,type,(
    more: (nat * nat) > $o )).

tff(less,type,(
    less: (nat * nat) > $o )).

tff(satz10,axiom,(
    ! [Xx: nat,Xy: nat] :
      orec3 ( Xx = Xy , more(Xx,Xy) , less(Xx,Xy) ) )).

tff(satz41,conjecture,
    orec3 ( ( ts(c1x(x),c2y(y)) = ts(c1y(y),c2x(x)) ) , more(ts(c1x(x),c2y(y)),ts(c1y(y),c2x(x))) , less(ts(c1x(x),c2y(y)),ts(c1y(y),c2x(x))) )).

%------------------------------------------------------------------------------
