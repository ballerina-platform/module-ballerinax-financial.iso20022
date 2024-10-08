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

public type Pacs002Document1 Pacs002Document;

public type Pacs002Document record {|
    FIToFIPaymentStatusReportV14 FIToFIPmtStsRpt;
|};

public type ExternalPaymentGroupStatus1Code string;

public type ExternalPaymentTransactionStatus1Code string;

public type ExternalStatusReason1Code string;

public type FIToFIPaymentStatusReportV14 record {|
    GroupHeader120 GrpHdr;
    OriginalGroupHeader22[] OrgnlGrpInfAndSts?;
    PaymentTransaction161[] TxInfAndSts?;
    SupplementaryData1[] SplmtryData?;
|};

public type GroupHeader120 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm;
    BranchAndFinancialInstitutionIdentification8 InstgAgt?;
    BranchAndFinancialInstitutionIdentification8 InstdAgt?;
    OriginalBusinessQuery1 OrgnlBizQry?;
|};

public type NumberOfTransactionsPerStatus5 record {|
    Max15NumericText DtldNbOfTxs;
    ExternalPaymentTransactionStatus1Code DtldSts;
    DecimalNumber DtldCtrlSum?;
|};

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

public type StatusReason6Choice record {|
    ExternalStatusReason1Code Cd?;
    Max35Text Prtry?;
|};

public type StatusReasonInformation14 record {|
    PartyIdentification272 Orgtr?;
    StatusReason6Choice Rsn?;
    Max105Text[] AddtlInf?;
|};
