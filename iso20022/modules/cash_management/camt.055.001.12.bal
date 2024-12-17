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

# Defines the Camt055Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Camt055Document
@xmldata:Name {
    value: "Envelope"
}
public type Camt055Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Camt055Document Document;
|};

# Defines the structure for CustomerPaymentCancellationRequestV12, which contains the details of a customer payment cancellation request.
#
# + Assgnmt - Case assignment details
# + Case - Optional case details
# + CtrlData - Control data related to the cancellation request
# + Undrlyg - Underlying transactions related to the cancellation
# + SplmtryData - Optional supplementary data
public type CustomerPaymentCancellationRequestV12 record {|
    CaseAssignment6 Assgnmt;
    Case6 Case?;
    ControlData1 CtrlData?;
    UnderlyingTransaction33[] Undrlyg;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for Camt055Document, which contains the customer payment cancellation request details.
#
# + CstmrPmtCxlReq - The customer payment cancellation request
@xmldata:Namespace {
    uri: "urn:iso:std:iso:20022:tech:xsd:camt.055.001.12"
}
public type Camt055Document record {|
    CustomerPaymentCancellationRequestV12 CstmrPmtCxlReq;
|};

# Defines the structure for OriginalPaymentInstruction49, which details the original payment instruction that is being cancelled.
#
# + PmtCxlId - Unique identifier for the payment cancellation
# + Case - Optional case details
# + OrgnlPmtInfId - Identifier for the original payment information
# + OrgnlGrpInf - Original group information
# + NbOfTxs - Number of transactions involved
# + CtrlSum - Control sum of the payment instruction
# + PmtInfCxl - Group cancellation indicator
# + CxlRsnInf - Cancellation reasons
# + TxInf - Payment transaction information
public type OriginalPaymentInstruction49 record {|
    Max35Text PmtCxlId?;
    Case6 Case?;
    Max35Text OrgnlPmtInfId;
    OriginalGroupInformation29 OrgnlGrpInf?;
    Max15NumericText NbOfTxs?;
    DecimalNumber CtrlSum?;
    GroupCancellationIndicator PmtInfCxl?;
    PaymentCancellationReason6[] CxlRsnInf?;
    PaymentTransaction154[] TxInf?;
|};

# Defines the structure for PaymentTransaction154, which contains details of the payment transaction being cancelled.
#
# + CxlId - Cancellation identifier
# + Case - Optional case details
# + OrgnlInstrId - Original instruction identifier
# + OrgnlEndToEndId - Original end-to-end identifier
# + OrgnlUETR - Original unique end-to-end transaction reference
# + OrgnlInstdAmt - Original instructed amount
# + OrgnlReqdExctnDt - Original requested execution date
# + OrgnlReqdColltnDt - Original required collection date
# + CxlRsnInf - Cancellation reasons
# + OrgnlTxRef - Original transaction reference
# + SplmtryData - Optional supplementary data
public type PaymentTransaction154 record {|
    Max35Text CxlId?;
    Case6 Case?;
    Max35Text OrgnlInstrId?;
    Max35Text OrgnlEndToEndId?;
    UUIDv4Identifier OrgnlUETR?;
    ActiveOrHistoricCurrencyAndAmount OrgnlInstdAmt?;
    DateAndDateTime2Choice OrgnlReqdExctnDt?;
    ISODate OrgnlReqdColltnDt?;
    PaymentCancellationReason6[] CxlRsnInf?;
    OriginalTransactionReference42 OrgnlTxRef?;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for UnderlyingTransaction33, which includes original group information and original payment instructions related to the cancellation.
#
# + OrgnlGrpInfAndCxl - Original group information and cancellation details
# + OrgnlPmtInfAndCxl - Original payment instructions and cancellations
public type UnderlyingTransaction33 record {|
    OriginalGroupHeader21 OrgnlGrpInfAndCxl?;
    OriginalPaymentInstruction49[] OrgnlPmtInfAndCxl?;
|};
