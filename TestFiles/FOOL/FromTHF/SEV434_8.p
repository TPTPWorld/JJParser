%------------------------------------------------------------------------------
% File     : SEV434^1 : TPTP v6.2.0. Released v5.2.0.
% Domain   : Set Theory
% Problem  : There are at most 2 individuals if there is a surjection from o
% Version  : Especial.
% English  :

% Refs     : [Bro11] Brown (2011), Email to Geoff Sutcliffe
% Source   : [Bro11]
% Names    : SURJO [Bro11]

% Status   : Theorem
% Rating   : 0.29 v6.0.0, 0.43 v5.5.0, 0.33 v5.4.0, 0.40 v5.3.0, 0.60 v5.2.0
% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   15 (   4 equality;   8 variable)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :    3 (   0   ~;   2   |;   0   &;   1    )
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    3 (   1   :)
%            Number of variables   :    5 (   0 sgn;   4   !;   1   ?;   0   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : 
%------------------------------------------------------------------------------
tff(f,type,(
    f: $o > $i )).

tff(fsurj,axiom,(
    ! [Y: $i] :
    ? [X: $o] :
      ( f(X)
      = Y ) )).

tff(less3,conjecture,(
    ! [X: $i,Y: $i,Z: $i] :
      ( ( X = Y )
      | ( X = Z )
      | ( Y = Z ) ) )).

%------------------------------------------------------------------------------
