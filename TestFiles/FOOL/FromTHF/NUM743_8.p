%------------------------------------------------------------------------------
% File     : NUM743^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 51b
% Version  : Especial.
% English  : lessf x z

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz51b [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.17 v6.2.0, 0.00 v6.1.0, 0.17 v6.0.0, 0.00 v5.3.0, 0.25 v5.2.0, 0.00 v5.1.0, 0.25 v5.0.0, 0.00 v4.0.1, 0.33 v4.0.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :   13 (   4 unit;   6 type;   0 defn)
%            Number of atoms       :   48 (   0 equality;  18 variable)
%            Maximal formula depth :   10 (   4 average)
%            Number of connectives :   34 (   3   ~;   0   |;   0   &;  24    )
%                                         (   0 <=>;   7  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   6   :)
%            Number of variables   :    9 (   0 sgn;   9   !;   0   ?;   0   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_NEQ

% Comments : 
%------------------------------------------------------------------------------
tff(frac_type,type,(
    frac: $tType )).

tff(x,type,(
    x: frac )).

tff(y,type,(
    y: frac )).

tff(z,type,(
    z: frac )).

tff(lessf,type,(
    lessf: (frac * frac) > $o )).

tff(l,axiom,
    lessf(x,y)).

tff(eq,type,(
    eq: (frac * frac) > $o )).

tff(k,axiom,
    ( ~ lessf(y,z)
   => eq(y,z) )).

tff(et,axiom,(
    ! [Xa: $o] :
      ( ~ ( ~ ( Xa ) )
     => Xa ) )).

tff(satz45,axiom,(
    ! [Xx: frac,Xy: frac,Xz: frac,Xu: frac] :
      ( lessf(Xx,Xy)
     => ( eq(Xx,Xz)
       => ( eq(Xy,Xu)
         => lessf(Xz,Xu) ) ) ) )).

tff(satz37,axiom,(
    ! [Xx: frac] :
      eq(Xx,Xx) )).

tff(satz50,axiom,(
    ! [Xx: frac,Xy: frac,Xz: frac] :
      ( lessf(Xx,Xy)
     => ( lessf(Xy,Xz)
       => lessf(Xx,Xz) ) ) )).

tff(satz51b,conjecture,
    lessf(x,z)).

%------------------------------------------------------------------------------
