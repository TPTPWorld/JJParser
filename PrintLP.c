#include <stdio.h>
#include <assert.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include "Tokenizer.h"
#include "DataTypes.h"
#include "Utilities.h"
#include "FileUtilities.h"
#include "Signature.h"
#include "Examine.h"
#include "Modify.h"
#include "PrintTSTP.h"
#include "PrintLP.h"
//-------------------------------------------------------------------------------------------------
void LPPrintFormula(FILE * Stream,FORMULA Formula);
//-------------------------------------------------------------------------------------------------
char * TPTPtoLPSymbol(char * TPTPSymbol) {

    if (!strcmp(TPTPSymbol,"$i")) {
        return("ι");  //----Was return("κ");
    } else if (!strcmp(TPTPSymbol,"$o")) {
        return("Prop");
    } else if (!strcmp(TPTPSymbol,"$false")) {
        return("⊥");
    } else if (!strcmp(TPTPSymbol,"$true")) {
        return("⊤");
    } else if (!strcmp(TPTPSymbol,"$tType")) {
        return("Type");
    } else {
        return(TPTPSymbol);
    }
}
//-------------------------------------------------------------------------------------------------
char * LPConnectiveToString(ConnectiveType Connective) {

    String ErrorMessage;

    switch (Connective) {
        case application:
            return("");
            break;
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
        case lambda:
            return("λ");
            break;
        case negation:
            return("¬");
            break;
        case universal:
            return("∀α");
            break;
        case existential:
            return("∃α");
            break;
        case equation:
            return("=α");
            break;
        default:
            sprintf(ErrorMessage,"Connective %s unknown for printing LP",
ConnectiveToString(Connective));
            CodingError(ErrorMessage);
            return(NULL);
            break;
    }       
}
//-------------------------------------------------------------------------------------------------
void PrintLPArgumentSignature(FILE * Stream,FORMULA TypeSignature) {

    char * TheType;

    if (TypeSignature->Type == binary) {
        PrintLPArgumentSignature(Stream,TypeSignature->FormulaUnion.BinaryFormula.LHS);
        fprintf(Stream," → ");
        PrintLPArgumentSignature(Stream,TypeSignature->FormulaUnion.BinaryFormula.RHS);
    } else {
        TheType = GetSymbol(TypeSignature->FormulaUnion.Atom);
        if (strcmp(TheType,"$o") && strcmp(TheType,"$tType") && strcmp(TheType,"Prop") && 
strcmp(TheType,"Type")) {
            fprintf(Stream,"τ ");
        }
        fprintf(Stream,"%s",TPTPtoLPSymbol(TheType));
    }
}
//-------------------------------------------------------------------------------------------------
int LPPrintSignatureList(FILE * Stream,SYMBOLNODE Node,LISTNODE TypeFormulae,char * ResultType) {

    int NumberPrinted;
    int Index;
    String Symbol;
    FORMULA SearchingTypeFormula,MatchingTypeFormula;
    LISTNODE Searcher;

    if (Node != NULL) {
        NumberPrinted = LPPrintSignatureList(Stream,Node->LastSymbol,TypeFormulae,ResultType);
        strcpy(Symbol,GetSignatureSymbol(Node));
//----Suppress interpreted symbols
        if (Symbol[0] != '$' && strcmp(Symbol,"=") && strcmp(Symbol,"!=")) {
            MatchingTypeFormula = NULL;
            Searcher = TypeFormulae;
            while (Searcher != NULL && MatchingTypeFormula == NULL) {
                if (GetListNodeStatus(Searcher) == type) {
                    SearchingTypeFormula = GetListNodeFormula(Searcher);
                    if (
SearchingTypeFormula->Type == type_declaration &&
SearchingTypeFormula->FormulaUnion.BinaryFormula.Connective == typecolon &&
SearchingTypeFormula->FormulaUnion.BinaryFormula.LHS->Type == atom &&
!strcmp(Symbol,GetSymbol(SearchingTypeFormula->FormulaUnion.BinaryFormula.LHS->
FormulaUnion.Atom))) {
                        MatchingTypeFormula = SearchingTypeFormula;
                    }
                }
                Searcher = Searcher->Next;
            }
            fprintf(Stream,"constant symbol %s : ",Symbol);
//----Find the symbol's declaration
            if (MatchingTypeFormula != NULL) {
                if (MatchingTypeFormula->Type == binary) {
//----Move over to the type itself
                    MatchingTypeFormula = MatchingTypeFormula->FormulaUnion.BinaryFormula.LHS;
                    PrintLPArgumentSignature(Stream,
MatchingTypeFormula->FormulaUnion.BinaryFormula.LHS);
                    fprintf(Stream," → ");
                }
            } else {
                for (Index = 0;Index < GetSignatureArity(Node);Index++) {
                    fprintf(Stream,"τ ι → ");
//----Was  fprintf(Stream,"κ → ");
                }
            }
            if (MatchingTypeFormula != NULL) {
                PrintLPArgumentSignature(Stream,
MatchingTypeFormula->FormulaUnion.BinaryFormula.RHS);
            } else {
                fprintf(Stream,"%s",ResultType);
            }
            fprintf(Stream," ;\n");
            NumberPrinted++;
        }
        NumberPrinted += LPPrintSignatureList(Stream,Node->NextSymbol,TypeFormulae,ResultType);
    } else {
        NumberPrinted = 0;
    }
    return(NumberPrinted);
}
//-------------------------------------------------------------------------------------------------
void LPPrintTerm(FILE * Stream,TERM Term) {

    int Index;
    String Symbol;
    String ErrorMessage;

    switch (Term->Type) {
//----Check if a nested formula - no symbol. This is for THF, TXF, TFF
        case formula:
            LPPrintFormula(Stream,Term->TheSymbol.Formula);
            break;
        case a_type:
        case atom_as_term:
        case function:
        case variable:
            strcpy(Symbol,GetSymbol(Term));
            if (!strcmp(Symbol,"=")) {
                fprintf(Stream,"(");
                LPPrintTerm(Stream,Term->Arguments[0]);
                fprintf(Stream," =α ");
                LPPrintTerm(Stream,Term->Arguments[1]);
                fprintf(Stream,")");
            } else {
                if (GetArity(Term) > 0 && Term->Arguments != NULL) {
                    fprintf(Stream,"(");
                }
                fprintf(Stream,"%s",TPTPtoLPSymbol(Symbol));
                if (GetArity(Term) > 0 && Term->Arguments != NULL) {
                    for (Index=0;Index < GetArity(Term);Index++) {
                        fprintf(Stream," ");
                        LPPrintTerm(Stream,Term->Arguments[Index]);
                    }
                }
                if (GetArity(Term) > 0 && Term->Arguments != NULL) {
                    fprintf(Stream,")");
                }
            }
            break;
        default:
            sprintf(ErrorMessage,"Term type %s unknown for printing LP",
TermTypeToString(Term->Type));
            CodingError(ErrorMessage);
            break;
            break;
    }
}
//-------------------------------------------------------------------------------------------------
void LPPrintFormula(FILE * Stream,FORMULA Formula) {

    String ErrorMessage;

    fprintf(Stream,"(");
    switch (Formula->Type) {
        case quantified:
            fprintf(Stream,"%s (λ %s",
LPConnectiveToString(Formula->FormulaUnion.QuantifiedFormula.Quantifier),
GetSymbol(Formula->FormulaUnion.QuantifiedFormula.Variable));
//----Frederic says: Instead, you can also put no type in abstractions and just write "(λ X,
//---- ..." as Lambdapi is able to infer those types automatically.
//            if (Formula->FormulaUnion.QuantifiedFormula.VariableType != NULL) {
//                fprintf(Stream,":");
//                LPPrintFormula(Stream,Formula->FormulaUnion.QuantifiedFormula.VariableType);
//            }
            fprintf(Stream,", ");
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
            LPPrintTerm(Stream,Formula->FormulaUnion.Atom);
            break;
        case type_declaration:
            break;
        default:
            sprintf(ErrorMessage,"Formula type %s unknown for printing LP",
FormulaTypeToString(Formula->Type));
            CodingError(ErrorMessage);
            break;
    }
    fprintf(Stream,")");
}
//-------------------------------------------------------------------------------------------------
void LPPrintAnnotatedTSTPNode(FILE * Stream,ANNOTATEDFORMULA AnnotatedFormula) {

    String ErrorMessage;

    switch (AnnotatedFormula->Syntax) {
        case comment:
            fprintf(Stream,"//----%s\n",AnnotatedFormula->AnnotatedFormulaUnion.Comment);
            break;
        case blank_line:
            fprintf(Stream,"\n");
            break;
        case tptp_thf:
        case tptp_tff:
            if (GetRole(AnnotatedFormula,NULL) == type) {
                break;
            }
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
            sprintf(ErrorMessage,"Syntax type %s unknown for printing LP",
SyntaxToString(AnnotatedFormula->Syntax));
            CodingError(ErrorMessage);
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
