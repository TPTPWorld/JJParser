%------------------------------------------------------------------------------
% File     : SYO501^1 : TPTP v6.2.0. Released v4.1.0.
% Domain   : Syntactic
% Problem  : An unsatisfiable normal set with embedded formulas
% Version  : Especial.
% English  : 

% Refs     : [BS09a] Brown & Smolka (2009), Terminating Tableaux for the Ba
%          : [BS09b] Brown E. & Smolka (2009), Extended First-Order Logic
%          : [Bro09] Brown E. (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : Example 3.1 [BS09a]
%          : basic6 [Bro09]

% Status   : Theorem
% Rating   : 0.17 v6.0.0, 0.00 v5.3.0, 0.25 v4.1.0
% Syntax   : Number of formulae    :    5 (   2 unit;   4 type;   0 defn)
%            Number of atoms       :   15 (   0 equality;   0 variable)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   10 (   3   ~;   1   |;   0   &;   6    )
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   4   :)
%            Number of variables   :    0 (   0 sgn;   0   !;   0   ?;   0   ^)
%                                         (   0   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_NEQ

% Comments : The fragment of simple type theory that restricts equations to
%            base types and disallows lambda abstraction and quantification is
%            decidable. This is an example.
%------------------------------------------------------------------------------
tff(x,type,(
    x: $i )).

tff(y,type,(
    y: $o )).

tff(f,type,(
    f: ($i * $o) > $i )).

tff(p,type,(
    p: $i > $o )).

tff(claim,conjecture,
    ( ~ ( p ( f ( x , ~ ( ~ ( y ) ) ) ) ) | p(f(x,y)) )).

%------------------------------------------------------------------------------
