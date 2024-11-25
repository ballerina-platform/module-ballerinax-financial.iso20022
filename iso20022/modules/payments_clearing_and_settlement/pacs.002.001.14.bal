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

# Defines the structure for the Pacs002Document1.
public type Pacs002Document1 Pacs002Document;

# Defines the structure for Pacs002Document, which encapsulates the payment status report details.
#
# + FIToFIPmtStsRpt - Payment status report information
@xmldata:Name {
    value: "Document"
}
@xmldata:Namespace {
    uri: "urn:iso:std:iso:20022:tech:xsd:pacs.002.001.14"
}
public type Pacs002Document record {|
    FIToFIPaymentStatusReportV14 FIToFIPmtStsRpt;
|};

# Defines the structure for ExternalPaymentGroupStatus1Code, which represents the status of the payment group.
public type ExternalPaymentGroupStatus1Code string;

# Defines the structure for ExternalPaymentTransactionStatus1Code, which represents the status of an external payment transaction.
public type ExternalPaymentTransactionStatus1Code string;

# Defines the structure for ExternalStatusReason1Code, which represents external reasons for a status.
public type ExternalStatusReason1Code string;

# Defines the structure for FIToFIPaymentStatusReportV14, which contains details about the payment status report.
#
# + GrpHdr - Group header information for the payment status report
# + OrgnlGrpInfAndSts - Original group information and status
# + TxInfAndSts - Array of payment transactions and their statuses
# + SplmtryData - Optional supplementary data
public type FIToFIPaymentStatusReportV14 record {|
    GroupHeader120 GrpHdr;
    OriginalGroupHeader22[] OrgnlGrpInfAndSts?;
    PaymentTransaction161[] TxInfAndSts?;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for GroupHeader120, representing the header information for the payment status report.
#
# + MsgId - Message identifier
# + CreDtTm - Creation date and time
# + InstgAgt - Optional instructing agent
# + InstdAgt - Optional instructed agent
# + OrgnlBizQry - Optional original business query
public type GroupHeader120 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm;
    BranchAndFinancialInstitutionIdentification8 InstgAgt?;
    BranchAndFinancialInstitutionIdentification8 InstdAgt?;
    OriginalBusinessQuery1 OrgnlBizQry?;
|};

# Defines the structure for NumberOfTransactionsPerStatus5, which details the number of transactions for a specific status.
#
# + DtldNbOfTxs - Detailed number of transactions
# + DtldSts - Detailed status of the transactions
# + DtldCtrlSum - Optional control sum for the transactions
public type NumberOfTransactionsPerStatus5 record {|
    Max15NumericText DtldNbOfTxs;
    ExternalPaymentTransactionStatus1Code DtldSts;
    DecimalNumber DtldCtrlSum?;
|};

# Defines the structure for OriginalGroupHeader22, which contains information about the original group and its status.
#
# + OrgnlMsgId - Original message identifier
# + OrgnlMsgNmId - Original message name identifier
# + OrgnlCreDtTm - Optional original creation date and time
# + OrgnlNbOfTxs - Optional original number of transactions
# + OrgnlCtrlSum - Optional original control sum
# + GrpSts - Optional group status
# + StsRsnInf - Optional status reason information
# + NbOfTxsPerSts - Optional number of transactions per status
public type OriginalGroupHeader22 record {|
    Max35Text OrgnlMsgId;
    Max35Text OrgnlMsgNmId;
    ISODateTime OrgnlCreDtTm?;
    Max15NumericText OrgnlNbOfTxs?;
    DecimalNumber OrgnlCtrlSum?;
    ExternalPaymentGroupStatus1Code GrpSts?;
    StatusReasonInformation14[] StsRsnInf?;
    NumberOfTransactionsPerStatus5[] NbOfTxsPerSts?;
|};

# Defines the structure for PaymentTransaction161, which details a specific payment transaction and its status.
#
# + StsId - Optional status identifier
# + OrgnlGrpInf - Original group information
# + OrgnlInstrId - Original instruction identifier
# + OrgnlEndToEndId - Original end-to-end identifier
# + OrgnlTxId - Original transaction identifier
# + OrgnlUETR - Optional unique end-to-end transaction reference
# + TxSts - Optional transaction status
# + StsRsnInf - Optional status reason information
# + ChrgsInf - Optional charges information
# + AccptncDtTm - Optional acceptance date and time
# + PrcgDt - Optional processing date
# + FctvIntrBkSttlmDt - Optional effective interbank settlement date
# + AcctSvcrRef - Optional account servicer reference
# + ClrSysRef - Optional clearing system reference
# + InstgAgt - Optional instructing agent
# + InstdAgt - Optional instructed agent
# + OrgnlTxRef - Optional original transaction reference
# + SplmtryData - Optional supplementary data
public type PaymentTransaction161 record {|
    Max35Text StsId?;
    OriginalGroupInformation29 OrgnlGrpInf?;
    Max35Text OrgnlInstrId?;
    Max35Text OrgnlEndToEndId?;
    Max35Text OrgnlTxId?;
    UUIDv4Identifier OrgnlUETR?;
    ExternalPaymentTransactionStatus1Code TxSts?;
    StatusReasonInformation14[] StsRsnInf?;
    Charges16[] ChrgsInf?;
    ISODateTime AccptncDtTm?;
    DateAndDateTime2Choice PrcgDt?;
    DateAndDateTime2Choice FctvIntrBkSttlmDt?;
    Max35Text AcctSvcrRef?;
    Max35Text ClrSysRef?;
    BranchAndFinancialInstitutionIdentification8 InstgAgt?;
    BranchAndFinancialInstitutionIdentification8 InstdAgt?;
    OriginalTransactionReference42 OrgnlTxRef?;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for StatusReason6Choice, which encapsulates a status reason with optional proprietary information.
#
# + Cd - Optional code for the reason
# + Prtry - Optional proprietary reason information
public type StatusReason6Choice record {|
    ExternalStatusReason1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for StatusReasonInformation14, which provides information regarding the status reason.
#
# + Orgtr - Optional originator identification
# + Rsn - Optional reason information
# + AddtlInf - Optional additional information
public type StatusReasonInformation14 record {|
    PartyIdentification272 Orgtr?;
    StatusReason6Choice Rsn?;
    Max105Text[] AddtlInf?;
|};
