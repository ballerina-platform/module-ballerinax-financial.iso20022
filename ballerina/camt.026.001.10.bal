public type Camt026Document1 Camt026Document;

public type AMLIndicator boolean;

public type Camt026Document record {|
    UnableToApplyV10 UblToApply;
|};

public type ExternalUnableToApplyIncorrectData1Code string;

public type ExternalUnableToApplyMissingData1Code string;

public type IncorrectData1Choice record {|
    ExternalUnableToApplyIncorrectData1Code Cd?;
    Max35Text Prtry?;
|};

public type MissingData1Choice record {|
    ExternalUnableToApplyMissingData1Code Cd?;
    Max35Text Prtry?;
|};

public type MissingOrIncorrectData1 record {|
    AMLIndicator AMLReq?;
    UnableToApplyMissing2[10] MssngInf?;
    UnableToApplyIncorrect2[10] IncrrctInf?;
|};

public type UnableToApplyIncorrect2 record {|
    IncorrectData1Choice Tp;
    Max140Text AddtlIncrrctInf?;
|};

public type UnableToApplyJustification4Choice record {|
    YesNoIndicator AnyInf?;
    MissingOrIncorrectData1 MssngOrIncrrctInf?;
    TrueFalseIndicator PssblDplctInstr?;
|};

public type UnableToApplyMissing2 record {|
    MissingData1Choice Tp;
    Max140Text AddtlMssngInf?;
|};

public type UnableToApplyV10 record {|
    CaseAssignment6 Assgnmt;
    Case6 Case?;
    UnderlyingTransaction8Choice Undrlyg;
    UnableToApplyJustification4Choice Justfn;
    SupplementaryData1[] SplmtryData?;
|};

