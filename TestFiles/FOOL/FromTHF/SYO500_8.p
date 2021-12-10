%------------------------------------------------------------------------------
% File     : SYO500^1 : TPTP v6.2.0. Released v4.0.0.
% Domain   : Syntactic
% Problem  : The Kaminski equation
% Version  : Especial.
% English  :

% Refs     : [Kam09] Kaminski (2009), Email to Chris Benzmueller
% Source   : [Kam09]
% Names    :

% Status   : Theorem
% Rating   : 0.29 v5.5.0, 0.17 v5.4.0, 0.40 v5.3.0, 0.60 v4.1.0, 0.67 v4.0.1, 1.00 v4.0.0
% Syntax   : Number of formulae    :    3 (   1 unit;   2 type;   0 defn)
%            Number of atoms       :   10 (   1 equality;   0 variable)
%            Maximal formula depth :    5 (   3 average)
%            Number of connectives :    4 (   0   ~;   0   |;   0   &;   4    )
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    3 (   2   :)
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

tff(x,type,(
    x: $o )).

tff(con,conjecture,
    ( f(f(f(x)))
    = f(x) )).

%------------------------------------------------------------------------------
