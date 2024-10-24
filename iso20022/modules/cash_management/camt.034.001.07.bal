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

# Defines the structure for the Camt034Document1.
public type Camt034Document1 Camt034Document;

# Defines the structure for Camt034Document, a record that holds the duplicate message details.
#
# + Dplct - The duplicate message content with its case and proprietary data
public type Camt034Document record {|
    DuplicateV07 Dplct;
|};

# Defines the structure for the Duplicate Version 07 message.
# It contains information about a case assignment, the case details, proprietary duplicate data, and supplementary information.
#
# + Assgnmt - Case assignment details
# + Case - Information about the duplicate message case, if available
# + Dplct - Proprietary duplicate data containing the type and additional information
# + SplmtryData - Optional supplementary data for the duplicate message
public type DuplicateV07 record {|
    CaseAssignment6 Assgnmt;
    Case6 Case?;
    ProprietaryData7 Dplct;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for proprietary data version 6, which includes a payload that may be skipped during processing.
#
# + Any - Payload that can be skipped during message handling
public type ProprietaryData6 record {|
    SkipPayload Any;
|};

# Defines the structure for proprietary data version 7, which contains the type and associated data for the duplicate.
#
# + Tp - Type of proprietary data
# + Data - Contains the proprietary data of type ProprietaryData6
public type ProprietaryData7 record {|
    Max35Text Tp;
    ProprietaryData6 Data;
|};

# Defines a placeholder structure for the skip payload, indicating no content.
public type SkipPayload record {|
|};
