#ifndef STATISTICS_H
#define STATISTICS_H
//-------------------------------------------------------------------------------------------------
#include "DataTypes.h"

typedef enum {
    nodes,
    thf_nodes,
    tff_nodes,
    tcf_nodes,
    fof_nodes,
    cnf_nodes,
    leaves,
//----For CNF problems
    horn_clauses,
    rr_clauses,

//----General
//----Whole annotated formulae
    unit_formulae,
    type_formulae,
    defn_formulae,
    sequent_formulae,
//----Within formulae
    atoms,
    equality_atoms,
    variable_atoms,
    literal_count,
    terms,
    variables,
    singletons,
    // count_math_variables,
    tuples,
    ite_forms,
    let_forms,
    nested_formulae, //----Not including boolean variables
    boolean_variables,
    formula_depth,
    term_depth,
    count_nothing
} CountType;

typedef enum {
    depth,
    literals,
    max_term_depth,
    max_formula_depth,
    maximize_nothing
} MaximizeType;

typedef struct {
    int NumberOfFormulae;
    int NumberOfTHF;
    int NumberOfTFF;
    int NumberOfTCF;
    int NumberOfFOF;
    int NumberOfCNF;

    int NumberOfTypeFormulae;
    int NumberOfDefnFormulae;
    int NumberOfSequents;
    int NumberOfUnitFormulae;  //----Doubles as NumberOfUnitClauses;
    int NumberOfAtoms;  //----Doubles as NumberOfLiterals;
    int NumberOfEqualityAtoms;  //----Doubles as NumberOfEqualityLiterals
    int NumberOfVariableAtoms;
    int NumberOfNestedFormulae;
    int NumberOfLiterals;

    int MaxFormulaDepth;
    double AverageFormulaDepth;
    int MaxTermDepth;
    double AverageTermDepth;

//----Only for CNF
    int NumberOfHornClauses;
    int NumberOfRRClauses;
    int MaxClauseSize;
    double AverageClauseSize;
} FormulaStatisticsType;

typedef struct {
    int NumberOfPredicates;  //----Doubles as number of symbols
    int NumberOfPropositions; 
    int MinPredicateArity;
    int MaxPredicateArity;
    int NumberOfFunctors;
    int NumberOfConstants;
    int MinFunctorArity;
    int MaxFunctorArity;
    int NumberOfVariables;
    int NumberOfSingletons;
    int NumberOfTuples;
    int NumberOfITEs;
    int NumberOfLets;
    int NumberBooleanVariables;
    int NumberOfMathPredicates;
    int NumberOfMathFunctions;
    int NumberOfNumbers;
} SymbolStatisticsType;

typedef struct {
    int NumberOfConnectives;
    int NumberOfTypeConnectives;

//----Only THF connectives
    int NumberOfPis;
    int NumberOfSigmas;
    int NumberOfChoices;
    int NumberOfDescriptions;
    int NumberOfApplications;
    int NumberOfMaparrows;
    int NumberOfXprods;
    int NumberOfUnions;
    int NumberOfEquations;  //----Use of = as a term
    int NumberOfTypedEquations;  //----Use of @= as a term

//----Only TFF
    int NumberOfSubtypes;

//----Not for CNF
    int NumberOfNegations;
    int NumberOfDisjunctions;
    int NumberOfConjunctions;
    int NumberOfEquivalences;
    int NumberOfImplications;
    int NumberOfReverseImplications;
    int NumberOfXors;
    int NumberOfNors;
    int NumberOfNands;

//----Variable binders
    int NumberOfUniversals;
    int NumberOfExistentials;
    int NumberOfLambdas;
    int NumberOfPiBinders;
    int NumberOfSigmaBinders;
    int NumberOfChoiceBinders;
    int NumberOfDescriptionBinders;

    int NumberOfTypedVariables;  //----Not a symbol, but counted by :s
    int NumberOfDefinedVariables; //----Not a symbol, but counted by :=s
    int NumberOfMathVariables;  //----Not a symbol, but counted by :s
    int NumberOfGlobalTypeDecs; //----Not a symbol, but counted by :s
    int NumberOfGlobalDefns; //----Not a symbol, but counted by :=s
} ConnectiveStatisticsType;

typedef struct {
    FormulaStatisticsType FormulaStatistics;
    SymbolStatisticsType SymbolStatistics;
    ConnectiveStatisticsType ConnectiveStatistics;
} StatisticsType;
//-------------------------------------------------------------------------------------------------
void InitializeStatistics(StatisticsType * Statistics);
void InitializeFormulaStatistics(FormulaStatisticsType * FormulaStatistics);
void InitializeSymbolStatistics(SymbolStatisticsType * SymbolStatistics);
void InitializeConnectiveStatistics(ConnectiveStatisticsType * ConnectiveStatistics);
void AddOnConnectiveStatistics(ConnectiveStatisticsType * ConnectiveStatistics,
ConnectiveStatisticsType MoreConnectiveStatistics);
//-------------------------------------------------------------------------------------------------
#endif
