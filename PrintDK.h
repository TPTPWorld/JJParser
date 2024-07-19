#ifndef PRINTDK_H
#define PRINTDK_H
//-------------------------------------------------------------------------------------------------
#include "DataTypes.h"
//-------------------------------------------------------------------------------------------------
int DKPrintSignatureList(FILE * Stream,SYMBOLNODE Node,LISTNODE Head,char * ResultType);
void DKPrintFormula(FILE * Stream,FORMULA Formula);
void DKPrintListOfAnnotatedTSTPNodes(FILE * Stream,LISTNODE Head,char * Label);
void DKPrintHeader(FILE * Stream,LISTNODE Head,SIGNATURE Signature);
void DKPrintTailer(FILE * Stream);
//-------------------------------------------------------------------------------------------------
#endif

