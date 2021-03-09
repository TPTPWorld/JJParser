#ifndef DATATYPES_H
#define DATATYPES_H
#include <stdio.h>
//-------------------------------------------------------------------------------------------------
//----Types for file and token handling
typedef enum {
    punctuation,
    number,
    distinct_object,
    lower_word,
    upper_word,
    quantifier,
    unary_connective,
    binary_connective,
//----Token groups
    predicate_symbol,
    functor,
    name,
//----Non-logic tokens
    comment_token,
    blank_line_token,
    error,
    endeof
} TokenType;

typedef struct {
    TokenType KindToken;
    char * NameToken;
} ReadToken;

typedef ReadToken * TOKEN;

typedef struct {
    char * FileName;
    FILE * FileHandle;
    int Line;
    int Character;
//----Content for a string file
    char * StringFileContent;
//----Overshot by one character or not
    int Overshot;
//----Index of next character to use
    int StringOffset;
//----Current character and token
    int CurrentCharacter;
    TOKEN CurrentToken;
    TOKEN Auxilliary;
//----Whether or not non-logicals are needed
    int NeedNonLogicTokens;
//----Whether or not symbols can be overloaded, etc.
    int Warnings;
} ReadFile;

typedef ReadFile * READFILE;

typedef struct {
    char * FileName; 
    FILE * FileHandle;
    char * StringFileContent;
} PrintFile;

typedef PrintFile * PRINTFILE;
//-------------------------------------------------------------------------------------------------
//----Types for the signature
typedef struct SymbolTag {
    char * NameSymbol;
    char * ShortSymbol;
    int NumberOfUses;
    int Arity;
//----These are left and right for the tree implementation (to be renamed)
    struct SymbolTag * LastSymbol;
    struct SymbolTag * NextSymbol;
} SymbolNodeType;

typedef SymbolNodeType * SYMBOLNODE;

typedef struct {
    SYMBOLNODE Variables;
    SYMBOLNODE Functions;
    SYMBOLNODE Predicates;
    SYMBOLNODE Types;
    SYMBOLNODE NonLogicals;
} SignatureType;

typedef SignatureType * SIGNATURE;
//-------------------------------------------------------------------------------------------------
typedef enum {
//----First order and upwards
    disjunction,
    conjunction,
    equivalence,
    implication,
    reverseimplication,
    nonequivalence,
    negateddisjunction,
    negatedconjunction,
    negation,
    universal,
    existential,
//----Higher order
    lambda,
    pibinder,
    sigmabinder,
    choicebinder,
    descriptionbinder,
    typecolon,
    application,
    equation,
    typedequation,
    negequation,
    pi,
    sigma,
    choice,
    description,
    subtype,
    maparrow,
    xprodtype,
    uniontype,
    gentzenarrow,
    assignmentsym,
//----Special for unknown quantification
    free_variable,
//----Specials for output formatting
    outermost,
    brackets,
//----For parsing when coming from outermost (why did I not reuse outermost?)
    none
} ConnectiveType;

//----Types for variable instance lists
typedef struct VariableTag {
    int NumberOfUses;
    ConnectiveType Quantification;
    struct TermNodeTag * Instantiation;
    SYMBOLNODE VariableName;
    struct VariableTag * NextVariable;
} VariableNodeType;

typedef VariableNodeType * VARIABLENODE;

typedef struct {
    VARIABLENODE * Variables;
    SIGNATURE Signature;
} ContextType;
//-------------------------------------------------------------------------------------------------
//----Terms
typedef enum {
    connective,
    term,
    predicate,
//----Set TheSymbol = "[]" for a tuple "function"
    function,
    a_type,
    variable,
//    ite_term,
//    let_term,
    nested_thf,
    nested_tff,
    nested_tcf,
    nested_fof,
    nested_cnf,
    nested_fot,   // Used to record variable bindings in proofs
//----Forcing a new variable to be inserted, replaced by variable
    new_variable,
//----For formulae arguments in THF and TFX
    formula,
//----For useful info, source, etc. Not in signature.
    non_logical_data,  
    nonterm
} TermType;

