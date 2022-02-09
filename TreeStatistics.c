#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <stdlib.h>
#include "DataTypes.h"
#include "Utilities.h"
#include "Examine.h"
#include "Parsing.h"
#include "ListStatistics.h"
#include "List.h"
#include "Tree.h"
#include "TreeStatistics.h"
//-------------------------------------------------------------------------------------------------
void InitializeSolutionStatistics(SolutionStatisticsType * Statistics) {

    Statistics->Type = nonszsoutput;
    InitializeStatistics(&(Statistics->FormulaeStatistics));
    Statistics->ForestDepth = 0;
    Statistics->ForestLeaves = 0;
    Statistics->FiniteDomainSize = 0;
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
int GetTreeDepth(TREENODE Tree) {

    int Depth;
    int index;

    Depth = 0;
    for (index = 0;index < Tree->NumberOfParents;index++) {
        Depth = MaximumOfInt(Depth,GetTreeDepth(Tree->Parents[index]));
    }
    Depth++;
    return(Depth);
}
//-------------------------------------------------------------------------------------------------
int NewLeavesInTree(TREENODE Tree) {

    int NewLeaves;
    int index;

    if (Tree->Visited) {
        return(0);
    } else {
        Tree->Visited = 1;
        if (Tree->NumberOfParents == 0) {
            return(1);
        } else {
            NewLeaves = 0;
            for (index = 0;index < Tree->NumberOfParents;index++) {
                NewLeaves += NewLeavesInTree(Tree->Parents[index]);
            }
            return(NewLeaves);
        }
    }
}
//-------------------------------------------------------------------------------------------------
LISTNODE MakeListOfTreeAnnotatedFormulae(TREENODE Tree) {

    LISTNODE NewNodesInThisTree;
    int index;

    if (Tree->Visited) {
        return(NULL);
    } else {
        Tree->Visited = 1;
        NewNodesInThisTree = NULL;
        AddListNode(&NewNodesInThisTree,NULL,Tree->AnnotatedFormula);
        for (index = 0;index < Tree->NumberOfParents;index++) {
            NewNodesInThisTree = AppendListsOfAnnotatedTSTPNodes(MakeListOfTreeAnnotatedFormulae(
Tree->Parents[index]),NewNodesInThisTree);
        }
        return(NewNodesInThisTree);
    }
}
//-------------------------------------------------------------------------------------------------
SolutionStatisticsType GetForestStatistics(SZSOutputType SolutionType,ROOTLIST Head,
SIGNATURE Signature) {

    SolutionStatisticsType Statistics;
    LISTNODE ListOfForestNodes;
    ROOTLIST MovingHead;

    InitializeSolutionStatistics(&Statistics);
    Statistics.Type = SolutionType;

    if (Head == NULL) {
        Statistics.Type = nonszsoutput;
        return(Statistics);
    }

    if (RootListHasCycle(Head)) {
        ReportError("SemanticError","Cycle in a tree",0);
        Statistics.Type = nonszsoutput;
        return(Statistics);
    }

    ResetRootListVisited(Head);
    MovingHead = Head;
    while (MovingHead != NULL) {
        Statistics.ForestDepth = MaximumOfInt(Statistics.ForestDepth,GetTreeDepth(
MovingHead->TheTree));
        Statistics.ForestLeaves += NewLeavesInTree(MovingHead->TheTree);
        MovingHead = MovingHead->Next;
    }

    ListOfForestNodes = NULL;
    ResetRootListVisited(Head);
    MovingHead = Head;
    while (MovingHead != NULL) {
        ListOfForestNodes = AppendListsOfAnnotatedTSTPNodes(ListOfForestNodes,
MakeListOfTreeAnnotatedFormulae(MovingHead->TheTree));
        MovingHead = MovingHead->Next;
    }
    Statistics.FormulaeStatistics = GetListStatistics(ListOfForestNodes,Signature);

    FreeListOfAnnotatedFormulae(&ListOfForestNodes,Signature);
    return(Statistics);
}
//-------------------------------------------------------------------------------------------------
void PrintForestStatistics(FILE * Stream,SolutionStatisticsType Statistics) {

    fprintf(Stream,"%%            Derivation depth      : %4d\n",Statistics.ForestDepth);
    fprintf(Stream,"%%            Number of leaves      : %4d\n",Statistics.ForestLeaves);
    PrintListStatistics(Stream,Statistics.FormulaeStatistics);
}
//-------------------------------------------------------------------------------------------------
void PrintFiniteModelStatistics(FILE * Stream,SolutionStatisticsType Statistics) {

    fprintf(Stream,"%%            Domain size           : %4d\n",Statistics.FiniteDomainSize);
}
//-------------------------------------------------------------------------------------------------
int ExtractFiniteDomainSize(FORMULA Formula) {

    int LHSize,RHSize;

//----If an equality atom, return 1
    if (Formula->Type == atom && !strcmp("=",GetSymbol(Formula->FormulaUnion.Atom)) &&
GetArity(Formula->FormulaUnion.Atom) == 2) {
printf("Size 1\n");
        return(1);
    } else if (Formula->Type == binary && Formula->FormulaUnion.BinaryFormula.Connective ==
disjunction) {
        if (!(LHSize = ExtractFiniteDomainSize(Formula->FormulaUnion.BinaryFormula.LHS)) ||
!(RHSize = ExtractFiniteDomainSize(Formula->FormulaUnion.BinaryFormula.RHS))) {
printf("Not a disjunction\n");
            return(0);
        } else {
printf("Yay its %d plus %d\n",LHSize,RHSize);
            return(LHSize + RHSize);
        }
    } else {
printf("Does not look good\n");
        return(0);
    }
}
//-------------------------------------------------------------------------------------------------
int HasAFiniteDomain(LISTNODE Head) {

    FORMULA Formula;

    while (Head != NULL) {
        if (GetRole(Head->AnnotatedFormula,NULL) == fi_domain) {
            Formula = GetListNodeFormula(Head);
printf("found a finite domain\n");
//----Check that it's a FOF universal 
            if (Head->AnnotatedFormula->Syntax != tptp_fof || Formula->Type != quantified || 
Formula->FormulaUnion.QuantifiedFormula.Quantifier != universal) {
printf("failed basic test\n");
                return(0);
            }
//----Top level equality is size 1
            return(ExtractFiniteDomainSize(Formula->FormulaUnion.QuantifiedFormula.Formula));
        }
        Head = Head->Next;
    }
printf("No finite domain\n");
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
//TODO BuildRootList works for a FMo
    } else if ((*RootListHead = BuildRootList(Head,Signature)) != NULL) {
        if (IsARefutation(*RootListHead)) {
            return(Ref);
        } else {
            return(Der);
        }
    } else if ((*FiniteDomainSize = HasAFiniteDomain(Head)) > 0) {
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
        case CRf:
        case Ref:
        case Der:
            Statistics = GetForestStatistics(Statistics.Type,*RootListHead,Signature);
            break;
        case FMo:
//----Got the size in GetSZSOutputType
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

    fprintf(Stream,"%% SZS Type : %s\n",SZSOutputToUserString(Statistics.Type));

    switch (Statistics.Type) {
        case CRf:
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
