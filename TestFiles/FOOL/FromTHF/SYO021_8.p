%------------------------------------------------------------------------------
% File     : SYO021^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Syntactic
% Problem  : De Morgan by equality
% Version  : Especial.
% English  :

% Refs     : [BB05]  Benzmueller & Brown (2005), A Structured Set of Higher
%          : [Ben09] Benzmueller (2009), Email to Geoff Sutcliffe
% Source   : [Ben09]
% Names    : Example 20b [BB05]

% Status   : Theorem
%          : Without Boolean extensionality : CounterSatisfiable
% Rating   : 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v4.1.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :    5 (   1 equality;   4 variable)
%            Maximal formula depth :    7 (   7 average)
%            Number of connectives :    5 (   3   ~;   1   |;   1   &;   0    )
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    2 (   0   :)
%            Number of variables   :    2 (   0 sgn;   2   !;   0   ?;   0   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : 
%------------------------------------------------------------------------------
tff(conj,conjecture,(
    ! [X: $o,Y: $o] :
      ( ( X
        & Y )
      = ( ~ ( ~ ( X )
            | ~ ( Y ) ) ) ) )).

%------------------------------------------------------------------------------
