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

# Defines the Camt058Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Camt060Document
@xmldata:Name {
    value: "Envelope"
}
public type Camt058Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Camt058Document Document;
|};

# Represents the root element for the Notification to Receive Cancellation Advice (camt.058) message.
#
# + NtfctnToRcvCxlAdvc - Details of the notification to receive cancellation advice
@xmldata:Namespace {
    uri: "urn:iso:std:iso:20022:tech:xsd:camt.058.001.09"
}
public type Camt058Document record {|
    NotificationToReceiveCancellationAdviceV09 NtfctnToRcvCxlAdvc;
|};

# Represents a custom code for external notification cancellation reasons.
public type ExternalNotificationCancellationReason1Code string;

# Defines the structure for NotificationCancellationReason1Choice, providing options for cancellation reasons.
#
# + Cd - Optional external cancellation reason code
# + Prtry - Optional proprietary cancellation reason
public type NotificationCancellationReason1Choice record {|
    ExternalNotificationCancellationReason1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for NotificationCancellationReason2, containing details about the reason for cancellation.
#
# + Orgtr - Optional originator of the cancellation
# + Rsn - Optional reason for the cancellation
# + AddtlInf - Optional additional information about the cancellation reason
public type NotificationCancellationReason2 record {|
    PartyIdentification272 Orgtr?;
    NotificationCancellationReason1Choice Rsn?;
    Max105Text[] AddtlInf?;
|};

# Defines the structure for NotificationToReceiveCancellationAdviceV09, representing the cancellation advice notification.
#
# + GrpHdr - Group header information for the notification
# + OrgnlNtfctn - Original notification details
# + CxlRsn - Optional reason for the cancellation
# + SplmtryData - Optional supplementary data
public type NotificationToReceiveCancellationAdviceV09 record {|
    GroupHeader117 GrpHdr;
    OriginalNotification16 OrgnlNtfctn;
    NotificationCancellationReason2 CxlRsn?;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for OriginalItem8, representing details of an original item in a notification.
#
# + OrgnlItmId - Original item identifier
# + OrgnlEndToEndId - Optional original end-to-end identifier
# + UETR - Optional unique end-to-end transaction reference
# + Amt - Amount of the original item
# + XpctdValDt - Optional expected value date
# + OrgnlItmRef - Optional reference details of the original item
public type OriginalItem8 record {|
    Max35Text OrgnlItmId;
    Max35Text OrgnlEndToEndId?;
    UUIDv4Identifier UETR?;
    ActiveOrHistoricCurrencyAndAmount Amt;
    ISODate XpctdValDt?;
    OriginalItemReference7 OrgnlItmRef?;
|};

# Defines the structure for OriginalItemReference7, representing references associated with an original item.
#
# + Acct - Optional account details
# + AcctOwnr - Optional account owner details
# + AcctSvcr - Optional account servicer details
# + RltdAcct - Optional related account details
# + Dbtr - Optional debtor details
# + DbtrAgt - Optional debtor agent details
# + IntrmyAgt - Optional intermediary agent details
# + Purp - Optional purpose of the transaction
# + RltdRmtInf - Optional related remittance information
# + RmtInf - Optional remittance information
public type OriginalItemReference7 record {|
    CashAccount40 Acct?;
    Party50Choice AcctOwnr?;
    BranchAndFinancialInstitutionIdentification8 AcctSvcr?;
    CashAccount40 RltdAcct?;
    Party50Choice Dbtr?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt?;
    Purpose2Choice Purp?;
    RemittanceLocation8 RltdRmtInf?;
    RemittanceInformation22 RmtInf?;
|};

# Defines the structure for OriginalNotification16, representing details of an original notification.
#
# + OrgnlMsgId - Original message identifier
# + OrgnlCreDtTm - Optional creation date and time of the original message
# + OrgnlNtfctnId - Original notification identifier
# + NtfctnCxl - Optional cancellation indicator for the notification
# + OrgnlNtfctnRef - Optional references of the original notification
public type OriginalNotification16 record {|
    Max35Text OrgnlMsgId;
    ISODateTime OrgnlCreDtTm?;
    Max35Text OrgnlNtfctnId;
    GroupCancellationIndicator NtfctnCxl?;
    OriginalNotificationReference14[] OrgnlNtfctnRef?;
|};

# Defines the structure for OriginalNotificationReference14, representing references related to an original notification.
#
# + Acct - Optional account details
# + AcctOwnr - Optional account owner details
# + AcctSvcr - Optional account servicer details
# + RltdAcct - Optional related account details
# + TtlAmt - Optional total amount for the notification
# + XpctdValDt - Optional expected value date
# + Dbtr - Optional debtor details
# + DbtrAgt - Optional debtor agent details
# + IntrmyAgt - Optional intermediary agent details
# + OrgnlItm - List of original items in the notification
public type OriginalNotificationReference14 record {|
    CashAccount40 Acct?;
    Party50Choice AcctOwnr?;
    BranchAndFinancialInstitutionIdentification8 AcctSvcr?;
    CashAccount40 RltdAcct?;
    ActiveOrHistoricCurrencyAndAmount TtlAmt?;
    ISODate XpctdValDt?;
    Party50Choice Dbtr?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt?;
    OriginalItem8[] OrgnlItm;
|};
