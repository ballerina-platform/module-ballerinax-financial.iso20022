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

# Defines the Camt050Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Camt050Document
@xmldata:Name {
    value: "Envelope"
}
public type Camt050Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Camt050Document Document;
|};

# Defines the structure for Amount2Choice, which represents an amount that can be specified either with or without currency.
#
# + AmtWthtCcy - Amount without currency
# + AmtWthCcy - Amount with currency
public type Amount2Choice record {|
    ImpliedCurrencyAndAmount AmtWthtCcy?;
    ActiveCurrencyAndAmount AmtWthCcy?;
|};

# Defines the structure for the Camt050Document, which contains liquidity credit transfer details.
#
# + LqdtyCdtTrf - The liquidity credit transfer message details
public type Camt050Document record {|
    LiquidityCreditTransferV07 LqdtyCdtTrf;
|};

# Defines the structure for LiquidityCreditTransfer4, which includes details about a liquidity transfer.
#
# + LqdtyTrfId - Identification details of the liquidity transfer
# + Cdtr - Creditor's branch and financial institution identification
# + CdtrAcct - Creditor's cash account information
# + TrfdAmt - The amount transferred
# + Dbtr - Debtor's branch and financial institution identification
# + DbtrAcct - Debtor's cash account information
# + SttlmDt - Settlement date for the transfer
public type LiquidityCreditTransfer4 record {|
    PaymentIdentification8 LqdtyTrfId?;
    BranchAndFinancialInstitutionIdentification8 Cdtr?;
    CashAccount40 CdtrAcct?;
    Amount2Choice TrfdAmt;
    BranchAndFinancialInstitutionIdentification8 Dbtr?;
    CashAccount40 DbtrAcct?;
    ISODate SttlmDt?;
|};

# Defines the structure for LiquidityCreditTransferV07, which contains the liquidity credit transfer message details and a message header.
#
# + MsgHdr - Header information for the message
# + LqdtyCdtTrf - Liquidity credit transfer details
# + SplmtryData - Optional supplementary data for the message
public type LiquidityCreditTransferV07 record {|
    MessageHeader1 MsgHdr;
    LiquidityCreditTransfer4 LqdtyCdtTrf;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for the message header, containing metadata about the message.
#
# + MsgId - Unique identifier for the message
# + CreDtTm - Creation date and time of the message
public type MessageHeader1 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm?;
|};

# Defines the structure for PaymentIdentification8, which includes identifiers for the payment instruction.
#
# + InstrId - Instruction identifier
# + EndToEndId - Unique end-to-end identifier
# + TxId - Transaction identifier
# + UETR - Unique end-to-end transaction reference
public type PaymentIdentification8 record {
    Max35Text InstrId?;
    Max35Text EndToEndId;
    Max35Text TxId?;
    UUIDv4Identifier UETR?;
};
