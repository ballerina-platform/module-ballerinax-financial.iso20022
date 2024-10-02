public type Camt034Document1 Camt034Document;

public type Camt034Document record {|
    DuplicateV07 Dplct;
|};

public type DuplicateV07 record {|
    CaseAssignment6 Assgnmt;
    Case6 Case?;
    ProprietaryData7 Dplct;
    SupplementaryData1[] SplmtryData?;
|};

public type ProprietaryData6 record {|
    SkipPayload Any;
|};

public type ProprietaryData7 record {|
    Max35Text Tp;
    ProprietaryData6 Data;
|};

public type SkipPayload record {|
|};