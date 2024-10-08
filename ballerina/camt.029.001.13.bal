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

public type Camt029Document1 Camt029Document;

public enum CancellationIndividualStatus1Code {
    RJCR, ACCR, PDCR
};

public type CancellationStatusReason3Choice record {|
    ExternalPaymentCancellationRejection1Code Cd?;
    Max35Text Prtry?;
|};

public type CancellationStatusReason5 record {|
    PartyIdentification272 Orgtr?;
    CancellationStatusReason3Choice Rsn?;
    Max105Text[] AddtlInf?;
|};

public type Charges14 record {|
    ActiveOrHistoricCurrencyAndAmount Amt;
    BranchAndFinancialInstitutionIdentification8 Agt;
    CashAccount40 AgtAcct?;
    ChargeType3Choice Tp?;
|};

public type ClaimNonReceipt3 record {|
    ISODate DtPrcd;
    BranchAndFinancialInstitutionIdentification8 OrgnlNxtAgt?;
|};

public type ClaimNonReceipt3Choice record {|
    ClaimNonReceipt3 Accptd?;
    ClaimNonReceiptRejectReason1Choice Rjctd?;
|};

public type ClaimNonReceiptRejectReason1Choice record {|
    ExternalClaimNonReceiptRejection1Code Cd?;
    Max35Text Prtry?;
|};

public type Compensation5 record {|
    ActiveCurrencyAndAmount Amt;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt;
    CashAccount40 DbtrAgtAcct?;
    BranchAndFinancialInstitutionIdentification8 CdtrAgt;
    CashAccount40 CdtrAgtAcct?;
    CompensationReason1Choice Rsn;
|};

public type CompensationReason1Choice record {|
    ExternalPaymentCompensationReason1Code Cd?;
    Max35Text Prtry?;
|};

public type CorrectiveGroupInformation1 record {|
    Max35Text MsgId;
    Max35Text MsgNmId;
    ISODateTime CreDtTm?;
|};

public type CorrectiveInterbankTransaction3 record {|
    CorrectiveGroupInformation1 GrpHdr?;
    Max35Text InstrId?;
    Max35Text EndToEndId?;
    Max35Text TxId?;
    UUIDv4Identifier UETR?;
    ActiveOrHistoricCurrencyAndAmount IntrBkSttlmAmt;
    ISODate IntrBkSttlmDt;
|};

public type CorrectivePaymentInitiation5 record {|
    CorrectiveGroupInformation1 GrpHdr?;
    Max35Text PmtInfId?;
    Max35Text InstrId?;
    Max35Text EndToEndId?;
    UUIDv4Identifier UETR?;
    ActiveOrHistoricCurrencyAndAmount InstdAmt;
    DateAndDateTime2Choice ReqdExctnDt?;
    ISODate ReqdColltnDt?;
|};

public type CorrectiveTransaction5Choice record {|
    CorrectivePaymentInitiation5 Initn?;
    CorrectiveInterbankTransaction3 IntrBk?;
|};

public type Camt029Document record {|
    ResolutionOfInvestigationV13 RsltnOfInvstgtn;
|};

public type ExternalClaimNonReceiptRejection1Code string;

public type ExternalInvestigationExecutionConfirmation1Code string;

public type ExternalPaymentCancellationRejection1Code string;

public type ExternalPaymentCompensationReason1Code string;

public type ExternalPaymentModificationRejection1Code string;

public enum GroupCancellationStatus1Code {
    PACR, RJCR, ACCR, PDCR
};

public type InvestigationStatus6Choice record {|
    ExternalInvestigationExecutionConfirmation1Code Conf?;
    ModificationStatusReason1Choice RjctdMod?;
    Case6 DplctOf?;
    YesNoIndicator AssgnmtCxlConf?;
|};

public type ModificationStatusReason1Choice record {|
    ExternalPaymentModificationRejection1Code Cd?;
    Max35Text Prtry?;
|};

public type ModificationStatusReason3 record {|
    PartyIdentification272 Orgtr?;
    ModificationStatusReason1Choice Rsn?;
    Max105Text[] AddtlInf?;
|};

public type NumberOfCancellationsPerStatus1 record {|
    Max15NumericText DtldNbOfTxs;
    CancellationIndividualStatus1Code DtldSts;
    DecimalNumber DtldCtrlSum?;
|};

public type NumberOfTransactionsPerStatus1 record {|
    Max15NumericText DtldNbOfTxs;
    TransactionIndividualStatus1Code DtldSts;
    DecimalNumber DtldCtrlSum?;
|};

