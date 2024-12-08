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

# Defines the Pacs009Envelope1 structure.
public type Pacs009Envelope1 Pacs009Envelope;

# Defines the Pacs009Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Pacs009Document
@xmldata:Name {
    value: "Envelope"
}
public type Pacs009Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Pacs009Document Document;
|};

# Defines the structure for the Pacs009Document1.
public type Pac009Document1 Pacs009Document;

# Defines the structure for CreditTransferTransaction62, which details a credit transfer transaction.
#
# + PmtId - Payment identification information
# + PmtTpInf - Optional payment type information
# + IntrBkSttlmAmt - Interbank settlement amount
# + IntrBkSttlmDt - Optional interbank settlement date
# + SttlmPrty - Optional settlement priority
# + SttlmTmIndctn - Optional settlement time indication
# + SttlmTmReq - Optional settlement time request
# + PrvsInstgAgt1 - Optional previous instructing agent information
# + PrvsInstgAgt1Acct - Optional previous instructing agent account information
# + PrvsInstgAgt2 - Optional previous instructing agent information
# + PrvsInstgAgt2Acct - Optional previous instructing agent account information
# + PrvsInstgAgt3 - Optional previous instructing agent information
# + PrvsInstgAgt3Acct - Optional previous instructing agent account information
# + InstgAgt - Instructing agent information
# + InstdAgt - Instructed agent information
# + IntrmyAgt1 - Optional intermediary agent information
# + IntrmyAgt1Acct - Optional intermediary agent account information
# + IntrmyAgt2 - Optional intermediary agent information
# + IntrmyAgt2Acct - Optional intermediary agent account information
# + IntrmyAgt3 - Optional intermediary agent information
# + IntrmyAgt3Acct - Optional intermediary agent account information
# + UltmtDbtr - Optional ultimate debtor identification
# + Dbtr - Debtor identification
# + DbtrAcct - Optional debtor account information
# + DbtrAgt - Optional debtor agent information
# + DbtrAgtAcct - Optional debtor agent account information
# + CdtrAgt - Optional creditor agent information
# + CdtrAgtAcct - Optional creditor agent account information
# + Cdtr - Creditor identification
# + CdtrAcct - Optional creditor account information
# + UltmtCdtr - Optional ultimate creditor identification
# + InstrForCdtrAgt - Array of instructions for the creditor agent
# + InstrForNxtAgt - Array of instructions for the next agent
# + Purp - Optional purpose information
# + RmtInf - Optional remittance information
# + UndrlygAllcn - Array of underlying allocations
# + UndrlygCstmrCdtTrf - Optional underlying customer credit transfer information
# + SplmtryData - Optional supplementary data
public type CreditTransferTransaction62 record {|
    PaymentIdentification13 PmtId;
    PaymentTypeInformation28 PmtTpInf?;
    ActiveCurrencyAndAmount IntrBkSttlmAmt;
    ISODate IntrBkSttlmDt?;
    Priority3Code SttlmPrty?;
    SettlementDateTimeIndication1 SttlmTmIndctn?;
    SettlementTimeRequest2 SttlmTmReq?;
    BranchAndFinancialInstitutionIdentification8 PrvsInstgAgt1?;
    CashAccount40 PrvsInstgAgt1Acct?;
    BranchAndFinancialInstitutionIdentification8 PrvsInstgAgt2?;
    CashAccount40 PrvsInstgAgt2Acct?;
    BranchAndFinancialInstitutionIdentification8 PrvsInstgAgt3?;
    CashAccount40 PrvsInstgAgt3Acct?;
    BranchAndFinancialInstitutionIdentification8 InstgAgt?;
    BranchAndFinancialInstitutionIdentification8 InstdAgt?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt1?;
    CashAccount40 IntrmyAgt1Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt2?;
    CashAccount40 IntrmyAgt2Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt3?;
    CashAccount40 IntrmyAgt3Acct?;
    BranchAndFinancialInstitutionIdentification8 UltmtDbtr?;
    BranchAndFinancialInstitutionIdentification8 Dbtr;
    CashAccount40 DbtrAcct?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    CashAccount40 DbtrAgtAcct?;
    BranchAndFinancialInstitutionIdentification8 CdtrAgt?;
    CashAccount40 CdtrAgtAcct?;
    BranchAndFinancialInstitutionIdentification8 Cdtr;
    CashAccount40 CdtrAcct?;
    BranchAndFinancialInstitutionIdentification8 UltmtCdtr?;
    InstructionForCreditorAgent3[] InstrForCdtrAgt?;
    InstructionForNextAgent1[] InstrForNxtAgt?;
    Purpose2Choice Purp?;
    RemittanceInformation2 RmtInf?;
    TransactionAllocation1[] UndrlygAllcn?;
    CreditTransferTransaction63 UndrlygCstmrCdtTrf?;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for Pacs009Document, which encapsulates the financial institution credit transfer transaction information.
#
# + FICdtTrf - Financial institution credit transfer transaction information
@xmldata:Namespace {
    uri: "urn:iso:std:iso:20022:tech:xsd:pacs.009.001.11"
}
public type Pacs009Document record {|
    FinancialInstitutionCreditTransferV11 FICdtTrf;
|};

# Defines the structure for FinancialInstitutionCreditTransferV11, which contains details about financial institution credit transfer transactions.
#
# + GrpHdr - Group header information for the credit transfer transaction
# + CdtTrfTxInf - Array of credit transfer transaction information
# + SplmtryData - Optional supplementary data
public type FinancialInstitutionCreditTransferV11 record {|
    GroupHeader113 GrpHdr;
    CreditTransferTransaction62[] CdtTrfTxInf;
    SupplementaryData1[] SplmtryData?;
|};
