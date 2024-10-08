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

public type Pacs008Document1 Pacs008Document;

public type CreditTransferTransaction64 record {|
    PaymentIdentification13 PmtId;
    PaymentTypeInformation28 PmtTpInf?;
    ActiveCurrencyAndAmount IntrBkSttlmAmt;
    ISODate IntrBkSttlmDt?;
    Priority3Code SttlmPrty?;
    SettlementDateTimeIndication1 SttlmTmIndctn?;
    SettlementTimeRequest2 SttlmTmReq?;
    ISODateTime AccptncDtTm?;
    ISODate PoolgAdjstmntDt?;
    ActiveOrHistoricCurrencyAndAmount InstdAmt?;
    BaseOneRate XchgRate?;
    ChargeBearerType1Code ChrgBr;
    Charges16[] ChrgsInf?;
    CreditTransferMandateData1 MndtRltdInf?;
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
    PartyIdentification272 UltmtDbtr?;
    PartyIdentification272 InitgPty?;
    PartyIdentification272 Dbtr;
    CashAccount40 DbtrAcct?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt;
    CashAccount40 DbtrAgtAcct?;
    BranchAndFinancialInstitutionIdentification8 CdtrAgt;
    CashAccount40 CdtrAgtAcct?;
    PartyIdentification272 Cdtr;
    CashAccount40 CdtrAcct?;
    PartyIdentification272 UltmtCdtr?;
    InstructionForCreditorAgent3[] InstrForCdtrAgt?;
    InstructionForNextAgent1[] InstrForNxtAgt?;
    Purpose2Choice Purp?;
    RegulatoryReporting3[] RgltryRptg?;
    TaxData1 Tax?;
    RemittanceLocation8[] RltdRmtInf?;
    RemittanceInformation22 RmtInf?;
    SupplementaryData1[] SplmtryData?;
|};

public type Pacs008Document record {|
    FIToFICustomerCreditTransferV12 FIToFICstmrCdtTrf;
|};

public type FIToFICustomerCreditTransferV12 record {|
    GroupHeader113 GrpHdr;
    CreditTransferTransaction64[] CdtTrfTxInf;
    SupplementaryData1[] SplmtryData?;
|};