typedef struct {
    struct FormulaTypetag * Condition;
    struct TermNodeTag * TermIfTrue;
    struct TermNodeTag * TermIfFalse;
} ConditionalTermType;

typedef struct {
    struct FormulaTypetag * LetTypes;
    struct FormulaTypetag * LetDefn;
    struct TermNodeTag * LetBody;
} LetTermType;

typedef union {
    SYMBOLNODE NonVariable;
    VARIABLENODE Variable;
    struct FormulaWithVariablesTag * NestedFormula;
    struct TermWithVariablesTag * NestedTerm;
//----For nested THF and TFX formulae
    struct FormulaTypetag * Formula;
    ConditionalTermType ConditionalTerm;
    LetTermType LetTerm;
} TERMNODE;

typedef struct TermNodeTag {
    TermType Type;
    TERMNODE TheSymbol;
//----Used for lists (they can be extended). Symbol arity is set to -1
    int FlexibleArity;
    struct TermNodeTag ** Arguments;
} TermNodeType;

typedef TermNodeType * TERM;

typedef TERM * TERMArray;

//-------------------------------------------------------------------------------------------------
//----Formula types
typedef enum {
    tuple,
    sequent,
    assignment,
    type_declaration,
    quantified,
    binary,
    unary,
    atom,
    ite_formula,
    let_formula,
    nonformulatype
} FormulaTypeType;

typedef struct {
    ConnectiveType Quantifier;
    int ExistentialCount;
    TERM Variable;
    struct FormulaTypetag * VariableType;
    struct FormulaTypetag * Formula;
} QuantifiedFormulaType;

typedef struct {
    struct FormulaTypetag * LHS;
    ConnectiveType Connective;
    struct FormulaTypetag * RHS;
} BinaryFormulaType;

typedef struct {
    ConnectiveType Connective;
    struct FormulaTypetag * Formula;
} UnaryFormulaType;

typedef struct {
    int NumberOfElements;
    struct FormulaTypetag ** Elements;
} TupleFormulaType;

typedef struct {
    int NumberOfLHSElements;
    struct FormulaTypetag ** LHS;
    int NumberOfRHSElements;
    struct FormulaTypetag ** RHS;
} SequentFormulaType;

typedef struct {
    struct FormulaTypetag * Condition;
    struct FormulaTypetag * FormulaIfTrue;
    struct FormulaTypetag * FormulaIfFalse;
} ConditionalFormulaType;

typedef struct {
    struct FormulaTypetag * LetTypes;
    struct FormulaTypetag * LetDefn;
    struct FormulaTypetag * LetBody;
} LetFormulaType;

typedef union {
    TupleFormulaType TupleFormula;
    SequentFormulaType SequentFormula;
    QuantifiedFormulaType QuantifiedFormula;
    BinaryFormulaType BinaryFormula;
    UnaryFormulaType UnaryFormula;
    TERM Atom;
    ConditionalFormulaType ConditionalFormula;
    LetFormulaType LetFormula;
} FormulaUnionType;

typedef struct FormulaTypetag {
    FormulaTypeType Type;
    FormulaUnionType FormulaUnion;
} FormulaType;

typedef FormulaType * FORMULA;

typedef FORMULA * FORMULAArray;

//----If I were to do this again, I'd link the variables from the
//----AnnotatedTSTPFormulaType
typedef struct FormulaWithVariablesTag {
    FORMULA Formula;
    VARIABLENODE Variables;
} FormulaWithVariablesType;

typedef FormulaWithVariablesType * FORMULAWITHVARIABLES;

typedef struct TermWithVariablesTag {
    TERM Term;
    VARIABLENODE Variables;
} TermWithVariablesType;

