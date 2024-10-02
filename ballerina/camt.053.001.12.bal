public type Camt053Document1 Camt053Document;

public type AccountStatement13 record {|
    Max35Text Id;
    Pagination1 StmtPgntn?;
    Number ElctrncSeqNb?;
    SequenceRange1Choice RptgSeq?;
    Number LglSeqNb?;
    ISODateTime CreDtTm?;
    DateTimePeriod1 FrToDt?;
    CopyDuplicate1Code CpyDplctInd?;
    ReportingSource1Choice RptgSrc?;
    CashAccount43 Acct;
    CashAccount40 RltdAcct?;
    AccountInterest4[] Intrst?;
    CashBalance8[] Bal;
    TotalTransactions6 TxsSummry?;
    ReportEntry14[] Ntry?;
    Max500Text AddtlStmtInf?;
|};

public type BankToCustomerStatementV12 record {|
    GroupHeader116 GrpHdr;
    AccountStatement13[] Stmt;
    SupplementaryData1[] SplmtryData?;
|};

public type Camt053Document record {|
    BankToCustomerStatementV12 BkToCstmrStmt;
|};

