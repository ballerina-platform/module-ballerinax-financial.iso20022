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

public type Camt050Document1 Camt050Document;

public type Amount2Choice record {|
    ImpliedCurrencyAndAmount AmtWthtCcy?;
    ActiveCurrencyAndAmount AmtWthCcy?;
|};

public type Camt050Document record {|
    LiquidityCreditTransferV07 LqdtyCdtTrf;
|};

public type LiquidityCreditTransfer4 record {|
    PaymentIdentification8 LqdtyTrfId?;
    BranchAndFinancialInstitutionIdentification8 Cdtr?;
    CashAccount40 CdtrAcct?;
    Amount2Choice TrfdAmt;
    BranchAndFinancialInstitutionIdentification8 Dbtr?;
    CashAccount40 DbtrAcct?;
    ISODate SttlmDt?;
|};

public type LiquidityCreditTransferV07 record {|
    MessageHeader1 MsgHdr;
    LiquidityCreditTransfer4 LqdtyCdtTrf;
    SupplementaryData1[] SplmtryData?;
|};

public type MessageHeader1 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm?;
|};

public type PaymentIdentification8 record {
    Max35Text InstrId?;
    Max35Text EndToEndId;
    Max35Text TxId?;
    UUIDv4Identifier UETR?;
};
