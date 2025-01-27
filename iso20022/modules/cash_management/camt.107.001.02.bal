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

# Defines the Camt107Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Camt107Document
@xmldata:Name {
    value: "Envelope"
}
public type Camt107Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Camt107Document Document;
|};

# Defines the structure for Cheque17, which represents the details of a cheque.
#
# + InstrId - Optional instruction identifier
# + ChqNb - Cheque number
# + IsseDt - Issue date of the cheque
# + StlDt - Optional settlement date of the cheque
# + Amt - Amount of the cheque
# + ValDt - Optional value date of the cheque
# + Pyer - Optional payer details
# + PyerAcct - Optional payer account details
# + DrwrAgt - Optional drawer agent details
# + DrwrAgtAcct - Optional drawer agent account details
# + Pyee - Payee details
# + PyeeAcct - Optional payee account details
# + InstrForChqAgt - Optional list of instructions for the cheque agent
public type Cheque17 record {|
    Max35Text InstrId?;
    Max35Text ChqNb;
    ISODate IsseDt;
    ISODate StlDt?;
    ActiveCurrencyAndAmount Amt;
    DateAndDateTime2Choice ValDt?;
    PartyIdentification272 Pyer?;
    CashAccount40 PyerAcct?;
    BranchAndFinancialInstitutionIdentification8 DrwrAgt?;
    CashAccount40 DrwrAgtAcct?;
    PartyIdentification272 Pyee;
    CashAccount40 PyeeAcct?;
    InstructionForChequeAgent1[] InstrForChqAgt?;
|};

# Defines the structure for ChequePresentmentNotificationV02, representing a notification for cheque presentment.
#
# + GrpHdr - Group header information for the notification
# + Chq - List of cheques included in the notification
# + SplmtryData - Optional supplementary data for the notification
public type ChequePresentmentNotificationV02 record {|
    GroupHeader103 GrpHdr;
    Cheque17[] Chq;
    SupplementaryData1[] SplmtryData?;
|};

# Represents the root element for the Cheque Presentment Notification (camt.107) message.
#
# + ChqPresntmntNtfctn - Details of the cheque presentment notification
public type Camt107Document record {|
    ChequePresentmentNotificationV02 ChqPresntmntNtfctn;
|};

# Represents a custom code for external cheque agent instructions.
public type ExternalChequeAgentInstruction1Code string;

# Defines the structure for InstructionForChequeAgent1, which specifies instructions for a cheque agent.
#
# + Cd - Optional code for the instruction
# + InstrInf - Optional additional information for the instruction
public type InstructionForChequeAgent1 record {|
    ExternalChequeAgentInstruction1Code Cd?;
    Max140Text InstrInf?;
|};
