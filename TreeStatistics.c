#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <stdlib.h>
#include "DataTypes.h"
#include "Utilities.h"
#include "Examine.h"
#include "Parsing.h"
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
"PREDICATE");
                break;
            case equality_atoms:
                Counter = CountFormulaAtomsByPredicate(Signature,GetTreeNodeFormula(Tree),"=");
                Counter += CountFormulaAtomsByPredicate(Signature,GetTreeNodeFormula(Tree),"@=");
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
                Maximal = CountFormulaAtomsByPredicate(Signature,GetTreeNodeFormula(Tree),"");
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
TreeStatisticsRecordType * GetTreeStatistics(SIGNATURE Signature,ROOTLIST RootListHead,
TreeStatisticsRecordType * Statistics) {

    if (RootListHead == NULL) {
        return(NULL);
    }

    if (RootListHasCycle(RootListHead)) {
        ReportError("SemanticError","Cycle in a tree",0);
        return(NULL);
    }

    Statistics->NumberOfFormulae = RootListCount(Signature,RootListHead,nodes,0);
    Statistics->NumberOfFormulaeExpanded = RootListCount(Signature,RootListHead,nodes,1);
    Statistics->NumberOfLeaves = RootListCount(Signature,RootListHead,leaves,0);
    Statistics->NumberOfLeavesExpanded = RootListCount(Signature,RootListHead,leaves,1);
    Statistics->TreeDepth = RootListMaximal(Signature,RootListHead,depth);
    Statistics->NumberOfAtoms = RootListCount(Signature,RootListHead,atoms,0);
    Statistics->NumberOfAtomsExpanded = RootListCount(Signature,RootListHead,atoms,1);
    Statistics->NumberOfEqualityAtoms = RootListCount(Signature,RootListHead,
equality_atoms,0);
    Statistics->NumberOfEqualityAtomsExpanded = RootListCount(Signature,RootListHead,
equality_atoms,1);
    Statistics->MaxFormulaDepth = RootListMaximal(Signature,RootListHead,max_formula_depth);
    Statistics->AverageFormulaDepth = RootListCount(Signature,RootListHead,
formula_depth,0) / Statistics->NumberOfFormulae;

    Statistics->NumberOfTHF = RootListCount(Signature,RootListHead,thf_nodes,0);
    Statistics->NumberOfTFF = RootListCount(Signature,RootListHead,tff_nodes,0);
    Statistics->NumberOfTCF = RootListCount(Signature,RootListHead,tcf_nodes,0);
    Statistics->NumberOfFOF = RootListCount(Signature,RootListHead,fof_nodes,0);
    Statistics->NumberOfCNF = RootListCount(Signature,RootListHead,cnf_nodes,0);
    if (Statistics->NumberOfCNF > 0) {
        Statistics->NumberOfCNFExpanded = RootListCount(Signature,RootListHead,
cnf_nodes,1);
    }
    if (Statistics->NumberOfTCF > 0) {
        Statistics->NumberOfTCFExpanded = RootListCount(Signature,RootListHead,
tcf_nodes,1);
    }
    if (Statistics->NumberOfCNF > 0 || Statistics->NumberOfTCF > 0) {
        Statistics->MaxClauseSize = RootListMaximal(Signature,RootListHead,literals);
        Statistics->AverageClauseSize = Statistics->NumberOfAtoms /
(Statistics->NumberOfCNF + Statistics->NumberOfTCF);
    }

    Statistics->MaxTermDepth = RootListMaximal(Signature,RootListHead,max_term_depth);
    Statistics->AverageTermDepth = RootListCount(Signature,RootListHead,term_depth,0) / 
RootListCount(Signature,RootListHead,terms,0);

    return(Statistics);
}
//-------------------------------------------------------------------------------------------------
void PrintTreeStatistics(FILE * Stream,TreeStatisticsRecordType Statistics) {

//----Check if there are some FOF (NumberOfFormulae includes NumberOfCNF)
    if (Statistics.NumberOfFormulae > Statistics.NumberOfCNF) {
        fprintf(Stream,
"%% Statistics : Number of formulae       : %4.0f (%4.0f expanded)\n",
Statistics.NumberOfFormulae,Statistics.NumberOfFormulaeExpanded);
    }
    if (Statistics.NumberOfCNF > 0 || Statistics.NumberOfTCF > 0) {
        if (Statistics.NumberOfFormulae > (Statistics.NumberOfCNF + Statistics.NumberOfTCF)) {
            fprintf(Stream,"%%              ");
        } else {
            fprintf(Stream,"%% Statistics : ");
        }
        fprintf(Stream,
"Number of clauses        : %4.0f (%4.0f expanded)\n",
Statistics.NumberOfCNF+Statistics.NumberOfTCF,
Statistics.NumberOfCNFExpanded+Statistics.NumberOfTCFExpanded);
    }

    fprintf(Stream,
"%%              Number of leaves         : %4.0f (%4.0f expanded)\n",
Statistics.NumberOfLeaves,Statistics.NumberOfLeavesExpanded);
    fprintf(Stream,
"%%              Depth                    : %4.0f\n",Statistics.TreeDepth);

    fprintf(Stream,
"%%              Number of atoms          : %4.0f (%4.0f expanded)\n",
Statistics.NumberOfAtoms,Statistics.NumberOfAtomsExpanded);
    fprintf(Stream,
"%%              Number of equality atoms : %4.0f (%4.0f expanded)\n",
Statistics.NumberOfEqualityAtoms,Statistics.NumberOfEqualityAtomsExpanded);
    if (Statistics.NumberOfFormulae > 
(Statistics.NumberOfCNF + Statistics.NumberOfTCF)) {
        fprintf(Stream,
"%%              Maximal formula depth    : %4.0f (%4.0f average)\n",
Statistics.MaxFormulaDepth,Statistics.AverageFormulaDepth);
    }
    if (Statistics.NumberOfCNF > 0 || Statistics.NumberOfTCF > 0) {
        fprintf(Stream,
"%%              Maximal clause size      : %4.0f (%4.0f average)\n",
Statistics.MaxClauseSize,Statistics.AverageClauseSize);
    }

    if (Statistics.NumberOfTFF > 0 || Statistics.NumberOfTCF > 0 ||
Statistics.NumberOfFOF > 0 || Statistics.NumberOfCNF > 0) {
        fprintf(Stream,
"%%              Maximal term depth       : %4.0f (%4.0f average)\n",
Statistics.MaxTermDepth,Statistics.AverageTermDepth);
    }
}
//-------------------------------------------------------------------------------------------------
