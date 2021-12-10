%------------------------------------------------------------------------------
% File     : CSR143^3 : TPTP v6.2.0. Released v4.1.0.
% Domain   : Commonsense Reasoning
% Problem  : Who is the husband of Corina during 2009?
% Version  : Especial.
% English  : During 2009 Corina is the wife of Chris. True holds at any time. 
%            Who is the husband of Corina during 2009?

% Refs     : [Ben10] Benzmueller (2010), Email to Geoff Sutcliffe
% Source   : [Ben10]
% Names    : ex_2.tq_SUMO_local [Ben10]

% Status   : CounterSatisfiable
% Rating   : 0.67 v6.1.0, 0.83 v6.0.0, 0.67 v5.5.0, 0.80 v5.4.0, 0.75 v4.1.0
% Syntax   : Number of formulae    :   11 (   4 unit;   8 type;   0 defn)
%            Number of atoms       :   30 (   0 equality;   2 variable)
%            Maximal formula depth :    5 (   3 average)
%            Number of connectives :   12 (   0   ~;   0   |;   0   &;  12    )
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    7 (   7   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   8   :)
%            Number of variables   :    2 (   0 sgn;   1   !;   1   ?;   0   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_NEQ

% Comments : This is a simple test problem for reasoning in/about SUMO.
%            Initally the problem has been hand generated in KIF syntax in
%            SigmaKEE and then automatically translated by Benzmueller's
%            KIF2TH0 translator into THF syntax.
%          : The translation has been applied in three modes: handselected,
%            SInE, and local. The local mode only translates the local
%            assumptions and the query. The SInE mode additionally translates
%            the SInE extract of the loaded knowledge base (usually SUMO). The
%            handselected mode contains a hand-selected relevant axioms.
%          : The examples are selected to illustrate the benefits of
%            higher-order reasoning in ontology reasoning.
%------------------------------------------------------------------------------
%----The extracted signature
tff(numbers,type,(
    num: $tType )).

tff(holdsDuring_THFTYPE_IiooI,type,(
    holdsDuring_THFTYPE_IiooI: ($i * $o) > $o )).

tff(husband_THFTYPE_IiioI,type,(
    husband_THFTYPE_IiioI: ($i * $i) > $o )).

tff(lChris_THFTYPE_i,type,(
    lChris_THFTYPE_i: $i )).

tff(lCorina_THFTYPE_i,type,(
    lCorina_THFTYPE_i: $i )).

tff(lYearFn_THFTYPE_IiiI,type,(
    lYearFn_THFTYPE_IiiI: $i > $i )).

tff(n2009_THFTYPE_i,type,(
    n2009_THFTYPE_i: $i )).

tff(wife_THFTYPE_IiioI,type,(
    wife_THFTYPE_IiioI: ($i * $i) > $o )).

%----The translated axioms
tff(ax,axiom,(
    ! [Z: $i] :
      holdsDuring_THFTYPE_IiooI(Z,$true) )).

tff(ax_001,axiom,
    holdsDuring_THFTYPE_IiooI(lYearFn_THFTYPE_IiiI(n2009_THFTYPE_i),wife_THFTYPE_IiioI(lCorina_THFTYPE_i,lChris_THFTYPE_i))).

%----The translated conjectures
tff(con,conjecture,(
    ? [X: $i] :
      holdsDuring_THFTYPE_IiooI(lYearFn_THFTYPE_IiiI(n2009_THFTYPE_i),husband_THFTYPE_IiioI(X,lCorina_THFTYPE_i)) )).

%------------------------------------------------------------------------------
