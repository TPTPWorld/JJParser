#ifndef TREESTATISTICS_H
#define TREESTATISTICS_H
//-------------------------------------------------------------------------------------------------
#include "DataTypes.h"
#include "Statistics.h"

typedef struct {
    SZSOutputType Type;
    StatisticsType FormulaeStatistics;
    StatisticsType ExpandedFormulaeStatistics;
    double ForestDepth;
    int FiniteDomainSize;
} SolutionStatisticsType;
//-------------------------------------------------------------------------------------------------
SolutionStatisticsType GetSolutionStatistics(LISTNODE Head,SIGNATURE Signature,
ROOTLIST * RootListHead);
void PrintSolutionStatistics(FILE * Stream,SolutionStatisticsType Statistics);
//-------------------------------------------------------------------------------------------------
#endif
