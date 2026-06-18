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
#include "PrintDK.h"
//-------------------------------------------------------------------------------------------------
void DKPrintFormula(FILE * Stream,FORMULA Formula);
//-------------------------------------------------------------------------------------------------
static char * LAMBDAPI_RESERVED_WORDS[] = {
"{|Type|}",
"{|def|}",
"{|defac|}",
"{|defacu|}",
"{|injective|}",
"{|thm|}",
"{|private|}"
};

char * DeduktiReserved(char * Symbol) {

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
char * TPTPtoDKSymbol(char * TPTPSymbol) {
 
    char * DKBracketed;

    if (!strcmp(TPTPSymbol,"$i")) {
        return("zenon.iota");
    } else if (!strcmp(TPTPSymbol,"$o")) {
        return("zenon.prop");
    } else if (!strcmp(TPTPSymbol,"$false")) {
        return("zenon.False");
    } else if (!strcmp(TPTPSymbol,"$true")) {
        return("zenon.True");
    } else if (!strcmp(TPTPSymbol,"$tType")) {
        return("type");
    } else if (islower(TPTPSymbol[0]) && (DKBracketed = DeduktiReserved(TPTPSymbol)) != NULL) {
        return(DKBracketed);
    } else {
        return(TPTPSymbol);
    }
}
//-------------------------------------------------------------------------------------------------
char * DKConnectiveToString(ConnectiveType Connective) {

    String ErrorMessage;

    switch (Connective) {
        case application:
            return("");
            break;
        case disjunction:
            return("zenon.or");
            break;
        case conjunction:
            return("zenon.and");
            break;
        case equivalence:
            return("zenon.eqv");
            break;
        case implication:
            return("zenon.imp");
            break;
        case reverseimplication:
            return("<=");
            break;
        case lambda:
            return("λ");
            break;
        case negation:
            return("zenon.not");
            break;
        case epsilon:
            return("zenon.epsilon");
            break;
        case universal:
            return("zenon.forall");
            break;
        case existential:
            return("zenon.exists");
            break;
        case equation:
            return("zenon.equal");
            break;
        default:
            sprintf(ErrorMessage,"Connective %s unknown for printing DK",
ConnectiveToString(Connective));
            CodingError(ErrorMessage);
            return(NULL);
            break;
    }       
}
//-------------------------------------------------------------------------------------------------
void PrintDKArgumentSignature(FILE * Stream,FORMULA TypeSignature) {

    char * TheType;

    if (TypeSignature->Type == binary) {
        PrintDKArgumentSignature(Stream,TypeSignature->FormulaUnion.BinaryFormula.LHS);
        fprintf(Stream," -> ");
        PrintDKArgumentSignature(Stream,TypeSignature->FormulaUnion.BinaryFormula.RHS);
    } else {
        TheType = GetSymbol(TypeSignature->FormulaUnion.Atom);
        if (strcmp(TheType,"$o") && strcmp(TheType,"$tType") && strcmp(TheType,"prop") && 
strcmp(TheType,"Type")) {
            fprintf(Stream,"zenon.term");
        }
        fprintf(Stream,"%s",TPTPtoDKSymbol(TheType));
    }
}
//-------------------------------------------------------------------------------------------------
int DKPrintSignatureList(FILE * Stream,SYMBOLNODE Node,LISTNODE TypeFormulae,char * ResultType) {

    int NumberPrinted;
    int Index;
    String Symbol;
    FORMULA SearchingTypeFormula,MatchingTypeFormula;
    LISTNODE Searcher;

    if (Node != NULL) {
        NumberPrinted = DKPrintSignatureList(Stream,Node->LastSymbol,TypeFormulae,ResultType);
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
            fprintf(Stream,"%s : (",TPTPtoDKSymbol(Symbol));
//----Find the symbol's declaration
            if (MatchingTypeFormula != NULL) {
                if (MatchingTypeFormula->Type == type_declaration) {
//----Move over to the type itself
                    fprintf(Stream,"(");
//                    MatchingTypeFormula = MatchingTypeFormula->FormulaUnion.BinaryFormula.LHS;
                    PrintDKArgumentSignature(Stream,
MatchingTypeFormula->FormulaUnion.BinaryFormula.LHS);
                    fprintf(Stream,") -> (");
                }
            } else {
                for (Index = 0;Index < GetSignatureArity(Node);Index++) {
                    fprintf(Stream,"(zenon.term zenon.iota) -> ");
                }
            }
            if (MatchingTypeFormula != NULL) {
                PrintDKArgumentSignature(Stream,
MatchingTypeFormula->FormulaUnion.BinaryFormula.RHS);
                fprintf(Stream,")");
            } else {
                fprintf(Stream,"%s",ResultType);
            }
            fprintf(Stream,").\n");
            NumberPrinted++;
        }
        NumberPrinted += DKPrintSignatureList(Stream,Node->NextSymbol,TypeFormulae,ResultType);
    } else {
        NumberPrinted = 0;
    }
    return(NumberPrinted);
}
//-------------------------------------------------------------------------------------------------
void DKPrintTerm(FILE * Stream,TERM Term) {

    int Index;
    String Symbol;
    String ErrorMessage;

    switch (Term->Type) {
//----Check if a nested formula - no symbol. This is for THF, TXF, TFF
        case formula:
            DKPrintFormula(Stream,Term->TheSymbol.Formula);
            break;
        case a_type:
        case atom_as_term:
        case function:
        case variable:
            strcpy(Symbol,GetSymbol(Term));
            if (!strcmp(Symbol,"=")) {
                fprintf(Stream,"(");
                DKPrintTerm(Stream,Term->Arguments[0]);
                fprintf(Stream," = ");
                DKPrintTerm(Stream,Term->Arguments[1]);
                fprintf(Stream,")");
            } else {
                if (GetArity(Term) > 0 && Term->Arguments != NULL) {
                    fprintf(Stream,"(");
                }
                fprintf(Stream,"%s",TPTPtoDKSymbol(Symbol));
                if (GetArity(Term) > 0 && Term->Arguments != NULL) {
                    for (Index=0;Index < GetArity(Term);Index++) {
                        fprintf(Stream," ");
                        DKPrintTerm(Stream,Term->Arguments[Index]);
                    }
                }
                if (GetArity(Term) > 0 && Term->Arguments != NULL) {
                    fprintf(Stream,")");
                }
            }
            break;
        default:
            sprintf(ErrorMessage,"Term type %s unknown for printing DK",
TermTypeToString(Term->Type));
            CodingError(ErrorMessage);
            break;
            break;
    }
}
//-------------------------------------------------------------------------------------------------
void DKPrintFormula(FILE * Stream,FORMULA Formula) {

    String ErrorMessage;

    fprintf(Stream,"(");
    switch (Formula->Type) {
        case quantified:
            fprintf(Stream,"%s ",
DKConnectiveToString(Formula->FormulaUnion.QuantifiedFormula.Quantifier));
            if (Formula->FormulaUnion.QuantifiedFormula.VariableType != NULL) {
                fprintf(Stream,"%s",TPTPtoDKSymbol(GetSymbol(
Formula->FormulaUnion.QuantifiedFormula.VariableType->FormulaUnion.Atom)));
            } else {
                fprintf(Stream,"zenon.iota");
            }
            fprintf(Stream," (%s: ",
GetSymbol(Formula->FormulaUnion.QuantifiedFormula.Variable));
            if (Formula->FormulaUnion.QuantifiedFormula.VariableType != NULL) {
                PrintDKArgumentSignature(Stream,Formula->FormulaUnion.QuantifiedFormula.VariableType);
            } else {
                fprintf(Stream,"(zenon.term zenon.iota)");
            }
            fprintf(Stream," => ");
            DKPrintFormula(Stream,Formula->FormulaUnion.QuantifiedFormula.Formula);
            fprintf(Stream,")");
            break;
        case binary:
//----No xor, gotta hack it
            if (Formula->FormulaUnion.BinaryFormula.Connective == nonequivalence) {
                fprintf(Stream," %s(",DKConnectiveToString(negation));
                fprintf(Stream," %s ",DKConnectiveToString(equivalence));
                DKPrintFormula(Stream,Formula->FormulaUnion.BinaryFormula.LHS);
                DKPrintFormula(Stream,Formula->FormulaUnion.BinaryFormula.RHS);
                fprintf(Stream,")");
            } else {
                 fprintf(Stream,"(%s ",
DKConnectiveToString(Formula->FormulaUnion.BinaryFormula.Connective));
                 DKPrintFormula(Stream,Formula->FormulaUnion.BinaryFormula.LHS);
                 DKPrintFormula(Stream,Formula->FormulaUnion.BinaryFormula.RHS);
                 fprintf(Stream," )");
            }
            break;
        case unary:
            fprintf(Stream,"%s ",
DKConnectiveToString(Formula->FormulaUnion.UnaryFormula.Connective));
            DKPrintFormula(Stream,Formula->FormulaUnion.UnaryFormula.Formula);
            break;
        case atom:
            DKPrintTerm(Stream,Formula->FormulaUnion.Atom);
            break;
        case type_declaration:
            break;
        default:
            sprintf(ErrorMessage,"Formula type %s unknown for printing DK",
FormulaTypeToString(Formula->Type));
            CodingError(ErrorMessage);
            break;
    }
    fprintf(Stream,")");
}
//-------------------------------------------------------------------------------------------------
void DKPrintAnnotatedTSTPNode(FILE * Stream,ANNOTATEDFORMULA AnnotatedFormula,char * Prefix,
char * Label) {

    String ErrorMessage;

    switch (AnnotatedFormula->Syntax) {
        case comment:
            fprintf(Stream,"(; %s ;)\n",AnnotatedFormula->AnnotatedFormulaUnion.Comment);
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
            fprintf(Stream,"%s %s : (%s ",Prefix,GetName(AnnotatedFormula,NULL),Label);
            DKPrintFormula(Stream,AnnotatedFormula->AnnotatedFormulaUnion.
AnnotatedTSTPFormula.FormulaWithVariables->Formula);
            fprintf(Stream,").\n");
            break;
        case tptp_cnf:
            FOFify(AnnotatedFormula,universal);
            DKPrintAnnotatedTSTPNode(Stream,AnnotatedFormula,Prefix,Label);
            break;
        default:
            sprintf(ErrorMessage,"Syntax type %s unknown for printing DK",
SyntaxToString(AnnotatedFormula->Syntax));
            CodingError(ErrorMessage);
            break;
    }
}
//-------------------------------------------------------------------------------------------------
void DKPrintHeader(FILE * Stream,LISTNODE Head,SIGNATURE Signature) {

}
//-------------------------------------------------------------------------------------------------
void DKPrintTailer(FILE * Stream) {

}
//-------------------------------------------------------------------------------------------------
void DKPrintListOfAnnotatedTSTPNodes(FILE * Stream,LISTNODE Head,char * Prefix,char * Label) {

    while (Head != NULL) {
        DKPrintAnnotatedTSTPNode(Stream,Head->AnnotatedFormula,Prefix,Label);
        Head = Head->Next;
    }
}
//-------------------------------------------------------------------------------------------------
