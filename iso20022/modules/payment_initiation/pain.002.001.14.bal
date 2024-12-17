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

# Defines the Pain002Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Pain002Document
@xmldata:Name {
    value: "Envelope"
}
public type Pain002Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Pain002Document Document;
|};

# Defines the structure for CurrencyExchange13, representing details of a currency exchange.
#
# + SrcCcy - Source currency in the exchange
# + TrgtCcy - Target currency in the exchange
# + XchgRate - Exchange rate between the source and target currencies
# + UnitCcy - Optional unit currency used in the exchange
public type CurrencyExchange13 record {|
    ActiveCurrencyCode SrcCcy;
    ActiveCurrencyCode TrgtCcy;
    BaseOneRate XchgRate;
    ActiveCurrencyCode UnitCcy?;
|};

# Defines the structure for CustomerPaymentStatusReportV14, detailing payment status reports for customer transactions.
#
# + GrpHdr - Group header information for the report
# + OrgnlGrpInfAndSts - Details of the original group and its status
# + OrgnlPmtInfAndSts - Optional list of original payment instructions and their statuses
# + SplmtryData - Optional supplementary data related to the report
public type CustomerPaymentStatusReportV14 record {|
    GroupHeader128 GrpHdr;
    OriginalGroupHeader22 OrgnlGrpInfAndSts;
    OriginalPaymentInstruction51[] OrgnlPmtInfAndSts?;
    SupplementaryData1[] SplmtryData?;
|};

# Represents the root element for a Payment Status Report in the pain.002 message.
#
# + CstmrPmtStsRpt - The payment status report details
@xmldata:Namespace {
    uri: "urn:iso:std:iso:20022:tech:xsd:pain.002.001.14"
}
public type Pain002Document record {|
    CustomerPaymentStatusReportV14 CstmrPmtStsRpt;
|};

# Represents a custom status code for payment group statuses in the system.
public type ExternalPaymentGroupStatus1Code string;

# Represents a custom status code for payment transaction statuses in the system.
public type ExternalPaymentTransactionStatus1Code string;

# Represents a custom status reason code in the system.
public type ExternalStatusReason1Code string;

# Defines the structure for GroupHeader128, containing metadata about the group of transactions.
#
# + MsgId - Message identifier
# + CreDtTm - Creation date and time of the message
# + InitgPty - Optional initiating party details
# + FwdgAgt - Optional forwarding agent details
# + DbtrAgt - Optional debtor agent details
# + CdtrAgt - Optional creditor agent details
public type GroupHeader128 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm;
    PartyIdentification272 InitgPty?;
    BranchAndFinancialInstitutionIdentification8 FwdgAgt?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    BranchAndFinancialInstitutionIdentification8 CdtrAgt?;
|};

# Defines the structure for NumberOfTransactionsPerStatus5, detailing transaction counts for specific statuses.
#
# + DtldNbOfTxs - Detailed number of transactions
# + DtldSts - Detailed transaction status
# + DtldCtrlSum - Optional control sum for transactions
public type NumberOfTransactionsPerStatus5 record {|
    Max15NumericText DtldNbOfTxs;
    ExternalPaymentTransactionStatus1Code DtldSts;
    DecimalNumber DtldCtrlSum?;
|};

# Defines the structure for OriginalGroupHeader22, containing details of the original group and its status.
#
# + OrgnlMsgId - Original message identifier
# + OrgnlMsgNmId - Original message name identifier
# + OrgnlCreDtTm - Optional creation date and time of the original message
# + OrgnlNbOfTxs - Optional original number of transactions
# + OrgnlCtrlSum - Optional control sum of the original message
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

# Defines the structure for OriginalPaymentInstruction51, containing details about original payment instructions and their statuses.
#
# + OrgnlPmtInfId - Original payment instruction identifier
# + OrgnlNbOfTxs - Optional original number of transactions
# + OrgnlCtrlSum - Optional control sum for original payment instructions
# + PmtInfSts - Optional payment instruction status
# + StsRsnInf - Optional status reason information
# + NbOfTxsPerSts - Optional number of transactions per status
# + TxInfAndSts - Optional list of transaction information and statuses
public type OriginalPaymentInstruction51 record {|
    Max35Text OrgnlPmtInfId;
    Max15NumericText OrgnlNbOfTxs?;
    DecimalNumber OrgnlCtrlSum?;
    ExternalPaymentGroupStatus1Code PmtInfSts?;
    StatusReasonInformation14[] StsRsnInf?;
    NumberOfTransactionsPerStatus5[] NbOfTxsPerSts?;
    PaymentTransaction160[] TxInfAndSts?;
|};

# Defines the structure for PaymentTransaction160, representing transaction details and their statuses.
#
# + StsId - Optional status identifier
# + OrgnlInstrId - Optional original instruction identifier
# + OrgnlEndToEndId - Optional original end-to-end identifier
# + OrgnlUETR - Optional original UETR identifier
# + TxSts - Optional transaction status
# + StsRsnInf - Optional status reason information
# + ChrgsInf - Optional charge information
# + TrckrData - Optional tracker data for the transaction
# + AccptncDtTm - Optional acceptance date and time
# + AcctSvcrRef - Optional account servicer reference
# + ClrSysRef - Optional clearing system reference
# + OrgnlTxRef - Optional original transaction reference
# + SplmtryData - Optional supplementary data
public type PaymentTransaction160 record {|
    Max35Text StsId?;
    Max35Text OrgnlInstrId?;
    Max35Text OrgnlEndToEndId?;
    UUIDv4Identifier OrgnlUETR?;
    ExternalPaymentTransactionStatus1Code TxSts?;
    StatusReasonInformation14[] StsRsnInf?;
    Charges16[] ChrgsInf?;
    TrackerData7 TrckrData?;
    ISODateTime AccptncDtTm?;
    Max35Text AcctSvcrRef?;
    Max35Text ClrSysRef?;
    OriginalTransactionReference42 OrgnlTxRef?;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for StatusReason6Choice, providing options for the reason of a status.
#
# + Cd - Optional external status reason code
# + Prtry - Optional proprietary status reason
public type StatusReason6Choice record {|
    ExternalStatusReason1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for StatusReasonInformation14, containing details about a status reason.
#
# + Orgtr - Optional originator of the status reason
# + Rsn - Optional reason for the status
# + AddtlInf - Optional additional information related to the status reason
public type StatusReasonInformation14 record {|
    PartyIdentification272 Orgtr?;
    StatusReason6Choice Rsn?;
    Max105Text[] AddtlInf?;
|};

# Defines the structure for TrackerData7, representing tracker details for a transaction.
#
# + ConfdDt - Confirmed date of the transaction
# + ConfdAmt - Confirmed amount of the transaction
# + TrckrRcrd - Tracker records associated with the transaction
public type TrackerData7 record {|
    DateAndDateTime2Choice ConfdDt;
    ActiveCurrencyAndAmount ConfdAmt;
    TrackerRecord5[] TrckrRcrd;
|};

# Defines the structure for TrackerRecord5, representing details of a tracker record.
#
# + Agt - Agent details
# + ChrgBr - Optional charge bearer type
# + ChrgsAmt - Optional charges amount
# + XchgRateData - Optional exchange rate data
public type TrackerRecord5 record {|
    BranchAndFinancialInstitutionIdentification8 Agt;
    ChargeBearerType1Code ChrgBr?;
    ActiveCurrencyAndAmount ChrgsAmt?;
    CurrencyExchange13 XchgRateData?;
|};
