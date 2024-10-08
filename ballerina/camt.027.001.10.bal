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

public type Camt027Document1 Camt027Document;

public type ClaimNonReceiptV10 record {|
    CaseAssignment6 Assgnmt;
    Case6 Case?;
    UnderlyingTransaction8Choice Undrlyg;
    MissingCover6 CoverDtls?;
    InstructionForAssignee1 InstrForAssgne?;
    SupplementaryData1[] SplmtryData?;
|};

public type Camt027Document record {|
    ClaimNonReceiptV10 ClmNonRct;
|};

public type ExternalAgentInstruction1Code string;

public type InstructionForAssignee1 record {|
    ExternalAgentInstruction1Code Cd?;
    Max140Text InstrInf?;
|};

public type MissingCover6 record {|
    YesNoIndicator MssngCoverInd;
    SettlementInstruction16 CoverCrrctn?;
|};

public type SettlementInstruction16 record {|
    BranchAndFinancialInstitutionIdentification8 InstgRmbrsmntAgt?;
    CashAccount40 InstgRmbrsmntAgtAcct?;
    BranchAndFinancialInstitutionIdentification8 InstdRmbrsmntAgt?;
    CashAccount40 InstdRmbrsmntAgtAcct?;
|};
