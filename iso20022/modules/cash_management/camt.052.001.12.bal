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

# Defines the Camt052Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Camt052Document
@xmldata:Name {
    value: "Envelope"
}
public type Camt052Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Camt052Document Document;
|};

# Defines the structure for AccountReport33, which contains the details of an account report.
#
# + Id - Unique identifier for the report
# + RptPgntn - Pagination information for the report
# + ElctrncSeqNb - Electronic sequence number
# + RptgSeq - Reporting sequence range
# + LglSeqNb - Legal sequence number
# + CreDtTm - Creation date and time of the report
# + FrToDt - The reporting period covered by the report
# + CpyDplctInd - Indicates if the report is a copy or duplicate
# + RptgSrc - Reporting source choice
# + Acct - Cash account details
# + RltdAcct - Related cash account details
# + Intrst - Account interest details
# + Bal - Cash balance details
# + TxsSummry - Summary of transactions
# + Ntry - Report entries
# + AddtlRptInf - Additional reporting information
public type AccountReport33 record {|
    Max35Text Id;
    Pagination1 RptPgntn?;
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
    CashBalance8[] Bal?;
    TotalTransactions6 TxsSummry?;
    ReportEntry14[] Ntry?;
    Max500Text AddtlRptInf?;
|};

# Defines the structure for BankToCustomerAccountReportV12, which includes a group header and multiple account reports.
#
# + GrpHdr - Header information for the group of reports
# + Rpt - Array of account reports
# + SplmtryData - Optional supplementary data
public type BankToCustomerAccountReportV12 record {|
    GroupHeader116 GrpHdr;
    AccountReport33[] Rpt;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for the Camt052Document, which contains the bank-to-customer account report details.
#
# + BkToCstmrAcctRpt - The bank-to-customer account report
@xmldata:Namespace {
    uri: "urn:iso:std:iso:20022:tech:xsd:camt.052.001.12"
}
public type Camt052Document record {|
    BankToCustomerAccountReportV12 BkToCstmrAcctRpt;
|};
