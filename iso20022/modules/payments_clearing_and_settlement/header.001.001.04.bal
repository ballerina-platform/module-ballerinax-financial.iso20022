import ballerina/data.xmldata;

# Defines the AppHdr type as a reference to BusinessApplicationHeaderV04.
public type AppHdr BusinessApplicationHeaderV04;

# Defines the BusinessApplicationHeader8 structure.
#
# + CharSet - Character set used in the message
# + Fr - Sender of the message
# + To - Receiver of the message
# + BizMsgIdr - Business message identifier
# + MsgDefIdr - Message definition identifier
# + BizSvc - Business service under which the message is processed
# + MktPrctc - Market practice rules applicable to the message
# + CreDt - Creation date and time of the message
# + BizPrcgDt - Business processing date
# + CpyDplct - Copy or duplicate indicator
# + PssblDplct - Possible duplicate indicator
# + Prty - Business message priority
# + Sgntr - Digital signature details
public type BusinessApplicationHeader8 record {|
    UnicodeChartsCode CharSet?;
    Party51Choice Fr;
    Party51Choice To;
    Max35Text BizMsgIdr;
    Max35Text MsgDefIdr;
    Max35Text BizSvc?;
    ImplementationSpecification1 MktPrctc?;
    ISODateTime CreDt;
    ISODateTime BizPrcgDt?;
    CopyDuplicate1Code CpyDplct?;
    YesNoIndicator PssblDplct?;
    BusinessMessagePriorityCode Prty?;
    SignatureEnvelope Sgntr?;
|};

# Defines the BusinessApplicationHeaderV04 structure.
#
# + CharSet - Character set used in the message
# + Fr - Sender of the message
# + To - Receiver of the message
# + BizMsgIdr - Business message identifier
# + MsgDefIdr - Message definition identifier
# + BizSvc - Business service under which the message is processed
# + MktPrctc - Market practice rules applicable to the message
# + CreDt - Creation date and time of the message
# + BizPrcgDt - Business processing date
# + CpyDplct - Copy or duplicate indicator
# + PssblDplct - Possible duplicate indicator
# + Prty - Business message priority
# + Sgntr - Digital signature details
# + Rltd - Related business application headers
@xmldata:Namespace {
    uri: "urn:iso:std:iso:20022:tech:xsd:head.001.001.04"
}
public type BusinessApplicationHeaderV04 record {|
    UnicodeChartsCode CharSet?;
    Party51Choice Fr;
    Party51Choice To;
    Max35Text BizMsgIdr;
    Max35Text MsgDefIdr;
    Max35Text BizSvc?;
    ImplementationSpecification1 MktPrctc?;
    ISODateTime CreDt;
    ISODateTime BizPrcgDt?;
    CopyDuplicate1Code CpyDplct?;
    YesNoIndicator PssblDplct?;
    BusinessMessagePriorityCode Prty?;
    SignatureEnvelope Sgntr?;
    BusinessApplicationHeader8[] Rltd?;
|};

# Defines the BusinessMessagePriorityCode type as a string.
public type BusinessMessagePriorityCode string;

# Defines the ImplementationSpecification1 structure.
#
# + Regy - Registry associated with the specification
# + Id - Identification of the specification
public type ImplementationSpecification1 record {|
    Max350Text Regy;
    Max2048Text Id;
|};

# Defines the Party51Choice structure.
#
# + OrgId - Organisation identification
# + FIId - Financial institution identification
public type Party51Choice record {|
    PartyIdentification272 OrgId?;
    BranchAndFinancialInstitutionIdentification8 FIId?;
|};

# Defines the SignatureEnvelope structure.
# Represents the signature envelope details.
public type SignatureEnvelope record {};

# Defines the UnicodeChartsCode type as a string.
public type UnicodeChartsCode string;
