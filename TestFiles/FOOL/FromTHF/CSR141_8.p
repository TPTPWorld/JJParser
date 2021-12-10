%------------------------------------------------------------------------------
% File     : CSR141^3 : TPTP v6.2.0. Released v4.1.0.
% Domain   : Commonsense Reasoning
% Problem  : Reiner and MariaPaola are not connected at the CADE meeting
% Version  : Especial * Reduced > Especial.
% English  : CADE_BM is a Meeting. One agent of this meeting is MariaPaola and 
%            one is Reiner. It holds that both agents are not connected during 
%            the meeting.

% Refs     : [Ben10] Benzmueller (2010), Email to Geoff Sutcliffe
% Source   : [Ben10]
% Names    : re_1.tq_SUMO_local [Ben10]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.2.0, 0.67 v6.0.0, 0.00 v5.4.0, 0.67 v5.0.0, 0.00 v4.1.0
% Syntax   : Number of formulae    :   15 (   5 unit;  10 type;   0 defn)
%            Number of atoms       :   39 (   0 equality;   0 variable)
%            Maximal formula depth :    5 (   3 average)
%            Number of connectives :   15 (   0   ~;   0   |;   0   &;  15    )
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    9 (   9   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (  10   :)
%            Number of variables   :    0 (   0 sgn;   0   !;   0   ?;   0   ^)
%                                         (   0   :;   0  !>;   0  ?*)
%                                         (   0   -;   0   +)
% SPC      : TH0_CSA_NEQ

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

tff(agent_THFTYPE_IiioI,type,(
    agent_THFTYPE_IiioI: ($i * $i) > $o )).

tff(connected_THFTYPE_IiioI,type,(
    connected_THFTYPE_IiioI: ($i * $i) > $o )).

tff(holdsDuring_THFTYPE_IiooI,type,(
    holdsDuring_THFTYPE_IiooI: ($i * $o) > $o )).

tff(instance_THFTYPE_IiioI,type,(
    instance_THFTYPE_IiioI: ($i * $i) > $o )).

tff(lCADE_BM_THFTYPE_i,type,(
    lCADE_BM_THFTYPE_i: $i )).

tff(lMariaPaola_THFTYPE_i,type,(
    lMariaPaola_THFTYPE_i: $i )).

tff(lMeeting_THFTYPE_i,type,(
    lMeeting_THFTYPE_i: $i )).

tff(lReiner_THFTYPE_i,type,(
    lReiner_THFTYPE_i: $i )).

tff(lWhenFn_THFTYPE_IiiI,type,(
    lWhenFn_THFTYPE_IiiI: $i > $i )).

%----The translated axioms
tff(ax,axiom,
    agent_THFTYPE_IiioI(lCADE_BM_THFTYPE_i,lReiner_THFTYPE_i)).

tff(ax_001,axiom,
    agent_THFTYPE_IiioI(lCADE_BM_THFTYPE_i,lMariaPaola_THFTYPE_i)).

tff(ax_002,axiom,
    instance_THFTYPE_IiioI(lCADE_BM_THFTYPE_i,lMeeting_THFTYPE_i)).

tff(ax_003,axiom,
    holdsDuring_THFTYPE_IiooI(lWhenFn_THFTYPE_IiiI(lCADE_BM_THFTYPE_i),$true)).

%----The translated conjectures
tff(con,conjecture,
    holdsDuring_THFTYPE_IiooI ( lWhenFn_THFTYPE_IiiI(lCADE_BM_THFTYPE_i) , ~connected_THFTYPE_IiioI(lMariaPaola_THFTYPE_i,lReiner_THFTYPE_i) )).

%------------------------------------------------------------------------------
