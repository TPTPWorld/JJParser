#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <stdlib.h>
#include "DataTypes.h"
#include "Utilities.h"
#include "Examine.h"
#include "Parsing.h"
#include "ListStatistics.h"
#include "Tree.h"
#include "TreeStatistics.h"
//-------------------------------------------------------------------------------------------------
double TreeCount(SIGNATURE Signature,TREENODE Tree,CountType WhatToCount,int Expand) {

    double Counter = 0;
    int Index;

    if (!Tree->Visited) {
        switch (WhatToCount) {
            case nodes:
                Counter = 1;
                break;
            case thf_nodes:
                if (GetSyntax(Tree->AnnotatedFormula) == tptp_thf) {
                    Counter = 1;
                } else {
                    Counter = 0;
                }
                break;
            case tff_nodes:
                if (GetSyntax(Tree->AnnotatedFormula) == tptp_tff) {
                    Counter = 1;
                } else {
                    Counter = 0;
                }
                break;
            case tcf_nodes:
                if (GetSyntax(Tree->AnnotatedFormula) == tptp_tcf) {
                    Counter = 1;
                } else {
                    Counter = 0;
                }
                break;
            case fof_nodes:
                if (GetSyntax(Tree->AnnotatedFormula) == tptp_fof) {
                    Counter = 1;
                } else {
                    Counter = 0;
                }
                break;
            case cnf_nodes:
                if (GetSyntax(Tree->AnnotatedFormula) == tptp_cnf) {
                    Counter = 1;
                } else {
                    Counter = 0;
                }
                break;
            case leaves:
                if (Tree->NumberOfParents == 0) {
                    Counter = 1;
                } else {
                    Counter = 0;
                }
                break;
            case atoms:
                Counter = CountFormulaAtomsByPredicate(Signature,GetTreeNodeFormula(Tree),
"PREDICATE",1);
                break;
            case equality_atoms:
                Counter = CountFormulaAtomsByPredicate(Signature,GetTreeNodeFormula(Tree),"=",1);
                Counter += CountFormulaAtomsByPredicate(Signature,GetTreeNodeFormula(Tree),"@=",1);
                break;
            case terms:
                Counter = CountFormulaTerms(GetTreeNodeFormula(Tree));
                break;
            case formula_depth:
                Counter = FormulaDepth(GetTreeNodeFormula(Tree));
                break;
            case term_depth:
                Counter = SumFormulaTermDepth(GetTreeNodeFormula(Tree));
                break;
            default:
                CodingError("Don't know what to count in tree");
                break;
        }
    
        for (Index = 0; Index < Tree->NumberOfParents; Index++) {
            Counter += TreeCount(Signature,Tree->Parents[Index],WhatToCount,Expand);
        }
//----Save value for future visits
        Tree->StatisticsCache = Counter;
        Tree->Visited = 1;

    } else {
        if (Expand) {
            Counter = Tree->StatisticsCache;
        } else {
            Counter = 0;
        }
    }

    return(Counter);
}
//-------------------------------------------------------------------------------------------------
double RootListCount(SIGNATURE Signature,ROOTLIST RootListHead,CountType WhatToCount,int Expand) {

    double Counter;

    Counter = 0;
    ResetRootListVisited(RootListHead);
    while (RootListHead != NULL) {
        if (RootListHead->TheTree != NULL) {
            Counter += TreeCount(Signature,RootListHead->TheTree,WhatToCount,Expand);
        }
        RootListHead = RootListHead->Next;
    }

    return(Counter);
}
//-------------------------------------------------------------------------------------------------
double TreeMaximal(SIGNATURE Signature,TREENODE Tree,MaximizeType WhatToMaximize) {

    double Maximal = 0;
    int Index;
    double NextMaximal;

//----Check if known value. his relies on never having a value of 0.
    if (!Tree->Visited) {
        switch (WhatToMaximize) {
            case depth:
                Maximal = 0;
                break;
            case literals:
                Maximal = CountFormulaAtomsByPredicate(Signature,GetTreeNodeFormula(Tree),
"PREDICATE",0);
                break;
            case max_term_depth:
                Maximal = MaxFormulaTermDepth(GetTreeNodeFormula(Tree));
                break;
            case max_formula_depth:
                Maximal = FormulaDepth(GetTreeNodeFormula(Tree));
                break;
            default:
                CodingError("Unknown thing to maximize in tree");
                break;
        }

        for (Index = 0; Index < Tree->NumberOfParents; Index++) {
            NextMaximal = TreeMaximal(Signature,Tree->Parents[Index],WhatToMaximize);
            Maximal = MaximumOfDouble(NextMaximal,Maximal);
        }
        switch (WhatToMaximize) {
            case depth:
//----Only count depth if there are some parents
                if (Tree->NumberOfParents > 0) {
                    Maximal++;
                }
                break;
            case literals:
                break;
            case max_term_depth:
                break;
            case max_formula_depth:
                break;
            default:
                CodingError("Unknown thing to maximize in tree");
                break;
        }
        Tree->StatisticsCache = Maximal;
        Tree->Visited = 1;
    } else {
        Maximal = Tree->StatisticsCache;
    }

    return(Maximal);
}
//-------------------------------------------------------------------------------------------------
double RootListMaximal(SIGNATURE Signature,ROOTLIST RootListHead,MaximizeType WhatToMaximize) {

    double Maximal;
    double NextMaximal;

    Maximal = 0;
    ResetRootListVisited(RootListHead);
    while (RootListHead != NULL) {
        if (RootListHead->TheTree != NULL) {
            NextMaximal = TreeMaximal(Signature,RootListHead->TheTree,WhatToMaximize);
        } else {
            NextMaximal = -1;
        }
        Maximal = MaximumOfDouble(NextMaximal,Maximal);
        RootListHead = RootListHead->Next;
    }   
    
    return(Maximal);
}
//-------------------------------------------------------------------------------------------------
int TreeHasCycle(TREENODE Root) {

    int Index;

//----A real tree out there? (1 = black)
    if (Root->Visited == 1) {
        return(0);
    } 
//----Been here before? (-1 = grey)
    if (Root->Visited == -1) {
        return(1);
    }
//----Try all children
    Root->Visited = -1;
    for (Index = 0; Index < Root->NumberOfParents; Index++) {
        if (TreeHasCycle(Root->Parents[Index])) {
            return(1);
        }
    }
    Root->Visited = 1;
    return(0);
}
//-------------------------------------------------------------------------------------------------
int RootListHasCycle(ROOTLIST RootListHead) {

    ResetRootListVisited(RootListHead);
    while (RootListHead != NULL) {
        if (TreeHasCycle(RootListHead->TheTree)) {
            return(1);
        }
        RootListHead = RootListHead->Next;
    }
    return(0);
}
//-------------------------------------------------------------------------------------------------
SolutionStatisticsType CombinedTreeStatistics(SolutionStatisticsType TreeStatistics1,
SolutionStatisticsType TreeStatistics2) {

ZZZZZZZ

}
//-------------------------------------------------------------------------------------------------
SolutionStatisticsType GetTreeStatistics(TREENODE Root,SIGNATURE Signature) {

    StatisticsType TreeStatistics;
    StatisticsType ParentTreeStatistics;
    ListNodeType OneNodeList;

	OneNodeList.Last = NULL;
    OneNodeList.Next = NULL;
    OneNodeList.Visited = 0;
    OneNodeList.AnnotatedFormula = Root->AnnotatedFormula;
    TreeStatistics = GetListStatistics(&OneNodeList,Signature);
    for (index = 0;index < Root->NumberOfParents;index++) {
        OneNodeList.AnnotatedFormula = Root->Parents[index];
        ParentTreeStatistics = GetListStatistics(&OneNodeList,Signature);
        TreeStatistics = CombinedTreeStatistics(TreeStatistics,ParentTreeStatistics);
    }
    return(TreeStatistics);
}
//-------------------------------------------------------------------------------------------------
SolutionStatisticsType GetForestStatistics(ROOTLIST Head,SIGNATURE Signature) {

    SolutionStatisticsType Statistics;
    SolutionStatisticsType TreeStatistics;
    StatisticsType FormulaeStatistics;
    StatisticsType ExpandedFormulaeStatistics;

    if (RootListHead == NULL) {
        Statistics.Type = nonszsoutput;
        return(Statistics);
    }

    if (RootListHasCycle(RootListHead)) {
        ReportError("SemanticError","Cycle in a tree",0);
        Statistics.Type = nonszsoutput;
        return(Statistics);
    }

    while (Head != NULL) {
        TreeStatistics = GetTreeStatistics(Head->TheTree,Signature);
    }
//TODO Get each tree statistics and combine

    return(Statistics);
}
//-------------------------------------------------------------------------------------------------
void PrintForestStatistics(FILE * Stream,SolutionStatisticsType Statistics) {

    fprintf(Stream,
"%%              Maximal term depth       : xxxxx\n");
}
//-------------------------------------------------------------------------------------------------
void PrintFiniteModelStatistics(FILE * Stream,SolutionStatisticsType Statistics) {

    fprintf(Stream,"%% Syntax   : Domain size           : %4d\n",Statistics.FiniteDomainSize);
}
//-------------------------------------------------------------------------------------------------
int ExtractFiniteDomainSize(FORMULA Formula) {

    int LHSize,RHSize;

//----If an equality atom, return 1
    if (Formula->Type == atom && !strcmp("=",GetSymbol(Formula->FormulaUnion.Atom)) &&
GetArity(Formula->FormulaUnion.Atom) == 2) {
        return(1);
    } else if (Formula->Type == binary && Formula->FormulaUnion.BinaryFormula.Connective ==
disjunction) {
        if ((LHSize = ExtractFiniteDomainSize(Formula->FormulaUnion.BinaryFormula.LHS)) == -1 ||
(RHSize = ExtractFiniteDomainSize(Formula->FormulaUnion.BinaryFormula.RHS)) == -1) {
            return(-1);
        } else {
            return(LHSize + RHSize);
        }
    } else {
        return(-1);
    }
}
//-------------------------------------------------------------------------------------------------
int HasAFiniteDomain(LISTNODE Head,int * FiniteDomainSize) {

    FORMULA Formula;

    while (Head != NULL) {
        if (GetRole(Head->AnnotatedFormula,NULL) == fi_domain) {
            *FiniteDomainSize = 0;
            Formula = GetListNodeFormula(Head);
//----Check that it's a FOF universal 
            if (Head->AnnotatedFormula->Syntax != tptp_fof || Formula->Type != quantified || 
Formula->FormulaUnion.QuantifiedFormula.Quantifier != universal) {
                return(-1);
            }
//----Top level equality is size 1
            return(ExtractFiniteDomainSize(Formula->FormulaUnion.QuantifiedFormula.Formula));
        }
        Head = Head->Next;
    }
    return(0);
}
//-------------------------------------------------------------------------------------------------
int IsARefutation(ROOTLIST Head) {

    FORMULA Formula;

    while (Head != NULL) {
        Formula = GetTreeNodeFormula(Head->TheTree);
        if (Formula->Type != atom || strcmp("$false",GetSymbol(Formula->FormulaUnion.Atom))) {
            return(0);
        }
        Head = Head->Next;
    }
    return(1);
}
//-------------------------------------------------------------------------------------------------
SZSOutputType GetSZSOutputType(LISTNODE Head,ROOTLIST * RootListHead,int * FiniteDomainSize,
SIGNATURE Signature) {

    *RootListHead = NULL;
    if (Head == NULL) {
        return(Non);
    } else if ((*RootListHead = BuildRootList(Head,Signature)) != NULL) {
        if (IsARefutation(*RootListHead)) {
            return(Ref);
        } else {
            return(Der);
        }
    } else if (HasAFiniteDomain(Head,FiniteDomainSize) > 0) {
        return(FMo);
    } else {
//TODO check it is a nice list of formulae
        return(Sat);
    }
}
//-------------------------------------------------------------------------------------------------
//----If the signature is non-NULL use it for symbols
SolutionStatisticsType GetSolutionStatistics(LISTNODE Head,SIGNATURE Signature,
ROOTLIST * RootListHead) {

    SolutionStatisticsType Statistics;

    Statistics.Type = GetSZSOutputType(Head,RootListHead,&Statistics.FiniteDomainSize,Signature);
    switch (Statistics.Type) {
        case Ref:
        case Der:
            Statistics = GetForestStatistics(*RootListHead,Signature);
            break;
        case FMo:
            break;
        case Sat:
            Statistics.FormulaeStatistics = GetListStatistics(Head,Signature);
            break;
        case Non:
        case nonszsoutput:
            break;
        default:
            break;
    }
    return(Statistics);
}
//-------------------------------------------------------------------------------------------------
void PrintSolutionStatistics(FILE * Stream,SolutionStatisticsType Statistics) {

    fprintf(Stream,"%% Structure  : %s\n",SZSOutputToUserString(Statistics.Type));

    switch (Statistics.Type) {
        case Ref:
        case Der:
            PrintForestStatistics(Stream,Statistics);
            break;
        case FMo:
            PrintFiniteModelStatistics(Stream,Statistics);
            break;
        case Sat:
            PrintListStatistics(Stream,Statistics.FormulaeStatistics);
            break;
        case Non:
        case nonszsoutput:
            break;
        default:
            break;
    }
}
//-------------------------------------------------------------------------------------------------
