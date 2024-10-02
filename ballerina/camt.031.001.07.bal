public type Camt031Document1 Camt031Document;

public type Camt031Document record {|
    RejectInvestigationV07 RjctInvstgtn;
|};

public enum InvestigationRejection1Code {
    NFND, NAUT, UKNW, PCOR, WMSG, RNCR, MROI
};

public type InvestigationRejectionJustification1 record {|
    InvestigationRejection1Code RjctnRsn;
|};

public type RejectInvestigationV07 record {|
    CaseAssignment6 Assgnmt;
    Case6 Case?;
    InvestigationRejectionJustification1 Justfn;
    SupplementaryData1[] SplmtryData?;
|};

