#include <stdio.h>
#include <assert.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include "DataTypes.h"
#include "Utilities.h"
#include "FileUtilities.h"
#include "Signature.h"
#include "Examine.h"
#include "Modify.h"
#include "PrintTSTP.h"
#include "PrintLP.h"
//-------------------------------------------------------------------------------------------------
int LPPrintSignatureList(FILE * Stream,SYMBOLNODE Node,char * ResultType) {

    int NumberPrinted;
    int Index;
    String Symbol;

    if (Node != NULL) {
        NumberPrinted = LPPrintSignatureList(Stream,Node->LastSymbol,ResultType);
        strcpy(Symbol,GetSignatureSymbol(Node));
//----Suppress interpreted symbols
        if (Symbol[0] != '$') {
            fprintf(Stream,"constant symbol %s : κ → ",GetSignatureSymbol(Node));
            for (Index = 1;Index < GetSignatureArity(Node);Index++) {
                fprintf(Stream,"κ → ");
            }
            fprintf(Stream,"%s ;\n",ResultType);
            NumberPrinted++;
        }
        NumberPrinted += LPPrintSignatureList(Stream,Node->NextSymbol,ResultType);
    } else {
        NumberPrinted = 0;
    }
    return(NumberPrinted);
}
//-------------------------------------------------------------------------------------------------
void PrintLPTerm(FILE * Stream,TERM Term) {

    int Index;
    String Symbol;

    strcpy(Symbol,GetSymbol(Term));
    if (!strcmp(Symbol,"=")) {
        fprintf(Stream,"(");
        PrintLPTerm(Stream,Term->Arguments[0]);
        fprintf(Stream," = ");
        PrintLPTerm(Stream,Term->Arguments[1]);
        fprintf(Stream,")");
    } else {
        if (GetArity(Term) > 0) {
            fprintf(Stream,"(");
        }
        fprintf(Stream,"%s",GetSymbol(Term));
        for (Index=0;Index < GetArity(Term);Index++) {
            fprintf(Stream," ");
            PrintLPTerm(Stream,Term->Arguments[Index]);
        }
        if (GetArity(Term) > 0) {
            fprintf(Stream,")");
        }
    }
}
//-------------------------------------------------------------------------------------------------
char * LPConnectiveToString(ConnectiveType Connective) {

    switch (Connective) {
        case disjunction:
            return("∨");
            break;
        case conjunction:
            return("∧");
            break;
        case equivalence:
            return("⇔");
            break;
        case implication:
            return("⇒");
            break;
        case reverseimplication:
            return("<=");
            break;
        case negation:
            return("¬");
            break;
        case universal:
            return("∀");
            break;
        case existential:
            return("∃");
            break;
        default:
            CodingError("Not a LP connective");
            return(NULL);
            break;
    }       
}
//-------------------------------------------------------------------------------------------------
void LPPrintFormula(FILE * Stream,FORMULA Formula) {

    fprintf(Stream,"(");
    switch (Formula->Type) {
        case quantified:
            fprintf(Stream,"%s (λ %s, ",
LPConnectiveToString(Formula->FormulaUnion.QuantifiedFormula.Quantifier),
GetSymbol(Formula->FormulaUnion.QuantifiedFormula.Variable));
            LPPrintFormula(Stream,Formula->FormulaUnion.QuantifiedFormula.Formula);
            fprintf(Stream,")");
            break;
        case binary:
            LPPrintFormula(Stream,Formula->FormulaUnion.BinaryFormula.LHS);
            fprintf(Stream," %s ",
LPConnectiveToString(Formula->FormulaUnion.BinaryFormula.Connective));
            LPPrintFormula(Stream,Formula->FormulaUnion.BinaryFormula.RHS);
            break;
        case unary:
            fprintf(Stream,"%s ",
LPConnectiveToString(Formula->FormulaUnion.UnaryFormula.Connective));
            LPPrintFormula(Stream,Formula->FormulaUnion.UnaryFormula.Formula);
            break;
        case atom:
            PrintLPTerm(Stream,Formula->FormulaUnion.Atom);
            break;
        default:
            CodingError("Formula type unknown for printing LP");
            break;
    }
    fprintf(Stream,")");
}
//-------------------------------------------------------------------------------------------------
void LPPrintAnnotatedTSTPNode(FILE * Stream,ANNOTATEDFORMULA AnnotatedFormula) {

    switch (AnnotatedFormula->Syntax) {
        case comment:
            fprintf(Stream,"//----%s\n",AnnotatedFormula->AnnotatedFormulaUnion.Comment);
            break;
        case blank_line:
            fprintf(Stream,"\n");
            break;
        case tptp_fof:
            fprintf(Stream,"symbol %s : ϵ ",GetName(AnnotatedFormula,NULL));
            LPPrintFormula(Stream,AnnotatedFormula->AnnotatedFormulaUnion.
AnnotatedTSTPFormula.FormulaWithVariables->Formula);
            fprintf(Stream," ;\n");
            break;
        case tptp_cnf:
            FOFify(AnnotatedFormula,universal);
            LPPrintAnnotatedTSTPNode(Stream,AnnotatedFormula);
            break;
        default:
            CodingError("Syntax unknown for printing LP");
            break;
    }
}
//-------------------------------------------------------------------------------------------------
void LPPrintHeader(FILE * Stream,LISTNODE Head,SIGNATURE Signature) {

}
//-------------------------------------------------------------------------------------------------
void LPPrintTailer(FILE * Stream) {

}
//-------------------------------------------------------------------------------------------------
void LPPrintListOfAnnotatedTSTPNodes(FILE * Stream,LISTNODE Head) {

    while (Head != NULL) {
        LPPrintAnnotatedTSTPNode(Stream,Head->AnnotatedFormula);
        Head = Head->Next;
    }
}
//-------------------------------------------------------------------------------------------------
