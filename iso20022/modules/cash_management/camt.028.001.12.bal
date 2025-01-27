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

# Defines the Camt028Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Camt028Document
@xmldata:Name {
    value: "Envelope"
}
public type Camt028Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Camt028Document Document;
|};

# Defines the AdditionalPaymentInformationV12 structure.
#
# + Assgnmt - The case assignment details  
# + Case - The case details  
# + Undrlyg - The underlying transaction  
# + Inf - Payment complementary information  
# + SplmtryData - Any supplementary data
public type AdditionalPaymentInformationV12 record {|
    CaseAssignment6 Assgnmt;
    Case6 Case?;
    UnderlyingTransaction8Choice Undrlyg;
    PaymentComplementaryInformation11 Inf;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the Camt028Document structure.
#
# + AddtlPmtInf - Additional payment information details
public type Camt028Document record {|
    AdditionalPaymentInformationV12 AddtlPmtInf;
|};

# Defines the PaymentComplementaryInformation11 structure.
#
# + InstrId - Instruction identification  
# + EndToEndId - End-to-end identification  
# + TxId - Transaction identification  
# + PmtTpInf - Payment type information  
# + ReqdExctnDt - Requested execution date  
# + ReqdColltnDt - Requested collection date  
# + IntrBkSttlmDt - Interbank settlement date  
# + Amt - Amount details  
# + IntrBkSttlmAmt - Interbank settlement amount  
# + ChrgBr - Charge bearer type  
# + UltmtDbtr - Ultimate debtor identification  
# + Dbtr - Debtor identification  
# + DbtrAcct - Debtor account information  
# + DbtrAgt - Debtor agent identification  
# + DbtrAgtAcct - Debtor agent account  
# + SttlmInf - Settlement information  
# + IntrmyAgt1 - Intermediary agent 1 details  
# + IntrmyAgt1Acct - Intermediary agent 1 account  
# + IntrmyAgt2 - Intermediary agent 2 details  
# + IntrmyAgt2Acct - Intermediary agent 2 account  
# + IntrmyAgt3 - Intermediary agent 3 details  
# + IntrmyAgt3Acct - Intermediary agent 3 account  
# + CdtrAgt - Creditor agent details  
# + CdtrAgtAcct - Creditor agent account details  
# + Cdtr - Creditor identification  
# + CdtrAcct - Creditor account information  
# + UltmtCdtr - Ultimate creditor identification  
# + Purp - Purpose of the payment  
# + InstrForDbtrAgt - Instructions for debtor agent  
# + PrvsInstgAgt1 - Previous instructing agent 1 details  
# + PrvsInstgAgt1Acct - Previous instructing agent 1 account  
# + PrvsInstgAgt2 - Previous instructing agent 2 details  
# + PrvsInstgAgt2Acct - Previous instructing agent 2 account  
# + PrvsInstgAgt3 - Previous instructing agent 3 details  
# + PrvsInstgAgt3Acct - Previous instructing agent 3 account  
# + InstrForNxtAgt - Instructions for next agent  
# + InstrForCdtrAgt - Instructions for creditor agent  
# + RltdRmtInf - Related remittance information  
# + RmtInf - Remittance information
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
    RemittanceLocation8[] RltdRmtInf?;
    RemittanceInformation22 RmtInf?;
|};
