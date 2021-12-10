%------------------------------------------------------------------------------
% File     : NUM788^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 81g
% Version  : Especial.
% English  : ~(~(less x0 y0) -> is x0 y0)

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz81g [Lan30]
%          : satz41g [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.00 v5.3.0, 0.25 v5.2.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :   10 (   3 unit;   6 type;   0 defn)
%            Number of atoms       :   41 (   0 equality;  14 variable)
%            Maximal formula depth :   13 (   4 average)
%            Number of connectives :   36 (  11   ~;   0   |;   0   &;  18    )
%                                         (   0 <=>;   7  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    6 (   6   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   6   :)
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

tff(more,type,(
    more: (rat * rat) > $o )).

tff(m,axiom,
    more(x0,y0)).

tff(less,type,(
    less: (rat * rat) > $o )).

tff(is,type,(
    is: (rat * rat) > $o )).

tff(et,axiom,(
    ! [Xa: $o] :
      ( ~ ( ~ ( Xa ) )
     => Xa ) )).

tff(satz81b,axiom,(
    ! [Xx0: rat,Xy0: rat] :
      ~ ( ( is(Xx0,Xy0)
         => ~ more(Xx0,Xy0) )
       => ~ ( ~ ( ( more(Xx0,Xy0)
                 => ~ less(Xx0,Xy0) )
               => ~ ( less(Xx0,Xy0)
                   => ~ is(Xx0,Xy0) ) ) ) ) )).

tff(satz81g,conjecture,(
    ~ ( ~ less(x0,y0)
     => is(x0,y0) ) )).

%------------------------------------------------------------------------------
