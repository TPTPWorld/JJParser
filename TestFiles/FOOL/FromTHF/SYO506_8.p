%------------------------------------------------------------------------------
% File     : SYO506^1 : TPTP v6.2.0. Released v4.1.0.
% Domain   : Syntactic
% Problem  : (if (X = Y) then X else Y) = Y
% Version  : Especial.
% English  : 

% Refs     : [Bro09] Brown E. (2009), Email to Geoff Sutcliffe
%          : [BS09]  Brown E. & Smolka (2009), Extended First-Order Logic
% Source   : [Bro09]
% Names    : efo1 [Bro09]

% Status   : Theorem
% Rating   : 0.43 v6.1.0, 0.29 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.0.0, 0.80 v4.1.0
% Syntax   : Number of formulae    :    2 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   24 (   4 equality;  11 variable)
%            Maximal formula depth :   10 (   8 average)
%            Number of connectives :   13 (   2   ~;   2   |;   0   &;   9    )
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   1   :)
%            Number of variables   :    6 (   0 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : 
%------------------------------------------------------------------------------
tff(c,type,(
    c: ($o * $i * $i) > $i )).

tff(claim,conjecture,
    ( ! [X: $i,Y: $i] :
        ( c (  X = Y , X , Y )
        = Y )
    | ~ ( ! [X: $i,Y: $i] :
            ( c($true,X,Y)
            = X ) )
    | ~ ( ! [X: $i,Y: $i] :
            ( c($false,X,Y)
            = Y ) ) )).

%------------------------------------------------------------------------------
