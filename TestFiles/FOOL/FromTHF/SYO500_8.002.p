%------------------------------------------------------------------------------
% File     : SYO500^1.002 : TPTP v6.2.0. Released v4.1.0.
% Domain   : Syntactic
% Problem  : Two function variant of the Kaminski equation
% Version  : Especial.
% English  :

% Refs     : [Bro09] Brown E. (2009), Email to Geoff Sutcliffe
%          : [Hoe09] Hoeschele (2009), Towards a Semi-Automatic Higher-Orde
% Source   : [Bro09]
% Names    : basic10 [Bro09]

% Status   : Theorem
% Rating   : 0.43 v6.1.0, 0.57 v5.5.0, 0.50 v5.4.0, 0.80 v4.1.0
% Syntax   : Number of formulae    :    4 (   1 unit;   3 type;   0 defn)
%            Number of atoms       :   16 (   1 equality;   0 variable)
%            Maximal formula depth :    6 (   4 average)
%            Number of connectives :    8 (   0   ~;   0   |;   0   &;   8    )
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    4 (   3   :)
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

tff(kaminski2,conjecture,
    ( f0(f0(f0(f1(x))))
    = f0(f1(f1(f1(x)))) )).

%------------------------------------------------------------------------------
