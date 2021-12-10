%------------------------------------------------------------------------------
% File     : SYO499^1 : TPTP v6.2.0. Released v4.0.0.
% Domain   : Syntactic
% Problem  : Explosive confrontation
% Version  : Especial.
% English  : The Mensa Example: There are not 3 distinct values of type $o.

% Refs     : [BS09a] Brown & Smolka (2009), Terminating Tableaux for the Ba
%          : [BS09b] Brown E. & Smolka (2009), Extended First-Order Logic
%          : [Smo09] Smolka (2009), Email to Chris Benzmueller
%          : [Bro09] Brown E. (2009), Email to Geoff Sutcliffe
% Source   : [Smo09]
% Names    : Example 3.3 [BS09a]
%          : basic8 [Bro09]

% Status   : Theorem
% Rating   : 0.29 v6.0.0, 0.43 v5.5.0, 0.33 v5.4.0, 0.40 v5.3.0, 0.60 v4.1.0, 0.67 v4.0.0
% Syntax   : Number of formulae    :   10 (   3 unit;   9 type;   0 defn)
%            Number of atoms       :   45 (   6 equality;   0 variable)
%            Maximal formula depth :    9 (   3 average)
%            Number of connectives :   20 (   3   ~;   5   |;   0   &;  12    )
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    6 (   6   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   9   :)
%            Number of variables   :    0 (   0 sgn;   0   !;   0   ?;   0   ^)
%                                         (   0   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : The fragment of simple type theory that restricts equations to
%            base types and disallows lambda abstraction and quantification is
%            decidable. This is an example.
%------------------------------------------------------------------------------
tff(a,type,(
    a: $o )).

tff(b,type,(
    b: $o )).

tff(c,type,(
    c: $o )).

tff(f,type,(
    f: $o > $i )).

tff(f1,type,(
    f1: $o > $i )).

tff(f2,type,(
    f2: $o > $i )).

tff(g,type,(
    g: $o > $i )).

tff(g1,type,(
    g1: $o > $i )).

tff(g2,type,(
    g2: $o > $i )).

tff(con,conjecture,
    ( ( f(a)
      = g(b) )
    | ( f(b)
     != g(a) )
    | ( f1(a)
      = g1(c) )
    | ( f1(c)
     != g1(a) )
    | ( f2(b)
      = g2(c) )
    | ( f2(c)
     != g2(b) ) )).

%------------------------------------------------------------------------------