public type OriginalGroupHeader23 record {|
    Max35Text OrgnlGrpCxlId?;
    Case6 RslvdCase?;
    Max35Text OrgnlMsgId;
    Max35Text OrgnlMsgNmId;
    ISODateTime OrgnlCreDtTm?;
    Max15NumericText OrgnlNbOfTxs?;
    DecimalNumber OrgnlCtrlSum?;
    GroupCancellationStatus1Code GrpCxlSts?;
    CancellationStatusReason5[] CxlStsRsnInf?;
    NumberOfTransactionsPerStatus1[] NbOfTxsPerCxlSts?;
|};

public type PaymentTransaction152 record {|
    Max35Text CxlStsId?;
    Case6 RslvdCase?;
    OriginalGroupInformation29 OrgnlGrpInf?;
    Max35Text OrgnlInstrId?;
    Max35Text OrgnlEndToEndId?;
    Max35Text OrgnlTxId?;
    Max35Text OrgnlClrSysRef?;
    UUIDv4Identifier OrgnlUETR?;
    CancellationIndividualStatus1Code TxCxlSts?;
    CancellationStatusReason5[] CxlStsRsnInf?;
    ResolutionData5 RsltnRltdInf?;
    ActiveOrHistoricCurrencyAndAmount OrgnlIntrBkSttlmAmt?;
    ISODate OrgnlIntrBkSttlmDt?;
    Party50Choice Assgnr?;
    Party50Choice Assgne?;
    OriginalTransactionReference42 OrgnlTxRef?;
|};

public type PaymentTransaction153 record {
    Max35Text CxlStsId?;
    Case6 RslvdCase?;
    Max35Text OrgnlInstrId?;
    Max35Text OrgnlEndToEndId?;
    UUIDv4Identifier UETR?;
    CancellationIndividualStatus1Code TxCxlSts?;
    CancellationStatusReason5[] CxlStsRsnInf?;
    ActiveOrHistoricCurrencyAndAmount OrgnlInstdAmt?;
    DateAndDateTime2Choice OrgnlReqdExctnDt?;
    ISODate OrgnlReqdColltnDt?;
    OriginalTransactionReference42 OrgnlTxRef?;
};

public type PaymentTransaction157 record {|
    Max35Text ModStsId?;
    Case6 RslvdCase?;
    OriginalGroupInformation29 OrgnlGrpInf;
    Max35Text OrgnlPmtInfId?;
    Max35Text OrgnlInstrId?;
    Max35Text OrgnlEndToEndId?;
    Max35Text OrgnlTxId?;
    Max35Text OrgnlClrSysRef?;
    UUIDv4Identifier OrgnlUETR?;
    ModificationStatusReason3[] ModStsRsnInf?;
    ResolutionData5 RsltnRltdInf?;
    ActiveOrHistoricCurrencyAndAmount OrgnlIntrBkSttlmAmt?;
    ISODate OrgnlIntrBkSttlmDt?;
    Party50Choice Assgnr?;
    Party50Choice Assgne?;
    OriginalTransactionReference42 OrgnlTxRef?;
|};

public type ResolutionData5 record {|
    Max35Text EndToEndId?;
    Max35Text TxId?;
    UUIDv4Identifier UETR?;
    ActiveOrHistoricCurrencyAndAmount IntrBkSttlmAmt?;
    ISODate IntrBkSttlmDt?;
    ClearingChannel2Code ClrChanl?;
    Compensation5 Compstn?;
    Charges14[] ChrgsInf?;
|};

public type ResolutionOfInvestigationV13 record {
    CaseAssignment6 Assgnmt;
    Case6 RslvdCase?;
    InvestigationStatus6Choice Sts;
    UnderlyingTransaction32[] CxlDtls?;
    PaymentTransaction157 ModDtls?;
    ClaimNonReceipt3Choice ClmNonRctDtls?;
    StatementResolutionEntry5 StmtDtls?;
    CorrectiveTransaction5Choice CrrctnTx?;
    ResolutionData5 RsltnRltdInf?;
    SupplementaryData1[] SplmtryData?;
};

public type StatementResolutionEntry5 record {
    OriginalGroupInformation29 OrgnlGrpInf?;
    Max35Text OrgnlStmtId?;
    UUIDv4Identifier UETR?;
    Max35Text AcctSvcrRef?;
    ActiveOrHistoricCurrencyAndAmount CrrctdAmt?;
    Charges15[] Chrgs?;
    Purpose2Choice Purp?;
};

public enum TransactionIndividualStatus1Code {
    ACTC, RJCT, PDNG, ACCP, ACSP, ACSC, ACCR, ACWC
};

public type UnderlyingTransaction32 record {
    OriginalGroupHeader23 OrgnlGrpInfAndSts?;
    OriginalPaymentInstruction48[] OrgnlPmtInfAndSts?;
    PaymentTransaction152[] TxInfAndSts?;
};
