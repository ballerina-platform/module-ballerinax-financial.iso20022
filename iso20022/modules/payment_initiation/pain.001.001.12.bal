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

# Defines the Pain001Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Pain001Document
@xmldata:Name {
    value: "Envelope"
}
public type Pain001Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Pain001Document Document;
|};

# Defines the structure for Cheque19, which contains details about a cheque.
#
# + ChqTp - Optional cheque type
# + ChqNb - Optional cheque number
# + ChqFr - Optional cheque from party information
# + DlvryMtd - Optional delivery method for the cheque
# + DlvrTo - Optional delivery address for the cheque
# + InstrPrty - Optional instruction priority
# + ChqMtrtyDt - Optional maturity date for the cheque
# + FrmsCd - Optional form code for the cheque
# + MemoFld - Optional memo fields
# + RgnlClrZone - Optional regional clearing zone
# + PrtLctn - Optional print location
# + Sgntr - Optional signatures for the cheque
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

# Defines an optional delivery method code for cheque delivery.
public type ChequeDelivery1Code string;

# Defines the structure for ChequeDeliveryMethod1Choice, which provides options for cheque delivery methods.
#
# + Cd - Optional delivery method code
# + Prtry - Optional proprietary delivery method
public type ChequeDeliveryMethod1Choice record {|
    ChequeDelivery1Code Cd?;
    Max35Text Prtry?;
|};

# Defines different types of cheques.
public type ChequeType2Code string;

# Defines the structure for CreditTransferTransaction61, which details a credit transfer transaction.
#
# + PmtId - Payment identification information
# + PmtTpInf - Optional payment type information
# + Amt - Amount to be transferred
# + XchgRateInf - Optional exchange rate information
# + ChrgBr - Optional charge bearer information
# + MndtRltdInf - Optional mandate-related information
# + ChqInstr - Optional cheque instruction
# + UltmtDbtr - Optional ultimate debtor identification
# + IntrmyAgt1 - Optional intermediary agent identification
# + IntrmyAgt1Acct - Optional intermediary agent account information
# + IntrmyAgt2 - Optional intermediary agent identification
# + IntrmyAgt2Acct - Optional intermediary agent account information
# + IntrmyAgt3 - Optional intermediary agent identification
# + IntrmyAgt3Acct - Optional intermediary agent account information
# + CdtrAgt - Creditor agent identification
# + CdtrAgtAcct - Creditor agent account information
# + Cdtr - Creditor identification
# + CdtrAcct - Creditor account information
# + UltmtCdtr - Optional ultimate creditor identification
# + InstrForCdtrAgt - Optional instruction for the creditor agent
# + InstrForDbtrAgt - Optional instruction for the debtor agent
# + Purp - Optional purpose information
# + RgltryRptg - Optional regulatory reporting information
# + Tax - Optional tax data
# + RltdRmtInf - Optional related remittance information
# + RmtInf - Optional remittance information
# + SplmtryData - Optional supplementary data
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

# Defines the structure for CustomerCreditTransferInitiationV12, containing details about customer credit transfer initiation.
#
# + GrpHdr - Group header information for the credit transfer initiation
# + PmtInf - Array of payment instruction information
# + SplmtryData - Optional supplementary data
public type CustomerCreditTransferInitiationV12 record {|
    GroupHeader114 GrpHdr;
    PaymentInstruction44[] PmtInf;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for Pain001Document, which encapsulates the customer credit transfer initiation information.
#
# + CstmrCdtTrfInitn - Customer credit transfer initiation information
@xmldata:Namespace {
    uri: "urn:iso:std:iso:20022:tech:xsd:pain.001.001.12"
}
public type Pain001Document record {|
    CustomerCreditTransferInitiationV12 CstmrCdtTrfInitn;
|};

# Defines the structure for ExchangeRate1, which provides exchange rate information.
#
# + UnitCcy - Optional unit currency
# + XchgRate - Optional exchange rate value
# + RateTp - Optional exchange rate type
# + CtrctId - Optional contract ID for the exchange rate
public type ExchangeRate1 record {|
    ActiveOrHistoricCurrencyCode UnitCcy?;
    BaseOneRate XchgRate?;
    ExchangeRateType1Code RateTp?;
    Max35Text CtrctId?;
|};

# Defines the structure for ExchangeRateType1Code, representing different exchange rate types.
public type ExchangeRateType1Code string;

# Defines the structure for ExternalDebtorAgentInstruction1Code, representing external instructions for the debtor agent.
public type ExternalDebtorAgentInstruction1Code string;

# Defines the structure for GroupHeader114, which contains group header information for the credit transfer initiation.
#
# + MsgId - Message identification
# + CreDtTm - Creation date and time
# + Authstn - Optional authorization information
# + NbOfTxs - Number of transactions
# + CtrlSum - Optional control sum for the group of transactions
# + InitgPty - Initiating party information
# + FwdgAgt - Optional forwarding agent information
# + InitnSrc - Optional payment initiation source
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

# Defines the structure for InstructionForDebtorAgent1, which provides instructions for the debtor agent.
#
# + Cd - External debtor agent instruction code
# + InstrInf - Instruction information
public type InstructionForDebtorAgent1 record {|
    ExternalDebtorAgentInstruction1Code Cd?;
    Max140Text InstrInf?;
|};

# Defines the structure for PaymentInitiationSource1, which represents the source of payment initiation.
#
# + Nm - Name of the payment initiation source
# + Prvdr - Optional provider information
# + Vrsn - Optional version information
public type PaymentInitiationSource1 record {|
    Max140Text Nm;
    Max35Text Prvdr?;
    Max35Text Vrsn?;
|};

# Defines the structure for PaymentInstruction44, which contains details about individual payment instructions.
#
# + PmtInfId - Payment instruction identification
# + PmtMtd - Payment method
# + ReqdAdvcTp - Optional required advice type
# + BtchBookg - Optional batch booking indicator
# + NbOfTxs - Optional number of transactions
# + CtrlSum - Optional control sum for the payment instruction
# + PmtTpInf - Optional payment type information
# + ReqdExctnDt - Required execution date
# + PoolgAdjstmntDt - Optional pooling adjustment date
# + Dbtr - Debtor identification
# + DbtrAcct - Debtor account information
# + DbtrAgt - Debtor agent information
# + DbtrAgtAcct - Debtor agent account information
# + InstrForDbtrAgt - Optional instruction for the debtor agent
# + UltmtDbtr - Optional ultimate debtor identification
# + ChrgBr - Optional charge bearer information
# + ChrgsAcct - Optional charges account information
# + ChrgsAcctAgt - Optional charges account agent information
# + CdtTrfTxInf - Array of credit transfer transaction information
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

# Defines the payment method codes for transactions.
public type PaymentMethod3Code string;

# Defines the structure for PaymentTypeInformation26, which contains payment type information details.
#
# + InstrPrty - Optional instruction priority
# + SvcLvl - Optional service level
# + LclInstrm - Optional local instrument information
# + CtgyPurp - Optional category purpose
public type PaymentTypeInformation26 record {
    Priority2Code InstrPrty?;
    ServiceLevel8Choice[] SvcLvl?;
    LocalInstrument2Choice LclInstrm?;
    CategoryPurpose1Choice CtgyPurp?;
};
