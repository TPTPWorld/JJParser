%------------------------------------------------------------------------------
% File     : SEU709^2 : TPTP v6.2.0. Released v3.7.0.
% Domain   : Set Theory
% Problem  : Conditionals
% Version  : Especial * Reduced > Especial.
% English  : (! A:i.! phi:o.! x:i.in x A -> (! y:i.in y A ->
%            in (if A phi x y) (setadjoin x (setadjoin y emptyset))))

% Refs     : [Bro08] Brown (2008), Email to G. Sutcliffe
% Source   : [Bro08]
% Names    : ZFC211l [Bro08]

% Status   : Theorem
% Rating   : 0.29 v6.1.0, 0.43 v5.5.0, 0.50 v5.4.0, 0.60 v5.2.0, 0.80 v5.0.0, 0.60 v4.1.0, 0.33 v4.0.1, 0.67 v4.0.0, 0.33 v3.7.0
% Syntax   : Number of formulae    :   15 (   6 unit;   9 type;   5 defn)
%            Number of atoms       :  101 (   9 equality;  44 variable)
%            Maximal formula depth :   18 (   7 average)
%            Number of connectives :   61 (   1   ~;   0   |;   0   &;  44    )
%                                         (   1 <=>;  15  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    8 (   8   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   9   :)
%            Number of variables   :   20 (   0 sgn;  20   !;   0   ?;   0   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : http://mathgate.info/detsetitem.php?id=265
%          : 
%------------------------------------------------------------------------------
tff(in_type,type,(
    in: ($i * $i) > $o )).

tff(emptyset_type,type,(
    emptyset: $i )).

tff(setadjoin_type,type,(
    setadjoin: ($i * $i) > $i )).

tff(setadjoinIL_type,type,(
    setadjoinIL: $o )).

tff(setadjoinIL,definition,
    ( setadjoinIL
    = ( ! [Xx: $i,Xy: $i] :
          in(Xx,setadjoin(Xx,Xy)) ) )).

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

tff(secondinupair_type,type,(
    secondinupair: $o )).

tff(secondinupair,definition,
    ( secondinupair
    = ( ! [Xx: $i,Xy: $i] :
          in(Xy,setadjoin(Xx,setadjoin(Xy,emptyset))) ) )).

tff(if_type,type,(
    if: ($i * $o * $i * $i) > $i )).

tff(iftrue_type,type,(
    iftrue: $o )).

tff(iftrue,definition,
    ( iftrue
    = ( ! [A: $i,Xphi: $o,Xx: $i] :
          ( in(Xx,A)
         => ! [Xy: $i] :
              ( in(Xy,A)
             => ( Xphi
               => ( if(A,Xphi,Xx,Xy)
                  = Xx ) ) ) ) ) )).

tff(iffalse_type,type,(
    iffalse: $o )).

tff(iffalse,definition,
    ( iffalse
    = ( ! [A: $i,Xphi: $o,Xx: $i] :
          ( in(Xx,A)
         => ! [Xy: $i] :
              ( in(Xy,A)
             => ( ~ ( Xphi )
               => ( if(A,Xphi,Xx,Xy)
                  = Xy ) ) ) ) ) )).

tff(iftrueorfalse,conjecture,
    ( setadjoinIL
   => ( in__Cong
     => ( secondinupair
       => ( iftrue
         => ( iffalse
           => ! [A: $i,Xphi: $o,Xx: $i] :
                ( in(Xx,A)
               => ! [Xy: $i] :
                    ( in(Xy,A)
                   => in(if(A,Xphi,Xx,Xy),setadjoin(Xx,setadjoin(Xy,emptyset))) ) ) ) ) ) ) )).

%------------------------------------------------------------------------------
