%------------------------------------------------------------------------------
% File     : SYO180^5 : TPTP v6.2.0. Released v4.0.0.
% Domain   : Syntactic
% Problem  : TPS problem from BASIC-FO-THMS
% Version  : Especial.
% English  :

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_1177 [Bro09]

% Status   : Theorem
% Rating   : 0.50 v6.0.0, 0.33 v5.5.0, 0.20 v5.4.0, 0.25 v5.2.0, 0.00 v4.1.0, 0.33 v4.0.0
% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   58 (   0 equality;  58 variable)
%            Maximal formula depth :   31 (  31 average)
%            Number of connectives :   80 (  23   ~;   0   |;  40   &;   0    )
%                                         (   0 <=>;  17  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    2 (   0   :)
%            Number of variables   :   11 (   0 sgn;  11   !;   0   ?;   0   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_NEQ

% Comments : This problem is from the TPS library. Copyright (c) 2009 The TPS
%            project in the Department of Mathematical Sciences at Carnegie
%            Mellon University. Distributed under the Creative Commons copyleft
%            license: http://creativecommons.org/licenses/by-sa/3.0/
%          : 
%------------------------------------------------------------------------------
tff(cPORKCHOP2,conjecture,(
    ! [L: $o,P: $o,M: $o,G: $o,R: $o,E: $o,N: $o,F: $o,K: $o,B: $o,C: $o] :
      ( ( ( ( L
            & P )
         => M )
        & ( ( G
            & ~ ( R ) )
         => M )
        & ( ( ~ ( K )
            & N
            & M )
         => F )
        & ( ( ~ ( G )
            & ~ ( P ) )
         => R )
        & ( ( K
            & B )
         => C )
        & ( ( R
            & ~ ( N )
            & ~ ( F ) )
         => P )
        & ( ( L
            & M )
         => C )
        & ( ( E
            & ~ ( K )
            & G
            & ~ ( N ) )
         => ~ ( M ) )
        & ( ( ~ ( G )
            & ~ ( R ) )
         => K )
        & ( ( K
            & L
            & E )
         => ~ ( M ) )
        & ( ( R
            & E )
         => ~ ( C ) )
        & ( ( G
            & ~ ( K )
            & ~ ( M ) )
         => ~ ( B ) )
        & ( ( N
            & ~ ( P )
            & ~ ( F ) )
         => C )
        & ( ( G
            & B
            & ~ ( R ) )
         => ~ ( C ) )
        & ( ( R
            & ~ ( K )
            & ~ ( M ) )
         => G ) )
     => ( ( E
          & L )
       => ( F
          & ~ ( B ) ) ) ) )).

%------------------------------------------------------------------------------
