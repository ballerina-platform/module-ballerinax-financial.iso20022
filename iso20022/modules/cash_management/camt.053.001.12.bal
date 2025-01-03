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

# Defines the Camt053Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Camt053Document
@xmldata:Name {
    value: "Envelope"
}
public type Camt053Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Camt053Document Document;
|};

# Defines the structure for AccountStatement13, which contains the details of an account statement.
#
# + Id - Unique identifier for the statement
# + StmtPgntn - Pagination information for the statement
# + ElctrncSeqNb - Electronic sequence number
# + RptgSeq - Reporting sequence range
# + LglSeqNb - Legal sequence number
# + CreDtTm - Creation date and time of the statement
# + FrToDt - The reporting period covered by the statement
# + CpyDplctInd - Indicates if the statement is a copy or duplicate
# + RptgSrc - Reporting source choice
# + Acct - Cash account details
# + RltdAcct - Related cash account details
# + Intrst - Account interest details
# + Bal - Cash balance details
# + TxsSummry - Summary of transactions
# + Ntry - Report entries
# + AddtlStmtInf - Additional statement information
public type AccountStatement13 record {|
    Max35Text Id;
    Pagination1 StmtPgntn?;
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
    CashBalance8[] Bal;
    TotalTransactions6 TxsSummry?;
    ReportEntry14[] Ntry?;
    Max500Text AddtlStmtInf?;
|};

# Defines the structure for BankToCustomerStatementV12, which includes a group header and multiple account statements.
#
# + GrpHdr - Header information for the group of statements
# + Stmt - Array of account statements
# + SplmtryData - Optional supplementary data
public type BankToCustomerStatementV12 record {|
    GroupHeader116 GrpHdr;
    AccountStatement13[] Stmt;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for the Camt053Document, which contains the bank-to-customer statement details.
#
# + BkToCstmrStmt - The bank-to-customer statement
@xmldata:Namespace {
    uri: "urn:iso:std:iso:20022:tech:xsd:camt.053.001.12"
}
public type Camt053Document record {|
    BankToCustomerStatementV12 BkToCstmrStmt;
|};
