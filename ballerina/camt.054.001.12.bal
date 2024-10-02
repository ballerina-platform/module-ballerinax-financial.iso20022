public type Camt054Document1 Camt054Document;

public type AccountNotification22 record {|
    Max35Text Id;
    Pagination1 NtfctnPgntn?;
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
    TotalTransactions6 TxsSummry?;
    ReportEntry14[] Ntry?;
    Max500Text AddtlNtfctnInf?;
|};

public type BankToCustomerDebitCreditNotificationV12 record {|
    GroupHeader116 GrpHdr;
    AccountNotification22[] Ntfctn;
    SupplementaryData1[] SplmtryData?;
|};

public type Camt054Document record {|
    BankToCustomerDebitCreditNotificationV12 BkToCstmrDbtCdtNtfctn;
|};