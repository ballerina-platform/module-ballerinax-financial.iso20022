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

# Defines the Camt026Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Camt026Document;
@xmldata:Name {
    value: "Envelope"
}
public type Camt026Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Camt026Document Document;
|};

# Defines the AMLIndicator structure.
public type AMLIndicator boolean;

# Defines the Camt026Document structure.
#
# + UblToApply - The unable to apply information
@xmldata:Namespace {
    uri: "urn:iso:std:iso:20022:tech:xsd:camt.026.001.10"
}
public type Camt026Document record {|
    UnableToApplyV10 UblToApply;
|};

# Defines the ExternalUnableToApplyIncorrectData1Code structure.
public type ExternalUnableToApplyIncorrectData1Code string;

# Defines the ExternalUnableToApplyMissingData1Code structure.
public type ExternalUnableToApplyMissingData1Code string;

# Defines the IncorrectData1Choice structure.
#
# + Cd - The incorrect data code  
# + Prtry - The proprietary information for incorrect data
public type IncorrectData1Choice record {|
    ExternalUnableToApplyIncorrectData1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the MissingData1Choice structure.
#
# + Cd - The missing data code  
# + Prtry - The proprietary information for missing data
public type MissingData1Choice record {|
    ExternalUnableToApplyMissingData1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the MissingOrIncorrectData1 structure.
#
# + AMLReq - The AML requirement  
# + MssngInf - The missing information details  
# + IncrrctInf - The incorrect information details
public type MissingOrIncorrectData1 record {|
    AMLIndicator AMLReq?;
    UnableToApplyMissing2[] MssngInf?;
    UnableToApplyIncorrect2[] IncrrctInf?;
|};

# Defines the UnableToApplyIncorrect2 structure.
#
# + Tp - The incorrect data type  
# + AddtlIncrrctInf - Additional incorrect information
public type UnableToApplyIncorrect2 record {|
    IncorrectData1Choice Tp;
    Max140Text AddtlIncrrctInf?;
|};

# Defines the UnableToApplyJustification4Choice structure.
#
# + AnyInf - Any available information  
# + MssngOrIncrrctInf - Missing or incorrect information details  
# + PssblDplctInstr - Possible duplicate instruction indicator
public type UnableToApplyJustification4Choice record {|
    YesNoIndicator AnyInf?;
    MissingOrIncorrectData1 MssngOrIncrrctInf?;
    TrueFalseIndicator PssblDplctInstr?;
|};

# Defines the UnableToApplyMissing2 structure.
#
# + Tp - The missing data type  
# + AddtlMssngInf - Additional missing information
public type UnableToApplyMissing2 record {|
    MissingData1Choice Tp;
    Max140Text AddtlMssngInf?;
|};

# Defines the UnableToApplyV10 structure.
#
# + Assgnmt - The case assignment details  
# + Case - The case details  
# + Undrlyg - The underlying transaction  
# + Justfn - The justification for the unable to apply status  
# + SplmtryData - Any supplementary data
public type UnableToApplyV10 record {|
    CaseAssignment6 Assgnmt;
    Case6 Case?;
    UnderlyingTransaction8Choice Undrlyg;
    UnableToApplyJustification4Choice Justfn;
    SupplementaryData1[] SplmtryData?;
|};
