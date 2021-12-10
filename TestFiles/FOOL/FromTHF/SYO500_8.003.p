%------------------------------------------------------------------------------
% File     : SYO500^1.003 : TPTP v6.2.0. Released v4.1.0.
% Domain   : Syntactic
% Problem  : Three function variant of the Kaminski equation
% Version  : Especial.
% English  :

% Refs     : [Bro09] Brown E. (2009), Email to Geoff Sutcliffe
%          : [Hoe09] Hoeschele (2009), Towards a Semi-Automatic Higher-Orde
% Source   : [Bro09]
% Names    : basic11 [Bro09]

% Status   : Theorem
% Rating   : 0.43 v6.1.0, 0.57 v5.5.0, 0.50 v5.4.0, 0.80 v4.1.0
% Syntax   : Number of formulae    :    5 (   1 unit;   4 type;   0 defn)
%            Number of atoms       :   22 (   1 equality;   0 variable)
%            Maximal formula depth :    9 (   4 average)
%            Number of connectives :   12 (   0   ~;   0   |;   0   &;  12    )
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    5 (   4   :)
%            Number of variables   :    0 (   0 sgn;   0   !;   0   ?;   0   ^)
%                                         (   0   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : 
%------------------------------------------------------------------------------
tff(x,type,(
    x: $o )).

tff(f0,type,(
    f0: $o > $o )).

tff(f1,type,(
    f1: $o > $o )).

tff(f2,type,(
    f2: $o > $o )).

tff(kaminski3,conjecture,
    ( f0(f1(f1(f1(f2(x)))))
    = f0(f0(f0(f1(f2(f2(f2(x))))))) )).

%------------------------------------------------------------------------------
