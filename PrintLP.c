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
static char * LAMBDAPI_RESERVED_WORDS[] = {
    "{|abort|}","{|admit|}","{|admitted|}","{|apply|}","{|as|}","{|assert|}","{|assertnot|}",
    "{|associative|}","{|assume|}","{|begin|}","{|builtin|}","{|coerce_rule|}","{|commutative|}",
    "{|compute|}","{|constant|}","{|debug|}","{|end|}","{|fail|}","{|flag|}","{|generalize|}",
    "{|have|}","{|in|}","{|induction|}","{|inductive|}","{|infix|}","{|injective|}","{|left|}",
    "{|let|}","{|notation|}","{|off|}","{|on|}","{|opaque|}","{|open|}","{|postfix|}","{|prefix|}",
    "{|print|}","{|private|}","{|proofterm|}","{|protected|}","{|prover|}","{|prover_timeout|}",
    "{|quantifier|}","{|refine|}","{|reflexivity|}","{|remove|}","{|require|}","{|rewrite|}",
    "{|right|}","{|rule|}","{|search|}","{|sequential|}","{|simplify|}","{|solve|}","{|symbol|}",
    "{|symmetry|}","{|try|}","{|type|}","{|unif_rule|}","{|verbose|}","{|why3|}","{|with" };
//----Looks like a variable   "TYPE",

