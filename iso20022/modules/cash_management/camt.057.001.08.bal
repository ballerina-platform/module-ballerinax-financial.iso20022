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

# Defines the Camt057Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Camt057Document
@xmldata:Name {
    value: "Envelope"
}
public type Camt057Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Camt057Document Document;
|};

# Defines the structure for AccountNotification23, which includes account-related notification details.
#
# + Id - Identifier for the notification
# + Acct - Account details
# + AcctOwnr - Account owner details
# + AcctSvcr - Account servicing institution details
# + RltdAcct - Related account details
# + TtlAmt - Total amount involved in the notification
# + XpctdValDt - Expected value date
# + Dbtr - Debtor details
# + DbtrAgt - Debtor agent details
# + IntrmyAgt - Intermediary agent details
# + Itm - Array of notification items
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

# Defines the structure for Camt057Document, which contains the notification to receive details.
#
# + NtfctnToRcv - The notification to receive
@xmldata:Namespace {
    uri: "urn:iso:std:iso:20022:tech:xsd:camt.057.001.08"
}
public type Camt057Document record {|
    NotificationToReceiveV08 NtfctnToRcv;
|};

# Defines the structure for NotificationItem9, representing individual notification item details.
#
# + Id - Identifier for the notification item
# + EndToEndId - Optional end-to-end identifier
# + UETR - Unique end-to-end transaction reference
# + Acct - Account details
# + AcctOwnr - Account owner details
# + AcctSvcr - Account servicing institution details
# + RltdAcct - Related account details
# + Amt - Amount related to the notification item
# + XpctdValDt - Expected value date
# + Dbtr - Debtor details
# + DbtrAgt - Debtor agent details
# + IntrmyAgt - Intermediary agent details
# + Purp - Purpose of the transaction
# + RltdRmtInf - Related remittance information
# + RmtInf - Remittance information
# + UndrlygAllcn - Underlying allocation details
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

# Defines the structure for NotificationToReceiveV08, which includes the group header and notification details.
#
# + GrpHdr - Group header information
# + Ntfctn - Account notification details
# + SplmtryData - Optional supplementary data
public type NotificationToReceiveV08 record {|
    GroupHeader117 GrpHdr;
    AccountNotification23 Ntfctn;
    SupplementaryData1[] SplmtryData?;
|};
