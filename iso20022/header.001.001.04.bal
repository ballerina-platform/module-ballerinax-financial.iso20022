import ballerina/data.xmldata;

# Defines the AppHdr type as a reference to BusinessApplicationHeaderV04.
public type AppHdr BusinessApplicationHeaderV04;

public enum AddressType2Code {
    ADDR, PBOX, HOME, BIZZ, MLTO, DLVY
};

# Defines the AddressType3Choice structure.
#
# + Cd - Address type as a predefined code
# + Prtry - Address type as proprietary information
public type AddressType3Choice record {|
    AddressType2Code Cd?;
    GenericIdentification30 Prtry?;
|};

# Defines the AnyBICDec2014Identifier type as a string.
public type AnyBICDec2014Identifier string;

# Defines the BICFIDec2014Identifier type as a string.
public type BICFIDec2014Identifier string;

# Defines the BranchAndFinancialInstitutionIdentification8 structure.
#
# + FinInstnId - Identification of the financial institution
# + BrnchId - Identification of the branch
public type BranchAndFinancialInstitutionIdentification8 record {|
    FinancialInstitutionIdentification23 FinInstnId;
    BranchData5 BrnchId?;
|};

# Defines the BranchData5 structure.
#
# + Id - Branch identifier
# + LEI - Legal Entity Identifier of the branch
# + Nm - Name of the branch
# + PstlAdr - Postal address of the branch
public type BranchData5 record {|
    Max35Text Id?;
    LEIIdentifier LEI?;
    Max140Text Nm?;
    PostalAddress27 PstlAdr?;
|};

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
@xmldata:Name {
    value: "AppHdr"
}
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

