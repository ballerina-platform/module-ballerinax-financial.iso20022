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

public type Pac009Document1 Pacs009Document;

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

public type CreditTransferTransaction63 record {|
    PartyIdentification272 UltmtDbtr?;
    PartyIdentification272 InitgPty?;
    PartyIdentification272 Dbtr;
    CashAccount40 DbtrAcct?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt;
    CashAccount40 DbtrAgtAcct?;
    BranchAndFinancialInstitutionIdentification8 PrvsInstgAgt1?;
    CashAccount40 PrvsInstgAgt1Acct?;
    BranchAndFinancialInstitutionIdentification8 PrvsInstgAgt2?;
    CashAccount40 PrvsInstgAgt2Acct?;
    BranchAndFinancialInstitutionIdentification8 PrvsInstgAgt3?;
    CashAccount40 PrvsInstgAgt3Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt1?;
    CashAccount40 IntrmyAgt1Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt2?;
    CashAccount40 IntrmyAgt2Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt3?;
    CashAccount40 IntrmyAgt3Acct?;
    BranchAndFinancialInstitutionIdentification8 CdtrAgt;
    CashAccount40 CdtrAgtAcct?;
    PartyIdentification272 Cdtr;
    CashAccount40 CdtrAcct?;
    PartyIdentification272 UltmtCdtr?;
    InstructionForCreditorAgent3[] InstrForCdtrAgt?;
    InstructionForNextAgent1[] InstrForNxtAgt?;
    TaxData1 Tax?;
    RemittanceInformation22 RmtInf?;
    ActiveOrHistoricCurrencyAndAmount InstdAmt?;
|};

public type Pacs009Document record {|
    FinancialInstitutionCreditTransferV11 FICdtTrf;
|};

public type FinancialInstitutionCreditTransferV11 record {|
    GroupHeader113 GrpHdr;
    CreditTransferTransaction62[] CdtTrfTxInf;
    SupplementaryData1[] SplmtryData?;
|};
