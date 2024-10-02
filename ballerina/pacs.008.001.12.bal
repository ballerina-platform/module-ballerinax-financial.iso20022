public type Pacs008Document1 Pacs008Document;

public type CreditTransferTransaction64 record {|
    PaymentIdentification13 PmtId;
    PaymentTypeInformation28 PmtTpInf?;
    ActiveCurrencyAndAmount IntrBkSttlmAmt;
    ISODate IntrBkSttlmDt?;
    Priority3Code SttlmPrty?;
    SettlementDateTimeIndication1 SttlmTmIndctn?;
    SettlementTimeRequest2 SttlmTmReq?;
    ISODateTime AccptncDtTm?;
    ISODate PoolgAdjstmntDt?;
    ActiveOrHistoricCurrencyAndAmount InstdAmt?;
    BaseOneRate XchgRate?;
    ChargeBearerType1Code ChrgBr;
    Charges16[] ChrgsInf?;
    CreditTransferMandateData1 MndtRltdInf?;
    BranchAndFinancialInstitutionIdentification8 PrvsInstgAgt1?;
    CashAccount40 PrvsInstgAgt1Acct?;
    BranchAndFinancialInstitutionIdentification8 PrvsInstgAgt2?;
    CashAccount40 PrvsInstgAgt2Acct?;
    BranchAndFinancialInstitutionIdentification8 PrvsInstgAgt3?;
    CashAccount40 PrvsInstgAgt3Acct?;
    BranchAndFinancialInstitutionIdentification8 InstgAgt?;
    BranchAndFinancialInstitutionIdentification8 InstdAgt?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt1?;
    CashAccount40 IntrmyAgt1Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt2?;
    CashAccount40 IntrmyAgt2Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt3?;
    CashAccount40 IntrmyAgt3Acct?;
    PartyIdentification272 UltmtDbtr?;
    PartyIdentification272 InitgPty?;
    PartyIdentification272 Dbtr;
    CashAccount40 DbtrAcct?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt;
    CashAccount40 DbtrAgtAcct?;
    BranchAndFinancialInstitutionIdentification8 CdtrAgt;
    CashAccount40 CdtrAgtAcct?;
    PartyIdentification272 Cdtr;
    CashAccount40 CdtrAcct?;
    PartyIdentification272 UltmtCdtr?;
    InstructionForCreditorAgent3[] InstrForCdtrAgt?;
    InstructionForNextAgent1[] InstrForNxtAgt?;
    Purpose2Choice Purp?;
    RegulatoryReporting3[] RgltryRptg?;
    TaxData1 Tax?;
    RemittanceLocation8[] RltdRmtInf?;
    RemittanceInformation22 RmtInf?;
    SupplementaryData1[] SplmtryData?;
|};

public type Pacs008Document record {|
    FIToFICustomerCreditTransferV12 FIToFICstmrCdtTrf;
|};

public type FIToFICustomerCreditTransferV12 record {|
    GroupHeader113 GrpHdr;
    CreditTransferTransaction64[] CdtTrfTxInf;
    SupplementaryData1[] SplmtryData?;
|};

