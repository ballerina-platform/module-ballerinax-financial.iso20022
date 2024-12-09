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

# Defines the Pacs010Envelope1 structure.
public type Pacs010Envelope1 Pacs010Envelope;

# Defines the Pacs010Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Pacs010Document
@xmldata:Name {
    value: "Envelope"
}
public type Pacs010Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Pacs010Document Document;
|};

# Defines the structure for the Pacs010Document1
public type Pacs010Document1 Pacs010Document;

# Defines the structure for CreditTransferTransaction66, which details a credit transfer transaction related to direct debits.
#
# + CdtId - Credit identifier
# + BtchBookg - Optional batch booking indicator
# + PmtTpInf - Optional payment type information
# + TtlIntrBkSttlmAmt - Optional total interbank settlement amount
# + IntrBkSttlmDt - Optional interbank settlement date
# + SttlmTmIndctn - Optional settlement time indication
# + InstgAgt - Instructing agent information
# + InstdAgt - Instructed agent information
# + IntrmyAgt1 - Optional intermediary agent information
# + IntrmyAgt1Acct - Optional intermediary agent account information
# + IntrmyAgt2 - Optional intermediary agent information
# + IntrmyAgt2Acct - Optional intermediary agent account information
# + IntrmyAgt3 - Optional intermediary agent information
# + IntrmyAgt3Acct - Optional intermediary agent account information
# + CdtrAgt - Creditor agent information
# + CdtrAgtAcct - Optional creditor agent account information
# + Cdtr - Creditor identification
# + CdtrAcct - Optional creditor account information
# + UltmtCdtr - Optional ultimate creditor identification
# + InstrForCdtrAgt - Array of instructions for the creditor agent
# + DrctDbtTxInf - Array of direct debit transaction information
# + SplmtryData - Optional supplementary data
public type CreditTransferTransaction66 record {|
    Max35Text CdtId;
    BatchBookingIndicator BtchBookg?;
    PaymentTypeInformation28 PmtTpInf?;
    ActiveCurrencyAndAmount TtlIntrBkSttlmAmt?;
    ISODate IntrBkSttlmDt?;
    SettlementDateTimeIndication1 SttlmTmIndctn?;
    BranchAndFinancialInstitutionIdentification8 InstgAgt?;
    BranchAndFinancialInstitutionIdentification8 InstdAgt?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt1?;
    CashAccount40 IntrmyAgt1Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt2?;
    CashAccount40 IntrmyAgt2Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt3?;
    CashAccount40 IntrmyAgt3Acct?;
    BranchAndFinancialInstitutionIdentification8 CdtrAgt?;
    CashAccount40 CdtrAgtAcct?;
    BranchAndFinancialInstitutionIdentification8 Cdtr;
    CashAccount40 CdtrAcct?;
    BranchAndFinancialInstitutionIdentification8 UltmtCdtr?;
    InstructionForCreditorAgent3[] InstrForCdtrAgt?;
    DirectDebitTransactionInformation33[] DrctDbtTxInf;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for DirectDebitTransactionInformation33, which details a direct debit transaction.
#
# + PmtId - Payment identification information
# + PmtTpInf - Optional payment type information
# + IntrBkSttlmAmt - Interbank settlement amount
# + IntrBkSttlmDt - Optional interbank settlement date
# + SttlmPrty - Optional settlement priority
# + SttlmTmIndctn - Optional settlement time indication
# + SttlmTmReq - Optional settlement time request
# + UltmtDbtr - Optional ultimate debtor identification
# + Dbtr - Debtor identification
# + DbtrAcct - Optional debtor account information
# + DbtrAgt - Optional debtor agent information
# + DbtrAgtAcct - Optional debtor agent account information
# + InstrForDbtrAgt - Optional instruction for the debtor agent
# + Purp - Optional purpose information
# + RmtInf - Optional remittance information
public type DirectDebitTransactionInformation33 record {|
    PaymentIdentification13 PmtId;
    PaymentTypeInformation28 PmtTpInf?;
    ActiveCurrencyAndAmount IntrBkSttlmAmt;
    ISODate IntrBkSttlmDt?;
    Priority3Code SttlmPrty?;
    SettlementDateTimeIndication1 SttlmTmIndctn?;
    SettlementTimeRequest2 SttlmTmReq?;
    BranchAndFinancialInstitutionIdentification8 UltmtDbtr?;
    BranchAndFinancialInstitutionIdentification8 Dbtr;
    CashAccount40 DbtrAcct?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    CashAccount40 DbtrAgtAcct?;
    Max210Text InstrForDbtrAgt?;
    Purpose2Choice Purp?;
    RemittanceInformation2 RmtInf?;
|};

# Defines the structure for Pacs010Document, which encapsulates the financial institution direct debit transaction information.
#
# + FIDrctDbt - Financial institution direct debit transaction information
@xmldata:Namespace {
    uri: "urn:iso:std:iso:20022:tech:xsd:pacs.010.001.06"
}
public type Pacs010Document record {|
    FinancialInstitutionDirectDebitV06 FIDrctDbt;
|};

# Defines the structure for FinancialInstitutionDirectDebitV06, which contains details about financial institution direct debit transactions.
#
# + GrpHdr - Group header information for the direct debit transaction
# + CdtInstr - Array of credit transfer instruction information
# + SplmtryData - Optional supplementary data
public type FinancialInstitutionDirectDebitV06 record {|
    GroupHeader119 GrpHdr;
    CreditTransferTransaction66[] CdtInstr;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for GroupHeader119, which contains group header information for the direct debit transaction.
#
# + MsgId - Message identification
# + CreDtTm - Creation date and time
# + NbOfTxs - Number of transactions
# + CtrlSum - Optional control sum for the group of transactions
# + InstgAgt - Optional instructing agent information
# + InstdAgt - Optional instructed agent information
public type GroupHeader119 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm;
    Max15NumericText NbOfTxs;
    DecimalNumber CtrlSum?;
    BranchAndFinancialInstitutionIdentification8 InstgAgt?;
    BranchAndFinancialInstitutionIdentification8 InstdAgt?;
|};

public type Max210Text string;
