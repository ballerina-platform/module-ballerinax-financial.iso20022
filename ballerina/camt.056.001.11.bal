public type Camt056Document1 Camt056Document;

public type Camt056Document record {|
    FIToFIPaymentCancellationRequestV11 FIToFIPmtCxlReq;
|};

public type UnderlyingTransaction34 record {|
    OriginalGroupHeader21 OrgnlGrpInfAndCxl?;
    PaymentTransaction155[] TxInf?;
|};

public type FIToFIPaymentCancellationRequestV11 record {|
    CaseAssignment6 Assgnmt;
    Case6 Case?;
    ControlData1 CtrlData?;
    UnderlyingTransaction34[] Undrlyg;
    SupplementaryData1[] SplmtryData?;
|};

public type PaymentTransaction155 record {|
    Max35Text CxlId?;
    Case6 Case?;
    OriginalGroupInformation29 OrgnlGrpInf?;
    Max35Text OrgnlInstrId?;
    Max35Text OrgnlEndToEndId?;
    Max35Text OrgnlTxId?;
    UUIDv4Identifier OrgnlUETR?;
    Max35Text OrgnlClrSysRef?;
    ActiveOrHistoricCurrencyAndAmount OrgnlIntrBkSttlmAmt?;
    ISODate OrgnlIntrBkSttlmDt?;
    BranchAndFinancialInstitutionIdentification8 Assgnr?;
    BranchAndFinancialInstitutionIdentification8 Assgne?;
    PaymentCancellationReason6[] CxlRsnInf?;
    OriginalTransactionReference42 OrgnlTxRef?;
    SupplementaryData1[] SplmtryData?;
|};
