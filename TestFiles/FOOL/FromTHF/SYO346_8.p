%------------------------------------------------------------------------------
% File     : SYO346^5 : TPTP v6.2.0. Released v4.0.0.
% Domain   : Syntactic
% Problem  : TPS problem THM621
% Version  : Especial.
% English  : Simple extensionality example.

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0049 [Bro09]
%          : THM621 [TPS]

% Status   : Theorem
% Rating   : 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v4.1.0, 0.33 v4.0.0
% Syntax   : Number of formulae    :    4 (   2 unit;   3 type;   0 defn)
%            Number of atoms       :   11 (   1 equality;   0 variable)
%            Maximal formula depth :    5 (   3 average)
%            Number of connectives :    6 (   2   ~;   2   |;   0   &;   2    )
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    5 (   3   :)
%            Number of variables   :    0 (   0 sgn;   0   !;   0   ?;   0   ^)
%                                         (   0   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : This problem is from the TPS library. Copyright (c) 2009 The TPS
%            project in the Department of Mathematical Sciences at Carnegie
%            Mellon University. Distributed under the Creative Commons copyleft
%            license: http://creativecommons.org/licenses/by-sa/3.0/
%          : 
%------------------------------------------------------------------------------
tff(cB,type,(
    cB: $o )).

tff(cP,type,(
    cP: $o > $o )).

tff(cA,type,(
    cA: $o )).

tff(cTHM621,conjecture,
    ( ( cA != cB )
    | ~ cP(cA)
    | cP(cB) )).

%------------------------------------------------------------------------------
