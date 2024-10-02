public type Camt027Document1 Camt027Document;

public type ClaimNonReceiptV10 record {|
    CaseAssignment6 Assgnmt;
    Case6 Case?;
    UnderlyingTransaction8Choice Undrlyg;
    MissingCover6 CoverDtls?;
    InstructionForAssignee1 InstrForAssgne?;
    SupplementaryData1[] SplmtryData?;
|};

public type Camt027Document record {|
    ClaimNonReceiptV10 ClmNonRct;
|};

public type ExternalAgentInstruction1Code string;

public type InstructionForAssignee1 record {|
    ExternalAgentInstruction1Code Cd?;
    Max140Text InstrInf?;
|};

public type MissingCover6 record {|
    YesNoIndicator MssngCoverInd;
    SettlementInstruction16 CoverCrrctn?;
|};

public type SettlementInstruction16 record {|
    BranchAndFinancialInstitutionIdentification8 InstgRmbrsmntAgt?;
    CashAccount40 InstgRmbrsmntAgtAcct?;
    BranchAndFinancialInstitutionIdentification8 InstdRmbrsmntAgt?;
    CashAccount40 InstdRmbrsmntAgtAcct?;
|};
