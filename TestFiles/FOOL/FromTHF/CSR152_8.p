%------------------------------------------------------------------------------
% File     : CSR152^1 : TPTP v6.2.0. Released v4.1.0.
% Domain   : Commonsense Reasoning
% Problem  : Does Chris know that Sue likes Bill?
% Version  : Especial * Reduced > Especial.
% English  : Everybody knows that Chris is equal to Chris. Mary likes Bill. 
%            Chris knows that Sue likes whoever Mary likes. Does Chris know 
%            that Sue likes Bill?

% Refs     : [PS07]  Pease & Sutcliffe (2007), First Order Reasoning on a L
%          : [BP10]  Benzmueller & Pease (2010), Progress in Automating Hig
%          : [Ben10] Benzmueller (2010), Email to Geoff Sutcliffe
% Source   : [Ben10]
% Names    : paar_8.tq_SUMO_local [Ben10]

% Status   : Theorem
% Rating   : 0.00 v6.1.0, 0.57 v6.0.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.40 v5.3.0, 0.60 v4.1.0
% Syntax   : Number of formulae    :   11 (   5 unit;   7 type;   0 defn)
%            Number of atoms       :   32 (   1 equality;   2 variable)
%            Maximal formula depth :    6 (   3 average)
%            Number of connectives :   15 (   0   ~;   0   |;   0   &;  14    )
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   7   :)
%            Number of variables   :    1 (   0 sgn;   1   !;   0   ?;   0   ^)
%                                         (   1   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_THM_EQU

% Comments : This is a simple test problem for reasoning in/about SUMO.
%            Initally the problem has been hand generated in KIF syntax in
%            SigmaKEE and then automatically translated by Benzmueller's
%            KIF2TH0 translator into THF syntax.
%          : The translation has been applied in two modes: local and SInE.
%            The local mode only translates the local assumptions and the
%            query. The SInE mode additionally translates the SInE-extract
%            of the loaded knowledge base (usually SUMO).
%          : The examples are selected to illustrate the benefits of
%            higher-order reasoning in ontology reasoning.
%------------------------------------------------------------------------------
%----The extracted Signature
tff(numbers,type,(
    num: $tType )).

tff(knows_THFTYPE_IiooI,type,(
    knows_THFTYPE_IiooI: ($i * $o) > $o )).

tff(lBill_THFTYPE_i,type,(
    lBill_THFTYPE_i: $i )).

tff(lChris_THFTYPE_i,type,(
    lChris_THFTYPE_i: $i )).

tff(lMary_THFTYPE_i,type,(
    lMary_THFTYPE_i: $i )).

tff(lSue_THFTYPE_i,type,(
    lSue_THFTYPE_i: $i )).

tff(likes_THFTYPE_IiioI,type,(
    likes_THFTYPE_IiioI: ($i * $i) > $o )).

%----The translated axioms
tff(ax,axiom,
    knows_THFTYPE_IiooI ( lChris_THFTYPE_i , ( lChris_THFTYPE_i = lChris_THFTYPE_i ) )).

tff(ax_001,axiom,
    likes_THFTYPE_IiioI(lMary_THFTYPE_i,lBill_THFTYPE_i)).

tff(ax_002,axiom,
    knows_THFTYPE_IiooI ( lChris_THFTYPE_i , ! [X: $i] : ( likes_THFTYPE_IiioI(lMary_THFTYPE_i,X) => likes_THFTYPE_IiioI(lSue_THFTYPE_i,X) ) )).

%----The translated conjectures
tff(con,conjecture,
    knows_THFTYPE_IiooI(lChris_THFTYPE_i,likes_THFTYPE_IiioI(lSue_THFTYPE_i,lBill_THFTYPE_i))).

%------------------------------------------------------------------------------
