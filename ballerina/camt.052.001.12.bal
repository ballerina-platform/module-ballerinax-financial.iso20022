public type Camt052Document1 Camt052Document;

public type AccountReport33 record {|
    Max35Text Id;
    Pagination1 RptPgntn?;
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
    CashBalance8[] Bal?;
    TotalTransactions6 TxsSummry?;
    ReportEntry14[] Ntry?;
    Max500Text AddtlRptInf?;
|};

public type BankToCustomerAccountReportV12 record {|
    GroupHeader116 GrpHdr;
    AccountReport33[] Rpt;
    SupplementaryData1[] SplmtryData?;
|};

public type Camt052Document record {|
    BankToCustomerAccountReportV12 BkToCstmrAcctRpt;
|};


