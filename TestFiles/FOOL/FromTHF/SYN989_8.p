%------------------------------------------------------------------------------
% File     : SYN989^2 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Syntactic
% Problem  : All things are true or false
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Rating   : 0.00 v3.7.0
% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :    2 (   0 equality;   2 variable)
%            Maximal formula depth :    4 (   4 average)
%            Number of connectives :    2 (   1   ~;   1   |;   0   &;   0    )
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    2 (   0   :)
%            Number of variables   :    1 (   0 sgn;   1   !;   0   ?;   0   ^)
%                                         (   1   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_SAT_NEQ

% Comments : 
%------------------------------------------------------------------------------
tff(thm,axiom,(
    ! [X: $o] :
      ( X
      | ~ ( X ) ) )).

%------------------------------------------------------------------------------
