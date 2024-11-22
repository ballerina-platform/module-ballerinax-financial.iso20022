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
import ballerina/data.xmldata;

# Defines the Camt029Document1 structure.
public type Camt029Document1 Camt029Document;

public enum CancellationIndividualStatus1Code {
    RJCR, ACCR, PDCR
};

# Defines the CancellationStatusReason3Choice structure.
#
# + Cd - External payment cancellation rejection code  
# + Prtry - Proprietary reason for the status
public type CancellationStatusReason3Choice record {|
    ExternalPaymentCancellationRejection1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the CancellationStatusReason5 structure.
#
# + Orgtr - Originator identification  
# + Rsn - Reason for the cancellation status  
# + AddtlInf - Additional information about the status
public type CancellationStatusReason5 record {|
    PartyIdentification272 Orgtr?;
    CancellationStatusReason3Choice Rsn?;
    Max105Text[] AddtlInf?;
|};

# Defines the Charges14 structure.
#
# + Amt - The amount of the charge  
# + Agt - The agent details  
# + AgtAcct - The agent's account information  
# + Tp - The type of charge
public type Charges14 record {|
    ActiveOrHistoricCurrencyAndAmount Amt;
    BranchAndFinancialInstitutionIdentification8 Agt;
    CashAccount40 AgtAcct?;
    ChargeType3Choice Tp?;
|};

# Defines the ClaimNonReceipt3 structure.
#
# + DtPrcd - The date of processing  
# + OrgnlNxtAgt - Original next agent details
public type ClaimNonReceipt3 record {|
    ISODate DtPrcd;
    BranchAndFinancialInstitutionIdentification8 OrgnlNxtAgt?;
|};

# Defines the ClaimNonReceipt3Choice structure.
#
# + Accptd - Accepted claim details  
# + Rjctd - Rejected claim details
public type ClaimNonReceipt3Choice record {|
    ClaimNonReceipt3 Accptd?;
    ClaimNonReceiptRejectReason1Choice Rjctd?;
|};

# Defines the ClaimNonReceiptRejectReason1Choice structure.
#
# + Cd - Code for the rejection reason  
# + Prtry - Proprietary rejection reason
public type ClaimNonReceiptRejectReason1Choice record {|
    ExternalClaimNonReceiptRejection1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the Compensation5 structure.
#
# + Amt - Compensation amount  
# + DbtrAgt - Debtor agent details  
# + DbtrAgtAcct - Debtor agent account information  
# + CdtrAgt - Creditor agent details  
# + CdtrAgtAcct - Creditor agent account information  
# + Rsn - Reason for the compensation
public type Compensation5 record {|
    ActiveCurrencyAndAmount Amt;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt;
    CashAccount40 DbtrAgtAcct?;
    BranchAndFinancialInstitutionIdentification8 CdtrAgt;
    CashAccount40 CdtrAgtAcct?;
    CompensationReason1Choice Rsn;
|};

# Defines the CompensationReason1Choice structure.
#
# + Cd - External compensation reason code  
# + Prtry - Proprietary compensation reason
public type CompensationReason1Choice record {|
    ExternalPaymentCompensationReason1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the CorrectiveGroupInformation1 structure.
#
# + MsgId - Message identification  
# + MsgNmId - Message name identification  
# + CreDtTm - Creation date and time
public type CorrectiveGroupInformation1 record {|
    Max35Text MsgId;
    Max35Text MsgNmId;
    ISODateTime CreDtTm?;
|};

# Defines the CorrectiveInterbankTransaction3 structure.
#
# + GrpHdr - Group header information  
# + InstrId - Instruction identification  
# + EndToEndId - End-to-end identification  
# + TxId - Transaction identification  
# + UETR - Unique end-to-end transaction reference  
# + IntrBkSttlmAmt - Interbank settlement amount  
# + IntrBkSttlmDt - Interbank settlement date
public type CorrectiveInterbankTransaction3 record {|
    CorrectiveGroupInformation1 GrpHdr?;
    Max35Text InstrId?;
    Max35Text EndToEndId?;
    Max35Text TxId?;
    UUIDv4Identifier UETR?;
    ActiveOrHistoricCurrencyAndAmount IntrBkSttlmAmt;
    ISODate IntrBkSttlmDt;
|};

# Defines the CorrectivePaymentInitiation5 structure.
#
# + GrpHdr - Group header information  
# + PmtInfId - Payment information identification  
# + InstrId - Instruction identification  
# + EndToEndId - End-to-end identification  
# + UETR - Unique end-to-end transaction reference  
# + InstdAmt - Instructed amount  
# + ReqdExctnDt - Requested execution date  
# + ReqdColltnDt - Requested collection date
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

# Defines the CorrectiveTransaction5Choice structure.
#
# + Initn - Corrective payment initiation details  
# + IntrBk - Corrective interbank transaction details
public type CorrectiveTransaction5Choice record {|
    CorrectivePaymentInitiation5 Initn?;
    CorrectiveInterbankTransaction3 IntrBk?;
|};

# Defines the Camt029Document structure.
#
# + RsltnOfInvstgtn - The resolution of the investigation details
@xmldata:Name {
    value: "Document"
}
@xmldata:Namespace {
    uri: "urn:iso:std:iso:20022:tech:xsd:camt.029.001.13"
}
public type Camt029Document record {|
    ResolutionOfInvestigationV13 RsltnOfInvstgtn;
|};

# External claim non-receipt rejection code, represented as a string.
public type ExternalClaimNonReceiptRejection1Code string;

# External investigation execution confirmation code, represented as a string.
public type ExternalInvestigationExecutionConfirmation1Code string;

# External payment cancellation rejection code, represented as a string.
public type ExternalPaymentCancellationRejection1Code string;

# External payment compensation reason code, represented as a string.
public type ExternalPaymentCompensationReason1Code string;

# External payment modification rejection code, represented as a string.
public type ExternalPaymentModificationRejection1Code string;

public enum GroupCancellationStatus1Code {
    PACR, RJCR, ACCR, PDCR
};

# Defines the InvestigationStatus6Choice structure.
#
# + Conf - External investigation execution confirmation code  
# + RjctdMod - Rejected modification reason  
# + DplctOf - Duplicate of another case  
# + AssgnmtCxlConf - Assignment cancellation confirmation indicator
public type InvestigationStatus6Choice record {|
    ExternalInvestigationExecutionConfirmation1Code Conf?;
    ModificationStatusReason1Choice RjctdMod?;
    Case6 DplctOf?;
    YesNoIndicator AssgnmtCxlConf?;
|};

# Defines the ModificationStatusReason1Choice structure.
#
# + Cd - External payment modification rejection code  
# + Prtry - Proprietary reason for the modification status
public type ModificationStatusReason1Choice record {|
    ExternalPaymentModificationRejection1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the ModificationStatusReason3 structure.
#
# + Orgtr - Originator identification  
# + Rsn - Reason for the modification status  
# + AddtlInf - Additional information related to the modification
public type ModificationStatusReason3 record {|
    PartyIdentification272 Orgtr?;
    ModificationStatusReason1Choice Rsn?;
    Max105Text[] AddtlInf?;
|};

# Defines the NumberOfCancellationsPerStatus1 structure.
#
# + DtldNbOfTxs - Detailed number of transactions  
# + DtldSts - Detailed status of the transaction  
# + DtldCtrlSum - Detailed control sum
public type NumberOfCancellationsPerStatus1 record {|
    Max15NumericText DtldNbOfTxs;
    CancellationIndividualStatus1Code DtldSts;
    DecimalNumber DtldCtrlSum?;
|};

# Defines the NumberOfTransactionsPerStatus1 structure.
#
# + DtldNbOfTxs - Detailed number of transactions  
# + DtldSts - Detailed transaction status  
# + DtldCtrlSum - Detailed control sum
public type NumberOfTransactionsPerStatus1 record {|
    Max15NumericText DtldNbOfTxs;
    TransactionIndividualStatus1Code DtldSts;
    DecimalNumber DtldCtrlSum?;
|};

# Defines the OriginalGroupHeader23 structure.
#
# + OrgnlGrpCxlId - Original group cancellation identification  
# + RslvdCase - Resolved case  
# + OrgnlMsgId - Original message identification  
# + OrgnlMsgNmId - Original message name identification  
# + OrgnlCreDtTm - Original creation date and time  
# + OrgnlNbOfTxs - Original number of transactions  
# + OrgnlCtrlSum - Original control sum  
# + GrpCxlSts - Group cancellation status  
# + CxlStsRsnInf - Cancellation status reason information  
# + NbOfTxsPerCxlSts - Number of transactions per cancellation status
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

# Defines the PaymentTransaction152 structure.
#
# + CxlStsId - Cancellation status identification  
# + RslvdCase - Resolved case  
# + OrgnlGrpInf - Original group information  
# + OrgnlInstrId - Original instruction identification  
# + OrgnlEndToEndId - Original end-to-end identification  
# + OrgnlTxId - Original transaction identification  
# + OrgnlClrSysRef - Original clearing system reference  
# + OrgnlUETR - Original UETR  
# + TxCxlSts - Transaction cancellation status  
# + CxlStsRsnInf - Cancellation status reason information  
# + RsltnRltdInf - Resolution related information  
# + OrgnlIntrBkSttlmAmt - Original interbank settlement amount  
# + OrgnlIntrBkSttlmDt - Original interbank settlement date  
# + Assgnr - Assigner details  
# + Assgne - Assignee details  
# + OrgnlTxRef - Original transaction reference
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

# Defines the PaymentTransaction153 structure.
#
# + CxlStsId - Cancellation status identification  
# + RslvdCase - Resolved case  
# + OrgnlInstrId - Original instruction identification  
# + OrgnlEndToEndId - Original end-to-end identification  
# + UETR - Unique end-to-end transaction reference  
# + TxCxlSts - Transaction cancellation status  
# + CxlStsRsnInf - Cancellation status reason information  
# + OrgnlInstdAmt - Original instructed amount  
# + OrgnlReqdExctnDt - Original required execution date  
# + OrgnlReqdColltnDt - Original required collection date  
# + OrgnlTxRef - Original transaction reference
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

# Defines the PaymentTransaction157 structure, which represents details related to the modification of a payment transaction.
#
# + ModStsId - The unique identifier for the modification status of the transaction  
# + RslvdCase - Information related to the resolved case, if any  
# + OrgnlGrpInf - Original group information, providing details about the group of transactions  
# + OrgnlPmtInfId - The original payment information identification  
# + OrgnlInstrId - The original instruction identification associated with the transaction  
# + OrgnlEndToEndId - The original end-to-end identification for the transaction  
# + OrgnlTxId - The original transaction identification  
# + OrgnlClrSysRef - Original reference for the clearing system  
# + OrgnlUETR - The original unique end-to-end transaction reference  
# + ModStsRsnInf - Information regarding the reasons for the modification status  
# + RsltnRltdInf - Resolution-related information, if any  
# + OrgnlIntrBkSttlmAmt - The original interbank settlement amount for the transaction  
# + OrgnlIntrBkSttlmDt - The original date of the interbank settlement  
# + Assgnr - Details about the assigner of the transaction modification  
# + Assgne - Details about the assignee of the transaction modification  
# + OrgnlTxRef - Original transaction reference providing detailed payment information
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

# Defines the ResolutionData5 structure.
#
# + EndToEndId - End-to-end identification  
# + TxId - Transaction identification  
# + UETR - Unique end-to-end transaction reference  
# + IntrBkSttlmAmt - Interbank settlement amount  
# + IntrBkSttlmDt - Interbank settlement date  
# + ClrChanl - Clearing channel code  
# + Compstn - Compensation details  
# + ChrgsInf - Charges information
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

# Defines the ResolutionOfInvestigationV13 structure.
#
# + Assgnmt - Case assignment information  
# + RslvdCase - Resolved case  
# + Sts - Investigation status  
# + CxlDtls - Cancellation details  
# + ModDtls - Modification details  
# + ClmNonRctDtls - Claim non-receipt details  
# + StmtDtls - Statement resolution details  
# + CrrctnTx - Corrective transaction details  
# + RsltnRltdInf - Resolution related information  
# + SplmtryData - Supplementary data
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

# Defines the StatementResolutionEntry5 structure.
#
# + OrgnlGrpInf - Original group information  
# + OrgnlStmtId - Original statement identification  
# + UETR - Unique end-to-end transaction reference  
# + AcctSvcrRef - Account servicing reference  
# + CrrctdAmt - Corrected amount  
# + Chrgs - Charges information  
# + Purp - Purpose of the transaction
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

# Defines the UnderlyingTransaction32 structure.
#
# + OrgnlGrpInfAndSts - Original group information and status  
# + OrgnlPmtInfAndSts - Original payment information and status  
# + TxInfAndSts - Transaction information and status
public type UnderlyingTransaction32 record {
    OriginalGroupHeader23 OrgnlGrpInfAndSts?;
    OriginalPaymentInstruction48[] OrgnlPmtInfAndSts?;
    PaymentTransaction152[] TxInfAndSts?;
};
