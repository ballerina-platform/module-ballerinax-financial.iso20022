public type Camt028Document123 Camt028Document;

public type AdditionalPaymentInformationV12 record {|
    CaseAssignment6 Assgnmt;
    Case6 Case?;
    UnderlyingTransaction8Choice Undrlyg;
    PaymentComplementaryInformation11 Inf;
    SupplementaryData1[] SplmtryData?;
|};

public type Camt028Document record {|
    AdditionalPaymentInformationV12 AddtlPmtInf;
|};

public type PaymentComplementaryInformation11 record {|
    Max35Text InstrId?;
    Max35Text EndToEndId?;
    Max35Text TxId?;
    PaymentTypeInformation27 PmtTpInf?;
    DateAndDateTime2Choice ReqdExctnDt?;
    ISODate ReqdColltnDt?;
    ISODate IntrBkSttlmDt?;
    AmountType4Choice Amt?;
    ActiveOrHistoricCurrencyAndAmount IntrBkSttlmAmt?;
    ChargeBearerType1Code ChrgBr?;
    PartyIdentification272 UltmtDbtr?;
    PartyIdentification272 Dbtr?;
    CashAccount40 DbtrAcct?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    CashAccount40 DbtrAgtAcct?;
    SettlementInstruction15 SttlmInf?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt1?;
    CashAccount40 IntrmyAgt1Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt2?;
    CashAccount40 IntrmyAgt2Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt3?;
    CashAccount40 IntrmyAgt3Acct?;
    BranchAndFinancialInstitutionIdentification8 CdtrAgt?;
    CashAccount40 CdtrAgtAcct?;
    PartyIdentification272 Cdtr?;
    CashAccount40 CdtrAcct?;
    PartyIdentification272 UltmtCdtr?;
    Purpose2Choice Purp?;
    Max140Text InstrForDbtrAgt?;
    BranchAndFinancialInstitutionIdentification8 PrvsInstgAgt1?;
    CashAccount40 PrvsInstgAgt1Acct?;
    BranchAndFinancialInstitutionIdentification8 PrvsInstgAgt2?;
    CashAccount40 PrvsInstgAgt2Acct?;
    BranchAndFinancialInstitutionIdentification8 PrvsInstgAgt3?;
    CashAccount40 PrvsInstgAgt3Acct?;
    InstructionForNextAgent1[] InstrForNxtAgt?;
    InstructionForCreditorAgent3[] InstrForCdtrAgt?;
    RemittanceLocation8[10] RltdRmtInf?;
    RemittanceInformation22 RmtInf?;
|};