%------------------------------------------------------------------------------
% File     : SYO366^5 : TPTP v6.2.0. Released v4.0.0.
% Domain   : Syntactic
% Problem  : TPS problem from EXTENSIONALITY
% Version  : Especial.
% English  :

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0611 [Bro09]

% Status   : Theorem
% Rating   : 0.17 v6.0.0, 0.00 v5.3.0, 0.25 v4.1.0, 0.33 v4.0.0
% Syntax   : Number of formulae    :    3 (   1 unit;   2 type;   0 defn)
%            Number of atoms       :    8 (   0 equality;   0 variable)
%            Maximal formula depth :    4 (   3 average)
%            Number of connectives :    4 (   0   ~;   0   |;   0   &;   2    )
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    4 (   2   :)
%            Number of variables   :    0 (   0 sgn;   0   !;   0   ?;   0   ^)
%                                         (   0   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_NEQ

% Comments : This problem is from the TPS library. Copyright (c) 2009 The TPS
%            project in the Department of Mathematical Sciences at Carnegie
%            Mellon University. Distributed under the Creative Commons copyleft
%            license: http://creativecommons.org/licenses/by-sa/3.0/
%          : 
%------------------------------------------------------------------------------
tff(cP,type,(
    cP: $o > $o )).

tff(cA,type,(
    cA: $o )).

tff(cTRIVEXT4,conjecture,
    ( ( cP ( cA => cA ) )
   => cP($true) )).

%------------------------------------------------------------------------------
