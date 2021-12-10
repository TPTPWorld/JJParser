%------------------------------------------------------------------------------
% File     : NUM783^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 81a
% Version  : Especial.
% English  : or3 (is x0 y0) (more x0 y0) (less x0 y0)

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz81a [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.17 v6.2.0, 0.00 v5.3.0, 0.25 v5.2.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :   11 (   3 unit;   8 type;   0 defn)
%            Number of atoms       :   52 (   0 equality;  14 variable)
%            Maximal formula depth :   11 (   5 average)
%            Number of connectives :   33 (   4   ~;   0   |;   0   &;  27    )
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :   12 (  12   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   8   :)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_NEQ

% Comments : 
%------------------------------------------------------------------------------
tff(rat_type,type,(
    rat: $tType )).

tff(x0,type,(
    x0: rat )).

tff(y0,type,(
    y0: rat )).

tff(or3,type,(
    or3: ($o * $o * $o) > $o )).

tff(is,type,(
    is: (rat * rat) > $o )).

tff(more,type,(
    more: (rat * rat) > $o )).

tff(less,type,(
    less: (rat * rat) > $o )).

tff(et,axiom,(
    ! [Xa: $o] :
      ( ~ ( ~ ( Xa ) )
     => Xa ) )).

tff(ec3,type,(
    ec3: ($o * $o * $o) > $o )).

tff(satz81,axiom,(
    ! [Xx0: rat,Xy0: rat] :
      ~ ( or3(is(Xx0,Xy0),more(Xx0,Xy0),less(Xx0,Xy0))
       => ~ ec3(is(Xx0,Xy0),more(Xx0,Xy0),less(Xx0,Xy0)) ) )).

tff(satz81a,conjecture,
    or3(is(x0,y0),more(x0,y0),less(x0,y0))).

%------------------------------------------------------------------------------
