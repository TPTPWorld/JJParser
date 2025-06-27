#ifndef PRINTLP_H
#define PRINTLP_H
//-------------------------------------------------------------------------------------------------
#include "DataTypes.h"
//-------------------------------------------------------------------------------------------------
int LPPrintSignatureList(FILE * Stream,SYMBOLNODE Node,LISTNODE TypeFormulae,char * OnlyTheseList,
char * NotTheseList,char * ResultType,LISTNODE EpsilonTerms);
void LPPrintFormula(FILE * Stream,FORMULA Formula,char * SignaturePrefix);
void LPPrintAnnotatedTSTPNode(FILE * Stream,ANNOTATEDFORMULA AnnotatedFormula,char * Label);
void LPPrintListOfAnnotatedTSTPNodes(FILE * Stream,LISTNODE Head,char * Label);
void LPPrintHeader(FILE * Stream,LISTNODE Head,SIGNATURE Signature);
void LPPrintTailer(FILE * Stream);
//-------------------------------------------------------------------------------------------------
#endif

