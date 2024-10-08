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

public type Camt028Document123 Camt028Document;

public type AdditionalPaymentInformationV12 record {|
    CaseAssignment6 Assgnmt;
    Case6 Case?;
    UnderlyingTransaction8Choice Undrlyg;
    PaymentComplementaryInformation11 Inf;
    SupplementaryData1[] SplmtryData?;
|};

public type Camt028Document record {|
    AdditionalPaymentInformationV12 AddtlPmtInf;
|};

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
    RemittanceLocation8[10] RltdRmtInf?;
    RemittanceInformation22 RmtInf?;
|};
