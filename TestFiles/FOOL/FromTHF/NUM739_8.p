%------------------------------------------------------------------------------
% File     : NUM739^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Number Theory
% Problem  : Landau theorem 46
% Version  : Especial.
% English  : ~(moref z u) -> eq z u

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [vBJ79] van Benthem Jutting (1979), Checking Landau's "Grundla
%          : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : satz46 [Lan30]

% Status   : Theorem
%          : Without extensionality : Theorem
% Rating   : 0.00 v6.1.0, 0.17 v6.0.0, 0.00 v5.1.0, 0.25 v5.0.0, 0.00 v4.0.1, 0.33 v4.0.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :   15 (   5 unit;   7 type;   0 defn)
%            Number of atoms       :   58 (   0 equality;  20 variable)
%            Maximal formula depth :   10 (   4 average)
%            Number of connectives :   43 (   4   ~;   0   |;   0   &;  30    )
%                                         (   0 <=>;   9  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   7   :)
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

tff(u,type,(
    u: frac )).

tff(moref,type,(
    moref: (frac * frac) > $o )).

tff(eq,type,(
    eq: (frac * frac) > $o )).

tff(m,axiom,
    ( ~ moref(x,y)
   => eq(x,y) )).

tff(e,axiom,
    eq(x,z)).

tff(f,axiom,
    eq(y,u)).

tff(et,axiom,(
    ! [Xa: $o] :
      ( ~ ( ~ ( Xa ) )
     => Xa ) )).

tff(satz39,axiom,(
    ! [Xx: frac,Xy: frac,Xz: frac] :
      ( eq(Xx,Xy)
     => ( eq(Xy,Xz)
       => eq(Xx,Xz) ) ) )).

tff(satz38,axiom,(
    ! [Xx: frac,Xy: frac] :
      ( eq(Xx,Xy)
     => eq(Xy,Xx) ) )).

tff(satz44,axiom,(
    ! [Xx: frac,Xy: frac,Xz: frac,Xu: frac] :
      ( moref(Xx,Xy)
     => ( eq(Xx,Xz)
       => ( eq(Xy,Xu)
         => moref(Xz,Xu) ) ) ) )).

tff(satz46,conjecture,
    ( ~ moref(z,u)
   => eq(z,u) )).

%------------------------------------------------------------------------------
