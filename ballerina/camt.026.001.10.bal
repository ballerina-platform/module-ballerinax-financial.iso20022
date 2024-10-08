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

public type Camt026Document1 Camt026Document;

public type AMLIndicator boolean;

public type Camt026Document record {|
    UnableToApplyV10 UblToApply;
|};

public type ExternalUnableToApplyIncorrectData1Code string;

public type ExternalUnableToApplyMissingData1Code string;

public type IncorrectData1Choice record {|
    ExternalUnableToApplyIncorrectData1Code Cd?;
    Max35Text Prtry?;
|};

public type MissingData1Choice record {|
    ExternalUnableToApplyMissingData1Code Cd?;
    Max35Text Prtry?;
|};

public type MissingOrIncorrectData1 record {|
    AMLIndicator AMLReq?;
    UnableToApplyMissing2[10] MssngInf?;
    UnableToApplyIncorrect2[10] IncrrctInf?;
|};

public type UnableToApplyIncorrect2 record {|
    IncorrectData1Choice Tp;
    Max140Text AddtlIncrrctInf?;
|};

public type UnableToApplyJustification4Choice record {|
    YesNoIndicator AnyInf?;
    MissingOrIncorrectData1 MssngOrIncrrctInf?;
    TrueFalseIndicator PssblDplctInstr?;
|};

public type UnableToApplyMissing2 record {|
    MissingData1Choice Tp;
    Max140Text AddtlMssngInf?;
|};

public type UnableToApplyV10 record {|
    CaseAssignment6 Assgnmt;
    Case6 Case?;
    UnderlyingTransaction8Choice Undrlyg;
    UnableToApplyJustification4Choice Justfn;
    SupplementaryData1[] SplmtryData?;
|};
