#ifndef PRINTLP_H
#define PRINTLP_H
//-------------------------------------------------------------------------------------------------
#include "DataTypes.h"
//-------------------------------------------------------------------------------------------------
int LPPrintSignatureList(FILE * Stream,SYMBOLNODE Node,char * ResultType);
void LPPrintListOfAnnotatedTSTPNodes(FILE * Stream,LISTNODE Head);
void LPPrintHeader(FILE * Stream,LISTNODE Head,SIGNATURE Signature);
void LPPrintTailer(FILE * Stream);
//-------------------------------------------------------------------------------------------------
#endif

