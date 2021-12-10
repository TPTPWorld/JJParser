%------------------------------------------------------------------------------
% File     : PUZ081^3 : TPTP v6.2.0. Released v3.6.0.
% Domain   : Puzzles
% Problem  : 1 of http://philosophy.hku.hk/think/logic/knight.php
% Version  : Especial.
% English  : A very special island is inhabited only by knights and knaves.
%            Knights always tell the truth, and knaves always lie. You meet two
%            inhabitants: Zoey and Mel. Zoey tells you that Mel is a knave. Mel
%            says, `Neither Zoey nor I are knaves'. Who is a knight and who is
%            a knave?

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.33 v6.2.0, 0.17 v6.1.0, 0.33 v5.5.0, 0.00 v5.3.0, 0.50 v5.2.0, 0.25 v5.1.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :   11 (   2 unit;   5 type;   0 defn)
%            Number of atoms       :   39 (   0 equality;  12 variable)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   27 (   3   ~;   0   |;   4   &;  17    )
%                                         (   0 <=>;   2  =>;   0  <=;   1 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    8 (   5   :)
%            Number of variables   :    7 (   0 sgn;   5   !;   2   ?;   0   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_NEQ

% Comments : See http://philosophy.hku.hk/think/logic/knight.php
%          : This version finds a knight and a knave
%------------------------------------------------------------------------------
%----Type declarations
tff(mel_type,type,(
    mel: $i )).

tff(zoey_type,type,(
    zoey: $i )).

tff(knight_type,type,(
    knight: $i > $o )).

tff(knave_type,type,(
    knave: $i > $o )).

tff(says_type,type,(
    says: ($i * $o) > $o )).

%----A very special island is inhabited only by knights and knaves.
tff(knights_xor_knaves,axiom,(
    ! [P: $i] :
      ( knight(P)
    <~> knave(P) ) )).

%----Knights always tell the truth
tff(knights_tell_truth,axiom,(
    ! [P: $i,S: $o] :
      ( ( knight(P)
        & says(P,S) )
     => S ) )).

%----Knaves always lie
tff(knaves_lie,axiom,(
    ! [P: $i,S: $o] :
      ( ( knave(P)
        & says(P,S) )
     => ~ ( S ) ) )).

%----Zoey says 'Mel is a knave'
tff(zoey_speaks,axiom,
    says(zoey,knave(mel))).

%----Mel says `Neither Zoey nor I are knaves.'
tff(mel_speaks,axiom,
    says ( mel , ( ~ knave(zoey) & ~ knave(mel) ) )).

%----What are Zoey and Mel
tff(who_is_knight_and_knave,conjecture,(
    ? [Knight: $i,Knave: $i] :
      ( knight(Knight)
      & knave(Knave) ) )).

%------------------------------------------------------------------------------
