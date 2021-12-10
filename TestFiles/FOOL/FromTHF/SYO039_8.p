%------------------------------------------------------------------------------
% File     : SYO039^2 : TPTP v6.2.0. Released v4.1.0.
% Domain   : Syntactic
% Problem  : Unsatisfiable basic formula 1
% Version  : Especial.
%            Theorem formulation : As a conjecture rather than UNS set.
% English  : 

% Refs     : [BS09a] Brown E. & Smolka (2009), Terminating Tableaux for the
%          : [BS09b] Brown E. & Smolka (2009), Extended First-Order Logic
%          : [Bro09] Brown E. (2009), Email to Geoff Sutcliffe
% Source   : [BS09a]
% Names    : basic1 [Bro09]

% Status   : Theorem
% Rating   : 0.29 v6.1.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.0.0, 0.60 v4.1.0
% Syntax   : Number of formulae    :    2 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   11 (   2 equality;   0 variable)
%            Maximal formula depth :    6 (   4 average)
%            Number of connectives :    5 (   1   ~;   0   |;   0   &;   4    )
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    5 (   1   :)
%            Number of variables   :    0 (   0 sgn;   0   !;   0   ?;   0   ^)
%                                         (   0   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : The fragment of simple type theory that restricts equations to 
%            base types and disallows lambda abstraction and quantification is
%            decidable. This is an example.
%------------------------------------------------------------------------------
tff(h,type,(
    h: $o > $i )).

tff(1,conjecture,
    h(h($false) = h (~ $false)) = h($false) ).

%------------------------------------------------------------------------------
