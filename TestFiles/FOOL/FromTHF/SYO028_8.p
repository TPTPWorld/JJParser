%------------------------------------------------------------------------------
% File     : SYO028^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Syntactic
% Problem  : Not all things are false
% Version  : Especial.
% English  :

% Refs     : [BB05]  Benzmueller & Brown (2005), A Structured Set of Higher
%          : [Ben09] Benzmueller (2009), Email to Geoff Sutcliffe
% Source   : [Ben09]
% Names    : Example 24 [BB05]

% Status   : Theorem
% Rating   : 0.00 v6.2.0, 0.33 v6.1.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :    1 (   1 unit;   0 type;   0 defn)
%            Number of atoms       :    1 (   0 equality;   1 variable)
%            Maximal formula depth :    3 (   3 average)
%            Number of connectives :    1 (   1   ~;   0   |;   0   &;   0    )
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    2 (   0   :)
%            Number of variables   :    1 (   0 sgn;   1   !;   0   ?;   0   ^)
%                                         (   1   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_NEQ

% Comments : 
%------------------------------------------------------------------------------
tff(conj,conjecture,(
    ~ ( ! [P: $o] : P ) )).

%------------------------------------------------------------------------------
