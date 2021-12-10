%------------------------------------------------------------------------------
% File     : PUZ137^1 : TPTP v6.2.0. Released v5.3.0.
% Domain   : Puzzles
% Problem  : Peter the liar says everything
% Version  : Especial.
% English  : Peter says that everything he says is false. Show that Peter says
%            everything.

% Refs     : [Bro11] Brown (2011), Email to G. Sutcliffe
% Source   : [Bro11]
% Names    :

% Status   : Theorem
% Rating   : 0.17 v6.1.0, 0.33 v5.5.0, 0.40 v5.4.0, 0.25 v5.3.0
% Syntax   : Number of formulae    :    4 (   1 unit;   2 type;   0 defn)
%            Number of atoms       :   13 (   0 equality;   3 variable)
%            Maximal formula depth :    6 (   4 average)
%            Number of connectives :    8 (   1   ~;   0   |;   0   &;   6    )
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    5 (   2   :)
%            Number of variables   :    2 (   0 sgn;   2   !;   0   ?;   0   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_NEQ

% Comments : This is PUZ082^1 with a different conjecture. The idea of using 
%            truth values ($o) to interpret statements seems to go back to 
%            Frege. One criticism of this idea is that it can lead to 
%            unexpected consequences, often due to extensionality. In addition 
%            to being a theorem of extensional simple type theory, it's also 
%            an example of why assigning a type ($i * $o > $o) to a relation 
%            like 'says' may be dangerous.
%------------------------------------------------------------------------------
%----Signature
tff(peter,type,(
    peter: $i )).

tff(says,type,(
    says: ($i * $o) > $o )).

%----Axioms
tff(ax1,axiom,
    says ( peter , ! [X: $o] : ( says(peter,X) => ~ ( X ) ) )).

tff(thm,conjecture,(
    ! [X: $o] :
      says(peter,X) )).

%------------------------------------------------------------------------------
