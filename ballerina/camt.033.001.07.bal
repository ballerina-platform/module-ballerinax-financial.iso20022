public type Camt033Document1 Camt033Document;

public type Camt033Document record {|
    RequestForDuplicateV07 ReqForDplct;
|};

public type RequestForDuplicateV07 record {|
    CaseAssignment6 Assgnmt;
    Case6 Case?;
    SupplementaryData1[] SplmtryData?;
|};

