#ifndef PRINTDK_H
#define PRINTDK_H
//-------------------------------------------------------------------------------------------------
#include "DataTypes.h"
//-------------------------------------------------------------------------------------------------
int DKPrintSignatureList(FILE * Stream,SYMBOLNODE Node,LISTNODE Head,char * ResultType);
void DKPrintFormula(FILE * Stream,FORMULA Formula);
void DKPrintAnnotatedTSTPNode(FILE * Stream,ANNOTATEDFORMULA AnnotatedFormula,char * Prefix,
char * Label);
void DKPrintListOfAnnotatedTSTPNodes(FILE * Stream,LISTNODE Head,char * Prefix,char * Label);
void DKPrintHeader(FILE * Stream,LISTNODE Head,SIGNATURE Signature);
void DKPrintTailer(FILE * Stream);
//-------------------------------------------------------------------------------------------------
#endif

