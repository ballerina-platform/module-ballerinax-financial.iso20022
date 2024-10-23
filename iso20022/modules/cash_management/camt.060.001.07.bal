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

# Defines the structure for the Camt060Document1.
public type Camt060Document1 Camt060Document;

# Defines the structure for AccountReportingRequestV07, which contains details about the account reporting request.
#
# + GrpHdr - Group header information for the reporting request
# + RptgReq - Array of reporting requests
# + SplmtryData - Optional supplementary data
public type AccountReportingRequestV07 record {|
    GroupHeader117 GrpHdr;
    ReportingRequest7[] RptgReq;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for DatePeriod3, representing a period defined by start and optional end dates.
#
# + FrDt - Start date of the period
# + ToDt - Optional end date of the period
public type DatePeriod3 record {|
    ISODate FrDt;
    ISODate ToDt?;
|};

# Defines the structure for Camt060Document, which encapsulates the account reporting request details.
#
# + AcctRptgReq - Account reporting request information
public type Camt060Document record {|
    AccountReportingRequestV07 AcctRptgReq;
|};

public enum FloorLimitType1Code {
    CRED, DEBT, BOTH
};

# Defines the structure for Limit2, which specifies a monetary limit with an associated credit/debit indicator.
#
# + Amt - Amount for the limit
# + CdtDbtInd - Credit or debit indicator
public type Limit2 record {|
    ActiveOrHistoricCurrencyAndAmount Amt;
    FloorLimitType1Code CdtDbtInd;
|};

public enum QueryType3Code {
    ALLL, CHNG, MODF
};

# Defines the structure for ReportingPeriod5, which specifies a reporting period with optional time details.
#
# + FrToDt - Date range for the reporting period
# + FrToTm - Optional time period details
# + Tp - Type of the query
public type ReportingPeriod5 record {|
    DatePeriod3 FrToDt;
    TimePeriodDetails1 FrToTm?;
    QueryType3Code Tp;
|};

# Defines the structure for ReportingRequest7, which details a specific reporting request.
#
# + Id - Optional identifier for the reporting request
# + ReqdMsgNmId - Required message name identifier
# + Acct - Account details related to the reporting request
# + AcctOwnr - Owner of the account
# + AcctSvcr - Servicer of the account
# + RptgPrd - Reporting period details
# + RptgSeq - Reporting sequence information
# + ReqdTxTp - Required transaction type
# + ReqdBalTp - Required balance types
public type ReportingRequest7 record {|
    Max35Text Id?;
    Max35Text ReqdMsgNmId;
    CashAccount40 Acct?;
    Party50Choice AcctOwnr;
    BranchAndFinancialInstitutionIdentification8 AcctSvcr?;
    ReportingPeriod5 RptgPrd?;
    SequenceRange1Choice RptgSeq?;
    TransactionType2 ReqdTxTp?;
    BalanceType13[] ReqdBalTp?;
|};

# Defines the structure for TimePeriodDetails1, which specifies a time range.
#
# + FrTm - Start time of the period
# + ToTm - Optional end time of the period
public type TimePeriodDetails1 record {|
    ISOTime FrTm;
    ISOTime ToTm?;
|};

# Defines the structure for TransactionType2, representing a specific transaction type with optional limits.
#
# + Sts - Status of the transaction
# + CdtDbtInd - Credit or debit indicator
# + FlrLmt - Array of floor limits associated with the transaction
public type TransactionType2 record {|
    EntryStatus1Choice Sts;
    CreditDebitCode CdtDbtInd;
    Limit2[] FlrLmt?;
|};
