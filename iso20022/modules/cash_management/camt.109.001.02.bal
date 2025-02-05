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

# Defines the Camt109Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Camt109Document
@xmldata:Name {
    value: "Envelope"
}
public type Camt109Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Camt109Document Document;
|};

# Defines the structure for Cheque18, which represents a cheque and its details in a cancellation or stop report.
#
# + InstrId - Instruction identification for the cheque.
# + OrgnlInstrId - Original instruction identification for the cheque.
# + ChqNb - Unique identifier for the cheque number.
# + IsseDt - Date the cheque was issued.
# + StlDt - Optional settlement date for the cheque.
# + Amt - Amount specified in the cheque.
# + FctvDt - Optional effective date of the cheque.
# + DrwrAgt - Drawer agent associated with the cheque.
# + DrwrAgtAcct - Drawer agent account associated with the cheque.
# + Pyee - Optional payee associated with the cheque.
# + PyeeAcct - Optional payee account associated with the cheque.
# + ChqCxlOrStopSts - Status of cheque cancellation or stop.
public type Cheque18 record {|
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
    ChequeCancellationStatus1 ChqCxlOrStopSts;
|};

# Defines the structure for ChequeCancellationOrStopReportV02, which represents a report for cheque cancellation or stop requests.
#
# + GrpHdr - Group header containing metadata about the report.
# + Chq - List of cheques with their respective cancellation or stop details.
# + SplmtryData - Optional additional supplementary data.
public type ChequeCancellationOrStopReportV02 record {|
    GroupHeader103 GrpHdr;
    Cheque18[] Chq;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for ChequeCancellationStatus1, which specifies the status of a cheque cancellation or stop.
#
# + Orgtr - Optional originator of the cancellation or stop request.
# + Sts - Status of the cheque cancellation or stop.
# + AddtlInf - Optional additional information about the status.
public type ChequeCancellationStatus1 record {|
    ChequePartyRole1Code Orgtr?;
    ChequeCancellationStatus1Choice Sts;
    Max140Text AddtlInf?;
|};

# Defines the structure for ChequeCancellationStatus1Choice, which provides the status of cheque cancellation or stop in a choice format.
#
# + Cd - Optional external cheque cancellation status code.
# + Prtry - Optional proprietary code for the cheque status.
public type ChequeCancellationStatus1Choice record {|
    ExternalChequeCancellationStatus1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for Camt109Document, which represents the root document for a cheque cancellation or stop report.
#
# + ChqCxlOrStopRpt - Report containing details of cheques and their cancellation or stop status.
public type Camt109Document record {|
    ChequeCancellationOrStopReportV02 ChqCxlOrStopRpt;
|};

# Defines a type for an external cheque cancellation status code.
public type ExternalChequeCancellationStatus1Code string;
