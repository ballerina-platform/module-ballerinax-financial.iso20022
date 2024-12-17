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

# Defines the Camt054Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Camt054Document
@xmldata:Name {
    value: "Envelope"
}
public type Camt054Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Camt054Document Document;
|};

# Defines the structure for AccountNotification22, which contains the details of an account notification.
#
# + Id - Unique identifier for the notification
# + NtfctnPgntn - Pagination information for the notification
# + ElctrncSeqNb - Electronic sequence number
# + RptgSeq - Reporting sequence range
# + LglSeqNb - Legal sequence number
# + CreDtTm - Creation date and time of the notification
# + FrToDt - The reporting period covered by the notification
# + CpyDplctInd - Indicates if the notification is a copy or duplicate
# + RptgSrc - Reporting source choice
# + Acct - Cash account details
# + RltdAcct - Related cash account details
# + Intrst - Account interest details
# + TxsSummry - Summary of transactions
# + Ntry - Report entries
# + AddtlNtfctnInf - Additional notification information
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

# Defines the structure for BankToCustomerDebitCreditNotificationV12, which includes a group header and multiple account notifications.
#
# + GrpHdr - Header information for the group of notifications
# + Ntfctn - Array of account notifications
# + SplmtryData - Optional supplementary data
public type BankToCustomerDebitCreditNotificationV12 record {|
    GroupHeader116 GrpHdr;
    AccountNotification22[] Ntfctn;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for the Camt054Document, which contains the bank-to-customer debit/credit notification details.
#
# + BkToCstmrDbtCdtNtfctn - The bank-to-customer debit/credit notification
@xmldata:Namespace {
    uri: "urn:iso:std:iso:20022:tech:xsd:camt.054.001.12"
}
public type Camt054Document record {|
    BankToCustomerDebitCreditNotificationV12 BkToCstmrDbtCdtNtfctn;
|};
