%------------------------------------------------------------------------------
% File     : SYO040^2 : TPTP v6.2.0. Released v4.1.0.
% Domain   : Syntactic
% Problem  : Unsatisfiable basic formula 2
% Version  : Especial.
%            Theorem formulation : As a conjecture rather than UNS set.
% English  : Variant of the Kaminski equation.

% Refs     : [BS09a] Brown E. & Smolka (2009), Terminating Tableaux for the
%          : [BS09b] Brown E. & Smolka (2009), Extended First-Order Logic
%          : [Bro09] Brown E. (2009), Email to Geoff Sutcliffe
% Source   : [BS09a]
% Names    : basic2 [Bro09]

% Status   : Theorem
% Rating   : 0.43 v6.0.0, 0.57 v5.5.0, 0.50 v5.4.0, 0.60 v4.1.0
% Syntax   : Number of formulae    :    4 (   1 unit;   3 type;   0 defn)
%            Number of atoms       :   14 (   1 equality;   0 variable)
%            Maximal formula depth :    6 (   4 average)
%            Number of connectives :    6 (   0   ~;   0   |;   0   &;   6    )
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    5 (   3   :)
%            Number of variables   :    0 (   0 sgn;   0   !;   0   ?;   0   ^)
%                                         (   0   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : The fragment of simple type theory that restricts equations to 
%            base types and disallows lambda abstraction and quantification is
%            decidable. This is an example.
%------------------------------------------------------------------------------
tff(f,type,(
    f: $o > $o )).

tff(h,type,(
    h: $o > $i )).

tff(x,type,(
    x: $o )).

tff(2,conjecture,
    ( h(f(f(f(x))))
    = h(f(x)) )).

%------------------------------------------------------------------------------
