%------------------------------------------------------------------------------
% File     : SEU506^2 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Set Theory
% Problem  : Preliminary Notions - Basic Laws of Logic
% Version  : Especial * Reduced > Especial.
% English  : (! A:i.(! x:i.~(in x A)) -> A = emptyset)

% Refs     : [Bro08] Brown (2008), Email to G. Sutcliffe
% Source   : [Bro08]
% Names    : ZFC008l [Bro08]
%          : ZFC009l [Bro08]

% Status   : Theorem
% Rating   : 0.00 v6.0.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.2.0, 0.20 v4.1.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :    7 (   3 unit;   4 type;   2 defn)
%            Number of atoms       :   37 (   4 equality;  15 variable)
%            Maximal formula depth :   10 (   5 average)
%            Number of connectives :   21 (   1   ~;   0   |;   0   &;  12    )
%                                         (   0 <=>;   8  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   4   :)
%            Number of variables   :    8 (   0 sgn;   8   !;   0   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : http://mathgate.info/detsetitem.php?id=386
%          : http://mathgate.info/detsetitem.php?id=480
%          : 
%------------------------------------------------------------------------------
tff(in_type,type,(
    in: ($i * $i) > $o )).

tff(emptyset_type,type,(
    emptyset: $i )).

tff(emptysetE_type,type,(
    emptysetE: $o )).

tff(emptysetE,definition,
    ( emptysetE
    = ( ! [Xx: $i] :
          ( in(Xx,emptyset)
         => ! [Xphi: $o] : Xphi ) ) )).

tff(setext_type,type,(
    setext: $o )).

tff(setext,definition,
    ( setext
    = ( ! [A: $i,B: $i] :
          ( ! [Xx: $i] :
              ( in(Xx,A)
             => in(Xx,B) )
         => ( ! [Xx: $i] :
                ( in(Xx,B)
               => in(Xx,A) )
           => ( A = B ) ) ) ) )).

tff(emptyI,conjecture,
    ( emptysetE
   => ( setext
     => ! [A: $i] :
          ( ! [Xx: $i] :
              ~ in(Xx,A)
         => ( A = emptyset ) ) ) )).

%------------------------------------------------------------------------------
