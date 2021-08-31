#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "DataTypes.h"
#include "Utilities.h"
#include "Examine.h"
#include "Parsing.h"
#include "Statistics.h"
#include "ListStatistics.h"
#include "PrintTSTP.h"
#include "Signature.h"
//-------------------------------------------------------------------------------------------------
int ListCount(LISTNODE List,CountType WhatToCount) {

    int Counter;

    Counter = 0;
    while (List != NULL) {
//----Ignore comments
        if (LogicalAnnotatedFormula(List->AnnotatedFormula)) {
            switch (WhatToCount) {
                case nodes:
                    Counter += 1;
                    break;
                case thf_nodes:
                    if (GetSyntax(List->AnnotatedFormula) == tptp_thf) {
                        Counter += 1;
                    }
                    break;
                case tff_nodes:
                    if (GetSyntax(List->AnnotatedFormula) == tptp_tff) {
                        Counter += 1;
                    }
                    break;
                case tcf_nodes:
                    if (GetSyntax(List->AnnotatedFormula) == tptp_tcf) {
                        Counter += 1;
                    }
                    break;
                case fof_nodes:
                    if (GetSyntax(List->AnnotatedFormula) == tptp_fof) {
                        Counter += 1;
                    }
                    break;
                case cnf_nodes:
                    if (GetSyntax(List->AnnotatedFormula) == tptp_cnf) {
                        Counter += 1;
                    }
                    break;
                case horn_clauses:
                    if (HornClause(List->AnnotatedFormula)) {
                        Counter += 1;
                    }
                    break;
//----Unit annotated fomula has just one atom
                case unit_formulae:
                    if (CountFormulaAtomsByPredicate(GetListNodeFormula(List),"") == 1) {
                        Counter += 1;
                    }
                    break;
                case type_formulae:
                    if (GetRole(List->AnnotatedFormula,NULL) == type) {
                        Counter += 1;
                    }
                    break;
                case defn_formulae:
                    if (GetRole(List->AnnotatedFormula,NULL) == definition) {
                        Counter += 1;
                    }
                    break;
                case sequent_formulae:
                    if (LogicalAnnotatedFormula(List->AnnotatedFormula) &&
GetListNodeFormula(List)->Type == sequent) {
                        Counter += 1;
                    }
                    break;
                case rr_clauses:
                    if (RangeRestrictedClause(List->AnnotatedFormula)) {
                        Counter += 1;
                    }
                    break;
                case atoms:
                    Counter += CountFormulaAtomsByPredicate(GetListNodeFormula(List),"");
                    break;
                case equality_atoms:
                    Counter += CountFormulaAtomsByPredicate(GetListNodeFormula(List),"=");
                    Counter += CountFormulaAtomsByPredicate(GetListNodeFormula(List),"@=");
                    break;
                case variable_atoms:
                    Counter += CountFormulaAtomsByPredicate(GetListNodeFormula(List),"VARIABLE");
                    break;
                case literal_count:
                    if (GetSyntax(List->AnnotatedFormula) == tptp_cnf) {
                        Counter += CountFormulaAtomsByPredicate(GetListNodeFormula(List),"");
                    }
                    break;
                case terms:
                    Counter += CountFormulaTerms(GetListNodeFormula(List));
                    break;
                case variables:
                    Counter += CountAnnotatedFormulaUniqueVariables(List->AnnotatedFormula);
                    break;
                case singletons:
                    Counter += CountAnnotatedFormulaSingletons(List->AnnotatedFormula);
                    break;
                case tuples:
                    Counter += CountFormulaTuples(GetListNodeFormula(List));
                    break;
                case ite_forms:
                    Counter += CountFormulaAtomsByPredicate(GetListNodeFormula(List),"$ite");
                    break;
                case let_forms:
                    Counter += CountFormulaAtomsByPredicate(GetListNodeFormula(List),"$let");
                    break;
                case nested_formulae:
                    Counter += CountNestedFormulae(GetListNodeFormula(List),0);
                    break;
                case boolean_variables:
                    Counter += CountBooleanVariablesInFormula(GetListNodeFormula(List));
                    break;
                case formula_depth:
                    Counter += FormulaDepth(GetListNodeFormula(List));
                    break;
                case term_depth:
                    Counter += SumFormulaTermDepth(GetListNodeFormula(List));
                    break;
                default:
                    CodingError("Don't know what to count in list");
                    break;
            }
        }
        List = List->Next;
    }
    return(Counter);
}
//-------------------------------------------------------------------------------------------------
int HeadListCount(HEADLIST HeadListHead,CountType WhatToCount) {

    int Counter;

    Counter = 0;
    while (HeadListHead != NULL) {
        if (HeadListHead->TheList != NULL) {
            Counter += ListCount(HeadListHead->TheList,WhatToCount);
        }
        HeadListHead = HeadListHead->Next;
    }

    return(Counter);
}
//-------------------------------------------------------------------------------------------------
int ListMaximal(LISTNODE List,MaximizeType WhatToMaximize) {

    int Maximal;

    Maximal = -1;
    while (List != NULL) {
//----Ignore comments
        if (LogicalAnnotatedFormula(List->AnnotatedFormula)) {
            switch (WhatToMaximize) {
                case literals:
                    Maximal = MaximumOfInt(Maximal,
CountFormulaAtomsByPredicate(GetListNodeFormula(List),""));
                    break;
                case max_term_depth:
                    Maximal = MaximumOfInt(Maximal,MaxFormulaTermDepth(GetListNodeFormula(List)));
                    break;
                case max_formula_depth:
                    Maximal = MaximumOfInt(Maximal,FormulaDepth(GetListNodeFormula(List)));
                    break;
                default:
                    CodingError("Unknown thing to maximize in list");
                    break;
            }
        }
        List = List->Next;
    }

    return(Maximal);
}
//-------------------------------------------------------------------------------------------------
int HeadListMaximal(HEADLIST HeadListHead,MaximizeType WhatToMaximize) {

    int Maximal;
    int NextMaximal;

    Maximal = -1;
    while (HeadListHead != NULL) {
        if (HeadListHead->TheList != NULL) {
            NextMaximal = ListMaximal(HeadListHead->TheList,WhatToMaximize);
        } else {
            NextMaximal = -1;
        }
        Maximal = MaximumOfInt(NextMaximal,Maximal);
        HeadListHead = HeadListHead->Next;
    }   
    
    return(Maximal);
}
//-------------------------------------------------------------------------------------------------
void AnalyseSymbolList(char * SymbolList,int * NumberOfSymbols,int * NumberOfArity0,
int * MinArity,int * MaxArity) {

    char * SymbolRecord;
    char * RecordRestart;
    char * SymbolField;
    char * FieldRestart;
    int Arity;

    *NumberOfSymbols = 0;
    *NumberOfArity0 = 0;
    *MinArity = -1;
    *MaxArity = -1;

    SymbolRecord = strtok_r(SymbolList,"\n",&RecordRestart);
    while (SymbolRecord != NULL) {
//DEBUG printf("Symbol is %s\n",SymbolRecord);
        (*NumberOfSymbols)++;
        SymbolField = strtok_r(SymbolRecord,"/",&FieldRestart);
        SymbolField = strtok_r(NULL,"/",&FieldRestart);
        Arity = atoi(SymbolField);
        if (Arity == 0) {
            (*NumberOfArity0)++;
        }
        if (*MinArity == -1 || Arity < *MinArity) {
            *MinArity = Arity;
        }
        if (*MaxArity == -1 || Arity > *MaxArity) {
            *MaxArity = Arity;
        }
        SymbolRecord = strtok_r(NULL,"\n",&RecordRestart);
    }
}
//-------------------------------------------------------------------------------------------------
SymbolStatisticsType GetListSymbolUsageStatistics(HEADLIST HeadList) {

    char * PredicateCollector;
    char * FunctorCollector;
    char * OneUsage;
    char * FunctorsStart;
    int PredicateCollectorLength = STRINGLENGTH;
    int FunctorCollectorLength = STRINGLENGTH;
    LISTNODE ListNode;
    SymbolStatisticsType SymbolStatistics;

    InitializeSymbolStatistics(&SymbolStatistics);

    PredicateCollector = (char *)Malloc(sizeof(String));
    strcpy(PredicateCollector,"");
    FunctorCollector = (char *)Malloc(sizeof(String));
    strcpy(FunctorCollector,"");

//----Go down list collecting
    while (HeadList != NULL) {
        ListNode = HeadList->TheList;
        OneUsage = NULL;
        GetListOfAnnotatedFormulaSymbolUsage(ListNode,&OneUsage,&FunctorsStart);
        ExtendString(&FunctorCollector,FunctorsStart,&FunctorCollectorLength);
        *FunctorsStart = '\0';
        ExtendString(&PredicateCollector,OneUsage,&PredicateCollectorLength);
        Free((void **)&OneUsage);
        HeadList = HeadList->Next;
    }

    NormalizeSymbolUsage(FunctorCollector);
    NormalizeSymbolUsage(PredicateCollector);
//DEBUG printf("PREDICATES\n%sFUNCTORS\n%s\n",PredicateCollector,FunctorCollector);
    AnalyseSymbolList(FunctorCollector,&(SymbolStatistics.NumberOfFunctors),
&(SymbolStatistics.NumberOfConstants),&(SymbolStatistics.MinFunctorArity),
&(SymbolStatistics.MaxFunctorArity));
    AnalyseSymbolList(PredicateCollector,&(SymbolStatistics.NumberOfPredicates),
&(SymbolStatistics.NumberOfPropositions),&(SymbolStatistics.MinPredicateArity),
&(SymbolStatistics.MaxPredicateArity));

    Free((void **)&FunctorCollector);
    Free((void **)&PredicateCollector);

    return(SymbolStatistics);
}
//-------------------------------------------------------------------------------------------------
ConnectiveStatisticsType GetListConnectiveUsageStatistics(HEADLIST HeadList) {

    LISTNODE ListNode;
    ConnectiveStatisticsType ConnectiveStatistics;
    ConnectiveStatisticsType FormulaConnectiveStatistics;

//----Initialize all counters
    InitializeConnectiveStatistics(&ConnectiveStatistics);

//----Go down list collecting
    while (HeadList != NULL) {
        ListNode = HeadList->TheList;
        while (ListNode != NULL) {
//----Ignore comments
            if (LogicalAnnotatedFormula(ListNode->AnnotatedFormula)) {
                InitializeConnectiveStatistics(&FormulaConnectiveStatistics);
                FormulaConnectiveStatistics = GetFormulaConnectiveUsage(GetListNodeFormula(
ListNode));
                AddOnConnectiveStatistics(&ConnectiveStatistics,FormulaConnectiveStatistics);
            }
            ListNode = ListNode->Next;
        }
        HeadList = HeadList->Next;
    }
    return(ConnectiveStatistics);
}
//-------------------------------------------------------------------------------------------------
void GetMathmaticsUsage(LISTNODE ListHead,SIGNATURE Signature,int * NumberOfPredicates,
int * NumberOfFunctions,int * NumberOfNumbers) {

    char* MathPredicates[] = {
        "$less/2",
        "$lesseq/2",
        "$greater/2",
        "$greatereq/2",
        "$is_int/1",
        "$is_rat/1" };
    char* MathFunctions[] = {
        "$uminus/1",
        "$sum/2",
        "$difference/2",
        "$product/2",
        "$quotient/2",
        "$quotient_e/2",
        "$quotient_t/2",
        "$quotient_f/2",
        "$remainder_e/2",
        "$remainder_t/2",
        "$remainder_f/2",
        "$floor/1",
        "$ceiling/1",
        "$truncate/1",
        "$round/1",
        "$to_int/1",
        "$to_rat/1",
        "$to_real/1" };
     
    int Index;
    String MyCopy;
    char * SymbolUsage;
    char * FunctorUsage;
    char * Symbol;
    char * Slash;
    char * EndPtr;
    int Arity;
    int Uses;

//DEBUG printf("PROGRESS: Starting GetMathmaticsUsage\n");
    *NumberOfPredicates = 0;
    for (Index=0; Index < sizeof(MathPredicates)/sizeof(char*);Index++) {
        strcpy(MyCopy,MathPredicates[Index]);
        Slash = strchr(MyCopy,'/');
        *Slash = '\0';
        Slash++;
        Arity = atoi(Slash);
//----Have to ignore arity for THF usage
        if (GetSymbolUses(Signature,predicate,MyCopy,-1) > 0) {
            (*NumberOfPredicates)++;
//DEBUG printf("%s is used\n",MyCopy);
        }
    }
//DEBUG printf("PROGRESS: Done predicates loop\n");
    *NumberOfFunctions = 0;
    for (Index=0; Index < sizeof(MathFunctions)/sizeof(char*);Index++) {
        strcpy(MyCopy,MathFunctions[Index]);
        Slash = strchr(MyCopy,'/');
        *Slash = '\0';
        Arity = atoi(Slash+1);
//----Need to look for math functiosn in predicates because that's what they
//----look like in THF
        if (GetSymbolUses(Signature,predicate,MyCopy,-1) > 0 ||
GetSymbolUses(Signature,function,MyCopy,-1) > 0) {
//----Add GetSymbolUses() to get total occurrences
            (*NumberOfFunctions)++;
//DEBUG printf("%s is used\n",MyCopy);
        }
    }
//DEBUG printf("PROGRESS: Done functions loop\n");

    SymbolUsage = NULL;
    SymbolUsage = GetListOfAnnotatedFormulaSymbolUsage(ListHead,&SymbolUsage,&FunctorUsage);
//DEBUG printf("PROGRESS: The symbol usage is %s\n",SymbolUsage);
//DEBUG printf("PROGRESS: The functor usage is %s\n",FunctorUsage);

    *NumberOfNumbers = 0;
//----Have to use all symbols because in THF numbers look like predicates
    Symbol = strtok(SymbolUsage,"\n");
    while (Symbol != NULL) {
//----Search from end to avoid finding / in rational numbers (aaaargh)
//DEBUG printf("Analyse ==%s==\n",Symbol);
        Slash = strrchr(Symbol,'/');
        *Slash = '\0';
        Slash++;
//DEBUG printf("Uses %s\n",Slash);
        Uses = atoi(Slash);
        Slash = strrchr(Symbol,'/');
        *Slash = '\0';
        Slash++;
//DEBUG printf("Arity %s\n",Slash);
        Arity = atoi(Slash);
//----Numbers must have 0 arity, must be recognized as a real, or have a /
//----so they are rationals.
//DEBUG printf("Symbol %s Arity %d\n",Symbol,Arity);
//----Bad hack to fix strtod whch thinks infuncsetfunc is a number!
        if (Arity == 0 && isdigit(Symbol[0]) && ( strtod(Symbol,&EndPtr) != 0 || EndPtr != Symbol ||
//----Bad hack to look for rationals
(strchr(Symbol,'/') != NULL && Symbol[0] != '\'' && Symbol[0] != '"'))) {
//DEBUG printf("Symbol %s Arity %d is a number with value %f\n",Symbol,Arity,strtod(Symbol,&EndPtr));
            (*NumberOfNumbers)++;
//---Use this to get total occurrences ...  += Uses;
        }
        Symbol = strtok(NULL,"\n");
    }
//DEBUG printf("PROGRESS: Done number counts = %f\n",*NumberOfNumbers);

    Free((void **)&SymbolUsage);
}
//-------------------------------------------------------------------------------------------------
//----If the signature is non-NULL use it for symbols
StatisticsType GetListStatistics(LISTNODE ListHead,SIGNATURE Signature) {

    StatisticsType Statistics;
    HeadListType HeadListNode;
    double NumberOfTerms;

//----Make a single node for list of lists
    HeadListNode.TheList = ListHead;
    HeadListNode.Next = NULL;

    InitializeStatistics(&Statistics);

//DEBUG printf("PROGRESS: starting\n");
    Statistics.FormulaStatistics.NumberOfFormulae = HeadListCount(&HeadListNode,nodes);
    Statistics.FormulaStatistics.NumberOfTHF = HeadListCount(&HeadListNode,thf_nodes);
    Statistics.FormulaStatistics.NumberOfTFF = HeadListCount(&HeadListNode,tff_nodes);
    Statistics.FormulaStatistics.NumberOfTCF = HeadListCount(&HeadListNode,tcf_nodes);
    Statistics.FormulaStatistics.NumberOfFOF = HeadListCount(&HeadListNode,fof_nodes);
    Statistics.FormulaStatistics.NumberOfCNF = HeadListCount(&HeadListNode,cnf_nodes);
//DEBUG printf("PROGRESS: counted nodes of type\n");

    Statistics.FormulaStatistics.NumberOfUnitFormulae = HeadListCount(&HeadListNode,unit_formulae);
    Statistics.FormulaStatistics.NumberOfTypeFormulae = HeadListCount(&HeadListNode,type_formulae);
    Statistics.FormulaStatistics.NumberOfDefnFormulae = HeadListCount(&HeadListNode,defn_formulae);
    Statistics.FormulaStatistics.NumberOfSequents = HeadListCount(&HeadListNode,sequent_formulae);
//DEBUG printf("PROGRESS: counted formulae of type\n");
    Statistics.FormulaStatistics.NumberOfAtoms = HeadListCount(&HeadListNode,atoms);
    Statistics.FormulaStatistics.NumberOfEqualityAtoms = HeadListCount(&HeadListNode,equality_atoms);
    Statistics.FormulaStatistics.NumberOfVariableAtoms = HeadListCount(&HeadListNode,variable_atoms);
    Statistics.FormulaStatistics.NumberOfLiterals = HeadListCount(&HeadListNode,literal_count);
//DEBUG printf("PROGRESS: counted atoms of type\n");

    Statistics.FormulaStatistics.MaxFormulaDepth = HeadListMaximal(&HeadListNode,max_formula_depth);
    if (Statistics.FormulaStatistics.NumberOfFormulae > 0) {
        Statistics.FormulaStatistics.AverageFormulaDepth = 
HeadListCount(&HeadListNode,formula_depth) / Statistics.FormulaStatistics.NumberOfFormulae;
    } else {
        Statistics.FormulaStatistics.AverageFormulaDepth = 0.0;
    }
//DEBUG printf("PROGRESS: got formulae depth\n");
    Statistics.ConnectiveStatistics = GetListConnectiveUsageStatistics(&HeadListNode);
//DEBUG printf("PROGRESS: counted connectives\n");

    Statistics.FormulaStatistics.NumberOfHornClauses = HeadListCount(&HeadListNode,horn_clauses);
//DEBUG printf("PROGRESS: counted Horn clauses\n");
    Statistics.FormulaStatistics.NumberOfRRClauses = HeadListCount(&HeadListNode,rr_clauses);
//DEBUG printf("PROGRESS: counted RR clauses\n");
    Statistics.FormulaStatistics.MaxClauseSize = HeadListMaximal(&HeadListNode,literals);
//DEBUG printf("PROGRESS: got max clause size\n");
    if (Statistics.FormulaStatistics.NumberOfCNF > 0) {
        Statistics.FormulaStatistics.AverageClauseSize = 
Statistics.FormulaStatistics.NumberOfLiterals / Statistics.FormulaStatistics.NumberOfCNF;
    } else {
        Statistics.FormulaStatistics.AverageClauseSize = 0.0;
    }
//DEBUG printf("PROGRESS: counted THF and CNF formula types\n");

    if (Signature != NULL) {
//DEBUG printf("PROGRESS: Getting predicate symbol statistics from signature\n");
        GetSignatureSymbolUsageStatistics(Signature->Predicates,
&(Statistics.SymbolStatistics.NumberOfPredicates),
&(Statistics.SymbolStatistics.NumberOfPropositions),
&(Statistics.SymbolStatistics.MinPredicateArity),
&(Statistics.SymbolStatistics.MaxPredicateArity));
//DEBUG printf("PROGRESS: Getting function symbol statistics from signature\n");
        GetSignatureSymbolUsageStatistics(Signature->Functions,
&(Statistics.SymbolStatistics.NumberOfFunctors),
&(Statistics.SymbolStatistics.NumberOfConstants),
&(Statistics.SymbolStatistics.MinFunctorArity),
&(Statistics.SymbolStatistics.MaxFunctorArity));
    } else {
//DEBUG printf("Getting symbol statistics from formulae\n");
        Statistics.SymbolStatistics = GetListSymbolUsageStatistics(&HeadListNode);
    }
//DEBUG printf("PROGRESS: counted predicates and functions\n");
    Statistics.SymbolStatistics.NumberOfVariables = HeadListCount(&HeadListNode,variables);
    Statistics.SymbolStatistics.NumberOfSingletons = HeadListCount(&HeadListNode,singletons);
//DEBUG printf("PROGRESS: counted variables\n");
    Statistics.FormulaStatistics.MaxTermDepth = HeadListMaximal(&HeadListNode,max_term_depth);
//DEBUG printf("PROGRESS: got max term depth\n");
    if ((NumberOfTerms = HeadListCount(&HeadListNode,terms)) > 0) {
        Statistics.FormulaStatistics.AverageTermDepth = HeadListCount(&HeadListNode,term_depth) / 
NumberOfTerms;
    } else {
        Statistics.FormulaStatistics.AverageTermDepth = 0.0;
    }
//DEBUG printf("PROGRESS: got term depth\n");

//----Statistics for TFX and THF
    Statistics.FormulaStatistics.NumberOfNestedFormulae = HeadListCount(&HeadListNode,
nested_formulae);
    Statistics.SymbolStatistics.NumberBooleanVariables = HeadListCount(&HeadListNode,
boolean_variables);

//----Statistics for mathematics. Number of vars collected with connectives.
    GetMathmaticsUsage(ListHead,Signature,&Statistics.SymbolStatistics.NumberOfMathPredicates,
&Statistics.SymbolStatistics.NumberOfMathFunctions, &Statistics.SymbolStatistics.NumberOfNumbers);
//DEBUG printf("PROGRESS: got mathematics statistics\n");

    return(Statistics);
}
//-------------------------------------------------------------------------------------------------
void PrintMinMaxArity(FILE * Stream,double Arity) {

    if (Arity == -1) {
        fprintf(Stream,"-");
    } else {
        fprintf(Stream,"%.0f",Arity);
    }
}
//-------------------------------------------------------------------------------------------------
void PrintListStatistics(FILE * Stream,StatisticsType Statistics) {

    if (Statistics.FormulaStatistics.NumberOfFOF > 0 || 
Statistics.FormulaStatistics.NumberOfTHF > 0 || Statistics.FormulaStatistics.NumberOfTFF > 0) {
        fprintf(Stream,"%% Syntax   : Number of formulae    : %4d (%4d unit",
Statistics.FormulaStatistics.NumberOfFormulae,Statistics.FormulaStatistics.NumberOfUnitFormulae);
        if (Statistics.FormulaStatistics.NumberOfTHF > 0 || 
Statistics.FormulaStatistics.NumberOfTFF) {
            fprintf(Stream,";%4d type",Statistics.FormulaStatistics.NumberOfTypeFormulae);
            fprintf(Stream,";%4d defn",Statistics.FormulaStatistics.NumberOfDefnFormulae);
        }
    fprintf(Stream,")\n");
    }

    if (Statistics.FormulaStatistics.NumberOfCNF > 0) {
        if (Statistics.FormulaStatistics.NumberOfFOF > 0 || 
Statistics.FormulaStatistics.NumberOfTHF > 0 || Statistics.FormulaStatistics.NumberOfTFF > 0) {
            fprintf(Stream,"%%            ");
        } else {
            fprintf(Stream,"%% Syntax   : ");
        }
        fprintf(Stream,"Number of clauses     : %4d (%4d non-Horn;%4d unit;%4d RR)\n",
Statistics.FormulaStatistics.NumberOfCNF + Statistics.FormulaStatistics.NumberOfTCF,
Statistics.FormulaStatistics.NumberOfCNF + Statistics.FormulaStatistics.NumberOfTCF -
Statistics.FormulaStatistics.NumberOfHornClauses,
Statistics.FormulaStatistics.NumberOfUnitFormulae,Statistics.FormulaStatistics.NumberOfRRClauses);
    }

    fprintf(Stream,"%%            Number of atoms       : %4d (%4d equality",
Statistics.FormulaStatistics.NumberOfAtoms,Statistics.FormulaStatistics.NumberOfEqualityAtoms);
    if (Statistics.FormulaStatistics.NumberOfTHF > 0) {
        fprintf(Stream,";%4d variable",Statistics.FormulaStatistics.NumberOfVariableAtoms);
    }
    fprintf(Stream,")\n");

    if (Statistics.FormulaStatistics.NumberOfFOF > 0 || 
Statistics.FormulaStatistics.NumberOfTHF > 0 || Statistics.FormulaStatistics.NumberOfTFF > 0) {
        fprintf(Stream,"%%            Maximal formula depth : %4d (%4.0f average)\n",
Statistics.FormulaStatistics.MaxFormulaDepth,Statistics.FormulaStatistics.AverageFormulaDepth);
    }
    if (Statistics.FormulaStatistics.NumberOfCNF > 0) {
        fprintf(Stream,"%%            Maximal clause size   : %4d (%4.0f average)\n",
Statistics.FormulaStatistics.MaxClauseSize,Statistics.FormulaStatistics.AverageClauseSize);
    }

    if (Statistics.FormulaStatistics.NumberOfFOF > 0 || 
Statistics.FormulaStatistics.NumberOfTHF > 0 || Statistics.FormulaStatistics.NumberOfTFF > 0) {
//----First connectives line
        fprintf(Stream,
"%%            Number of connectives : %4d (%4d   ~;%4d   |;%4d   &",
Statistics.ConnectiveStatistics.NumberOfConnectives,
Statistics.ConnectiveStatistics.NumberOfNegations,
Statistics.ConnectiveStatistics.NumberOfDisjunctions,
Statistics.ConnectiveStatistics.NumberOfConjunctions);
        if (Statistics.FormulaStatistics.NumberOfTHF > 0) {
            fprintf(Stream,";%4d   @",Statistics.ConnectiveStatistics.NumberOfApplications);
        }
        fprintf(Stream,")\n");
//----Second connectives line
        fprintf(Stream,
"%%                                         (%4d <=>;%4d  =>;%4d  <=;%4d <~>)\n",
Statistics.ConnectiveStatistics.NumberOfEquivalences,
Statistics.ConnectiveStatistics.NumberOfImplications,
Statistics.ConnectiveStatistics.NumberOfReverseImplications,
Statistics.ConnectiveStatistics.NumberOfXors);
//----Third connectives line
        fprintf(Stream,
"%%                                         (%4d  ~|;%4d  ~&",
Statistics.ConnectiveStatistics.NumberOfNors,
Statistics.ConnectiveStatistics.NumberOfNands);
        fprintf(Stream,")\n");
        if (Statistics.FormulaStatistics.NumberOfTHF > 0 || 
Statistics.FormulaStatistics.NumberOfTFF > 0) {
//----Fourth connectives line, THF and TFF only
            fprintf(Stream,
"%%            Number of type conns  : %4d (%4d   >;%4d   *;%4d   +;%4d  <<)\n",
Statistics.ConnectiveStatistics.NumberOfTypeConnectives,
Statistics.ConnectiveStatistics.NumberOfMaparrows,
Statistics.ConnectiveStatistics.NumberOfXprods,
Statistics.ConnectiveStatistics.NumberOfUnions,
Statistics.ConnectiveStatistics.NumberOfSubtypes);
        }
    }

//----Symbols
    if (Statistics.FormulaStatistics.NumberOfTHF > 0) {
        fprintf(Stream,"%%            Number of symbols     : %4d (%4d constant; ",
Statistics.SymbolStatistics.NumberOfPredicates,Statistics.SymbolStatistics.NumberOfPropositions);
        PrintMinMaxArity(Stream,Statistics.SymbolStatistics.MinPredicateArity);
        fprintf(Stream,"-");
        PrintMinMaxArity(Stream,Statistics.SymbolStatistics.MaxPredicateArity);
        fprintf(Stream," arity)\n");
//----For TF1 print uses of @= and others as terms
        if (Statistics.ConnectiveStatistics.NumberOfPiBinders > 0 ||
Statistics.ConnectiveStatistics.NumberOfTypedEquations > 0 ||
Statistics.ConnectiveStatistics.NumberOfPis > 0 ||
Statistics.ConnectiveStatistics.NumberOfSigmas > 0 ||
Statistics.ConnectiveStatistics.NumberOfChoices > 0 ||
Statistics.ConnectiveStatistics.NumberOfDescriptions > 0) {
            fprintf(Stream,";%4d  @=)\n",
Statistics.ConnectiveStatistics.NumberOfTypedEquations);
            fprintf(Stream,
"%%                                         (%4d  !!;%4d  ??;%4d @@+;%4d @@-)\n",
Statistics.ConnectiveStatistics.NumberOfPis,
Statistics.ConnectiveStatistics.NumberOfSigmas,
Statistics.ConnectiveStatistics.NumberOfChoices,
Statistics.ConnectiveStatistics.NumberOfDescriptions);
        } else {
            fprintf(Stream,")\n");
        }
    }

    if (Statistics.FormulaStatistics.NumberOfFOF > 0 || 
Statistics.FormulaStatistics.NumberOfCNF > 0 ||
Statistics.FormulaStatistics.NumberOfTFF > 0) {
        fprintf(Stream,"%%            Number of predicates  : %4d (%4d propositional; ",
Statistics.SymbolStatistics.NumberOfPredicates,
Statistics.SymbolStatistics.NumberOfPropositions);
        PrintMinMaxArity(Stream,Statistics.SymbolStatistics.MinPredicateArity);
        fprintf(Stream,"-");
        PrintMinMaxArity(Stream,Statistics.SymbolStatistics.MaxPredicateArity);
        fprintf(Stream," arity)\n");
        fprintf(Stream,"%%            Number of functors    : %4d (%4d constant; ",
Statistics.SymbolStatistics.NumberOfFunctors,Statistics.SymbolStatistics.NumberOfConstants);
        PrintMinMaxArity(Stream,Statistics.SymbolStatistics.MinFunctorArity),
        fprintf(Stream,"-");
        PrintMinMaxArity(Stream,Statistics.SymbolStatistics.MaxFunctorArity);
        fprintf(Stream," arity)\n");
    }

//----Variables. Fuck, watch the sgn for FOF and THF, singleton for CNF
    fprintf(Stream,"%%            Number of variables   : %4d (%4d ",
Statistics.SymbolStatistics.NumberOfVariables,Statistics.SymbolStatistics.NumberOfSingletons);

    if (Statistics.FormulaStatistics.NumberOfFOF > 0 || 
Statistics.FormulaStatistics.NumberOfTHF > 0 ||
Statistics.FormulaStatistics.NumberOfTFF > 0) {
        fprintf(Stream,"sgn;%4d   !;%4d   ?",
Statistics.ConnectiveStatistics.NumberOfUniversals,
Statistics.ConnectiveStatistics.NumberOfExistentials);
        if (Statistics.FormulaStatistics.NumberOfTHF > 0) {
            fprintf(Stream,";%4d   ^",Statistics.ConnectiveStatistics.NumberOfLambdas);
        }
    } else {
        fprintf(Stream,"singleton");
    }
    fprintf(Stream,")\n");
    if (Statistics.FormulaStatistics.NumberOfTFF > 0 ||
Statistics.FormulaStatistics.NumberOfTHF > 0) {
        fprintf(Stream,
"%%                                         (%4d   :;%4d  !>;%4d  ?*)\n",
Statistics.ConnectiveStatistics.NumberOfTypedVariables,
Statistics.ConnectiveStatistics.NumberOfPiBinders,
Statistics.ConnectiveStatistics.NumberOfSigmaBinders);
    }
    if (Statistics.FormulaStatistics.NumberOfTHF > 0) {
        fprintf(Stream,
"%%                                         (%4d  @-;%4d  @+)\n",
Statistics.ConnectiveStatistics.NumberOfDescriptionBinders,
Statistics.ConnectiveStatistics.NumberOfChoiceBinders);
    }

//----Terms
    if (Statistics.FormulaStatistics.NumberOfFOF > 0 || 
Statistics.FormulaStatistics.NumberOfCNF > 0 ||
Statistics.FormulaStatistics.NumberOfTFF > 0) {
        fprintf(Stream,"%%            Maximal term depth    : %4d (%4.0f average)\n",
Statistics.FormulaStatistics.MaxTermDepth,Statistics.FormulaStatistics.AverageTermDepth);
    }

//----TFX symbols
    if (Statistics.FormulaStatistics.NumberOfNestedFormulae > 0 ||
Statistics.SymbolStatistics.NumberBooleanVariables > 0) {
        fprintf(Stream,
"%%            Boolean terms         : %4d (%4d formulae;%4d variables)\n",
Statistics.FormulaStatistics.NumberOfNestedFormulae +
Statistics.SymbolStatistics.NumberBooleanVariables,
Statistics.FormulaStatistics.NumberOfNestedFormulae,
Statistics.SymbolStatistics.NumberBooleanVariables);
    }

//----Mathematics
    if (Statistics.SymbolStatistics.NumberOfMathPredicates > 0 ||
Statistics.SymbolStatistics.NumberOfMathFunctions > 0 ||
Statistics.SymbolStatistics.NumberOfNumbers > 0 ||
Statistics.ConnectiveStatistics.NumberOfMathVariables > 0 ) {
        fprintf(Stream,
"%%            Arithmetic symbols    : %4d (%4d prd;%4d fun;%4d num;%4d var)\n",
Statistics.SymbolStatistics.NumberOfMathPredicates + 
Statistics.SymbolStatistics.NumberOfMathFunctions +
Statistics.SymbolStatistics.NumberOfNumbers +
Statistics.ConnectiveStatistics.NumberOfMathVariables,
Statistics.SymbolStatistics.NumberOfMathPredicates,
Statistics.SymbolStatistics.NumberOfMathFunctions,
Statistics.SymbolStatistics.NumberOfNumbers,
Statistics.ConnectiveStatistics.NumberOfMathVariables);
    }
}
//-------------------------------------------------------------------------------------------------
