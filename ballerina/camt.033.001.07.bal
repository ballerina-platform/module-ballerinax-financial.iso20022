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

# Defines the structure for the Camt033Document1.
public type Camt033Document1 Camt033Document;

# Defines the structure for Camt033Document, a record that holds the request for duplicate message details.
#
# + ReqForDplct - The request for a duplicate of the previously sent message
public type Camt033Document record {|
    RequestForDuplicateV07 ReqForDplct;
|};

# Defines the structure for the Request for Duplicate Version 07 message.
# It contains information related to a case assignment, case details, and any supplementary data.
#
# + Assgnmt - Case assignment details
# + Case - Information about the case for which a duplicate is being requested, if available
# + SplmtryData - Optional supplementary data for the request
public type RequestForDuplicateV07 record {|
    CaseAssignment6 Assgnmt;
    Case6 Case?;
    SupplementaryData1[] SplmtryData?;
|};
