#ifndef PRINTLP_H
#define PRINTLP_H
//-------------------------------------------------------------------------------------------------
#include "DataTypes.h"
//-------------------------------------------------------------------------------------------------
int LPPrintSignatureList(FILE * Stream,SYMBOLNODE Node,LISTNODE Head,char * ResultType);
void LPPrintFormula(FILE * Stream,FORMULA Formula);
void LPPrintListOfAnnotatedTSTPNodes(FILE * Stream,LISTNODE Head,char * Label);
void LPPrintHeader(FILE * Stream,LISTNODE Head,SIGNATURE Signature);
void LPPrintTailer(FILE * Stream);
//-------------------------------------------------------------------------------------------------
#endif

