%------------------------------------------------------------------------------
% File     : NUM746^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 52
% Version  : Especial.
% English  : ~(lessf x z) -> eq x z

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz52 [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.00 v6.1.0, 0.17 v6.0.0, 0.00 v5.3.0, 0.25 v5.2.0, 0.00 v5.1.0, 0.25 v5.0.0, 0.00 v4.0.1, 0.33 v3.7.0
% Syntax   : Number of formulae    :   13 (   4 unit;   6 type;   0 defn)
%            Number of atoms       :   63 (   0 equality;  24 variable)
%            Maximal formula depth :   10 (   5 average)
%            Number of connectives :   53 (   7   ~;   0   |;   0   &;  34    )
%                                         (   0 <=>;  12  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   6   :)
%            Number of variables   :   10 (   0 sgn;  10   !;   0   ?;   0   ^)
%                                         (  10   :;   0  !>;   0  ?*)
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

tff(eq,type,(
    eq: (frac * frac) > $o )).

tff(l,axiom,
    ( ~ lessf(x,y)
   => eq(x,y) )).

tff(k,axiom,
    ( ~ lessf(y,z)
   => eq(y,z) )).

tff(et,axiom,(
    ! [Xa: $o] :
      ( ~ ( ~ ( Xa ) )
     => Xa ) )).

tff(satz39,axiom,(
    ! [Xx: frac,Xy: frac,Xz: frac] :
      ( eq(Xx,Xy)
     => ( eq(Xy,Xz)
       => eq(Xx,Xz) ) ) )).

tff(satz51b,axiom,(
    ! [Xx: frac,Xy: frac,Xz: frac] :
      ( lessf(Xx,Xy)
     => ( ( ~ lessf(Xy,Xz)
         => eq(Xy,Xz) )
       => lessf(Xx,Xz) ) ) )).

tff(satz51a,axiom,(
    ! [Xx: frac,Xy: frac,Xz: frac] :
      ( ( ~ lessf(Xx,Xy)
       => eq(Xx,Xy) )
     => ( lessf(Xy,Xz)
       => lessf(Xx,Xz) ) ) )).

tff(satz52,conjecture,
    ( ~ lessf(x,z)
   => eq(x,z) )).

%------------------------------------------------------------------------------
