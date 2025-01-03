import ballerina/data.xmldata;

# Defines the Pacs004Envelope structure containing the Business Application Header
# and the Document body.
#
# + AppHdr - Business Application Header  
# + Document - Pacs004Document
@xmldata:Name {
    value: "Envelope"
}
public type Pacs004Envelope record {|
    BusinessApplicationHeaderV04 AppHdr?;
    Pacs004Document Document;
|};

# Defines the structure for Pacs004Document, which represents the root element of the Payment Return message.
#
# + PmtRtr - Contains the details of the payment return
@xmldata:Namespace {
    uri: "urn:iso:std:iso:20022:tech:xsd:pacs.004.001.13"
}
public type Pacs004Document record {|
    PaymentReturnV13 PmtRtr;
|};

# Defines the structure for GroupHeader123, which contains common information for a group of payment transactions.
#
# + MsgId - Unique identifier for the message
# + CreDtTm - Date and time when the message was created
# + Authstn - Array of authorization details for the message (optional)
# + BtchBookg - Indicates whether transactions are batched together (optional)
# + NbOfTxs - Number of transactions in the group
# + CtrlSum - Total control sum of all transactions in the group (optional)
# + GrpRtr - Indicates if the group is being returned (optional)
# + TtlRtrdIntrBkSttlmAmt - Total returned interbank settlement amount (optional)
# + IntrBkSttlmDt - Interbank settlement date (optional)
# + SttlmInf - Settlement instructions for the transactions
# + PmtTpInf - Payment type information (optional)
# + InstgAgt - Institution initiating the transaction (optional)
# + InstdAgt - Institution receiving the transaction (optional)
public type GroupHeader123 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm;
    Authorisation1Choice[] Authstn?;
    BatchBookingIndicator BtchBookg?;
    Max15NumericText NbOfTxs;
    DecimalNumber CtrlSum?;
    TrueFalseIndicator GrpRtr?;
    ActiveCurrencyAndAmount TtlRtrdIntrBkSttlmAmt?;
    ISODate IntrBkSttlmDt?;
    SettlementInstruction15 SttlmInf;
    PaymentTypeInformation28 PmtTpInf?;
    BranchAndFinancialInstitutionIdentification8 InstgAgt?;
    BranchAndFinancialInstitutionIdentification8 InstdAgt?;
|};

# Defines the structure for OriginalGroupHeader19, which contains information about the original group of transactions.
#
# + OrgnlMsgId - Original message identifier
# + OrgnlMsgNmId - Original message name identifier
# + OrgnlCreDtTm - Original creation date and time (optional)
# + RtrRsnInf - Array of return reason information (optional)
public type OriginalGroupHeader19 record {|
    Max35Text OrgnlMsgId;
    Max35Text OrgnlMsgNmId;
    ISODateTime OrgnlCreDtTm?;
    PaymentReturnReason7[] RtrRsnInf?;
|};

# Defines the structure for OriginalTransactionReference41, which contains details about the original transaction.
#
# + IntrBkSttlmAmt - Interbank settlement amount (optional)
# + Amt - Amount information (optional)
# + IntrBkSttlmDt - Interbank settlement date (optional)
# + ReqdColltnDt - Required collection date (optional)
# + ReqdExctnDt - Required execution date (optional)
# + CdtrSchmeId - Creditor scheme identification (optional)
# + SttlmInf - Settlement instructions (optional)
# + PmtTpInf - Payment type information (optional)
# + PmtMtd - Payment method (optional)
# + MndtRltdInf - Mandate-related information (optional)
# + RmtInf - Remittance information (optional)
# + UltmtDbtr - Ultimate debtor (optional)
# + Dbtr - Debtor (optional)
# + DbtrAcct - Debtor's account (optional)
# + DbtrAgt - Debtor's agent (optional)
# + DbtrAgtAcct - Debtor's agent's account (optional)
# + CdtrAgt - Creditor's agent (optional)
# + CdtrAgtAcct - Creditor's agent's account (optional)
# + Cdtr - Creditor (optional)
# + CdtrAcct - Creditor's account (optional)
# + UltmtCdtr - Ultimate creditor (optional)
# + Purp - Purpose of the payment (optional)
# + UndrlygCstmrCdtTrf - Underlying customer credit transfer (optional)
public type OriginalTransactionReference41 record {|
    ActiveOrHistoricCurrencyAndAmount IntrBkSttlmAmt?;
    AmountType4Choice Amt?;
    ISODate IntrBkSttlmDt?;
    ISODate ReqdColltnDt?;
    DateAndDateTime2Choice ReqdExctnDt?;
    PartyIdentification272 CdtrSchmeId?;
    SettlementInstruction15 SttlmInf?;
    PaymentTypeInformation27 PmtTpInf?;
    PaymentMethod4Code PmtMtd?;
    MandateRelatedData3Choice MndtRltdInf?;
    RemittanceInformation22 RmtInf?;
    Party50Choice UltmtDbtr?;
    Party50Choice Dbtr?;
    CashAccount40 DbtrAcct?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    CashAccount40 DbtrAgtAcct?;
    BranchAndFinancialInstitutionIdentification8 CdtrAgt?;
    CashAccount40 CdtrAgtAcct?;
    Party50Choice Cdtr?;
    CashAccount40 CdtrAcct?;
    Party50Choice UltmtCdtr?;
    Purpose2Choice Purp?;
    CreditTransferTransaction63 UndrlygCstmrCdtTrf?;
|};

