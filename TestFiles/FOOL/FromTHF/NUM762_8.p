%------------------------------------------------------------------------------
% File     : NUM762^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 65b
% Version  : Especial.
% English  : moref (pf x z) (pf y u)

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz65b [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.50 v6.2.0, 0.33 v5.5.0, 0.20 v5.4.0, 0.25 v5.3.0, 0.50 v5.1.0, 0.75 v5.0.0, 0.50 v4.1.0, 0.33 v4.0.1, 1.00 v4.0.0, 0.67 v3.7.0
% Syntax   : Number of formulae    :   17 (   5 unit;   8 type;   0 defn)
%            Number of atoms       :   83 (   0 equality;  34 variable)
%            Maximal formula depth :   11 (   5 average)
%            Number of connectives :   63 (   3   ~;   0   |;   0   &;  50    )
%                                         (   0 <=>;  10  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    6 (   6   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   8   :)
%            Number of variables   :   17 (   0 sgn;  17   !;   0   ?;   0   ^)
%                                         (  17   :;   0  !>;   0  ?*)
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

tff(u,type,(
    u: frac )).

tff(moref,type,(
    moref: (frac * frac) > $o )).

tff(m,axiom,
    moref(x,y)).

tff(eq,type,(
    eq: (frac * frac) > $o )).

tff(n,axiom,
    ( ~ moref(z,u)
   => eq(z,u) )).

tff(pf,type,(
    pf: (frac * frac) > frac )).

tff(et,axiom,(
    ! [Xa: $o] :
      ( ~ ( ~ ( Xa ) )
     => Xa ) )).

tff(satz44,axiom,(
    ! [Xx: frac,Xy: frac,Xz: frac,Xu: frac] :
      ( moref(Xx,Xy)
     => ( eq(Xx,Xz)
       => ( eq(Xy,Xu)
         => moref(Xz,Xu) ) ) ) )).

tff(satz61,axiom,(
    ! [Xx: frac,Xy: frac,Xz: frac] :
      ( moref(Xx,Xy)
     => moref(pf(Xx,Xz),pf(Xy,Xz)) ) )).

tff(satz37,axiom,(
    ! [Xx: frac] :
      eq(Xx,Xx) )).

tff(satz56,axiom,(
    ! [Xx: frac,Xy: frac,Xz: frac,Xu: frac] :
      ( eq(Xx,Xy)
     => ( eq(Xz,Xu)
       => eq(pf(Xx,Xz),pf(Xy,Xu)) ) ) )).

tff(satz64,axiom,(
    ! [Xx: frac,Xy: frac,Xz: frac,Xu: frac] :
      ( moref(Xx,Xy)
     => ( moref(Xz,Xu)
       => moref(pf(Xx,Xz),pf(Xy,Xu)) ) ) )).

tff(satz65b,conjecture,
    moref(pf(x,z),pf(y,u))).

%------------------------------------------------------------------------------
