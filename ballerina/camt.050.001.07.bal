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
