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

public type Camt057Document1 Camt057Document;

public type AccountNotification23 record {|
    Max35Text Id;
    CashAccount40 Acct?;
    Party50Choice AcctOwnr?;
    BranchAndFinancialInstitutionIdentification8 AcctSvcr?;
    CashAccount40 RltdAcct?;
    ActiveOrHistoricCurrencyAndAmount TtlAmt?;
    ISODate XpctdValDt?;
    Party50Choice Dbtr?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt?;
    NotificationItem9[] Itm;
|};

public type Camt057Document record {|
    NotificationToReceiveV08 NtfctnToRcv;
|};

public type NotificationItem9 record {|
    Max35Text Id;
    Max35Text EndToEndId?;
    UUIDv4Identifier UETR?;
    CashAccount40 Acct?;
    Party50Choice AcctOwnr?;
    BranchAndFinancialInstitutionIdentification8 AcctSvcr?;
    CashAccount40 RltdAcct?;
    ActiveOrHistoricCurrencyAndAmount Amt;
    ISODate XpctdValDt?;
    Party50Choice Dbtr?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt?;
    Purpose2Choice Purp?;
    RemittanceLocation8 RltdRmtInf?;
    RemittanceInformation22 RmtInf?;
    TransactionAllocation1[] UndrlygAllcn?;
|};

public type NotificationToReceiveV08 record {|
    GroupHeader117 GrpHdr;
    AccountNotification23 Ntfctn;
    SupplementaryData1[] SplmtryData?;
|};
