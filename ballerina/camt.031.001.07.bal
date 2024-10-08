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

public type Camt031Document1 Camt031Document;

public type Camt031Document record {|
    RejectInvestigationV07 RjctInvstgtn;
|};

public enum InvestigationRejection1Code {
    NFND, NAUT, UKNW, PCOR, WMSG, RNCR, MROI
};

public type InvestigationRejectionJustification1 record {|
    InvestigationRejection1Code RjctnRsn;
|};

public type RejectInvestigationV07 record {|
    CaseAssignment6 Assgnmt;
    Case6 Case?;
    InvestigationRejectionJustification1 Justfn;
    SupplementaryData1[] SplmtryData?;
|};
