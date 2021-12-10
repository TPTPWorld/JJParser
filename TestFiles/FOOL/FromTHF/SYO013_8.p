%------------------------------------------------------------------------------
% File     : SYO013^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Syntactic
% Problem  : Formula valid with Boolean extentionality 2
% Version  : Especial.
% English  :

% Refs     : [BB05]  Benzmueller & Brown (2005), A Structured Set of Higher
%          : [Ben09] Benzmueller (2009), Email to Geoff Sutcliffe
% Source   : [Ben09]
% Names    : Example 15b [BB05]

% Status   : Theorem
%          : Without Boolean extensionality : CounterSatisfiable
% Rating   : 0.17 v6.0.0, 0.00 v5.3.0, 0.25 v4.1.0, 0.33 v4.0.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :    4 (   2 unit;   3 type;   0 defn)
%            Number of atoms       :   10 (   0 equality;   0 variable)
%            Maximal formula depth :    5 (   3 average)
%            Number of connectives :    5 (   0   ~;   0   |;   2   &;   2    )
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    4 (   3   :)
%            Number of variables   :    0 (   0 sgn;   0   !;   0   ?;   0   ^)
%                                         (   0   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_NEQ

% Comments : 
%------------------------------------------------------------------------------
tff(a_type,type,(
    a: $o )).

tff(b_type,type,(
    b: $o )).

tff(p_type,type,(
    p: $o > $o )).

tff(conj,conjecture,
    ( ( a
      & b
      & p(a) )
   => p(b) )).

%------------------------------------------------------------------------------