# Defines the structure for PaymentReturnReason7, which specifies the reasons for a payment return.
#
# + Orgtr - Originator of the return reason (optional)
# + Rsn - Return reason information (optional)
# + AddtlInf - Array of additional information (optional)
public type PaymentReturnReason7 record {|
    PartyIdentification272 Orgtr?;
    ReturnReason5Choice Rsn?;
    Max105Text[] AddtlInf?;
|};

# Defines the structure for PaymentReturnV13, which contains details of a payment return.
#
# + GrpHdr - Group header information for the payment return
# + OrgnlGrpInf - Original group information (optional)
# + TxInf - Array of transaction information (optional)
# + SplmtryData - Array of supplementary data (optional)
public type PaymentReturnV13 record {|
    GroupHeader123 GrpHdr;
    OriginalGroupHeader19 OrgnlGrpInf?;
    PaymentTransaction159[] TxInf?;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for PaymentTransaction159, which contains detailed information about a returned transaction.
#
# + RtrId - Identifier for the return transaction (optional)
# + OrgnlGrpInf - Original group information (optional)
# + OrgnlInstrId - Original instruction identifier (optional)
# + OrgnlEndToEndId - Original end-to-end identifier (optional)
# + OrgnlTxId - Original transaction identifier (optional)
# + OrgnlUETR - Original unique end-to-end transaction reference (optional)
# + OrgnlClrSysRef - Original clearing system reference (optional)
# + OrgnlIntrBkSttlmAmt - Original interbank settlement amount (optional)
# + OrgnlIntrBkSttlmDt - Original interbank settlement date (optional)
# + PmtTpInf - Payment type information (optional)
# + RtrdIntrBkSttlmAmt - Returned interbank settlement amount
# + IntrBkSttlmDt - Interbank settlement date (optional)
# + SttlmPrty - Settlement priority (optional)
# + SttlmTmIndctn - Settlement time indication (optional)
# + SttlmTmReq - Settlement time request (optional)
# + RtrdInstdAmt - Returned instructed amount (optional)
# + XchgRate - Exchange rate used (optional)
# + CompstnAmt - Compensation amount (optional)
# + ChrgBr - Charge bearer type (optional)
# + ChrgsInf - Array of charges information (optional)
# + ClrSysRef - Clearing system reference (optional)
# + InstgAgt - Institution initiating the transaction (optional)
# + InstdAgt - Institution receiving the transaction (optional)
# + RtrChain - Transaction parties involved in the return chain (optional)
# + RtrRsnInf - Array of return reasons (optional)
# + OrgnlTxRef - Original transaction reference details (optional)
# + SplmtryData - Array of supplementary data (optional)
public type PaymentTransaction159 record {|
    Max35Text RtrId?;
    OriginalGroupInformation29 OrgnlGrpInf?;
    Max35Text OrgnlInstrId?;
    Max35Text OrgnlEndToEndId?;
    Max35Text OrgnlTxId?;
    UUIDv4Identifier OrgnlUETR?;
    Max35Text OrgnlClrSysRef?;
    ActiveOrHistoricCurrencyAndAmount OrgnlIntrBkSttlmAmt?;
    ISODate OrgnlIntrBkSttlmDt?;
    PaymentTypeInformation28 PmtTpInf?;
    ActiveCurrencyAndAmount RtrdIntrBkSttlmAmt;
    ISODate IntrBkSttlmDt?;
    Priority3Code SttlmPrty?;
    SettlementDateTimeIndication1 SttlmTmIndctn?;
    SettlementTimeRequest2 SttlmTmReq?;
    ActiveOrHistoricCurrencyAndAmount RtrdInstdAmt?;
    BaseOneRate XchgRate?;
    ActiveOrHistoricCurrencyAndAmount CompstnAmt?;
    ChargeBearerType1Code ChrgBr?;
    Charges16[] ChrgsInf?;
    Max35Text ClrSysRef?;
    BranchAndFinancialInstitutionIdentification8 InstgAgt?;
    BranchAndFinancialInstitutionIdentification8 InstdAgt?;
    TransactionParties11 RtrChain?;
    PaymentReturnReason7[] RtrRsnInf?;
    OriginalTransactionReference41 OrgnlTxRef?;
    SupplementaryData1[] SplmtryData?;
|};

# Defines the structure for TransactionParties11, which specifies the parties involved in a financial transaction.
#
# + UltmtDbtr - Ultimate debtor of the transaction (optional)
# + Dbtr - Debtor of the transaction
# + DbtrAcct - Debtor's account (optional)
# + InitgPty - Party initiating the transaction (optional)
# + DbtrAgt - Debtor's agent (optional)
# + DbtrAgtAcct - Account of the debtor's agent (optional)
# + PrvsInstgAgt1 - Previous instructing agent 1 in the transaction chain (optional)
# + PrvsInstgAgt1Acct - Account of previous instructing agent 1 (optional)
# + PrvsInstgAgt2 - Previous instructing agent 2 in the transaction chain (optional)
# + PrvsInstgAgt2Acct - Account of previous instructing agent 2 (optional)
# + PrvsInstgAgt3 - Previous instructing agent 3 in the transaction chain (optional)
# + PrvsInstgAgt3Acct - Account of previous instructing agent 3 (optional)
# + IntrmyAgt1 - Intermediary agent 1 in the transaction chain (optional)
# + IntrmyAgt1Acct - Account of intermediary agent 1 (optional)
# + IntrmyAgt2 - Intermediary agent 2 in the transaction chain (optional)
# + IntrmyAgt2Acct - Account of intermediary agent 2 (optional)
# + IntrmyAgt3 - Intermediary agent 3 in the transaction chain (optional)
# + IntrmyAgt3Acct - Account of intermediary agent 3 (optional)
# + CdtrAgt - Creditor's agent (optional)
# + CdtrAgtAcct - Account of the creditor's agent (optional)
# + Cdtr - Creditor of the transaction
# + CdtrAcct - Creditor's account (optional)
# + UltmtCdtr - Ultimate creditor of the transaction (optional)
public type TransactionParties11 record {|
    Party50Choice UltmtDbtr?;
    Party50Choice Dbtr;
    CashAccount40 DbtrAcct?;
    Party50Choice InitgPty?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    CashAccount40 DbtrAgtAcct?;
    BranchAndFinancialInstitutionIdentification8 PrvsInstgAgt1?;
    CashAccount40 PrvsInstgAgt1Acct?;
    BranchAndFinancialInstitutionIdentification8 PrvsInstgAgt2?;
    CashAccount40 PrvsInstgAgt2Acct?;
    BranchAndFinancialInstitutionIdentification8 PrvsInstgAgt3?;
    CashAccount40 PrvsInstgAgt3Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt1?;
    CashAccount40 IntrmyAgt1Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt2?;
    CashAccount40 IntrmyAgt2Acct?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt3?;
    CashAccount40 IntrmyAgt3Acct?;
    BranchAndFinancialInstitutionIdentification8 CdtrAgt?;
    CashAccount40 CdtrAgtAcct?;
    Party50Choice Cdtr;
    CashAccount40 CdtrAcct?;
    Party50Choice UltmtCdtr?;
|};
