#ifndef SIGNATURE_H
#define SIGNATURE_H
//-------------------------------------------------------------------------------------------------
#include "DataTypes.h"
//-------------------------------------------------------------------------------------------------
SIGNATURE NewSignature(void);
SIGNATURE NewSignatureWithTypes(void);
SIGNATURE DuplicateSignature(SIGNATURE Original);
void FreeSignature(SIGNATURE * Signature);
SYMBOLNODE RemoveSignatureNodeFromTree(SYMBOLNODE * OneToDeletePtr);
int RemovedUnusedSymbolsFromList(SYMBOLNODE * Symbols);
int RemovedUnusedSymbols(SIGNATURE Signature);
char * GetSignatureSymbol(SYMBOLNODE SymbolNode);
char * GetSignatureShortSymbol(SYMBOLNODE SymbolNode);
int GetSignatureArity(SYMBOLNODE SymbolNode);
void IncreaseSymbolUseCount(SYMBOLNODE Symbol,int HowMuch);
int GetSignatureUses(SYMBOLNODE SymbolNode);
SYMBOLNODE IsSymbolInSignatureList(SYMBOLNODE List,char * Name,int Arity);
SYMBOLNODE * IsSymbolInSignatureListPointer(SYMBOLNODE * List,char * Name,int Arity);
SYMBOLNODE InsertIntoSignatureList(SYMBOLNODE * List,char * Name,int Arity,READFILE Stream);
SYMBOLNODE InsertIntoSignature(SIGNATURE Signature,TermType Type,char * Name,int Arity,
READFILE Stream);
SYMBOLNODE MoveSignatureNode(SYMBOLNODE * FromList,SYMBOLNODE * ToList,char * Name,int Arity,
READFILE Stream);
SYMBOLNODE NextInSignatureTree(SYMBOLNODE SignatureTree,SYMBOLNODE Current);
void ListSignatureBySearch(SYMBOLNODE SignatureTree);
void PrintSignatureTree(SYMBOLNODE SignatureTree);
void PrintSignature(SIGNATURE Signature);
char * GetSignatureSymbolUsage(SIGNATURE Signature,char ** PutUsageHere,
char ** FunctorUsageStartsHere);
void GetSignatureSymbolUsageStatistics(SYMBOLNODE SignatureNode,
double * NumberOfSymbols,double * NumberOfSymbolsArity0,
double * MinSymbolArity,double * MaxSymbolArity);
//-------------------------------------------------------------------------------------------------
#endif
