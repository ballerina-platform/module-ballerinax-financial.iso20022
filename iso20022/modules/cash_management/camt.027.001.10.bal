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

# Defines the Camt027Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Camt027Document
@xmldata:Name {
    value: "Envelope"
}
public type Camt027Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Camt027Document Document;
|};

# Defines the ClaimNonReceiptV10 structure.
#
# + Assgnmt - The case assignment details  
# + Case - The case details  
# + Undrlyg - The underlying transaction  
# + CoverDtls - Missing cover details  
# + InstrForAssgne - Instructions for the assignee  
# + SplmtryData - Any supplementary data
public type ClaimNonReceiptV10 record {|
    CaseAssignment6 Assgnmt;
    Case6 Case?;
    UnderlyingTransaction8Choice Undrlyg;
    MissingCover6 CoverDtls?;
    InstructionForAssignee1 InstrForAssgne?;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the Camt027Document structure.
#
# + ClmNonRct - Claim non-receipt details
public type Camt027Document record {|
    ClaimNonReceiptV10 ClmNonRct;
|};

# Defines the ExternalAgentInstruction1Code structure.
public type ExternalAgentInstruction1Code string;

# Defines the InstructionForAssignee1 structure.
#
# + Cd - The agent instruction code  
# + InstrInf - Additional instruction information
public type InstructionForAssignee1 record {|
    ExternalAgentInstruction1Code Cd?;
    Max140Text InstrInf?;
|};

# Defines the MissingCover6 structure.
#
# + MssngCoverInd - Indicates whether the cover is missing  
# + CoverCrrctn - Details for settlement correction
public type MissingCover6 record {|
    YesNoIndicator MssngCoverInd;
    SettlementInstruction16 CoverCrrctn?;
|};

# Defines the SettlementInstruction16 structure.
#
# + InstgRmbrsmntAgt - Instructing reimbursement agent details  
# + InstgRmbrsmntAgtAcct - Account details of the instructing reimbursement agent  
# + InstdRmbrsmntAgt - Instructed reimbursement agent details  
# + InstdRmbrsmntAgtAcct - Account details of the instructed reimbursement agent
public type SettlementInstruction16 record {|
    BranchAndFinancialInstitutionIdentification8 InstgRmbrsmntAgt?;
    CashAccount40 InstgRmbrsmntAgtAcct?;
    BranchAndFinancialInstitutionIdentification8 InstdRmbrsmntAgt?;
    CashAccount40 InstdRmbrsmntAgtAcct?;
|};
