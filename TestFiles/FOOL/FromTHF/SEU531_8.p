%------------------------------------------------------------------------------
% File     : SEU531^2 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Set Theory
% Problem  : Preliminary Notions - Equality Laws
% Version  : Especial * Reduced > Especial.
% English  : (! x:i.! y:i.! z:i.in z (setadjoin x (setadjoin y emptyset)) ->
%            z = x | z = y)

% Refs     : [Bro08] Brown (2008), Email to G. Sutcliffe
% Source   : [Bro08]
% Names    : ZFC033l [Bro08]
%          : ZFC126l [Bro08]

% Status   : Theorem
% Rating   : 0.00 v6.0.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.1.0, 0.40 v5.0.0, 0.20 v4.1.0, 0.00 v4.0.0, 0.33 v3.7.0
% Syntax   : Number of formulae    :    8 (   3 unit;   5 type;   2 defn)
%            Number of atoms       :   50 (   6 equality;  21 variable)
%            Maximal formula depth :   12 (   6 average)
%            Number of connectives :   26 (   0   ~;   1   |;   0   &;  16    )
%                                         (   0 <=>;   9  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   5   :)
%            Number of variables   :    9 (   0 sgn;   9   !;   0   ?;   0   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : http://mathgate.info/detsetitem.php?id=504
%          : 
%------------------------------------------------------------------------------
tff(in_type,type,(
    in: ($i * $i) > $o )).

tff(emptyset_type,type,(
    emptyset: $i )).

tff(setadjoin_type,type,(
    setadjoin: ($i * $i) > $i )).

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

tff(uniqinunit_type,type,(
    uniqinunit: $o )).

tff(uniqinunit,definition,
    ( uniqinunit
    = ( ! [Xx: $i,Xy: $i] :
          ( in(Xx,setadjoin(Xy,emptyset))
         => ( Xx = Xy ) ) ) )).

tff(upairsetE,conjecture,
    ( setadjoinE
   => ( uniqinunit
     => ! [Xx: $i,Xy: $i,Xz: $i] :
          ( in(Xz,setadjoin(Xx,setadjoin(Xy,emptyset)))
         => ( ( Xz = Xx )
            | ( Xz = Xy ) ) ) ) )).

%------------------------------------------------------------------------------
