%------------------------------------------------------------------------------
% File     : SYO197^5 : TPTP v6.2.0. Released v4.0.0.
% Domain   : Syntactic
% Problem  : TPS problem CT18
% Version  : Especial.
% English  : 

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0029 [Bro09]
%          : CT18 [TPS]

% Status   : Theorem
% Rating   : 0.00 v6.2.0, 0.17 v6.0.0, 0.00 v4.0.0
% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :    2 (   0 equality;   2 variable)
%            Maximal formula depth :    5 (   5 average)
%            Number of connectives :    1 (   0   ~;   0   |;   0   &;   0    )
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    1 (   0   :)
%            Number of variables   :    3 (   1 sgn;   1   !;   2   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_NEQ

% Comments : This problem is from the TPS library. Copyright (c) 2009 The TPS
%            project in the Department of Mathematical Sciences at Carnegie
%            Mellon University. Distributed under the Creative Commons copyleft
%            license: http://creativecommons.org/licenses/by-sa/3.0/
%          : 
%------------------------------------------------------------------------------
tff(cCT18,conjecture,(
    ? [Xy: $o] :
    ! [Xz: $o] :
    ? [Xx: $o] :
      ( Xz
     => Xx ) )).

%------------------------------------------------------------------------------
