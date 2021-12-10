%------------------------------------------------------------------------------
% File     : SEU515^2 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Set Theory
% Problem  : Preliminary Notions - Adjoining Elements to Sets
% Version  : Especial * Reduced > Especial.
% English  : (! x:i.! A:i.! y:i.in y (setadjoin x A) -> (! phi:o.(y = x -> phi)
%            -> (in y A -> phi) -> phi))

% Refs     : [Bro08] Brown (2008), Email to G. Sutcliffe
% Source   : [Bro08]
% Names    : ZFC017l [Bro08]

% Status   : Theorem
% Rating   : 0.00 v6.1.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.2.0, 0.20 v5.1.0, 0.40 v5.0.0, 0.20 v4.1.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :    5 (   1 unit;   3 type;   1 defn)
%            Number of atoms       :   35 (   3 equality;  17 variable)
%            Maximal formula depth :   12 (   6 average)
%            Number of connectives :   20 (   0   ~;   1   |;   0   &;  12    )
%                                         (   1 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    5 (   3   :)
%            Number of variables   :    7 (   0 sgn;   7   !;   0   ?;   0   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : http://mathgate.info/detsetitem.php?id=82
%          : 
%------------------------------------------------------------------------------
tff(in_type,type,(
    in: ($i * $i) > $o )).

tff(setadjoin_type,type,(
    setadjoin: ($i * $i) > $i )).

tff(setadjoinAx_type,type,(
    setadjoinAx: $o )).

tff(setadjoinAx,definition,
    ( setadjoinAx
    = ( ! [Xx: $i,A: $i,Xy: $i] :
          ( in(Xy,setadjoin(Xx,A))
        <=> ( ( Xy = Xx )
            | in(Xy,A) ) ) ) )).

tff(setadjoinE,conjecture,
    ( setadjoinAx
   => ! [Xx: $i,A: $i,Xy: $i] :
        ( in(Xy,setadjoin(Xx,A))
       => ! [Xphi: $o] :
            ( ( ( Xy = Xx )
             => Xphi )
           => ( ( in(Xy,A)
               => Xphi )
             => Xphi ) ) ) )).

%------------------------------------------------------------------------------
