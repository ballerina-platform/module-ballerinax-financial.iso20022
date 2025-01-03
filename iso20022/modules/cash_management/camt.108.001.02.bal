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

# Defines the Camt108Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Camt108Document
@xmldata:Name {
    value: "Envelope"
}
public type Camt108Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Camt108Document Document;
|};

# Defines the structure for Cheque20, which represents the details of a cheque with cancellation or stop request information.
#
# + InstrId - Optional instruction identifier
# + OrgnlInstrId - Optional original instruction identifier
# + ChqNb - Cheque number
# + IsseDt - Issue date of the cheque
# + StlDt - Optional settlement date of the cheque
# + Amt - Amount of the cheque
# + FctvDt - Optional effective date of the cheque
# + DrwrAgt - Optional drawer agent details
# + DrwrAgtAcct - Optional drawer agent account details
# + Pyee - Optional payee details
# + PyeeAcct - Optional payee account details
# + ChqCxlOrStopRsn - Optional reason for cheque cancellation or stop
public type Cheque20 record {|
    Max35Text InstrId?;
    Max35Text OrgnlInstrId?;
    Max35Text ChqNb;
    ISODate IsseDt;
    ISODate StlDt?;
    ActiveCurrencyAndAmount Amt;
    DateAndDateTime2Choice FctvDt?;
    BranchAndFinancialInstitutionIdentification8 DrwrAgt?;
    CashAccount40 DrwrAgtAcct?;
    PartyIdentification272 Pyee?;
    CashAccount40 PyeeAcct?;
    ChequeCancellationReason1 ChqCxlOrStopRsn?;
|};

# Defines the structure for ChequeCancellationOrStopRequestV02, representing a request to cancel or stop a cheque.
#
# + GrpHdr - Group header information for the request
# + Chq - List of cheques included in the cancellation or stop request
# + SplmtryData - Optional supplementary data for the request
public type ChequeCancellationOrStopRequestV02 record {|
    GroupHeader103 GrpHdr;
    Cheque20[] Chq;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for ChequeCancellationReason1, representing the reason for a cheque cancellation or stop request.
#
# + Orgtr - Optional originator of the cancellation or stop request
# + Rsn - Reason for the cancellation or stop
# + AddtlInf - Optional additional information about the reason
public type ChequeCancellationReason1 record {|
    ChequePartyRole1Code Orgtr?;
    ChequeCancellationReason1Choice Rsn;
    Max140Text AddtlInf?;
|};

# Defines the structure for ChequeCancellationReason1Choice, representing the choice of reason for a cheque cancellation or stop request.
#
# + Cd - Optional code representing the reason
# + Prtry - Optional proprietary reason text
public type ChequeCancellationReason1Choice record {|
    ExternalChequeCancellationReason1Code Cd?;
    Max35Text Prtry?;
|};

# Represents the root element for the Cheque Cancellation or Stop Request (camt.108) message.
#
# + ChqCxlOrStopReq - Details of the cheque cancellation or stop request
@xmldata:Namespace {
    uri: "urn:iso:std:iso:20022:tech:xsd:camt.108.001.02"
}
public type Camt108Document record {|
    ChequeCancellationOrStopRequestV02 ChqCxlOrStopReq;
|};

# Represents a custom code for external cheque cancellation reasons.
public type ExternalChequeCancellationReason1Code string;
