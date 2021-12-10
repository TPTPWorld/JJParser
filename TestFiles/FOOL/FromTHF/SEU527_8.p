%------------------------------------------------------------------------------
% File     : SEU527^2 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Set Theory
% Problem  : Preliminary Notions - Equality Laws
% Version  : Especial * Reduced > Especial.
% English  : (! x:i.! y:i.in x (setadjoin y emptyset) -> x = y)

% Refs     : [Bro08] Brown (2008), Email to G. Sutcliffe
% Source   : [Bro08]
% Names    : ZFC029l [Bro08]

% Status   : Theorem
% Rating   : 0.14 v6.1.0, 0.00 v6.0.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.2.0, 0.20 v4.1.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :    8 (   3 unit;   5 type;   2 defn)
%            Number of atoms       :   41 (   4 equality;  16 variable)
%            Maximal formula depth :   12 (   5 average)
%            Number of connectives :   21 (   0   ~;   0   |;   0   &;  12    )
%                                         (   0 <=>;   9  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   5   :)
%            Number of variables   :    8 (   0 sgn;   8   !;   0   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : http://mathgate.info/detsetitem.php?id=93
%          : 
%------------------------------------------------------------------------------
tff(in_type,type,(
    in: ($i * $i) > $o )).

tff(emptyset_type,type,(
    emptyset: $i )).

tff(setadjoin_type,type,(
    setadjoin: ($i * $i) > $i )).

tff(emptysetE_type,type,(
    emptysetE: $o )).

tff(emptysetE,definition,
    ( emptysetE
    = ( ! [Xx: $i] :
          ( in(Xx,emptyset)
         => ! [Xphi: $o] : Xphi ) ) )).

tff(setadjoinE_type,type,(
    setadjoinE: $o )).

tff(setadjoinE,definition,
    ( setadjoinE
    = ( ! [Xx: $i,A: $i,Xy: $i] :
          ( in(Xy,setadjoin(Xx,A))
         => ! [Xphi: $o] :
              ( ( ( Xy = Xx )
               => Xphi )
             => ( ( in(Xy,A)
                 => Xphi )
               => Xphi ) ) ) ) )).

tff(uniqinunit,conjecture,
    ( emptysetE
   => ( setadjoinE
     => ! [Xx: $i,Xy: $i] :
          ( in(Xx,setadjoin(Xy,emptyset))
         => ( Xx = Xy ) ) ) )).

%------------------------------------------------------------------------------
