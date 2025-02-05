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

# Defines the Camt056Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Camt056Document
@xmldata:Name {
    value: "Envelope"
}
public type Camt056Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Camt056Document Document;
|};

# Defines the structure for Camt056Document, which contains the FI to FI payment cancellation request details.
#
# + FIToFIPmtCxlReq - The FI to FI payment cancellation request
public type Camt056Document record {|
    FIToFIPaymentCancellationRequestV11 FIToFIPmtCxlReq;
|};

# Defines the structure for UnderlyingTransaction34, which includes original group information and payment transactions related to the cancellation.
#
# + OrgnlGrpInfAndCxl - Original group information and cancellation details
# + TxInf - Payment transaction information
public type UnderlyingTransaction34 record {|
    OriginalGroupHeader21 OrgnlGrpInfAndCxl?;
    PaymentTransaction155[] TxInf?;
|};

# Defines the structure for FIToFIPaymentCancellationRequestV11, which contains the details of the FI to FI payment cancellation request.
#
# + Assgnmt - Case assignment details
# + Case - Optional case details
# + CtrlData - Control data related to the cancellation request
# + Undrlyg - Underlying transactions related to the cancellation
# + SplmtryData - Optional supplementary data
public type FIToFIPaymentCancellationRequestV11 record {|
    CaseAssignment6 Assgnmt;
    Case6 Case?;
    ControlData1 CtrlData?;
    UnderlyingTransaction34[] Undrlyg;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for PaymentTransaction155, which contains details of the payment transaction being cancelled.
#
# + CxlId - Cancellation identifier
# + Case - Optional case details
# + OrgnlGrpInf - Original group information
# + OrgnlInstrId - Original instruction identifier
# + OrgnlEndToEndId - Original end-to-end identifier
# + OrgnlTxId - Original transaction identifier
# + OrgnlUETR - Original unique end-to-end transaction reference
# + OrgnlClrSysRef - Original clearing system reference
# + OrgnlIntrBkSttlmAmt - Original interbank settlement amount
# + OrgnlIntrBkSttlmDt - Original interbank settlement date
# + Assgnr - Assignor details
# + Assgne - Assignee details
# + CxlRsnInf - Cancellation reasons
# + OrgnlTxRef - Original transaction reference
# + SplmtryData - Optional supplementary data
public type PaymentTransaction155 record {|
    Max35Text CxlId?;
    Case6 Case?;
    OriginalGroupInformation29 OrgnlGrpInf?;
    Max35Text OrgnlInstrId?;
    Max35Text OrgnlEndToEndId?;
    Max35Text OrgnlTxId?;
    UUIDv4Identifier OrgnlUETR?;
    Max35Text OrgnlClrSysRef?;
    ActiveOrHistoricCurrencyAndAmount OrgnlIntrBkSttlmAmt?;
    ISODate OrgnlIntrBkSttlmDt?;
    BranchAndFinancialInstitutionIdentification8 Assgnr?;
    BranchAndFinancialInstitutionIdentification8 Assgne?;
    PaymentCancellationReason6[] CxlRsnInf?;
    OriginalTransactionReference42 OrgnlTxRef?;
    SupplementaryData1[] SplmtryData?;
|};
