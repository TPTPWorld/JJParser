#ifndef PARSETPTP_H
#define PARSETPTP_H
//-------------------------------------------------------------------------------------------------
#include "DataTypes.h"
#include "Tokenizer.h"
//-------------------------------------------------------------------------------------------------
ANNOTATEDFORMULA DuplicateAnnotatedTSTPFormulaHeader(ANNOTATEDFORMULA Original,
SIGNATURE Signature);
void FreeAnnotatedTSTPFormulaHeader(ANNOTATEDFORMULA * AnnotatedFormula,SIGNATURE Signature);
ANNOTATEDFORMULA ParseAnnotatedTPTPClause(READFILE Stream,SIGNATURE Signature);
ANNOTATEDFORMULA ParseAnnotatedTPTPFormula(READFILE Stream,SIGNATURE Signature);
//-------------------------------------------------------------------------------------------------
#endif
