%------------------------------------------------------------------------------
% File     : SEU610^2 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Set Theory
% Problem  : Preliminary Notions - Operations on Sets - Set Difference
% Version  : Especial * Reduced > Especial.
% English  : (! A:i.! B:i.setminus A B = emptyset -> subset A B)

% Refs     : [Bro08] Brown (2008), Email to G. Sutcliffe
% Source   : [Bro08]
% Names    : ZFC112l [Bro08]

% Status   : Theorem
% Rating   : 0.00 v6.1.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.40 v5.3.0, 0.60 v5.2.0, 0.40 v5.1.0, 0.20 v4.1.0, 0.00 v4.0.1, 0.33 v3.7.0
% Syntax   : Number of formulae    :   13 (   5 unit;   8 type;   4 defn)
%            Number of atoms       :   70 (   7 equality;  27 variable)
%            Maximal formula depth :   11 (   5 average)
%            Number of connectives :   38 (   1   ~;   0   |;   0   &;  24    )
%                                         (   1 <=>;  12  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    6 (   6   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   8   :)
%            Number of variables   :   14 (   0 sgn;  14   !;   0   ?;   0   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : http://mathgate.info/detsetitem.php?id=465
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

tff(in__Cong_type,type,(
    in__Cong: $o )).

tff(in__Cong,definition,
    ( in__Cong
    = ( ! [A: $i,B: $i] :
          ( ( A = B )
         => ! [Xx: $i,Xy: $i] :
              ( ( Xx = Xy )
             => ( in(Xx,A)
              <=> in(Xy,B) ) ) ) ) )).

tff(subset_type,type,(
    subset: ($i * $i) > $o )).

tff(subsetI2_type,type,(
    subsetI2: $o )).

tff(subsetI2,definition,
    ( subsetI2
    = ( ! [A: $i,B: $i] :
          ( ! [Xx: $i] :
              ( in(Xx,A)
             => in(Xx,B) )
         => subset(A,B) ) ) )).

tff(setminus_type,type,(
    setminus: ($i * $i) > $i )).

tff(setminusI_type,type,(
    setminusI: $o )).

tff(setminusI,definition,
    ( setminusI
    = ( ! [A: $i,B: $i,Xx: $i] :
          ( in(Xx,A)
         => ( ~ in(Xx,B)
           => in(Xx,setminus(A,B)) ) ) ) )).

tff(setminusSubset1,conjecture,
    ( emptysetE
   => ( in__Cong
     => ( subsetI2
       => ( setminusI
         => ! [A: $i,B: $i] :
              ( ( setminus(A,B)
                = emptyset )
             => subset(A,B) ) ) ) ) )).

%------------------------------------------------------------------------------
