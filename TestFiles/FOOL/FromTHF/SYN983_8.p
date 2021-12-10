%------------------------------------------------------------------------------
% File     : SYN983^1 : TPTP v6.2.0. Released v3.6.0.
% Domain   : Syntactic
% Problem  : Factoring application over conjunction
% Version  : Especial.
% English  :

% Refs     : [Ben99] Benzmueller (1999), Equality and Extensionality in Hig
%          : [BB05]  Benzmueller & Brown (2005), A Structured Set of Higher-Ord
%          : [Ben08] Benzmueller (2008), Email to G. Sutcliffe
% Source   : [Ben08]
% Names    : BB-1 [Ben08]
%          : E3ext [Ben99]
%          : E3EXT [TPS]

% Status   : Theorem
%          : Without Boolean extensionality : CounterSatisfiable
% Rating   : 0.33 v6.0.0, 0.17 v5.5.0, 0.00 v5.4.0, 0.25 v5.3.0, 0.50 v4.1.0, 0.67 v4.0.0, 0.33 v3.7.0
% Syntax   : Number of formulae    :    4 (   2 unit;   3 type;   0 defn)
%            Number of atoms       :   11 (   0 equality;   0 variable)
%            Maximal formula depth :    4 (   3 average)
%            Number of connectives :    6 (   0   ~;   0   |;   2   &;   3    )
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    4 (   3   :)
%            Number of variables   :    0 (   0 sgn;   0   !;   0   ?;   0   ^)
%                                         (   0   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_NEQ

% Comments : 
%------------------------------------------------------------------------------
tff(a_const,type,(
    a: $o )).

tff(b_const,type,(
    b: $o )).

tff(p_const,type,(
    p: $o > $o )).

tff(thm,conjecture,
    ( ( p(a) & p(b) )
   => ( p ( a & b ) ) )).

%------------------------------------------------------------------------------
