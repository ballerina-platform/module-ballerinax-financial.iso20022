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

public type Camt054Document1 Camt054Document;

public type AccountNotification22 record {|
    Max35Text Id;
    Pagination1 NtfctnPgntn?;
    Number ElctrncSeqNb?;
    SequenceRange1Choice RptgSeq?;
    Number LglSeqNb?;
    ISODateTime CreDtTm?;
    DateTimePeriod1 FrToDt?;
    CopyDuplicate1Code CpyDplctInd?;
    ReportingSource1Choice RptgSrc?;
    CashAccount43 Acct;
    CashAccount40 RltdAcct?;
    AccountInterest4[] Intrst?;
    TotalTransactions6 TxsSummry?;
    ReportEntry14[] Ntry?;
    Max500Text AddtlNtfctnInf?;
|};

public type BankToCustomerDebitCreditNotificationV12 record {|
    GroupHeader116 GrpHdr;
    AccountNotification22[] Ntfctn;
    SupplementaryData1[] SplmtryData?;
|};

public type Camt054Document record {|
    BankToCustomerDebitCreditNotificationV12 BkToCstmrDbtCdtNtfctn;
|};
