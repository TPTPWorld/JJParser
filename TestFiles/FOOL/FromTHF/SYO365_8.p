%------------------------------------------------------------------------------
% File     : SYO365^5 : TPTP v6.2.0. Bugfixed v5.2.0.
% Domain   : Syntactic
% Problem  : TPS problem from EXTENSIONALITY
% Version  : Especial.
% English  :

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0585 [Bro09]

% Status   : Theorem
% Rating   : 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.2.0
% Syntax   : Number of formulae    :    7 (   3 unit;   4 type;   2 defn)
%            Number of atoms       :   20 (   3 equality;   4 variable)
%            Maximal formula depth :    6 (   3 average)
%            Number of connectives :    8 (   2   ~;   0   |;   0   &;   2    )
%                                         (   1 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   4   :)
%            Number of variables   :    2 (   0 sgn;   2   !;   0   ?;   0   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : This problem is from the TPS library. Copyright (c) 2009 The TPS
%            project in the Department of Mathematical Sciences at Carnegie
%            Mellon University. Distributed under the Creative Commons copyleft
%            license: http://creativecommons.org/licenses/by-sa/3.0/
%          : 
% Bugfixes : v5.2.0 - Added missing type declarations.
%------------------------------------------------------------------------------
tff(cA_type,type,(
    cA: $o )).

tff(cC_type,type,(
    cC: $o > $o )).

tff(cEXT2_type,type,(
    cEXT2: $o )).

tff(cEXT_eq_0_type,type,(
    cEXT_eq_0: $o )).

tff(cEXT2_def,definition,
    ( cEXT2
    = ( cC(cA)
     => ( cC ( ~ ( ~ ( cA ) ) ) ) ))).

tff(cEXT_eq_0_def,definition,
    ( cEXT_eq_0
    = ( ! [Xp: $o,Xq: $o] :
          ( ( Xp
          <=> Xq )
         => ( Xp = Xq ) ) ) )).

tff(cEXT2A,conjecture,
    ( cEXT_eq_0
   => cEXT2 )).

%------------------------------------------------------------------------------