char * LambdaPiReserved(char * Symbol) {

    String BracketedSymbol;
    int Index;

    strcpy(BracketedSymbol,"{|");
    strcat(BracketedSymbol,Symbol);
    strcat(BracketedSymbol,"|}");
    for (Index = 0;Index < sizeof(LAMBDAPI_RESERVED_WORDS)/sizeof(char *);Index++) {
        if (!strcmp(BracketedSymbol,LAMBDAPI_RESERVED_WORDS[Index])) {
            return(LAMBDAPI_RESERVED_WORDS[Index]);
        }
    }
    return(NULL);

}
//-------------------------------------------------------------------------------------------------
char * TPTPtoLPSymbol(char * TPTPSymbol,char * Prefix,String PutFinalHere) {
 
    char * LPBracketed;

    if (!strcmp(TPTPSymbol,"$i")) {
        strcpy(PutFinalHere,"ι");
    } else if (!strcmp(TPTPSymbol,"$o")) {
        strcpy(PutFinalHere,"Prop");
    } else if (!strcmp(TPTPSymbol,"$false")) {
        strcpy(PutFinalHere,"⊥");
    } else if (!strcmp(TPTPSymbol,"$true")) {
        strcpy(PutFinalHere,"⊤");
    } else if (!strcmp(TPTPSymbol,"$tType")) {
        strcpy(PutFinalHere,"Set");
    } else if (islower(TPTPSymbol[0]) && (LPBracketed = LambdaPiReserved(TPTPSymbol)) != NULL) {
        strcpy(PutFinalHere,Prefix);
        strcat(PutFinalHere,LPBracketed);
    } else {
//----Prefix non-variables with "S." or "F.", from the signature/formulae
        if (isupper(TPTPSymbol[0])) {
            strcpy(PutFinalHere,"");
        } else {
            strcpy(PutFinalHere,Prefix);
        }
        strcat(PutFinalHere,TPTPSymbol);
    }
    return(PutFinalHere);
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
        case epsilon:
            return("ε");
            break;
        case universal:
            return("∀");
            break;
        case existential:
            return("∃");
            break;
        case equation:
            return("=");
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
void PrintLPArgumentSignature(FILE * Stream,FORMULA TypeSignature,char * Prefix) {

    char * TheType;
    String ToPrint;

    if (TypeSignature->Type == binary) {
        PrintLPArgumentSignature(Stream,TypeSignature->FormulaUnion.BinaryFormula.LHS,Prefix);
        fprintf(Stream," → ");
        PrintLPArgumentSignature(Stream,TypeSignature->FormulaUnion.BinaryFormula.RHS,Prefix);
    } else {
        TheType = GetSymbol(TypeSignature->FormulaUnion.Atom);
        if (strcmp(TheType,"$o") && strcmp(TheType,"$tType") && strcmp(TheType,"Prop") && 
strcmp(TheType,"Type")) {
            fprintf(Stream,"τ ");
        }
        fprintf(Stream,"%s",TPTPtoLPSymbol(TheType,Prefix,ToPrint));
    }
}
//-------------------------------------------------------------------------------------------------
int LPPrintSignatureList(FILE * Stream,SYMBOLNODE Node,LISTNODE TypeFormulae,char * ResultType) {

    int NumberPrinted;
    int Index;
    String Symbol;
    FORMULA SearchingTypeFormula,MatchingTypeFormula;
    LISTNODE Searcher;
    String ToPrint;

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
//OLD lambdapi fprintf(Stream,"constant symbol %s : ",TPTPtoLPSymbol(Symbol,"",ToPrint));
            fprintf(Stream,"symbol %s : ",TPTPtoLPSymbol(Symbol,"",ToPrint));
//----Find the symbol's declaration
            if (MatchingTypeFormula != NULL) {
                if (MatchingTypeFormula->Type == binary) {
//----Move over to the type itself
                    MatchingTypeFormula = MatchingTypeFormula->FormulaUnion.BinaryFormula.LHS;
                    PrintLPArgumentSignature(Stream,
MatchingTypeFormula->FormulaUnion.BinaryFormula.LHS,"");
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
MatchingTypeFormula->FormulaUnion.BinaryFormula.RHS,"");
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
    String ToPrint;

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
                fprintf(Stream," = ");
                LPPrintTerm(Stream,Term->Arguments[1]);
                fprintf(Stream,")");
            } else {
                if (GetArity(Term) > 0 && Term->Arguments != NULL) {
                    fprintf(Stream,"(");
                }
                fprintf(Stream,"%s",TPTPtoLPSymbol(Symbol,"S.",ToPrint));
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
//---- ..." as Lambdapi is able to infer those types automatically. But for FOF he recants:
//----You use typed FOL syntax and X11 could be of any type a priori.
            fprintf(Stream," : ");
            if (Formula->FormulaUnion.QuantifiedFormula.VariableType != NULL) {
                PrintLPArgumentSignature(Stream,
Formula->FormulaUnion.QuantifiedFormula.VariableType,"S.");
            } else {
                fprintf(Stream,"τ ι");
            }
            fprintf(Stream,", ");
            LPPrintFormula(Stream,Formula->FormulaUnion.QuantifiedFormula.Formula);
            fprintf(Stream,")");
            break;
        case binary:
//----No xor, gotta hack it
            if (Formula->FormulaUnion.BinaryFormula.Connective == nonequivalence) {
                fprintf(Stream," %s(",LPConnectiveToString(negation));
                LPPrintFormula(Stream,Formula->FormulaUnion.BinaryFormula.LHS);
                fprintf(Stream," %s ",LPConnectiveToString(equivalence));
                LPPrintFormula(Stream,Formula->FormulaUnion.BinaryFormula.RHS);
                fprintf(Stream,")");
            } else {
                 LPPrintFormula(Stream,Formula->FormulaUnion.BinaryFormula.LHS);
                 fprintf(Stream," %s ",
LPConnectiveToString(Formula->FormulaUnion.BinaryFormula.Connective));
                 LPPrintFormula(Stream,Formula->FormulaUnion.BinaryFormula.RHS);
            }
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
void LPPrintAnnotatedTSTPNode(FILE * Stream,ANNOTATEDFORMULA AnnotatedFormula,char * Label) {

    String ErrorMessage;

    switch (AnnotatedFormula->Syntax) {
        case comment:
            fprintf(Stream,"//----%s\n",AnnotatedFormula->AnnotatedFormulaUnion.Comment);
            break;
        case blank_line:
            fprintf(Stream,"\n");
            break;
//----Note fall through to tptp_fof
        case tptp_thf:
        case tptp_tff:
            if (GetRole(AnnotatedFormula,NULL) == type) {
                break;
            }
        case tptp_fof:
            fprintf(Stream,"symbol %s : %s ",GetName(AnnotatedFormula,NULL),Label);
            LPPrintFormula(Stream,AnnotatedFormula->AnnotatedFormulaUnion.
AnnotatedTSTPFormula.FormulaWithVariables->Formula);
            fprintf(Stream," ;\n");
            break;
        case tptp_cnf:
            FOFify(AnnotatedFormula,universal);
            LPPrintAnnotatedTSTPNode(Stream,AnnotatedFormula,Label);
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
void LPPrintListOfAnnotatedTSTPNodes(FILE * Stream,LISTNODE Head,char * Label) {

    while (Head != NULL) {
        LPPrintAnnotatedTSTPNode(Stream,Head->AnnotatedFormula,Label);
        Head = Head->Next;
    }
}
//-------------------------------------------------------------------------------------------------
