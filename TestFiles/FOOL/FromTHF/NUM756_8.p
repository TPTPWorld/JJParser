%------------------------------------------------------------------------------
% File     : NUM756^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 63b
% Version  : Especial.
% English  : eq x y

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz63b [Lan30]
%          : satz73b [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.00 v6.1.0, 0.17 v5.5.0, 0.00 v5.3.0, 0.25 v5.2.0, 0.00 v4.0.1, 0.33 v4.0.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :   15 (   4 unit;   8 type;   0 defn)
%            Number of atoms       :   75 (   0 equality;  32 variable)
%            Maximal formula depth :   13 (   5 average)
%            Number of connectives :   63 (  11   ~;   0   |;   0   &;  42    )
%                                         (   0 <=>;  10  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    8 (   8   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   8   :)
%            Number of variables   :   11 (   0 sgn;  11   !;   0   ?;   0   ^)
%                                         (  11   :;   0  !>;   0  ?*)
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

tff(eq,type,(
    eq: (frac * frac) > $o )).

tff(pf,type,(
    pf: (frac * frac) > frac )).

tff(e,axiom,
    eq(pf(x,z),pf(y,z))).

tff(et,axiom,(
    ! [Xa: $o] :
      ( ~ ( ~ ( Xa ) )
     => Xa ) )).

tff(lessf,type,(
    lessf: (frac * frac) > $o )).

tff(moref,type,(
    moref: (frac * frac) > $o )).

tff(satz41b,axiom,(
    ! [Xx: frac,Xy: frac] :
      ~ ( ( eq(Xx,Xy)
         => ~ moref(Xx,Xy) )
       => ~ ( ~ ( ( moref(Xx,Xy)
                 => ~ lessf(Xx,Xy) )
               => ~ ( lessf(Xx,Xy)
                   => ~ eq(Xx,Xy) ) ) ) ) )).

tff(satz62c,axiom,(
    ! [Xx: frac,Xy: frac,Xz: frac] :
      ( lessf(Xx,Xy)
     => lessf(pf(Xx,Xz),pf(Xy,Xz)) ) )).

tff(satz41a,axiom,(
    ! [Xx: frac,Xy: frac] :
      ( ~ eq(Xx,Xy)
     => ( ~ moref(Xx,Xy)
       => lessf(Xx,Xy) ) ) )).

tff(satz62a,axiom,(
    ! [Xx: frac,Xy: frac,Xz: frac] :
      ( moref(Xx,Xy)
     => moref(pf(Xx,Xz),pf(Xy,Xz)) ) )).

tff(satz63b,conjecture,
    eq(x,y)).

%------------------------------------------------------------------------------
