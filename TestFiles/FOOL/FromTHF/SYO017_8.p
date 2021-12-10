%------------------------------------------------------------------------------
% File     : SYO017^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Syntactic
% Problem  : Formula valid in MBb, but not in model classes not requiring b
% Version  : Especial.
% English  :

% Refs     : [BB05]  Benzmueller & Brown (2005), A Structured Set of Higher
%          : [Ben09] Benzmueller (2009), Email to Geoff Sutcliffe
% Source   : [Ben09]
% Names    : Example 18b [BB05]

% Status   : Theorem
%          : Without Boolean extensionality : CounterSatisfiable
% Rating   : 0.29 v6.1.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.0.0, 0.60 v4.1.0, 0.67 v4.0.0, 0.33 v3.7.0
% Syntax   : Number of formulae    :    2 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   11 (   2 equality;   0 variable)
%            Maximal formula depth :    5 (   4 average)
%            Number of connectives :    4 (   0   ~;   0   |;   0   &;   4    )
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    4 (   1   :)
%            Number of variables   :    0 (   0 sgn;   0   !;   0   ?;   0   ^)
%                                         (   0   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : 
%------------------------------------------------------------------------------
tff(h,type,(
    h: $o > $o )).

tff(conj,conjecture,
    ( ( h ( h($true) = h($false) ) )
    = h($false) )).

%------------------------------------------------------------------------------
