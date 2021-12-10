%------------------------------------------------------------------------------
% File     : SYO019^1 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Syntactic
% Problem  : De Morgan by equivalance
% Version  : Especial.
% English  :

% Refs     : [BB05]  Benzmueller & Brown (2005), A Structured Set of Higher
%          : [Ben09] Benzmueller (2009), Email to Geoff Sutcliffe
% Source   : [Ben09]
% Names    : Example 20a [BB05]

% Status   : Theorem
% Rating   : 0.17 v6.0.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :    4 (   0 equality;   4 variable)
%            Maximal formula depth :    7 (   7 average)
%            Number of connectives :    6 (   3   ~;   1   |;   1   &;   0    )
%                                         (   1 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    2 (   0   :)
%            Number of variables   :    2 (   0 sgn;   2   !;   0   ?;   0   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_NEQ

% Comments : 
%------------------------------------------------------------------------------
tff(conj,conjecture,(
    ! [X: $o,Y: $o] :
      ( ( X
        & Y )
    <=> ~ ( ~ ( X )
          | ~ ( Y ) ) ) )).

%------------------------------------------------------------------------------
