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

# Defines the Camt106Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Camt106Document
@xmldata:Name {
    value: "Envelope"
}
public type Camt106Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Camt106Document Document;
|};

# Defines the Charges3Choice structure, which allows for different choices of charge records.
#
# + Sngl - Single charge record.
# + PerTx - Charges per transaction.
# + PerTp - Charges per type.
public type Charges3Choice record {|
    ChargesRecord9 Sngl?;
    ChargesPerTransaction3 PerTx?;
    ChargesPerType3 PerTp?;
|};

# Defines the ChargesPaymentRequestV02 structure, representing a charges payment request.
#
# + GrpHdr - Group header information.
# + Chrgs - Charges details with different choices.
# + SplmtryData - Supplementary data, if any.
public type ChargesPaymentRequestV02 record {|
    GroupHeader115 GrpHdr;
    Charges3Choice Chrgs;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the ChargesPerTransaction3 structure, representing charges per transaction details.
#
# + ChrgsId - Identifier for the charges.
# + TtlChrgsPerTx - Total charges for the transaction.
# + ChrgsAcctAgt - Charges account agent details.
# + ChrgsAcctAgtAcct - Charges account agent account details.
# + Rcrd - List of charge records per transaction.
# + AddtlInf - Additional information.
public type ChargesPerTransaction3 record {|
    Max35Text ChrgsId?;
    TotalCharges7 TtlChrgsPerTx?;
    BranchAndFinancialInstitutionIdentification8 ChrgsAcctAgt?;
    CashAccount40 ChrgsAcctAgtAcct?;
    ChargesPerTransactionRecord3[] Rcrd;
    Max140Text AddtlInf?;
|};

# Defines the ChargesPerTransactionRecord3 structure, representing detailed charges per transaction record.
#
# + RcrdId - Record identifier.
# + ChrgsRqstr - Charges requester details.
# + UndrlygTx - Underlying transaction references.
# + TtlChrgsPerRcrd - Total charges for the record.
# + ChrgsBrkdwn - Breakdown of charges.
# + ValDt - Value date.
# + DbtrAgt - Debtor agent details.
# + DbtrAgtAcct - Debtor agent account details.
# + ChrgsAcctAgt - Charges account agent details.
# + ChrgsAcctAgtAcct - Charges account agent account details.
# + InstrForInstdAgt - Instructions for the instructed agent.
# + AddtlInf - Additional information.
public type ChargesPerTransactionRecord3 record {|
    Max35Text RcrdId?;
    BranchAndFinancialInstitutionIdentification8 ChrgsRqstr?;
    TransactionReferences7 UndrlygTx;
    TotalCharges8 TtlChrgsPerRcrd?;
    ChargesBreakdown1[] ChrgsBrkdwn;
    DateAndDateTime2Choice ValDt?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    CashAccount40 DbtrAgtAcct?;
    BranchAndFinancialInstitutionIdentification8 ChrgsAcctAgt?;
    CashAccount40 ChrgsAcctAgtAcct?;
    InstructionForInstructedAgent1 InstrForInstdAgt?;
    Max140Text AddtlInf?;
|};

# Defines the ChargesPerType3 structure, representing charges grouped by type.
#
# + ChrgsId - Identifier for the charges.
# + TtlChrgsPerChrgTp - Total charges for the charge type.
# + ChrgsAcctAgt - Charges account agent details.
# + ChrgsAcctAgtAcct - Charges account agent account details.
# + Tp - Type of charges.
# + Rcrd - List of charge records per type.
# + AddtlInf - Additional information.
public type ChargesPerType3 record {|
    Max35Text ChrgsId?;
    TotalCharges7 TtlChrgsPerChrgTp?;
    BranchAndFinancialInstitutionIdentification8 ChrgsAcctAgt?;
    CashAccount40 ChrgsAcctAgtAcct?;
    ChargeType3Choice Tp;
    ChargesPerTypeRecord3[] Rcrd;
    Max140Text AddtlInf?;
|};

# Defines the ChargesPerTypeRecord3 structure, representing detailed charges per type record.
#
# + RcrdId - Record identifier.
# + ChrgsRqstr - Charges requester details.
# + UndrlygTx - Underlying transaction references.
# + Amt - Amount of the charges.
# + CdtDbtInd - Credit or debit indicator.
# + ValDt - Value date.
# + DbtrAgt - Debtor agent details.
# + DbtrAgtAcct - Debtor agent account details.
# + ChrgsAcctAgt - Charges account agent details.
# + ChrgsAcctAgtAcct - Charges account agent account details.
# + InstrForInstdAgt - Instructions for the instructed agent.
# + AddtlInf - Additional information.
public type ChargesPerTypeRecord3 record {|
    Max35Text RcrdId?;
    BranchAndFinancialInstitutionIdentification8 ChrgsRqstr?;
    TransactionReferences7 UndrlygTx;
    ActiveCurrencyAndAmount Amt;
    CreditDebitCode CdtDbtInd?;
    DateAndDateTime2Choice ValDt?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    CashAccount40 DbtrAgtAcct?;
    BranchAndFinancialInstitutionIdentification8 ChrgsAcctAgt?;
    CashAccount40 ChrgsAcctAgtAcct?;
    InstructionForInstructedAgent1 InstrForInstdAgt?;
    Max140Text AddtlInf?;
|};

# Defines the ChargesRecord9 structure, representing an individual charge record.
#
# + ChrgsId - Identifier for the charges.
# + RcrdId - Record identifier.
# + ChrgsRqstr - Charges requester details.
# + UndrlygTx - Underlying transaction references.
# + Amt - Amount of the charges.
# + CdtDbtInd - Credit or debit indicator.
# + ValDt - Value date.
# + DbtrAgt - Debtor agent details.
# + DbtrAgtAcct - Debtor agent account details.
# + ChrgsAcctAgt - Charges account agent details.
# + ChrgsAcctAgtAcct - Charges account agent account details.
# + Tp - Type of charges.
# + InstrForInstdAgt - Instructions for the instructed agent.
# + AddtlInf - Additional information.
public type ChargesRecord9 record {|
    Max35Text ChrgsId?;
    Max35Text RcrdId?;
    BranchAndFinancialInstitutionIdentification8 ChrgsRqstr?;
    TransactionReferences7 UndrlygTx;
    ActiveCurrencyAndAmount Amt;
    CreditDebitCode CdtDbtInd?;
    DateAndDateTime2Choice ValDt?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    CashAccount40 DbtrAgtAcct?;
    BranchAndFinancialInstitutionIdentification8 ChrgsAcctAgt?;
    CashAccount40 ChrgsAcctAgtAcct?;
    ChargeType3Choice Tp?;
    InstructionForInstructedAgent1 InstrForInstdAgt?;
    Max140Text AddtlInf?;
|};

# Defines the Document structure, representing a document containing a charges payment request.
#
# + ChrgsPmtReq - Charges payment request details.
public type Camt106Document record {|
    ChargesPaymentRequestV02 ChrgsPmtReq;
|};

# Defines the GroupHeader115 structure, representing group-level header information.
#
# + MsgId - Message identifier.
# + CreDtTm - Creation date and time.
# + ChrgsRqstr - Charges requester details.
# + TtlChrgs - Total charges information.
# + ChrgsAcctAgt - Charges account agent details.
# + ChrgsAcctAgtAcct - Charges account agent account details.
public type GroupHeader115 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm;
    BranchAndFinancialInstitutionIdentification8 ChrgsRqstr?;
    TotalCharges7 TtlChrgs?;
    BranchAndFinancialInstitutionIdentification8 ChrgsAcctAgt?;
    CashAccount40 ChrgsAcctAgtAcct?;
|};
