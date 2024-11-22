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

# Defines the structure for the Pain008Document1.
public type Pain008Document1 Pain008Document;

# Defines the structure for CustomerDirectDebitInitiationV11, containing details about customer direct debit initiation.
#
# + GrpHdr - Group header information for the direct debit initiation
# + PmtInf - Array of payment instruction information
# + SplmtryData - Optional supplementary data
public type CustomerDirectDebitInitiationV11 record {|
    GroupHeader118 GrpHdr;
    PaymentInstruction45[] PmtInf;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for DirectDebitTransactionInformation32, which details a direct debit transaction.
#
# + PmtId - Payment identification information
# + PmtTpInf - Optional payment type information
# + InstdAmt - Amount to be debited
# + ChrgBr - Optional charge bearer information
# + DrctDbtTx - Direct debit transaction information
# + UltmtCdtr - Optional ultimate creditor identification
# + DbtrAgt - Debtor agent information
# + DbtrAgtAcct - Debtor agent account information
# + Dbtr - Debtor identification
# + DbtrAcct - Debtor account information
# + UltmtDbtr - Optional ultimate debtor identification
# + InstrForCdtrAgt - Optional instruction for the creditor agent
# + Purp - Optional purpose information
# + RgltryRptg - Optional regulatory reporting information
# + Tax - Optional tax data
# + RltdRmtInf - Optional related remittance information
# + RmtInf - Optional remittance information
# + SplmtryData - Optional supplementary data
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

# Defines the structure for Pain008Document, which encapsulates the customer direct debit initiation information.
#
# + CstmrDrctDbtInitn - Customer direct debit initiation information
@xmldata:Name {
    value: "Document"
}
@xmldata:Namespace {
    uri: "urn:iso:std:iso:20022:tech:xsd:pain.008.001.11"
}
public type Pain008Document record {|
    CustomerDirectDebitInitiationV11 CstmrDrctDbtInitn;
|};

# Defines the structure for GroupHeader118, which contains group header information for the direct debit initiation.
#
# + MsgId - Message identification
# + CreDtTm - Creation date and time
# + Authstn - Optional authorization information
# + NbOfTxs - Number of transactions
# + CtrlSum - Optional control sum for the group of transactions
# + InitgPty - Initiating party information
# + FwdgAgt - Optional forwarding agent information
public type GroupHeader118 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm;
    Authorisation1Choice[2] Authstn?;
    Max15NumericText NbOfTxs;
    DecimalNumber CtrlSum?;
    PartyIdentification272 InitgPty;
    BranchAndFinancialInstitutionIdentification8 FwdgAgt?;
|};

# Defines the structure for PaymentInstruction45, which contains details about individual payment instructions.
#
# + PmtInfId - Payment instruction identification
# + PmtMtd - Payment method
# + ReqdAdvcTp - Optional required advice type
# + BtchBookg - Optional batch booking indicator
# + NbOfTxs - Optional number of transactions
# + CtrlSum - Optional control sum for the payment instruction
# + PmtTpInf - Optional payment type information
# + ReqdColltnDt - Required collection date
# + Cdtr - Creditor identification
# + CdtrAcct - Creditor account information
# + CdtrAgt - Creditor agent identification
# + CdtrAgtAcct - Optional creditor agent account information
# + UltmtCdtr - Optional ultimate creditor identification
# + ChrgBr - Optional charge bearer information
# + ChrgsAcct - Optional charges account information
# + ChrgsAcctAgt - Optional charges account agent information
# + CdtrSchmeId - Optional creditor scheme identification
# + DrctDbtTxInf - Array of direct debit transaction information
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

# Defines the structure for PaymentTypeInformation29, which contains payment type information details.
#
# + InstrPrty - Optional instruction priority
# + SvcLvl - Optional service level
# + LclInstrm - Optional local instrument information
# + SeqTp - Optional sequence type
# + CtgyPurp - Optional category purpose
public type PaymentTypeInformation29 record {|
    Priority2Code InstrPrty?;
    ServiceLevel8Choice[] SvcLvl?;
    LocalInstrument2Choice LclInstrm?;
    SequenceType3Code SeqTp?;
    CategoryPurpose1Choice CtgyPurp?;
|};
