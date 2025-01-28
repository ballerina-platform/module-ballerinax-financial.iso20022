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

# Defines the Camt105Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Camt105Document
@xmldata:Name {
    value: "Envelope"
}
public type Camt105Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Camt105Document Document;
|};

# Defines the Charges4Choice structure to represent charge options.
#
# + Sngl - Single set of charges.
# + PerTx - Charges per transaction.
# + PerTp - Charges per type.
public type Charges4Choice record {|
    ChargesRecord10 Sngl?;
    ChargesPerTransaction4 PerTx?;
    ChargesPerType4 PerTp?;
|};

# Defines the ChargesPaymentNotificationV02 structure representing the notification of charges payment.
#
# + GrpHdr - Group header information.
# + Chrgs - Charges information.
# + SplmtryData - Supplementary data.
public type ChargesPaymentNotificationV02 record {|
    GroupHeader126 GrpHdr;
    Charges4Choice Chrgs;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the ChargesPerTransaction4 structure representing charges per transaction.
#
# + ChrgsId - Unique identifier for charges.
# + TtlChrgsPerTx - Total charges for the transaction.
# + ChrgsAcct - Charges account details.
# + ChrgsAcctOwnr - Owner of the charges account.
# + Rcrd - Records of charges per transaction.
# + AddtlInf - Additional information.
public type ChargesPerTransaction4 record {|
    Max35Text ChrgsId?;
    TotalCharges7 TtlChrgsPerTx?;
    CashAccount40 ChrgsAcct?;
    BranchAndFinancialInstitutionIdentification8 ChrgsAcctOwnr?;
    ChargesPerTransactionRecord4[] Rcrd;
    Max140Text AddtlInf?;
|};

# Defines the ChargesPerTransactionRecord4 structure representing records of charges per transaction.
#
# + RcrdId - Record identifier.
# + ChrgsRqstr - Charges requester information.
# + UndrlygTx - Underlying transaction references.
# + TtlChrgsPerRcrd - Total charges for the record.
# + ChrgsBrkdwn - Breakdown of charges.
# + ValDt - Value date.
# + DbtrAgt - Debtor agent details.
# + DbtrAgtAcct - Debtor agent account details.
# + ChrgsAcct - Charges account details.
# + ChrgsAcctOwnr - Owner of the charges account.
# + InstrForInstdAgt - Instructions for the instructed agent.
# + AddtlInf - Additional information.
public type ChargesPerTransactionRecord4 record {|
    Max35Text RcrdId?;
    BranchAndFinancialInstitutionIdentification8 ChrgsRqstr?;
    TransactionReferences7 UndrlygTx;
    TotalCharges8 TtlChrgsPerRcrd?;
    ChargesBreakdown1[] ChrgsBrkdwn;
    DateAndDateTime2Choice ValDt?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    CashAccount40 DbtrAgtAcct?;
    CashAccount40 ChrgsAcct?;
    BranchAndFinancialInstitutionIdentification8 ChrgsAcctOwnr?;
    InstructionForInstructedAgent1 InstrForInstdAgt?;
    Max140Text AddtlInf?;
|};

# Defines the ChargesPerType4 structure representing charges per type.
#
# + ChrgsId - Unique identifier for charges.
# + TtlChrgsPerChrgTp - Total charges for the charge type.
# + ChrgsAcct - Charges account details.
# + ChrgsAcctOwnr - Owner of the charges account.
# + Tp - Charge type.
# + Rcrd - Records of charges per type.
# + AddtlInf - Additional information.
public type ChargesPerType4 record {|
    Max35Text ChrgsId?;
    TotalCharges7 TtlChrgsPerChrgTp?;
    CashAccount40 ChrgsAcct?;
    BranchAndFinancialInstitutionIdentification8 ChrgsAcctOwnr?;
    ChargeType3Choice Tp;
    ChargesPerTypeRecord4[] Rcrd;
    Max140Text AddtlInf?;
|};

# Defines the ChargesPerTypeRecord4 structure representing records of charges per type.
#
# + RcrdId - Record identifier.
# + ChrgsRqstr - Charges requester information.
# + UndrlygTx - Underlying transaction references.
# + Amt - Amount of charges.
# + CdtDbtInd - Credit or debit indicator.
# + ValDt - Value date.
# + DbtrAgt - Debtor agent details.
# + DbtrAgtAcct - Debtor agent account details.
# + ChrgsAcct - Charges account details.
# + ChrgsAcctOwnr - Owner of the charges account.
# + InstrForInstdAgt - Instructions for the instructed agent.
# + AddtlInf - Additional information.
public type ChargesPerTypeRecord4 record {|
    Max35Text RcrdId?;
    BranchAndFinancialInstitutionIdentification8 ChrgsRqstr?;
    TransactionReferences7 UndrlygTx;
    ActiveCurrencyAndAmount Amt;
    CreditDebitCode CdtDbtInd?;
    DateAndDateTime2Choice ValDt?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    CashAccount40 DbtrAgtAcct?;
    CashAccount40 ChrgsAcct?;
    BranchAndFinancialInstitutionIdentification8 ChrgsAcctOwnr?;
    InstructionForInstructedAgent1 InstrForInstdAgt?;
    Max140Text AddtlInf?;
|};

# Defines the ChargesRecord10 structure representing individual charge records.
#
# + ChrgsId - Unique identifier for charges.
# + RcrdId - Record identifier.
# + ChrgsRqstr - Charges requester information.
# + UndrlygTx - Underlying transaction references.
# + Amt - Amount of charges.
# + CdtDbtInd - Credit or debit indicator.
# + ValDt - Value date.
# + DbtrAgt - Debtor agent details.
# + DbtrAgtAcct - Debtor agent account details.
# + ChrgsAcct - Charges account details.
# + ChrgsAcctOwnr - Owner of the charges account.
# + Tp - Type of charges.
# + InstrForInstdAgt - Instructions for the instructed agent.
# + AddtlInf - Additional information.
public type ChargesRecord10 record {|
    Max35Text ChrgsId?;
    Max35Text RcrdId?;
    BranchAndFinancialInstitutionIdentification8 ChrgsRqstr?;
    TransactionReferences7 UndrlygTx;
    ActiveCurrencyAndAmount Amt;
    CreditDebitCode CdtDbtInd?;
    DateAndDateTime2Choice ValDt?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    CashAccount40 DbtrAgtAcct?;
    CashAccount40 ChrgsAcct?;
    BranchAndFinancialInstitutionIdentification8 ChrgsAcctOwnr?;
    ChargeType3Choice Tp?;
    InstructionForInstructedAgent1 InstrForInstdAgt?;
    Max140Text AddtlInf?;
|};

# Defines the Camt105Document structure representing the Charges Payment Notification.
#
# + ChrgsPmtNtfctn - Charges payment notification details.
public type Camt105Document record {|
    ChargesPaymentNotificationV02 ChrgsPmtNtfctn;
|};

# Defines the GroupHeader126 structure representing group-level header details.
#
# + MsgId - Unique identifier for the message.
# + CreDtTm - Creation date and time.
# + ChrgsRqstr - Charges requester information.
# + TtlChrgs - Total charges information.
# + ChrgsAcct - Charges account details.
# + ChrgsAcctOwnr - Owner of the charges account.
public type GroupHeader126 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm;
    BranchAndFinancialInstitutionIdentification8 ChrgsRqstr?;
    TotalCharges7 TtlChrgs?;
    CashAccount40 ChrgsAcct?;
    BranchAndFinancialInstitutionIdentification8 ChrgsAcctOwnr?;
|};
