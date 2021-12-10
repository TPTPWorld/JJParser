%------------------------------------------------------------------------------
% File     : CSR144^3 : TPTP v6.2.0. Released v4.1.0.
% Domain   : Commonsense Reasoning
% Problem  : Does Max think he's single?
% Version  : Especial.
% English  : There is no time during which Max considers to have a wife. Is it
%            true that Max does not believe that he is a husband of somebody?.

% Refs     : [Ben10] Benzmueller (2010), Email to Geoff Sutcliffe
% Source   : [Ben10]
% Names    : ex_3.tq_SUMO_local [Ben10]

% Status   : CounterSatisfiable
% Rating   : 0.67 v6.1.0, 0.83 v6.0.0, 0.67 v5.5.0, 0.80 v5.4.0, 0.75 v4.1.0
% Syntax   : Number of formulae    :    9 (   2 unit;   7 type;   0 defn)
%            Number of atoms       :   31 (   0 equality;   3 variable)
%            Maximal formula depth :    8 (   4 average)
%            Number of connectives :   12 (   0   ~;   0   |;   0   &;  12    )
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :   10 (  10   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   7   :)
%            Number of variables   :    3 (   0 sgn;   1   !;   2   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
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

tff(believes_THFTYPE_IiooI,type,(
    believes_THFTYPE_IiooI: ($i * $o) > $o )).

tff(considers_THFTYPE_IiooI,type,(
    considers_THFTYPE_IiooI: ($i * $o) > $o )).

tff(holdsDuring_THFTYPE_IiooI,type,(
    holdsDuring_THFTYPE_IiooI: ($i * $o) > $o )).

tff(husband_THFTYPE_IiioI,type,(
    husband_THFTYPE_IiioI: ($i * $i) > $o )).

tff(lMax_THFTYPE_i,type,(
    lMax_THFTYPE_i: $i )).

tff(wife_THFTYPE_IiioI,type,(
    wife_THFTYPE_IiioI: ($i * $i) > $o )).

%----The translated axioms
tff(ax,axiom,(
    ! [X: $i] :
      ( ~ ( ? [Z: $i] : holdsDuring_THFTYPE_IiooI(Z,considers_THFTYPE_IiooI(lMax_THFTYPE_i,wife_THFTYPE_IiioI(X,lMax_THFTYPE_i))) ) ))).

%----The translated conjectures
tff(con,conjecture,(
    ? [Z: $i] :
      ~ believes_THFTYPE_IiooI(lMax_THFTYPE_i,husband_THFTYPE_IiioI(lMax_THFTYPE_i,Z)) )).

%------------------------------------------------------------------------------
