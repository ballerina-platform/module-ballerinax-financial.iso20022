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
