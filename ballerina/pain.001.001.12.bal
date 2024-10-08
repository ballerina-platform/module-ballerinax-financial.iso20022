// Copyright (c) 2024, WSO2 LLC. (https://www.wso2.com).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied. See the License for the
// specific language governing permissions and limitations
// under the License.

public type Pain001Document1 Pain001Document;

public type Cheque19 record {|
    ChequeType2Code ChqTp?;
    Max35Text ChqNb?;
    NameAndAddress18 ChqFr?;
    ChequeDeliveryMethod1Choice DlvryMtd?;
    NameAndAddress18 DlvrTo?;
    Priority2Code InstrPrty?;
    ISODate ChqMtrtyDt?;
    Max35Text FrmsCd?;
    Max35Text[] MemoFld?;
    Max35Text RgnlClrZone?;
    Max35Text PrtLctn?;
    Max70Text[] Sgntr?;
|};

public type ChequeDelivery1Code string;

public type ChequeDeliveryMethod1Choice record {|
    ChequeDelivery1Code Cd?;
    Max35Text Prtry?;
|};

public type ChequeType2Code string;

public type CreditTransferTransaction61 record {|
    PaymentIdentification6 PmtId;
    PaymentTypeInformation26 PmtTpInf?;
    AmountType4Choice Amt;
    ExchangeRate1 XchgRateInf?;
    ChargeBearerType1Code ChrgBr?;
    CreditTransferMandateData1 MndtRltdInf?;
    Cheque19 ChqInstr?;
    PartyIdentification272 UltmtDbtr?;
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
    InstructionForCreditorAgent3[] InstrForCdtrAgt?;
    InstructionForDebtorAgent1 InstrForDbtrAgt?;
    Purpose2Choice Purp?;
    RegulatoryReporting3[] RgltryRptg?;
    TaxData1 Tax?;
    RemittanceLocation8[] RltdRmtInf?;
    RemittanceInformation22 RmtInf?;
    SupplementaryData1[] SplmtryData?;
|};

public type CustomerCreditTransferInitiationV12 record {|
    GroupHeader114 GrpHdr;
    PaymentInstruction44[] PmtInf;
    SupplementaryData1[] SplmtryData?;
|};

public type Pain001Document record {|
    CustomerCreditTransferInitiationV12 CstmrCdtTrfInitn;
|};

public type ExchangeRate1 record {|
    ActiveOrHistoricCurrencyCode UnitCcy?;
    BaseOneRate XchgRate?;
    ExchangeRateType1Code RateTp?;
    Max35Text CtrctId?;
|};

public type ExchangeRateType1Code string;

public type ExternalDebtorAgentInstruction1Code string;

public type GroupHeader114 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm;
    Authorisation1Choice[] Authstn?;
    Max15NumericText NbOfTxs;
    DecimalNumber CtrlSum?;
    PartyIdentification272 InitgPty;
    BranchAndFinancialInstitutionIdentification8 FwdgAgt?;
    PaymentInitiationSource1 InitnSrc?;
|};

public type InstructionForDebtorAgent1 record {|
    ExternalDebtorAgentInstruction1Code Cd?;
    Max140Text InstrInf?;
|};

public type PaymentInitiationSource1 record {|
    Max140Text Nm;
    Max35Text Prvdr?;
    Max35Text Vrsn?;
|};

public type PaymentInstruction44 record {
    Max35Text PmtInfId;
    PaymentMethod3Code PmtMtd;
    AdviceType1 ReqdAdvcTp?;
    BatchBookingIndicator BtchBookg?;
    Max15NumericText NbOfTxs?;
    DecimalNumber CtrlSum?;
    PaymentTypeInformation26 PmtTpInf?;
    DateAndDateTime2Choice ReqdExctnDt;
    ISODate PoolgAdjstmntDt?;
    PartyIdentification272 Dbtr;
    CashAccount40 DbtrAcct;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt;
    CashAccount40 DbtrAgtAcct?;
    Max140Text InstrForDbtrAgt?;
    PartyIdentification272 UltmtDbtr?;
    ChargeBearerType1Code ChrgBr?;
    CashAccount40 ChrgsAcct?;
    BranchAndFinancialInstitutionIdentification8 ChrgsAcctAgt?;
    CreditTransferTransaction61[] CdtTrfTxInf;
};

public type PaymentMethod3Code string;

public type PaymentTypeInformation26 record {
    Priority2Code InstrPrty?;
    ServiceLevel8Choice[] SvcLvl?;
    LocalInstrument2Choice LclInstrm?;
    CategoryPurpose1Choice CtgyPurp?;
};
