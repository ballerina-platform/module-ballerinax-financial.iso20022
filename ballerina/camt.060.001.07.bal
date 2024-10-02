public type Camt060Document1 Camt060Document;

public type AccountReportingRequestV07 record {|
    GroupHeader117 GrpHdr;
    ReportingRequest7[] RptgReq;
    SupplementaryData1[] SplmtryData?;
|};

public type DatePeriod3 record {|
    ISODate FrDt;
    ISODate ToDt?;
|};

public type Camt060Document record {|
    AccountReportingRequestV07 AcctRptgReq;
|};

public enum FloorLimitType1Code {
    CRED, DEBT, BOTH
};

public type Limit2 record {|
    ActiveOrHistoricCurrencyAndAmount Amt;
    FloorLimitType1Code CdtDbtInd;
|};

public enum QueryType3Code {
    ALLL, CHNG, MODF
};

public type ReportingPeriod5 record {|
    DatePeriod3 FrToDt;
    TimePeriodDetails1 FrToTm?;
    QueryType3Code Tp;
|};

public type ReportingRequest7 record {|
    Max35Text Id?;
    Max35Text ReqdMsgNmId;
    CashAccount40 Acct?;
    Party50Choice AcctOwnr;
    BranchAndFinancialInstitutionIdentification8 AcctSvcr?;
    ReportingPeriod5 RptgPrd?;
    SequenceRange1Choice RptgSeq?;
    TransactionType2 ReqdTxTp?;
    BalanceType13[] ReqdBalTp?;
|};

public type TimePeriodDetails1 record {|
    ISOTime FrTm;
    ISOTime ToTm?;
|};

public type TransactionType2 record {|
    EntryStatus1Choice Sts;
    CreditDebitCode CdtDbtInd;
    Limit2[] FlrLmt?;
|};
