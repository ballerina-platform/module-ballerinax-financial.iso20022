public type Pain008Document1 Pain008Document;

public type CustomerDirectDebitInitiationV11 record {|
    GroupHeader118 GrpHdr;
    PaymentInstruction45[] PmtInf;
    SupplementaryData1[] SplmtryData?;
|};

public type DirectDebitTransactionInformation32 record {|
    PaymentIdentification6 PmtId;
    PaymentTypeInformation29 PmtTpInf?;
    ActiveOrHistoricCurrencyAndAmount InstdAmt;
    ChargeBearerType1Code ChrgBr?;
    DirectDebitTransaction12 DrctDbtTx?;
    PartyIdentification272 UltmtCdtr?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt;
    CashAccount40 DbtrAgtAcct?;
    PartyIdentification272 Dbtr;
    CashAccount40 DbtrAcct;
    PartyIdentification272 UltmtDbtr?;
    Max140Text InstrForCdtrAgt?;
    Purpose2Choice Purp?;
    RegulatoryReporting3[10] RgltryRptg?;
    TaxData1 Tax?;
    RemittanceLocation8[10] RltdRmtInf?;
    RemittanceInformation22 RmtInf?;
    SupplementaryData1[] SplmtryData?;
|};

public type Pain008Document record {|
    CustomerDirectDebitInitiationV11 CstmrDrctDbtInitn;
|};

public type GroupHeader118 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm;
    Authorisation1Choice[2] Authstn?;
    Max15NumericText NbOfTxs;
    DecimalNumber CtrlSum?;
    PartyIdentification272 InitgPty;
    BranchAndFinancialInstitutionIdentification8 FwdgAgt?;
|};

public type PaymentInstruction45 record {|
    Max35Text PmtInfId;
    PaymentMethod2Code PmtMtd;
    AdviceType1 ReqdAdvcTp?;
    BatchBookingIndicator BtchBookg?;
    Max15NumericText NbOfTxs?;
    DecimalNumber CtrlSum?;
    PaymentTypeInformation29 PmtTpInf?;
    ISODate ReqdColltnDt;
    PartyIdentification272 Cdtr;
    CashAccount40 CdtrAcct;
    BranchAndFinancialInstitutionIdentification8 CdtrAgt;
    CashAccount40 CdtrAgtAcct?;
    PartyIdentification272 UltmtCdtr?;
    ChargeBearerType1Code ChrgBr?;
    CashAccount40 ChrgsAcct?;
    BranchAndFinancialInstitutionIdentification8 ChrgsAcctAgt?;
    PartyIdentification272 CdtrSchmeId?;
    DirectDebitTransactionInformation32[] DrctDbtTxInf;
|};

public enum PaymentMethod2Code {
    DD
};

public type PaymentTypeInformation29 record {|
    Priority2Code InstrPrty?;
    ServiceLevel8Choice[] SvcLvl?;
    LocalInstrument2Choice LclInstrm?;
    SequenceType3Code SeqTp?;
    CategoryPurpose1Choice CtgyPurp?;
|};