typedef TermWithVariablesType * TERMWITHVARIABLES;
//-------------------------------------------------------------------------------------------------
//----Annotated records
typedef enum {
    tptp_tpi,
    tptp_thf,
    tptp_tff,
    tptp_tcf,
    tptp_fof,
    tptp_cnf,
    tptp_mixed,
    include,
    blank_line,
    comment,
    nontype
} SyntaxType;

typedef enum {
//----Old for backwards compatibility
    initial,
    derived,
//----Current
    assumption,
    axiom,
    hypothesis,
    definition,
    lemma,
    theorem,
    corollary,
    conjecture,
    question,
    negated_conjecture,
    plain,
    answer,
//----For typed logics
    type,
//----For finite interpretations
    fi_domain,
    fi_functors,
    fi_predicates,
    unknown,
//----Collections
    axiom_like,
    not_conjecture,
//----For logic specifications
    logic,
//----External
    external,
//----Future
    knowledge,
//---TPI
    tpi_input,
    tpi_output,
    tpi_activate,
    tpi_deactivate,
    tpi_delete,
    tpi_set_role,
    tpi_start_group,
    tpi_end_group,
    tpi_activate_group,
    tpi_deactivate_group,
    tpi_delete_group,
    tpi_setenv,
    tpi_waitenv,
    tpi_unsetenv,
    tpi_set_logic,
    tpi_execute,
    tpi_execute_async,
    tpi_filter,
    tpi_generate,
    tpi_mktemp,
    tpi_assert,
    tpi_write,
    tpi_clean,
    tpi_exit,
//----None of the above
    nonstatus
} StatusType;

typedef struct {
    char * Name;
    StatusType Status;
    StatusType SubStatus;
    FORMULAWITHVARIABLES FormulaWithVariables;
    TERM Source;
    TERM UsefulInfo;
} AnnotatedTSTPFormulaType;

typedef char * CommentType;

typedef TERM IncludeType;

typedef union {
    AnnotatedTSTPFormulaType AnnotatedTSTPFormula;
    CommentType Comment;
    IncludeType Include;
} AnnotatedFormulaUnionType;

typedef struct {
    int NumberOfUses;
    SyntaxType Syntax;
    AnnotatedFormulaUnionType AnnotatedFormulaUnion;
} AnnotatedFormulaType;

typedef AnnotatedFormulaType * ANNOTATEDFORMULA;
//-------------------------------------------------------------------------------------------------
//----Types for lists and trees of annotated formulae
typedef struct TreeNodeTag {
    int NumberOfUses;
    ANNOTATEDFORMULA AnnotatedFormula;
    int NumberOfParents;
    struct TreeNodeTag ** Parents;
    int Visited;
    double StatisticsCache;
    void * UserData;
} TreeNodeType;

typedef TreeNodeType * TREENODE;

typedef struct RootListTag {
    TREENODE TheTree;
//----For lists the Last is always NULL - lists are not doubly linked.
//----For binary trees the Last comes before and the Next comes after.
    struct RootListTag * Last;
    struct RootListTag * Next;
} RootListType;

typedef RootListType * ROOTLIST;
//----Make alias for binary tree case, to avoid confusion in code
#define ROOTBTREE ROOTLIST

typedef struct ListNodeTag {
    ANNOTATEDFORMULA AnnotatedFormula;
//----For lists the Last is always NULL - lists are not doubly linked.
//----For binary trees the Last comes before and the Next comes after.
    struct ListNodeTag * Last;
    struct ListNodeTag * Next;
    int Visited;
} ListNodeType;

typedef ListNodeType * LISTNODE;
//----Make alias for binary tree case, to avoid confusion in code
#define BTREENODE LISTNODE

typedef struct ListListTag {
    LISTNODE TheList;
    struct ListListTag * Next;
} HeadListType;

typedef HeadListType * HEADLIST;

//-------------------------------------------------------------------------------------------------
#endif
