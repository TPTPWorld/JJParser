%------------------------------------------------------------------------------
% File     : SYO041^2 : TPTP v6.2.0. Released v4.1.0.
% Domain   : Syntactic
% Problem  : Unsatisfiable basic formula 3
% Version  : Especial.
%            Theorem formulation : As a conjecture rather than UNS set.
% English  : Variant of the Kaminski equation.

% Refs     : [BS09a] Brown E. & Smolka (2009), Terminating Tableaux for the
%          : [BS09b] Brown E. & Smolka (2009), Extended First-Order Logic
%          : [Bro09] Brown E. (2009), Email to Geoff Sutcliffe
% Source   : [BS09a]
% Names    : basic3 [Bro09]

% Status   : Theorem
% Rating   : 0.29 v5.5.0, 0.33 v5.4.0, 0.60 v5.3.0, 0.80 v4.1.0
% Syntax   : Number of formulae    :    6 (   3 unit;   5 type;   0 defn)
%            Number of atoms       :   26 (   4 equality;   0 variable)
%            Maximal formula depth :    9 (   4 average)
%            Number of connectives :   12 (   2   ~;   0   |;   3   &;   7    )
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   5   :)
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

tff(f,type,(
    f: $o > $o )).

tff(g,type,(
    g: $o > $o )).

tff(x,type,(
    x: $o )).

tff(y,type,(
    y: $o )).

tff(3,conjecture,(
    ~ ( ( x != y )
      & ( g(x)
        = y )
      & ( g(y)
        = x )
      & ( f(f(f(x)))
        = g(f(x)) ) ) )).

%------------------------------------------------------------------------------
