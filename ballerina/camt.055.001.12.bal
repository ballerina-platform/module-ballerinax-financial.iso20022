public type Camt055Document1 Camt055Document;

public type CustomerPaymentCancellationRequestV12 record {|
    CaseAssignment6 Assgnmt;
    Case6 Case?;
    ControlData1 CtrlData?;
    UnderlyingTransaction33[] Undrlyg;
    SupplementaryData1[] SplmtryData?;
|};

public type Camt055Document record {|
    CustomerPaymentCancellationRequestV12 CstmrPmtCxlReq;
|};

public type OriginalPaymentInstruction49 record {|
    Max35Text PmtCxlId?;
    Case6 Case?;
    Max35Text OrgnlPmtInfId;
    OriginalGroupInformation29 OrgnlGrpInf?;
    Max15NumericText NbOfTxs?;
    DecimalNumber CtrlSum?;
    GroupCancellationIndicator PmtInfCxl?;
    PaymentCancellationReason6[] CxlRsnInf?;
    PaymentTransaction154[] TxInf?;
|};

public type PaymentTransaction154 record {|
    Max35Text CxlId?;
    Case6 Case?;
    Max35Text OrgnlInstrId?;
    Max35Text OrgnlEndToEndId?;
    UUIDv4Identifier OrgnlUETR?;
    ActiveOrHistoricCurrencyAndAmount OrgnlInstdAmt?;
    DateAndDateTime2Choice OrgnlReqdExctnDt?;
    ISODate OrgnlReqdColltnDt?;
    PaymentCancellationReason6[] CxlRsnInf?;
    OriginalTransactionReference42 OrgnlTxRef?;
    SupplementaryData1[] SplmtryData?;
|};

public type UnderlyingTransaction33 record {|
    OriginalGroupHeader21 OrgnlGrpInfAndCxl?;
    OriginalPaymentInstruction49[] OrgnlPmtInfAndCxl?;
|};

