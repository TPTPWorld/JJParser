%------------------------------------------------------------------------------
% File     : SYO299^5 : TPTP v6.2.0. Released v4.0.0.
% Domain   : Syntactic
% Problem  : TPS problem from BASIC-HO-THMS
% Version  : Especial.
% English  :

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0762 [Bro09]

% Status   : Theorem
% Rating   : 0.33 v6.0.0, 0.17 v5.5.0, 0.00 v4.0.0
% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :    6 (   0 equality;   6 variable)
%            Maximal formula depth :    8 (   8 average)
%            Number of connectives :    5 (   0   ~;   0   |;   0   &;   0    )
%                                         (   4 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    1 (   0   :)
%            Number of variables   :    4 (   0 sgn;   3   !;   1   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_NEQ

% Comments : This problem is from the TPS library. Copyright (c) 2009 The TPS
%            project in the Department of Mathematical Sciences at Carnegie
%            Mellon University. Distributed under the Creative Commons copyleft
%            license: http://creativecommons.org/licenses/by-sa/3.0/
%          : 
%------------------------------------------------------------------------------
tff(cTHM51,conjecture,(
    ! [P: $o,Q: $o,R: $o] :
    ? [S: $o] :
      ( ( ( P
        <=> Q )
      <=> R )
     => ( P
      <=> ( Q
        <=> S ) ) ) )).

%------------------------------------------------------------------------------