# Defines the ClearingSystemIdentification2Choice structure.
#
# + Cd - Clearing system as a predefined code
# + Prtry - Clearing system as proprietary information
public type ClearingSystemIdentification2Choice record {|
    ExternalClearingSystemIdentification1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the ClearingSystemMemberIdentification2 structure.
#
# + ClrSysId - Identification of the clearing system
# + MmbId - Member identification within the clearing system
public type ClearingSystemMemberIdentification2 record {|
    ClearingSystemIdentification2Choice ClrSysId?;
    Max35Text MmbId;
|};

# Defines the Contact13 structure.
#
# + NmPrfx - Name prefix
# + Nm - Name of the contact
# + PhneNb - Phone number
# + MobNb - Mobile number
# + FaxNb - Fax number
# + URLAdr - URL address
# + EmailAdr - Email address
# + EmailPurp - Purpose of the email
# + JobTitl - Job title
# + Rspnsblty - Responsibility
# + Dept - Department
# + Othr - Other contact details
# + PrefrdMtd - Preferred contact method
public type Contact13 record {|
    NamePrefix2Code NmPrfx?;
    Max140Text Nm?;
    PhoneNumber PhneNb?;
    PhoneNumber MobNb?;
    PhoneNumber FaxNb?;
    Max2048Text URLAdr?;
    Max256Text EmailAdr?;
    Max35Text EmailPurp?;
    Max35Text JobTitl?;
    Max35Text Rspnsblty?;
    Max70Text Dept?;
    OtherContact1[] Othr?;
    PreferredContactMethod2Code PrefrdMtd?;
|};

public enum CopyDuplicate1Code {
    CODU, COPY, DUPL
};

# Defines the CountryCode type as a string.
public type CountryCode string;

# Defines the DateAndPlaceOfBirth1 structure.
#
# + BirthDt - Date of birth
# + PrvcOfBirth - Province of birth
# + CityOfBirth - City of birth
# + CtryOfBirth - Country of birth
public type DateAndPlaceOfBirth1 record {|
    ISODate BirthDt;
    Max35Text PrvcOfBirth?;
    Max35Text CityOfBirth;
    CountryCode CtryOfBirth;
|};

# Defines the Exact4AlphaNumericText type as a string.
public type Exact4AlphaNumericText string;

# Defines the ExternalClearingSystemIdentification1Code type as a string.
public type ExternalClearingSystemIdentification1Code string;

# Defines the ExternalFinancialInstitutionIdentification1Code type as a string.
public type ExternalFinancialInstitutionIdentification1Code string;

# Defines the ExternalOrganisationIdentification1Code type as a string.
public type ExternalOrganisationIdentification1Code string;

# Defines the ExternalPersonIdentification1Code type as a string.
public type ExternalPersonIdentification1Code string;

# Defines the FinancialIdentificationSchemeName1Choice structure.
#
# + Cd - Financial identification scheme as a predefined code
# + Prtry - Financial identification scheme as proprietary information
public type FinancialIdentificationSchemeName1Choice record {|
    ExternalFinancialInstitutionIdentification1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the FinancialInstitutionIdentification23 structure.
#
# + BICFI - BIC code of the financial institution
# + ClrSysMmbId - Member identification in the clearing system
# + LEI - Legal Entity Identifier of the financial institution
# + Nm - Name of the financial institution
# + PstlAdr - Postal address of the financial institution
# + Othr - Other financial institution identification
public type FinancialInstitutionIdentification23 record {|
    BICFIDec2014Identifier BICFI?;
    ClearingSystemMemberIdentification2 ClrSysMmbId?;
    LEIIdentifier LEI?;
    Max140Text Nm?;
    PostalAddress27 PstlAdr?;
    GenericFinancialIdentification1 Othr?;
|};

# Defines the GenericFinancialIdentification1 structure.
#
# + Id - Identification value
# + SchmeNm - Scheme name for the identification
# + Issr - Issuer of the identification
public type GenericFinancialIdentification1 record {|
    Max35Text Id;
    FinancialIdentificationSchemeName1Choice SchmeNm?;
    Max35Text Issr?;
|};

# Defines the GenericIdentification30 structure.
#
# + Id - Identification value
# + Issr - Issuer of the identification
# + SchmeNm - Scheme name for the identification
public type GenericIdentification30 record {|
    Exact4AlphaNumericText Id;
    Max35Text Issr;
    Max35Text SchmeNm?;
|};

# Defines the GenericOrganisationIdentification3 structure.
#
# + Id - Identification value
# + SchmeNm - Scheme name for the identification
# + Issr - Issuer of the identification
public type GenericOrganisationIdentification3 record {|
    Max256Text Id;
    OrganisationIdentificationSchemeName1Choice SchmeNm?;
    Max35Text Issr?;
|};

# Defines the GenericPersonIdentification2 structure.
#
# + Id - Identification value
# + SchmeNm - Scheme name for the identification
# + Issr - Issuer of the identification
public type GenericPersonIdentification2 record {|
    Max256Text Id;
    PersonIdentificationSchemeName1Choice SchmeNm?;
    Max35Text Issr?;
|};

# Defines the ISODate type as a string.
public type ISODate string;

# Defines the ISODateTime type as a string.
public type ISODateTime string;

# Defines the ImplementationSpecification1 structure.
#
# + Regy - Registry associated with the specification
# + Id - Identification of the specification
public type ImplementationSpecification1 record {|
    Max350Text Regy;
    Max2048Text Id;
|};

# Defines the LEIIdentifier type as a string.
public type LEIIdentifier string;

# Defines the Max128Text type as a string.
public type Max128Text string;

# Defines the Max140Text type as a string.
public type Max140Text string;

# Defines the Max16Text type as a string.
public type Max16Text string;

# Defines the Max2048Text type as a string.
public type Max2048Text string;

# Defines the Max256Text type as a string.
public type Max256Text string;

# Defines the Max350Text type as a string.
public type Max350Text string;

# Defines the Max35Text type as a string.
public type Max35Text string;

# Defines the Max4Text type as a string.
public type Max4Text string;

# Defines the Max70Text type as a string.
public type Max70Text string;

public enum NamePrefix2Code {
    DOCT, MADM, MISS, MIST, MIKS
};

# Defines the OrganisationIdentification39 structure.
#
# + AnyBIC - BIC of the organisation
# + LEI - Legal Entity Identifier of the organisation
# + Othr - Other organisation identification
public type OrganisationIdentification39 record {|
    AnyBICDec2014Identifier AnyBIC?;
    LEIIdentifier LEI?;
    GenericOrganisationIdentification3[] Othr?;
|};

# Defines the OrganisationIdentificationSchemeName1Choice structure.
#
# + Cd - Organisation identification scheme as a predefined code
# + Prtry - Organisation identification scheme as proprietary information
public type OrganisationIdentificationSchemeName1Choice record {|
    ExternalOrganisationIdentification1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the OtherContact1 structure.
#
# + ChanlTp - Type of contact channel
# + Id - Identifier of the contact channel
public type OtherContact1 record {|
    Max4Text ChanlTp;
    Max128Text Id?;
|};

# Defines the Party51Choice structure.
#
# + OrgId - Organisation identification
# + FIId - Financial institution identification
public type Party51Choice record {|
    PartyIdentification272 OrgId?;
    BranchAndFinancialInstitutionIdentification8 FIId?;
|};

# Defines the Party52Choice structure.
#
# + OrgId - Organisation identification
# + PrvtId - Private individual identification
public type Party52Choice record {|
    OrganisationIdentification39 OrgId?;
    PersonIdentification18 PrvtId?;
|};

# Defines the PartyIdentification272 structure.
#
# + Nm - Name of the party
# + PstlAdr - Postal address of the party
# + Id - Identification of the party
# + CtryOfRes - Country of residence of the party
# + CtctDtls - Contact details of the party
public type PartyIdentification272 record {|
    Max140Text Nm?;
    PostalAddress27 PstlAdr?;
    Party52Choice Id?;
    CountryCode CtryOfRes?;
    Contact13 CtctDtls?;
|};

# Defines the PersonIdentification18 structure.
#
# + DtAndPlcOfBirth - Date and place of birth
# + Othr - Other person identification
public type PersonIdentification18 record {|
    DateAndPlaceOfBirth1 DtAndPlcOfBirth?;
    GenericPersonIdentification2[] Othr?;
|};

# Defines the PersonIdentificationSchemeName1Choice structure.
#
# + Cd - Person identification scheme as a predefined code
# + Prtry - Person identification scheme as proprietary information
public type PersonIdentificationSchemeName1Choice record {|
    ExternalPersonIdentification1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the PhoneNumber type as a string.
public type PhoneNumber string;

# Defines the PostalAddress27 structure.
#
# + AdrTp - Address type
# + CareOf - Care of address details
# + Dept - Department details
# + SubDept - Sub-department details
# + StrtNm - Street name
# + BldgNb - Building number
# + BldgNm - Building name
# + Flr - Floor details
# + UnitNb - Unit number
# + PstBx - Postbox number
# + Room - Room details
# + PstCd - Postal code
# + TwnNm - Town name
# + TwnLctnNm - Town location name
# + DstrctNm - District name
# + CtrySubDvsn - Country subdivision
# + Ctry - Country code
# + AdrLine - Address line details
public type PostalAddress27 record {|
    AddressType3Choice AdrTp?;
    Max140Text CareOf?;
    Max70Text Dept?;
    Max70Text SubDept?;
    Max140Text StrtNm?;
    Max16Text BldgNb?;
    Max140Text BldgNm?;
    Max70Text Flr?;
    Max16Text UnitNb?;
    Max16Text PstBx?;
    Max70Text Room?;
    Max16Text PstCd?;
    Max140Text TwnNm?;
    Max140Text TwnLctnNm?;
    Max140Text DstrctNm?;
    Max35Text CtrySubDvsn?;
    CountryCode Ctry?;
    Max70Text[7] AdrLine?;
|};

public enum PreferredContactMethod2Code {
    MAIL, FAXX, LETT, CELL, ONLI, PHON
};

# Defines the SignatureEnvelope structure.
# Represents the signature envelope details.
public type SignatureEnvelope record {};

# Defines the UnicodeChartsCode type as a string.
public type UnicodeChartsCode string;

# Defines the YesNoIndicator type as a boolean.
public type YesNoIndicator boolean;
