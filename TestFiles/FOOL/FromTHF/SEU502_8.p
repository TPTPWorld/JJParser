%------------------------------------------------------------------------------
% File     : SEU502^2 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Set Theory
% Problem  : Preliminary Notions - Basic Laws of Logic
% Version  : Especial * Reduced > Especial.
% English  : (! x:i.in x emptyset -> false)

% Refs     : [Bro08] Brown (2008), Email to G. Sutcliffe
% Source   : [Bro08]
% Names    : ZFC004l [Bro08]

% Status   : Theorem
% Rating   : 0.00 v6.0.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.2.0, 0.20 v4.1.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :    5 (   2 unit;   3 type;   1 defn)
%            Number of atoms       :   16 (   1 equality;   3 variable)
%            Maximal formula depth :    6 (   4 average)
%            Number of connectives :    7 (   0   ~;   0   |;   0   &;   4    )
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   3   :)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : http://mathgate.info/detsetitem.php?id=391
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

tff(emptysetimpfalse,conjecture,
    ( emptysetE
   => ! [Xx: $i] :
        ( in(Xx,emptyset)
       => $false ) )).

%------------------------------------------------------------------------------
