public type Camt057Document1 Camt057Document;

public type AccountNotification23 record {|
    Max35Text Id;
    CashAccount40 Acct?;
    Party50Choice AcctOwnr?;
    BranchAndFinancialInstitutionIdentification8 AcctSvcr?;
    CashAccount40 RltdAcct?;
    ActiveOrHistoricCurrencyAndAmount TtlAmt?;
    ISODate XpctdValDt?;
    Party50Choice Dbtr?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt?;
    NotificationItem9[] Itm;
|};

public type Camt057Document record {|
    NotificationToReceiveV08 NtfctnToRcv;
|};

public type NotificationItem9 record {|
    Max35Text Id;
    Max35Text EndToEndId?;
    UUIDv4Identifier UETR?;
    CashAccount40 Acct?;
    Party50Choice AcctOwnr?;
    BranchAndFinancialInstitutionIdentification8 AcctSvcr?;
    CashAccount40 RltdAcct?;
    ActiveOrHistoricCurrencyAndAmount Amt;
    ISODate XpctdValDt?;
    Party50Choice Dbtr?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt?;
    Purpose2Choice Purp?;
    RemittanceLocation8 RltdRmtInf?;
    RemittanceInformation22 RmtInf?;
    TransactionAllocation1[] UndrlygAllcn?;
|};

public type NotificationToReceiveV08 record {|
    GroupHeader117 GrpHdr;
    AccountNotification23 Ntfctn;
    SupplementaryData1[] SplmtryData?;
|};
