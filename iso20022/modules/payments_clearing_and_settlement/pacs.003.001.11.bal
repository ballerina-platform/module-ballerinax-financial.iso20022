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

# Defines the Pacs003Envelope1 structure.
public type Pacs003Envelope1 Pacs003Envelope;

# Defines the Pacs003Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Pacs003Document
@xmldata:Name {
    value: "Envelope"
}
public type Pacs003Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Pacs003Document Document;
|};

# Defines the structure for the Pacs003Document1.
public type Pac003Document1 Pacs003Document;

# Defines the structure for DirectDebitTransactionInformation31, which details a direct debit transaction.
#
# + PmtId - Payment identification information
# + PmtTpInf - Optional payment type information
# + IntrBkSttlmAmt - Interbank settlement amount
# + IntrBkSttlmDt - Optional interbank settlement date
# + SttlmPrty - Optional settlement priority
# + SttlmTmIndctn - Optional settlement time indication
# + InstdAmt - Optional instructed amount
# + XchgRate - Optional exchange rate
# + ChrgBr - Charge bearer type
# + ChrgsInf - Array of charges information
# + ReqdColltnDt - Optional requested collection date
# + DrctDbtTx - Optional direct debit transaction information
# + Cdtr - Creditor identification
# + CdtrAcct - Optional creditor account information
# + CdtrAgt - Creditor agent information
# + CdtrAgtAcct - Optional creditor agent account information
# + UltmtCdtr - Optional ultimate creditor identification
# + InitgPty - Initiating party information
# + InstgAgt - Instructing agent information
# + InstdAgt - Instructed agent information
# + IntrmyAgt1 - Optional intermediary agent information
# + IntrmyAgt1Acct - Optional intermediary agent account information
# + IntrmyAgt2 - Optional intermediary agent information
# + IntrmyAgt2Acct - Optional intermediary agent account information
# + IntrmyAgt3 - Optional intermediary agent information
# + IntrmyAgt3Acct - Optional intermediary agent account information
# + Dbtr - Debtor identification
# + DbtrAcct - Debtor account information
# + DbtrAgt - Debtor agent information
# + DbtrAgtAcct - Optional debtor agent account information
# + UltmtDbtr - Optional ultimate debtor identification
# + Purp - Optional purpose information
# + RgltryRptg - Optional regulatory reporting information
# + RltdRmtInf - Array of related remittance information
# + RmtInf - Optional remittance information
# + SplmtryData - Optional supplementary data
public type DirectDebitTransactionInformation31 record {|
    PaymentIdentification13 PmtId;
    PaymentTypeInformation27 PmtTpInf?;
    ActiveCurrencyAndAmount IntrBkSttlmAmt;
    ISODate IntrBkSttlmDt?;
    Priority3Code SttlmPrty?;
    SettlementDateTimeIndication1 SttlmTmIndctn?;
    ActiveOrHistoricCurrencyAndAmount InstdAmt?;
    BaseOneRate XchgRate?;
    ChargeBearerType1Code ChrgBr;
    Charges16[] ChrgsInf?;
    ISODate ReqdColltnDt?;
    DirectDebitTransaction12 DrctDbtTx?;
    PartyIdentification272 Cdtr;
    CashAccount40 CdtrAcct?;
    BranchAndFinancialInstitutionIdentification8 CdtrAgt;
    CashAccount40 CdtrAgtAcct?;
    PartyIdentification272 UltmtCdtr?;
    PartyIdentification272 InitgPty?;
    BranchAndFinancialInstitutionIdentification8 InstgAgt?;
    BranchAndFinancialInstitutionIdentification8 InstdAgt?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt1?;
    CashAccount40 IntrmyAgt1Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt2?;
    CashAccount40 IntrmyAgt2Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt3?;
    CashAccount40 IntrmyAgt3Acct?;
    PartyIdentification272 Dbtr;
    CashAccount40 DbtrAcct;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt;
    CashAccount40 DbtrAgtAcct?;
    PartyIdentification272 UltmtDbtr?;
    Purpose2Choice Purp?;
    RegulatoryReporting3[] RgltryRptg?;
    RemittanceLocation8[] RltdRmtInf?;
    RemittanceInformation22 RmtInf?;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for Pacs003Document, which encapsulates the customer direct debit transaction details.
#
# + FIToFICstmrDrctDbt - Customer direct debit transaction information
@xmldata:Namespace {
    uri: "urn:iso:std:iso:20022:tech:xsd:pacs.003.001.11"
}
public type Pacs003Document record {|
    FIToFICustomerDirectDebitV11 FIToFICstmrDrctDbt;
|};

# Defines the structure for FIToFICustomerDirectDebitV11, which contains details about customer direct debit transactions.
#
# + GrpHdr - Group header information for the direct debit transaction
# + DrctDbtTxInf - Array of direct debit transaction information
# + SplmtryData - Optional supplementary data
public type FIToFICustomerDirectDebitV11 record {|
    GroupHeader125 GrpHdr;
    DirectDebitTransactionInformation31[] DrctDbtTxInf;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for GroupHeader125, representing the header information for direct debit transactions.
#
# + MsgId - Message identifier
# + CreDtTm - Creation date and time
# + Authstn - Optional authorizations
# + BtchBookg - Optional batch booking indicator
# + NbOfTxs - Number of transactions
# + CtrlSum - Optional control sum for the transactions
# + TtlIntrBkSttlmAmt - Optional total interbank settlement amount
# + IntrBkSttlmDt - Optional interbank settlement date
# + SttlmInf - Settlement instructions
# + PmtTpInf - Optional payment type information
# + InstgAgt - Optional instructing agent
# + InstdAgt - Optional instructed agent
public type GroupHeader125 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm;
    Authorisation1Choice[] Authstn?;
    BatchBookingIndicator BtchBookg?;
    Max15NumericText NbOfTxs;
    DecimalNumber CtrlSum?;
    ActiveCurrencyAndAmount TtlIntrBkSttlmAmt?;
    ISODate IntrBkSttlmDt?;
    SettlementInstruction14 SttlmInf;
    PaymentTypeInformation27 PmtTpInf?;
    BranchAndFinancialInstitutionIdentification8 InstgAgt?;
    BranchAndFinancialInstitutionIdentification8 InstdAgt?;
|};

# Defines the structure for SettlementInstruction14, which contains information on settlement instructions.
#
# + SttlmMtd - Settlement method
# + SttlmAcct - Optional settlement account information
# + ClrSys - Optional clearing system identification
public type SettlementInstruction14 record {|
    SettlementMethod2Code SttlmMtd;
    CashAccount40 SttlmAcct?;
    ClearingSystemIdentification3Choice ClrSys?;
|};

# Defines the structure for SettlementMethod2Code, representing different settlement methods.
public type SettlementMethod2Code string;
