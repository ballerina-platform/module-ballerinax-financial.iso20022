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

# Defines the structure for AccountIdentification4Choice, a choice between IBAN or other types of account identification.
#
# + IBAN - The IBAN (International Bank Account Number).
# + Othr - Other account identification.
public type AccountIdentification4Choice record {|
    IBAN2007Identifier IBAN?;
    GenericAccountIdentification1 Othr?;
|};

# Defines the structure for AccountSchemeName1Choice, a choice for account scheme name.
#
# + Cd - External account identification code.
# + Prtry - Proprietary account identification.
public type AccountSchemeName1Choice record {|
    ExternalAccountIdentification1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for ActiveOrHistoricCurrencyAndAmount_SimpleType, representing a simple type with currency and amount.
#
# + ActiveOrHistoricCurrencyAndAmount_SimpleType - The decimal amount.
# + Ccy - The currency of the amount.
public type ActiveOrHistoricCurrencyAndAmount_SimpleType record {|
    decimal ActiveOrHistoricCurrencyAndAmount_SimpleType;
    @xmldata:Attribute
    ActiveOrHistoricCurrencyCode Ccy;
|};

# Defines the structure for ActiveOrHistoricCurrencyAndAmount, representing an amount and its associated currency.
#
# + ActiveOrHistoricCurrencyAndAmount_SimpleType - The simple type of the currency and amount.
public type ActiveOrHistoricCurrencyAndAmount record {|
    ActiveOrHistoricCurrencyAndAmount_SimpleType ActiveOrHistoricCurrencyAndAmount_SimpleType;
|};

# Defines ActiveOrHistoricCurrencyCode as a string representing either active or historic currency codes.
public type ActiveOrHistoricCurrencyCode string;

public enum AddressType2Code {
    ADDR, PBOX, HOME, BIZZ, MLTO, DLVY
};

# Defines the structure for AddressType3Choice, a choice between an address type code and proprietary identification.
#
# + Cd - Address type code.
# + Prtry - Proprietary address identification.
public type AddressType3Choice record {|
    AddressType2Code Cd?;
    GenericIdentification30 Prtry?;
|};

# Defines AnyBICDec2014Identifier as a string representing a BIC (Business Identifier Code) used in financial institutions.
public type AnyBICDec2014Identifier string;

# Defines BICFIDec2014Identifier as a string representing a BICFI (Financial Institution Business Identifier Code).
public type BICFIDec2014Identifier string;

# Defines the structure for BalanceSubType1Choice, representing a choice between an external balance subtype code or proprietary text.
#
# + Cd - External balance subtype code.
# + Prtry - Proprietary balance subtype.
public type BalanceSubType1Choice record {|
    ExternalBalanceSubType1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for BalanceType10Choice, representing a choice between an external balance type code or proprietary text.
#
# + Cd - External balance type code.
# + Prtry - Proprietary balance type.
public type BalanceType10Choice record {|
    ExternalBalanceType1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for BalanceType13, representing a balance type with an optional subtype.
#
# + CdOrPrtry - Choice between external balance type code or proprietary balance type.
# + SubTp - Optional balance subtype.
public type BalanceType13 record {|
    BalanceType10Choice CdOrPrtry;
    BalanceSubType1Choice SubTp?;
|};

# Defines the structure for BranchAndFinancialInstitutionIdentification8, representing a financial institution and its branch.
#
# + FinInstnId - Financial institution identification.
# + BrnchId - Optional branch identification.
public type BranchAndFinancialInstitutionIdentification8 record {|
    FinancialInstitutionIdentification23 FinInstnId;
    BranchData5 BrnchId?;
|};

# Defines the structure for BranchData5, representing the details of a financial institution's branch.
#
# + Id - Branch identification.
# + LEI - Legal Entity Identifier.
# + Nm - Branch name.
# + PstlAdr - Postal address of the branch.
public type BranchData5 record {|
    Max35Text Id?;
    LEIIdentifier LEI?;
    Max140Text Nm?;
    PostalAddress27 PstlAdr?;
|};

# Defines the structure for CashAccount40, representing a cash account with identification, type, and currency.
#
# + Id - Account identification.
# + Tp - Cash account type.
# + Ccy - Currency code.
# + Nm - Account name.
# + Prxy - Proxy account identification.
public type CashAccount40 record {|
    AccountIdentification4Choice Id?;
    CashAccountType2Choice Tp?;
    ActiveOrHistoricCurrencyCode Ccy?;
    Max70Text Nm?;
    ProxyAccountIdentification1 Prxy?;
|};

# Defines the structure for CashAccountType2Choice, representing a choice between an external or proprietary account type.
#
# + Cd - External cash account type code.
# + Prtry - Proprietary cash account type.
public type CashAccountType2Choice record {|
    ExternalCashAccountType1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for ClearingSystemIdentification2Choice, representing a choice for clearing system identification.
#
# + Cd - External clearing system identification code.
# + Prtry - Proprietary clearing system identification.
public type ClearingSystemIdentification2Choice record {|
    ExternalClearingSystemIdentification1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for ClearingSystemMemberIdentification2, representing the identification of a clearing system member.
#
# + ClrSysId - Clearing system identification.
# + MmbId - Member identification.
public type ClearingSystemMemberIdentification2 record {|
    ClearingSystemIdentification2Choice ClrSysId?;
    Max35Text MmbId;
|};

# Defines the structure for Contact13, representing a contact person's details.
#
# + NmPrfx - Name prefix.
# + Nm - Name.
# + PhneNb - Phone number.
# + MobNb - Mobile number.
# + FaxNb - Fax number.
# + URLAdr - URL address.
# + EmailAdr - Email address.
# + EmailPurp - Purpose of the email.
# + JobTitl - Job title.
# + Rspnsblty - Responsibility.
# + Dept - Department.
# + Othr - Other contact methods.
# + PrefrdMtd - Preferred contact method.
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

# Defines CountryCode as a string representing a two-letter country code.
public type CountryCode string;

public enum CreditDebitCode {
    CRDT, DBIT
};

# Defines the structure for DateAndPlaceOfBirth1, representing a person's birth details.
#
# + BirthDt - Date of birth.
# + PrvcOfBirth - Province of birth.
# + CityOfBirth - City of birth.
# + CtryOfBirth - Country of birth.
public type DateAndPlaceOfBirth1 record {|
    ISODate BirthDt;
    Max35Text PrvcOfBirth?;
    Max35Text CityOfBirth;
    CountryCode CtryOfBirth;
|};

# Defines the structure for EntryStatus1Choice, representing a choice for entry status.
#
# + Cd - External entry status code.
# + Prtry - Proprietary entry status.
public type EntryStatus1Choice record {|
    ExternalEntryStatus1Code Cd?;
    Max35Text Prtry?;
|};

# Defines Exact4AlphaNumericText as a string with exactly 4 alphanumeric characters.
public type Exact4AlphaNumericText string;

# Defines ExternalAccountIdentification1Code as a string for external account identification.
public type ExternalAccountIdentification1Code string;

# Defines ExternalBalanceSubType1Code as a string representing external balance subtypes.
public type ExternalBalanceSubType1Code string;

# Defines ExternalBalanceType1Code as a string for external balance types.
public type ExternalBalanceType1Code string;

# Defines ExternalCashAccountType1Code as a string for external cash account types.
public type ExternalCashAccountType1Code string;

# Defines ExternalClearingSystemIdentification1Code as a string for external clearing system identification.
public type ExternalClearingSystemIdentification1Code string;

# Defines ExternalEntryStatus1Code as a string for external entry status.
public type ExternalEntryStatus1Code string;

# Defines ExternalFinancialInstitutionIdentification1Code as a string for external financial institution identification.
public type ExternalFinancialInstitutionIdentification1Code string;

# Defines ExternalOrganisationIdentification1Code as a string for external organisation identification.
public type ExternalOrganisationIdentification1Code string;

# Defines ExternalPersonIdentification1Code as a string for external person identification.
public type ExternalPersonIdentification1Code string;

# Defines ExternalProxyAccountType1Code as a string for external proxy account types.
public type ExternalProxyAccountType1Code string;

# Defines the structure for FinancialIdentificationSchemeName1Choice, which contains a choice between an external code or proprietary identification.
#
# + Cd - External financial institution identification code.
# + Prtry - Proprietary scheme name.
public type FinancialIdentificationSchemeName1Choice record {|
    ExternalFinancialInstitutionIdentification1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for FinancialInstitutionIdentification23, which contains various identifiers for financial institutions.
#
# + BICFI - BIC code for financial institutions.
# + ClrSysMmbId - Member identification within a clearing system.
# + LEI - Legal entity identifier.
# + Nm - Name of the institution.
# + PstlAdr - Postal address.
# + Othr - Other identification types.
public type FinancialInstitutionIdentification23 record {|
    BICFIDec2014Identifier BICFI?;
    ClearingSystemMemberIdentification2 ClrSysMmbId?;
    LEIIdentifier LEI?;
    Max140Text Nm?;
    PostalAddress27 PstlAdr?;
    GenericFinancialIdentification1 Othr?;
|};

# Defines the structure for GenericAccountIdentification1, which provides generic account identification information.
#
# + Id - Account identifier.
# + SchmeNm - Scheme name of the account identification.
# + Issr - Issuer of the account.
public type GenericAccountIdentification1 record {|
    Max34Text Id?;
    AccountSchemeName1Choice SchmeNm?;
    Max35Text Issr?;
|};

# Defines the structure for GenericFinancialIdentification1, representing a generic financial identification.
#
# + Id - Identification code.
# + SchmeNm - Scheme name of the identification.
# + Issr - Issuer of the identification.
public type GenericFinancialIdentification1 record {|
    Max35Text Id?;
    FinancialIdentificationSchemeName1Choice SchmeNm?;
    Max35Text Issr?;
|};

# Defines the structure for GenericIdentification30, which contains a generic identification with an exact alphanumeric code.
#
# + Id - Exact 4 alphanumeric characters identification.
# + Issr - Issuer of the identification.
# + SchmeNm - Scheme name for the identification
public type GenericIdentification30 record {|
    Exact4AlphaNumericText Id;
    Max35Text Issr;
    Max35Text SchmeNm?;

|};

# Defines the structure for GenericOrganisationIdentification3, which contains generic organisation identification information.
#
# + Id - Identification code of the organisation.
# + SchmeNm - Scheme name of the organisation identification.
# + Issr - Issuer of the identification.
public type GenericOrganisationIdentification3 record {|
    Max256Text Id?;
    OrganisationIdentificationSchemeName1Choice SchmeNm?;
    Max35Text Issr?;
|};

# Defines the structure for GenericPersonIdentification2, which contains identification information for a person.
#
# + Id - Identification code of the person.
# + SchmeNm - Scheme name of the person identification.
# + Issr - Issuer of the identification.
public type GenericPersonIdentification2 record {|
    Max256Text Id?;
    PersonIdentificationSchemeName1Choice SchmeNm?;
    Max35Text Issr?;
|};

# Defines the structure for GroupHeader117, which represents the header for a group of messages.
#
# + MsgId - Unique identifier for the message.
# + CreDtTm - Creation date and time of the message.
# + MsgSndr - Party sending the message.
public type GroupHeader117 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm;
    Party50Choice MsgSndr?;
|};

# Defines IBAN2007Identifier as a string representing an International Bank Account Number (IBAN).
public type IBAN2007Identifier string;

# Defines ISODate as a string representing a date in ISO format.
public type ISODate string;

# Defines ISOYear as a string representing a year in ISO format.
public type ISOYear string;

# Defines ISODateTime as a string representing a date and time in ISO format.
public type ISODateTime string;

# Defines ISOTime as a string representing a time in ISO format.
public type ISOTime string;

# Defines LEIIdentifier as a string for a Legal Entity Identifier (LEI).
public type LEIIdentifier string;

# Defines Max128Text as a string with a maximum length of 128 characters.
public type Max128Text string;

# Defines Max140Text as a string with a maximum length of 140 characters.
public type Max140Text string;

# Defines Max16Text as a string with a maximum length of 16 characters.
public type Max16Text string;

# Defines Max2048Text as a string with a maximum length of 2048 characters.
public type Max2048Text string;

# Defines Max256Text as a string with a maximum length of 256 characters.
public type Max256Text string;

# Defines Max34Text as a string with a maximum length of 34 characters.
public type Max34Text string;

# Defines Max52Text as a string with a maximum length of 52 characters.
public type Max52Text string;

# Defines Max350Text as a string with a maximum length of 350 characters.
public type Max350Text string;

# Defines Max35Text as a string with a maximum length of 35 characters.
public type Max35Text string;

# Defines Max4Text as a string with a maximum length of 4 characters.
public type Max4Text string;

# Defines Max70Text as a string with a maximum length of 70 characters.
public type Max70Text string;

public enum NamePrefix2Code {
    DOCT, MADM, MISS, MIST, MIKS
};

# Defines OrganisationIdentification39, which contains organisation identification information.
#
# + AnyBIC - BIC code of the organisation.
# + LEI - Legal Entity Identifier of the organisation.
# + Othr - Array of other organisation identification details.
public type OrganisationIdentification39 record {|
    AnyBICDec2014Identifier AnyBIC?;
    LEIIdentifier LEI?;
    GenericOrganisationIdentification3[] Othr?;
|};

# Defines OrganisationIdentificationSchemeName1Choice, representing a choice between an external code or proprietary scheme name for organisation identification.
#
# + Cd - External code for organisation identification.
# + Prtry - Proprietary scheme name.
public type OrganisationIdentificationSchemeName1Choice record {|
    ExternalOrganisationIdentification1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for OtherContact1, representing other contact information.
#
# + ChanlTp - Channel type.
# + Id - Identification for the channel
public type OtherContact1 record {|
    Max4Text ChanlTp;
    Max128Text Id?;
|};

# Defines the structure for Party50Choice, which allows a choice between a party identification or an agent.
#
# + Pty - Party identification details.
# + Agt - Agent details.
public type Party50Choice record {|
    PartyIdentification272 Pty?;
    BranchAndFinancialInstitutionIdentification8 Agt?;
|};

# Defines the structure for Party52Choice, representing a choice between organisation identification and person identification.
#
# + OrgId - Organisation identification details.
# + PrvtId - Private individual identification details.
public type Party52Choice record {|
    OrganisationIdentification39 OrgId?;
    PersonIdentification18 PrvtId?;
|};

# Defines the structure for PartyIdentification272, representing identification details for a party.
#
# + Nm - Name of the party.
# + PstlAdr - Postal address.
# + Id - Identification details.
# + CtryOfRes - Country of residence.
# + CtctDtls - Contact details.
public type PartyIdentification272 record {|
    Max140Text Nm?;
    PostalAddress27 PstlAdr?;
    Party52Choice Id?;
    CountryCode CtryOfRes?;
    Contact13 CtctDtls?;
|};

# Defines the structure for PersonIdentification18, representing identification details for a person.
#
# + DtAndPlcOfBirth - Date and place of birth.
# + Othr - Array of other identification details.
public type PersonIdentification18 record {|
    DateAndPlaceOfBirth1 DtAndPlcOfBirth?;
    GenericPersonIdentification2[] Othr?;
|};

# Defines the structure for PersonIdentificationSchemeName1Choice, representing a choice between an external or proprietary identification scheme for a person.
#
# + Cd - External identification code.
# + Prtry - Proprietary identification scheme name.
public type PersonIdentificationSchemeName1Choice record {|
    ExternalPersonIdentification1Code Cd?;
    Max35Text Prtry?;
|};

# Defines PhoneNumber as a string representing a phone number.
public type PhoneNumber string;

# Defines the structure for PostalAddress27, representing postal address information.
#
# + AdrTp - Address type.
# + CareOf - Care of name.
# + Dept - Department.
# + SubDept - Sub-department.
# + StrtNm - Street name.
# + BldgNb - Building number.
# + BldgNm - Building name.
# + Flr - Floor.
# + UnitNb - Unit number.
# + PstBx - Post box.
# + Room - Room.
# + PstCd - Postal code.
# + TwnNm - Town name.
# + TwnLctnNm - Town location name.
# + DstrctNm - District name.
# + CtrySubDvsn - Country subdivision.
# + Ctry - Country code.
# + AdrLine - Array of address lines.
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

# Defines the structure for ProxyAccountIdentification1, representing proxy account identification information.
#
# + Tp - Proxy account type.
# + Id - Proxy account identifier.
public type ProxyAccountIdentification1 record {|
    ProxyAccountType1Choice Tp?;
    Max2048Text Id;
|};

# Defines the structure for ProxyAccountType1Choice, representing a choice between an external proxy account type code and proprietary type.
#
# + Cd - External proxy account type code.
# + Prtry - Proprietary proxy account type.
public type ProxyAccountType1Choice record {|
    ExternalProxyAccountType1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for SupplementaryData1, representing supplementary data.
#
# + PlcAndNm - Place and name of the supplementary data.
# + Envlp - Supplementary data envelope.
public type SupplementaryData1 record {|
    Max350Text PlcAndNm?;
    SupplementaryDataEnvelope1 Envlp;
|};

# Defines SupplementaryDataEnvelope1 as an empty record for supplementary data.
# 
# + Nrtv - Narrative content
# + XmlContent - Xml content 
# + CpOfOrgnlMsg - Copy of original message
public type SupplementaryDataEnvelope1 record {
    string Nrtv?;
    string XmlContent?;
    string CpOfOrgnlMsg?;
};

# Defines the structure for CreditorReferenceInformation3, representing creditor reference information.
#
# + Tp - Creditor reference type.
# + Ref - Creditor reference number.
public type CreditorReferenceInformation3 record {|
    CreditorReferenceType3 Tp?;
    Max35Text Ref?;
|};

# Defines the structure for CreditorReferenceType2Choice, representing a choice between an external creditor reference type code and proprietary type.
#
# + Cd - External creditor reference type code.
# + Prtry - Proprietary creditor reference type.
public type CreditorReferenceType2Choice record {|
    ExternalCreditorReferenceType1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for CreditorReferenceType3, representing creditor reference type details.
#
# + CdOrPrtry - External or proprietary creditor reference type.
# + Issr - Issuer of the creditor reference.
public type CreditorReferenceType3 record {|
    CreditorReferenceType2Choice CdOrPrtry;
    Max35Text Issr?;
|};

# Defines the structure for DateAndType1, representing a date and type.
#
# + Tp - Date type.
# + Dt - Date.
public type DateAndType1 record {|
    DateType2Choice Tp;
    ISODate Dt;
|};

# Defines the structure for DatePeriod2, representing a period between two dates.
#
# + FrDt - Start date.
# + ToDt - End date.
public type DatePeriod2 record {|
    ISODate FrDt;
    ISODate ToDt;
|};

# Defines the structure for DateType2Choice, representing a choice between an external date type code or proprietary date type.
#
# + Cd - External date type code.
# + Prtry - Proprietary date type.
public type DateType2Choice record {|
    ExternalDateType1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for DocumentAdjustment1, representing document adjustment details.
#
# + Amt - Amount adjusted.
# + CdtDbtInd - Credit or debit indicator.
# + Rsn - Reason for adjustment.
# + AddtlInf - Additional information.
public type DocumentAdjustment1 record {|
    ActiveOrHistoricCurrencyAndAmount Amt;
    CreditDebitCode CdtDbtInd?;
    Max4Text Rsn?;
    Max140Text AddtlInf?;
|};

# Defines the structure for DocumentAmount1, representing document amount information.
#
# + Tp - Type of document amount.
# + Amt - Amount.
public type DocumentAmount1 record {|
    DocumentAmountType1Choice Tp;
    ActiveOrHistoricCurrencyAndAmount Amt;
|};

# Defines the structure for DocumentAmountType1Choice, representing a choice between an external or proprietary document amount type.
#
# + Cd - External document amount type code.
# + Prtry - Proprietary document amount type.
public type DocumentAmountType1Choice record {|
    ExternalDocumentAmountType1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for DocumentLineIdentification1, representing document line identification details.
#
# + Tp - Document line type.
# + Nb - Document line number.
# + RltdDt - Related date for the document line.
public type DocumentLineIdentification1 record {|
    DocumentLineType1 Tp?;
    Max35Text Nb?;
    ISODate RltdDt?;
|};

# Defines the structure for DocumentLineInformation2, representing document line information.
#
# + Id - Array of document line identifications.
# + Desc - Description of the document line.
# + Amt - Amount related to the document line.
public type DocumentLineInformation2 record {|
    DocumentLineIdentification1[] Id;
    Max2048Text Desc?;
    RemittanceAmount4 Amt?;
|};

# Defines the structure for DocumentLineType1, representing document line type details.
#
# + CdOrPrtry - Choice between external or proprietary document line type.
# + Issr - Issuer of the document line type.
public type DocumentLineType1 record {|
    DocumentLineType1Choice CdOrPrtry;
    Max35Text Issr?;
|};

# Defines the structure for DocumentLineType1Choice, representing a choice between an external document line type code or proprietary type.
#
# + Cd - External document line type code.
# + Prtry - Proprietary document line type.
public type DocumentLineType1Choice record {|
    ExternalDocumentLineType1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for DocumentType1, representing document type details.
#
# + CdOrPrtry - Choice between external or proprietary document type.
# + Issr - Issuer of the document type.
public type DocumentType1 record {|
    DocumentType2Choice CdOrPrtry;
    Max35Text Issr?;
|};

# Defines the structure for DocumentType2Choice, representing a choice between an external or proprietary document type.
#
# + Cd - External document type code.
# + Prtry - Proprietary document type.
public type DocumentType2Choice record {|
    ExternalDocumentType1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for ExternalCreditorReferenceType1Code, representing external creditor reference codes.
public type ExternalCreditorReferenceType1Code string;

# Defines the structure for ExternalDateType1Code, representing external date types.
public type ExternalDateType1Code string;

# Defines the structure for ExternalDocumentAmountType1Code, representing external document amount types.
public type ExternalDocumentAmountType1Code string;

# Defines the structure for ExternalDocumentLineType1Code, representing external document line types.
public type ExternalDocumentLineType1Code string;

# Defines the structure for ExternalDocumentType1Code, representing external document types.
public type ExternalDocumentType1Code string;

# Defines the structure for ExternalGarnishmentType1Code, representing external garnishment types.
public type ExternalGarnishmentType1Code string;

# Defines the structure for ExternalPurpose1Code, representing external purpose codes.
public type ExternalPurpose1Code string;

# Defines the structure for Garnishment4, representing garnishment details.
#
# + Tp - Garnishment type.
# + Grnshee - Garnishee (the party who is garnished).
# + GrnshmtAdmstr - Garnishment administrator.
# + RefNb - Reference number.
# + Dt - Date of garnishment.
# + RmtdAmt - Remitted amount.
# + FmlyMdclInsrncInd - Family medical insurance indicator.
# + MplyeeTermntnInd - Employee termination indicator.
public type Garnishment4 record {|
    GarnishmentType1 Tp;
    PartyIdentification272 Grnshee?;
    PartyIdentification272 GrnshmtAdmstr?;
    Max140Text RefNb?;
    ISODate Dt?;
    ActiveOrHistoricCurrencyAndAmount RmtdAmt?;
    TrueFalseIndicator FmlyMdclInsrncInd?;
    TrueFalseIndicator MplyeeTermntnInd?;
|};

# Defines the structure for GarnishmentType1, representing garnishment type details.
#
# + CdOrPrtry - External or proprietary garnishment type.
# + Issr - Issuer of the garnishment type.
public type GarnishmentType1 record {|
    GarnishmentType1Choice CdOrPrtry;
    Max35Text Issr?;
|};

# Defines the structure for GarnishmentType1Choice, representing a choice between an external or proprietary garnishment type.
#
# + Cd - External garnishment type code.
# + Prtry - Proprietary garnishment type.
public type GarnishmentType1Choice record {|
    ExternalGarnishmentType1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for NameAndAddress18, representing a name and address combination.
#
# + Nm - Name.
# + Adr - Address.
public type NameAndAddress18 record {|
    Max140Text Nm;
    PostalAddress27 Adr;
|};

# Defines the number as a decimal.
public type Number decimal;

# Defines the percentage rate as a decimal.
public type PercentageRate decimal;

# Defines the structure for Purpose2Choice, representing a choice between an external or proprietary purpose.
#
# + Cd - External purpose code.
# + Prtry - Proprietary purpose.
public type Purpose2Choice record {|
    ExternalPurpose1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for ReferredDocumentInformation8, representing referred document information.
#
# + Tp - Document type.
# + Nb - Document number.
# + RltdDt - Related date.
# + LineDtls - Line details for the referred document.
public type ReferredDocumentInformation8 record {|
    DocumentType1 Tp?;
    Max35Text Nb?;
    DateAndType1 RltdDt?;
    DocumentLineInformation2[] LineDtls?;
|};

# Defines the structure for RemittanceAmount4, representing remittance amount information.
#
# + RmtAmtAndTp - Array of remittance amounts and types.
# + AdjstmntAmtAndRsn - Array of adjustment amounts and reasons.
public type RemittanceAmount4 record {|
    DocumentAmount1[] RmtAmtAndTp?;
    DocumentAdjustment1[] AdjstmntAmtAndRsn?;
|};

# Defines the structure for RemittanceInformation22, representing remittance information.
#
# + Ustrd - Array of unstructured remittance information.
# + Strd - Array of structured remittance information.
public type RemittanceInformation22 record {|
    Max140Text[] Ustrd?;
    StructuredRemittanceInformation18[] Strd?;
|};

# Defines the structure for RemittanceLocation8, representing remittance location details.
#
# + RmtId - Remittance ID.
# + RmtLctnDtls - Array of remittance location details.
public type RemittanceLocation8 record {|
    Max35Text RmtId?;
    RemittanceLocationData2[] RmtLctnDtls?;
|};

# Defines the structure for RemittanceLocationData2, representing remittance location data.
#
# + Mtd - Remittance location method.
# + ElctrncAdr - Electronic address.
# + PstlAdr - Postal address.
public type RemittanceLocationData2 record {|
    RemittanceLocationMethod2Code Mtd;
    Max2048Text ElctrncAdr?;
    NameAndAddress18 PstlAdr?;
|};

public enum RemittanceLocationMethod2Code {
    FAXI, EDIC, URID, EMAL, POST, SMSM
};

# Defines the structure for StructuredRemittanceInformation18, representing structured remittance information.
#
# + RfrdDocInf - Array of referred document information.
# + RfrdDocAmt - Referred document amount.
# + CdtrRefInf - Creditor reference information.
# + Invcr - Invoicer.
# + Invcee - Invoicee.
# + TaxRmt - Tax remittance details.
# + GrnshmtRmt - Garnishment remittance details.
# + AddtlRmtInf - Array of additional remittance information.
public type StructuredRemittanceInformation18 record {|
    ReferredDocumentInformation8[] RfrdDocInf?;
    RemittanceAmount4 RfrdDocAmt?;
    CreditorReferenceInformation3 CdtrRefInf?;
    PartyIdentification272 Invcr?;
    PartyIdentification272 Invcee?;
    TaxData1 TaxRmt?;
    Garnishment4 GrnshmtRmt?;
    Max140Text[] AddtlRmtInf?;
|};

# Defines the structure for TaxAmount3, representing tax amount details.
#
# + Rate - Tax rate.
# + TaxblBaseAmt - Taxable base amount.
# + TtlAmt - Total tax amount.
# + Dtls - Array of tax record details.
public type TaxAmount3 record {|
    PercentageRate Rate?;
    ActiveOrHistoricCurrencyAndAmount TaxblBaseAmt?;
    ActiveOrHistoricCurrencyAndAmount TtlAmt?;
    TaxRecordDetails3[] Dtls?;
|};

# Defines the structure for TaxAuthorisation1, representing tax authorization details.
#
# + Titl - Title of the tax authority.
# + Nm - Name of the tax authority.
public type TaxAuthorisation1 record {|
    Max35Text Titl?;
    Max140Text Nm?;
|};

# Defines the structure for TaxData1, representing tax remittance details.
#
# + Cdtr - Tax creditor party.
# + Dbtr - Tax debtor party.
# + UltmtDbtr - Ultimate debtor party.
# + AdmstnZone - Administration zone.
# + RefNb - Reference number.
# + Mtd - Method of tax calculation.
# + TtlTaxblBaseAmt - Total taxable base amount.
# + TtlTaxAmt - Total tax amount.
# + Dt - Date of tax remittance.
# + SeqNb - Sequence number.
# + Rcrd - Array of tax records.
public type TaxData1 record {|
    TaxParty1 Cdtr?;
    TaxParty2 Dbtr?;
    TaxParty2 UltmtDbtr?;
    Max35Text AdmstnZone?;
    Max140Text RefNb?;
    Max35Text Mtd?;
    ActiveOrHistoricCurrencyAndAmount TtlTaxblBaseAmt?;
    ActiveOrHistoricCurrencyAndAmount TtlTaxAmt?;
    ISODate Dt?;
    Number SeqNb?;
    TaxRecord3[] Rcrd?;
|};

# Defines the structure for TaxParty1, representing tax party details.
#
# + TaxId - Tax identification number.
# + RegnId - Registration identification.
# + TaxTp - Tax type.
public type TaxParty1 record {|
    Max35Text TaxId?;
    Max35Text RegnId?;
    Max35Text TaxTp?;
|};

# Defines the structure for TaxParty2, representing extended tax party details including authorization.
#
# + TaxId - Tax identification number.
# + RegnId - Registration identification.
# + TaxTp - Tax type.
# + Authstn - Tax authorization details.
public type TaxParty2 record {|
    Max35Text TaxId?;
    Max35Text RegnId?;
    Max35Text TaxTp?;
    TaxAuthorisation1 Authstn?;
|};

# Defines the structure for TaxPeriod3, representing the period details for tax records.
#
# + Yr - The year of the tax period (as ISOYear).
# + Tp - The type of tax period (as TaxRecordPeriod1Code).
# + FrToDt - The date range of the tax period (as DatePeriod2).
public type TaxPeriod3 record {|
    ISOYear Yr?;
    TaxRecordPeriod1Code Tp?;
    DatePeriod2 FrToDt?;
|};

# Defines the structure for TaxRecord3, representing details of a specific tax record.
#
# + Tp - The type of tax record.
# + Ctgy - The category of the tax record.
# + CtgyDtls - Details of the tax category.
# + DbtrSts - Status of the debtor.
# + CertId - The certificate identification.
# + FrmsCd - The form code.
# + Prd - The tax period (as TaxPeriod3).
# + TaxAmt - The amount of tax (as TaxAmount3).
# + AddtlInf - Additional information related to the tax record.
public type TaxRecord3 record {|
    Max35Text Tp?;
    Max35Text Ctgy?;
    Max35Text CtgyDtls?;
    Max35Text DbtrSts?;
    Max35Text CertId?;
    Max35Text FrmsCd?;
    TaxPeriod3 Prd?;
    TaxAmount3 TaxAmt?;
    Max140Text AddtlInf?;
|};

# Defines the structure for TaxRecordDetails3, representing detailed information about tax records.
#
# + Prd - The tax period.
# + Amt - The amount related to the tax record.
public type TaxRecordDetails3 record {|
    TaxPeriod3 Prd?;
    ActiveOrHistoricCurrencyAndAmount Amt;
|};

public enum TaxRecordPeriod1Code {
    MM01, MM02, MM03, MM04, MM05, MM06, MM07, MM08, MM09, MM10, MM11, MM12, QTR1, QTR2, QTR3, QTR4, HLF1, HLF2
};

# Defines a simple boolean indicator type for true/false values.
public type TrueFalseIndicator boolean;

# Defines a UUIDv4 identifier type for unique identification.
public type UUIDv4Identifier string;

# Defines the structure for SequenceRange1, representing a range of sequences.
#
# + FrSeq - The first sequence number.
# + ToSeq - The last sequence number.
public type SequenceRange1 record {|
    Max35Text FrSeq;
    Max35Text ToSeq;
|};

# Defines the structure for SequenceRange1Choice, allowing various sequence range options.
#
# + FrSeq - The first sequence number.
# + ToSeq - The last sequence number.
# + FrToSeq - The sequence range.
# + EQSeq - Equal sequence number.
# + NEQSeq - Not equal sequence number.
public type SequenceRange1Choice record {|
    Max35Text FrSeq?;
    Max35Text ToSeq?;
    SequenceRange1 FrToSeq?;
    Max35Text EQSeq?;
    Max35Text NEQSeq?;
|};

# Defines the structure for AccountInterest4, representing account interest details.
#
# + Tp - The type of interest.
# + Rate - An array of interest rates.
# + FrToDt - The date range for the interest period.
# + Rsn - The reason for the interest.
# + Tax - Details regarding tax charges.
public type AccountInterest4 record {|
    InterestType1Choice Tp?;
    Rate4[] Rate?;
    DateTimePeriod1 FrToDt?;
    Max35Text Rsn?;
    TaxCharges2 Tax?;
|};

# Defines the structure for ActiveCurrencyAndAmount_SimpleType, representing an amount in a specific currency.
# 
# + ActiveCurrencyAndAmount_SimpleType - The amount in a specified currency.
# + Ccy - The currency code as an XML attribute.
public type ActiveCurrencyAndAmount_SimpleType record {|
    decimal ActiveCurrencyAndAmount_SimpleType;
    @xmldata:Attribute
    ActiveCurrencyCode Ccy;
|};

# Defines the structure for ActiveCurrencyAndAmount, representing an amount with its currency.
#
# + ActiveCurrencyAndAmount_SimpleType - The amount and currency details.
public type ActiveCurrencyAndAmount record {|
    ActiveCurrencyAndAmount_SimpleType ActiveCurrencyAndAmount_SimpleType;
|};

# Defines the type for ActiveCurrencyCode, representing a currency code as a string.
public type ActiveCurrencyCode string;

# Defines the structure for ActiveOrHistoricCurrencyAnd13DecimalAmount_SimpleType, representing an amount with currency code.
#
# + ActiveOrHistoricCurrencyAnd13DecimalAmount_SimpleType - The amount in a historical or active currency.
# + Ccy - The currency code as an XML attribute.
public type ActiveOrHistoricCurrencyAnd13DecimalAmount_SimpleType record {|
    decimal ActiveOrHistoricCurrencyAnd13DecimalAmount_SimpleType;
    @xmldata:Attribute
    ActiveOrHistoricCurrencyCode Ccy;
|};

# Defines the structure for ActiveOrHistoricCurrencyAnd13DecimalAmount, representing an amount with historical currency.
#
# + ActiveOrHistoricCurrencyAnd13DecimalAmount_SimpleType - The amount and currency details.
public type ActiveOrHistoricCurrencyAnd13DecimalAmount record {|
    ActiveOrHistoricCurrencyAnd13DecimalAmount_SimpleType ActiveOrHistoricCurrencyAnd13DecimalAmount_SimpleType;
|};

# Defines the structure for ActiveOrHistoricCurrencyAndAmountRange2, representing a currency amount range.
#
# + Amt - The amount range choice.
# + CdtDbtInd - The credit or debit indication.
# + Ccy - The currency code.
public type ActiveOrHistoricCurrencyAndAmountRange2 record {|
    ImpliedCurrencyAmountRange1Choice Amt;
    CreditDebitCode CdtDbtInd?;
    ActiveOrHistoricCurrencyCode Ccy;
|};

# Defines the structure for AmountAndCurrencyExchange4, representing currency exchange details for transactions.
#
# + InstdAmt - The instructed amount for exchange.
# + TxAmt - The transaction amount.
# + CntrValAmt - The counter value amount.
# + AnncdPstngAmt - The announced posting amount.
# + PrtryAmt - Additional proprietary amounts.
public type AmountAndCurrencyExchange4 record {|
    AmountAndCurrencyExchangeDetails5 InstdAmt?;
    AmountAndCurrencyExchangeDetails5 TxAmt?;
    AmountAndCurrencyExchangeDetails5 CntrValAmt?;
    AmountAndCurrencyExchangeDetails5 AnncdPstngAmt?;
    AmountAndCurrencyExchangeDetails6[] PrtryAmt?;
|};

# Defines the structure for AmountAndCurrencyExchangeDetails5, representing the amount with currency exchange details.
#
# + Amt - The amount with its currency.
# + CcyXchg - The currency exchange details.
public type AmountAndCurrencyExchangeDetails5 record {|
    ActiveOrHistoricCurrencyAndAmount Amt;
    CurrencyExchange24 CcyXchg?;
|};

# Defines the structure for AmountAndCurrencyExchangeDetails6, representing additional currency exchange details.
#
# + Tp - The type of the proprietary amount.
# + Amt - The amount with its currency.
# + CcyXchg - The currency exchange details.
public type AmountAndCurrencyExchangeDetails6 record {|
    Max35Text Tp;
    ActiveOrHistoricCurrencyAndAmount Amt;
    CurrencyExchange24 CcyXchg?;
|};

# Defines the structure for AmountAndDirection35, representing an amount and its credit/debit indication.
#
# + Amt - The amount.
# + CdtDbtInd - The credit or debit indication.
public type AmountAndDirection35 record {|
    NonNegativeDecimalNumber Amt;
    CreditDebitCode CdtDbtInd;
|};

# Defines the structure for AmountRangeBoundary1, representing a boundary for an amount range.
# 
# + BdryAmt - The boundary amount.
# + Incl - Indicates if the boundary is inclusive.
public type AmountRangeBoundary1 record {|
    ImpliedCurrencyAndAmount BdryAmt;
    YesNoIndicator Incl;
|};

public enum AttendanceContext1Code {
    ATTD, SATT, UATT
};

public enum AuthenticationEntity1Code {
    ICCD, AGNT, MERC
};

public enum AuthenticationMethod1Code {
    UKNW, BYPS, NPIN, FPIN, CPSG, PPSG, MANU, MERC, SCRT, SNCT, SCNL
};

# Defines the structure for BankTransactionCodeStructure4, representing a bank transaction code.
#
# + Domn - The domain of the bank transaction code.
# + Prtry - Proprietary bank transaction code details.
public type BankTransactionCodeStructure4 record {|
    BankTransactionCodeStructure5 Domn?;
    ProprietaryBankTransactionCodeStructure1 Prtry?;
|};

# Defines the structure for BankTransactionCodeStructure5, representing the domain of a bank transaction.
#
# + Cd - The code for the bank transaction domain.
# + Fmly - The family of the bank transaction.
public type BankTransactionCodeStructure5 record {|
    ExternalBankTransactionDomain1Code Cd;
    BankTransactionCodeStructure6 Fmly;
|};

# Defines the structure for BankTransactionCodeStructure6, representing the family and sub-family of bank transactions.
#
# + Cd - The code for the bank transaction family.
# + SubFmlyCd - The sub-family code for the bank transaction.
public type BankTransactionCodeStructure6 record {|
    ExternalBankTransactionFamily1Code Cd;
    ExternalBankTransactionSubFamily1Code SubFmlyCd;
|};

# Defines the type for BaseOneRate, representing a decimal rate.
public type BaseOneRate decimal;

# Defines the structure for BatchInformation2, representing information about a batch of transactions.
#
# + MsgId - The message identifier.
# + PmtInfId - The payment information identifier.
# + NbOfTxs - The number of transactions.
# + TtlAmt - The total amount.
# + CdtDbtInd - The credit or debit indication.
public type BatchInformation2 record {|
    Max35Text MsgId?;
    Max35Text PmtInfId?;
    Max15NumericText NbOfTxs?;
    ActiveOrHistoricCurrencyAndAmount TtlAmt?;
    CreditDebitCode CdtDbtInd?;
|};

public enum CSCManagement1Code {
    PRST, BYPS, UNRD, NCSC
};

# Defines the structure for CardAggregated2, representing aggregated card transaction details.
#
# + AddtlSvc - Additional services related to the card transaction.
# + TxCtgy - The category of the transaction.
# + SaleRcncltnId - The sale reconciliation identifier.
# + SeqNbRg - The range of sequence numbers.
# + TxDtRg - The date range for the transaction.
public type CardAggregated2 record {|
    CardPaymentServiceType2Code AddtlSvc?;
    ExternalCardTransactionCategory1Code TxCtgy?;
    Max35Text SaleRcncltnId?;
    CardSequenceNumberRange1 SeqNbRg?;
    DateOrDateTimePeriod1Choice TxDtRg?;
|};

public enum CardDataReading1Code {
    TAGC, PHYS, BRCD, MGST, CICC, DFLE, CTLS, ECTL
};

# Defines the structure for CardEntry5, representing card entry details.
#
# + Card - The payment card used.
# + POI - Point of interaction details.
# + AggtdNtry - Aggregated entry details.
# + PrePdAcct - Prepaid account details.
public type CardEntry5 record {|
    PaymentCard4 Card?;
    PointOfInteraction1 POI?;
    CardAggregated2 AggtdNtry?;
    CashAccount40 PrePdAcct?;
|};

# Defines the structure for CardIndividualTransaction2, representing an individual card transaction.
#
# + ICCRltdData - ICC related data for the card transaction.
# + PmtCntxt - Payment context for the transaction.
# + AddtlSvc - Additional services associated with the transaction.
# + TxCtgy - Category of the card transaction.
# + SaleRcncltnId - Reconciliation ID for the sale.
# + SaleRefNb - Reference number for the sale.
# + RePresntmntRsn - Reason for representing the transaction.
# + SeqNb - Sequence number of the transaction.
# + TxId - Transaction identifier for the card transaction.
# + Pdct - Product details associated with the transaction.
# + VldtnDt - Validation date of the transaction.
# + VldtnSeqNb - Validation sequence number for the transaction.
public type CardIndividualTransaction2 record {|
    Max1025Text ICCRltdData?;
    PaymentContext3 PmtCntxt?;
    CardPaymentServiceType2Code AddtlSvc?;
    ExternalCardTransactionCategory1Code TxCtgy?;
    Max35Text SaleRcncltnId?;
    Max35Text SaleRefNb?;
    ExternalRePresentmentReason1Code RePresntmntRsn?;
    Max35Text SeqNb?;
    TransactionIdentifier1 TxId?;
    Product2 Pdct?;
    ISODate VldtnDt?;
    Max35Text VldtnSeqNb?;
|};

public enum CardPaymentServiceType2Code {
    AGGR, DCCV, GRTT, INSP, LOYT, NRES, PUCO, RECP, SOAF, UNAF, VCAU
};

# Defines the structure for CardSecurityInformation1, containing security details of a card.
#
# + CSCMgmt - Management of the card security code (CSC).
# + CSCVal - Value of the card security code.
public type CardSecurityInformation1 record {|
    CSCManagement1Code CSCMgmt;
    Min3Max4NumericText CSCVal?;
|};

# Defines the structure for CardSequenceNumberRange1, representing a range of card sequence numbers.
#
# + FrstTx - First transaction sequence number.
# + LastTx - Last transaction sequence number.
public type CardSequenceNumberRange1 record {|
    Max35Text FrstTx?;
    Max35Text LastTx?;
|};

# Defines the structure for CardTransaction18, representing a card transaction.
#
# + Card - The payment card used in the transaction.
# + POI - Point of interaction for the transaction.
# + Tx - The choice of either aggregated or individual transaction details.
# + PrePdAcct - Prepaid account details linked to the transaction.
public type CardTransaction18 record {|
    PaymentCard4 Card?;
    PointOfInteraction1 POI?;
    CardTransaction3Choice Tx?;
    CashAccount40 PrePdAcct?;
|};

# Defines the structure for CardTransaction3Choice, providing a choice between aggregated or individual card transactions.
#
# + Aggtd - Aggregated card transaction details.
# + Indv - Individual card transaction details.
public type CardTransaction3Choice record {|
    CardAggregated2 Aggtd?;
    CardIndividualTransaction2 Indv?;
|};

# Defines the structure for CardholderAuthentication2, representing the authentication of the cardholder.
#
# + AuthntcnMtd - The method used for authenticating the cardholder.
# + AuthntcnNtty - The entity responsible for authenticating the cardholder.
public type CardholderAuthentication2 record {|
    AuthenticationMethod1Code AuthntcnMtd;
    AuthenticationEntity1Code AuthntcnNtty;
|};

public enum CardholderVerificationCapability1Code {
    MNSG, NPIN, FCPN, FEPN, FDSG, FBIO, MNVR, FBIG, APKI, PKIS, CHDT, SCEC
};

# Defines the structure for CashAccount43, representing a cash account with identification, type, and owner details.
#
# + Id - Identification of the account.
# + Tp - Type of cash account.
# + Ccy - Currency of the cash account.
# + Nm - Name associated with the cash account.
# + Prxy - Proxy account identification.
# + Ownr - Owner of the cash account.
# + Svcr - Servicer of the account.
public type CashAccount43 record {|
    AccountIdentification4Choice Id?;
    CashAccountType2Choice Tp?;
    ActiveOrHistoricCurrencyCode Ccy?;
    Max70Text Nm?;
    ProxyAccountIdentification1 Prxy?;
    PartyIdentification272 Ownr?;
    BranchAndFinancialInstitutionIdentification8 Svcr?;
|};

# Defines the structure for CashAvailability1, representing the availability of cash in an account.
#
# + Dt - Availability date of the cash.
# + Amt - Amount of available cash.
# + CdtDbtInd - Indicator of credit or debit.
public type CashAvailability1 record {|
    CashAvailabilityDate1Choice Dt;
    ActiveOrHistoricCurrencyAndAmount Amt;
    CreditDebitCode CdtDbtInd;
|};

# Defines the structure for CashAvailabilityDate1Choice, offering a choice between number of days and actual date for cash availability.
#
# + NbOfDays - Number of days until cash availability.
# + ActlDt - Actual date of cash availability.
public type CashAvailabilityDate1Choice record {|
    Max15PlusSignedNumericText NbOfDays?;
    ISODate ActlDt?;
|};

# Defines the structure for CashDeposit1, representing details of a cash deposit.
#
# + NoteDnmtn - Denomination of the cash notes deposited.
# + NbOfNotes - Number of notes deposited.
# + Amt - Amount of the cash deposit.
public type CashDeposit1 record {|
    ActiveCurrencyAndAmount NoteDnmtn;
    Max15NumericText NbOfNotes;
    ActiveCurrencyAndAmount Amt;
|};

# Defines the structure for CategoryPurpose1Choice, providing a choice between external code or proprietary category purpose.
#
# + Cd - External category purpose code.
# + Prtry - Proprietary category purpose.
public type CategoryPurpose1Choice record {|
    ExternalCategoryPurpose1Code Cd?;
    Max35Text Prtry?;
|};

public enum ChargeBearerType1Code {
    DEBT, CRED, SHAR, SLEV
};

#Defines the charge included indicator as a boolean.
public type ChargeIncludedIndicator boolean;

# Defines the structure for ChargeType3Choice, providing a choice between external code or proprietary charge type.
#
# + Cd - External charge type code.
# + Prtry - Proprietary charge type.
public type ChargeType3Choice record {|
    ExternalChargeType1Code Cd?;
    GenericIdentification3 Prtry?;
|};

# Defines the structure for Charges15, representing details of charges and tax amounts.
#
# + TtlChrgsAndTaxAmt - Total amount of charges and taxes.
# + Rcrd - Records of individual charge amounts.
public type Charges15 record {|
    ActiveOrHistoricCurrencyAndAmount TtlChrgsAndTaxAmt?;
    ChargesRecord8[] Rcrd?;
|};

# Defines the structure for ChargesRecord8, representing an individual charge record.
#
# + Amt - Amount of the charge.
# + CdtDbtInd - Indicator of whether the charge is a credit or debit.
# + ChrgInclInd - Indicator of whether the charge is included.
# + Tp - Type of the charge.
# + Rate - Rate applied to the charge.
# + Br - Bearer of the charge.
# + Agt - Agent handling the charge.
# + Tax - Applicable taxes on the charge.
public type ChargesRecord8 record {|
    ActiveOrHistoricCurrencyAndAmount Amt;
    CreditDebitCode CdtDbtInd?;
    ChargeIncludedIndicator ChrgInclInd?;
    ChargeType3Choice Tp?;
    PercentageRate Rate?;
    ChargeBearerType1Code Br?;
    BranchAndFinancialInstitutionIdentification8 Agt?;
    TaxCharges2 Tax?;
|};

public enum ClearingChannel2Code {
    RTGS, RTNS, MPNS, BOOK
};

public enum CopyDuplicate1Code {
    CODU, COPY, DUPL
};

# Defines the structure for CorporateAction9, representing corporate actions.
#
# + EvtTp - Type of corporate event.
# + EvtId - Identification of the corporate event.
public type CorporateAction9 record {|
    Max35Text EvtTp;
    Max35Text EvtId;
|};

# Defines the structure for CurrencyExchange24, representing a currency exchange operation.
#
# + SrcCcy - Source currency.
# + TrgtCcy - Target currency.
# + UnitCcy - Currency unit.
# + XchgRate - Exchange rate.
# + CtrctId - Contract identification for the exchange.
# + QtnDt - Quotation date for the exchange rate.
# + XchgRateBase - Base for the exchange rate.
public type CurrencyExchange24 record {|
    ActiveOrHistoricCurrencyCode SrcCcy;
    ActiveOrHistoricCurrencyCode TrgtCcy?;
    ActiveOrHistoricCurrencyCode UnitCcy?;
    BaseOneRate XchgRate;
    Max35Text CtrctId?;
    ISODateTime QtnDt?;
    PositiveNumber XchgRateBase?;
|};

# Defines the structure for DateAndDateTime2Choice, offering a choice between a date or a date-time value.
#
# + Dt - Date.
# + DtTm - Date-time value.
public type DateAndDateTime2Choice record {|
    ISODate Dt?;
    ISODateTime DtTm?;
|};

# Defines the structure for DateOrDateTimePeriod1Choice, offering a choice between a date period or a date-time period.
#
# + Dt    - Date period.
# + DtTm  - Date-time period.
public type DateOrDateTimePeriod1Choice record {|
    DatePeriod2 Dt?;
    DateTimePeriod1 DtTm?;
|};

# Defines the structure for DateTimePeriod1, representing a date-time period with a from and to date-time.
#
# + FrDtTm - From date-time.
# + ToDtTm - To date-time.
public type DateTimePeriod1 record {|
    ISODateTime FrDtTm;
    ISODateTime ToDtTm;
|};

# Defines a decimal number.
public type DecimalNumber decimal;

# Defines the structure for DisplayCapabilities1, specifying user interface display capabilities.
#
# + DispTp     - Type of user interface.
# + NbOfLines  - Number of display lines.
# + LineWidth  - Width of the display lines.
public type DisplayCapabilities1 record {|
    UserInterface2Code DispTp;
    Max3NumericText NbOfLines;
    Max3NumericText LineWidth;
|};

# Defines the structure for EntryDetails13, containing details of batch and transaction information.
#
# + Btch   - Batch information.
# + TxDtls - List of transaction details.
public type EntryDetails13 record {|
    BatchInformation2 Btch?;
    EntryTransaction14[] TxDtls?;
|};

# Defines the structure for EntryTransaction14, representing details of a single entry transaction.
#
# + Refs       - Transaction references.
# + Amt        - Transaction amount.
# + CdtDbtInd  - Credit or debit indicator.
# + AmtDtls    - Details of the amount and currency exchange.
# + Avlbty     - Availability of cash.
# + BkTxCd     - Bank transaction code structure.
# + Chrgs      - Charges associated with the transaction.
# + Intrst     - Interest information.
# + RltdPties  - Related transaction parties.
# + RltdAgts   - Related transaction agents.
# + LclInstrm  - Local instrument choice.
# + PmtTpInf   - Payment type information.
# + Purp       - Purpose of the transaction.
# + RltdRmtInf - Related remittance information (up to 10 instances).
# + RmtInf     - Remittance information.
# + RltdDts    - Related transaction dates.
# + RltdPric   - Related transaction price.
# + RltdQties  - Related transaction quantities.
# + FinInstrmId- Financial instrument identification.
# + Tax        - Tax data.
# + RtrInf     - Payment return reason information.
# + CorpActn   - Corporate action details.
# + SfkpgAcct  - Securities safekeeping account.
# + CshDpst    - Cash deposit information.
# + CardTx     - Card transaction information.
# + AddtlTxInf - Additional transaction information.
# + SplmtryData- Supplementary data.
public type EntryTransaction14 record {|
    TransactionReferences6 Refs?;
    ActiveOrHistoricCurrencyAndAmount Amt?;
    CreditDebitCode CdtDbtInd?;
    AmountAndCurrencyExchange4 AmtDtls?;
    CashAvailability1[] Avlbty?;
    BankTransactionCodeStructure4 BkTxCd?;
    Charges15 Chrgs?;
    TransactionInterest4 Intrst?;
    TransactionParties12 RltdPties?;
    TransactionAgents6 RltdAgts?;
    LocalInstrument2Choice LclInstrm?;
    PaymentTypeInformation27 PmtTpInf?;
    Purpose2Choice Purp?;
    RemittanceLocation8[10] RltdRmtInf?;
    RemittanceInformation22 RmtInf?;
    TransactionDates3 RltdDts?;
    TransactionPrice4Choice RltdPric?;
    TransactionQuantities3Choice[] RltdQties?;
    SecurityIdentification19 FinInstrmId?;
    TaxData1 Tax?;
    PaymentReturnReason8 RtrInf?;
    CorporateAction9 CorpActn?;
    SecuritiesAccount19 SfkpgAcct?;
    CashDeposit1[] CshDpst?;
    CardTransaction18 CardTx?;
    Max500Text AddtlTxInf?;
    SupplementaryData1[] SplmtryData?;
|};

# Defines a string of exactly 1 numeric character.
public type Exact1NumericText string;

# Defines a string of exactly 3 numeric characters.
public type Exact3NumericText string;

# Defines an external bank transaction domain code.
public type ExternalBankTransactionDomain1Code string;

# Defines an external bank transaction family code.
public type ExternalBankTransactionFamily1Code string;

# Defines an external bank transaction sub-family code.
public type ExternalBankTransactionSubFamily1Code string;

# Defines an external card transaction category code.
public type ExternalCardTransactionCategory1Code string;

# Defines an external category purpose code.
public type ExternalCategoryPurpose1Code string;

# Defines an external charge type code.
public type ExternalChargeType1Code string;

# Defines an external financial instrument identification type code.
public type ExternalFinancialInstrumentIdentificationType1Code string;

# Defines an external local instrument code.
public type ExternalLocalInstrument1Code string;

# Defines an external re-presentment reason code.
public type ExternalRePresentmentReason1Code string;

# Defines an external reporting source code.
public type ExternalReportingSource1Code string;

# Defines an external return reason code.
public type ExternalReturnReason1Code string;

# Defines an external service level code.
public type ExternalServiceLevel1Code string;

# Defines an external technical input channel code.
public type ExternalTechnicalInputChannel1Code string;

# Defines the structure for FinancialInstrumentQuantity1Choice, offering a choice between different quantity types for a financial instrument.
#
# + Unit - Unit quantity.
# + FaceAmt  - Face amount.
# + AmtsdVal - Amortized value.
public type FinancialInstrumentQuantity1Choice record {|
    DecimalNumber Unit?;
    ImpliedCurrencyAndAmount FaceAmt?;
    ImpliedCurrencyAndAmount AmtsdVal?;
|};

# Defines the structure for FromToAmountRange1, representing a range between two amount boundaries.
#
# + FrAmt - From amount.
# + ToAmt - To amount.
public type FromToAmountRange1 record {|
    AmountRangeBoundary1 FrAmt;
    AmountRangeBoundary1 ToAmt;
|};

# Defines the structure for GenericIdentification1, representing a generic identifier with an optional scheme name and issuer.
#
# + Id      - Identifier.
# + SchmeNm - Scheme name.
# + Issr    - Issuer.
public type GenericIdentification1 record {|
    Max35Text Id?;
    Max35Text SchmeNm?;
    Max35Text Issr?;
|};

# Defines the structure for GenericIdentification3, representing a generic identifier with an issuer.
#
# + Id   - Identifier.
# + Issr - Issuer.
public type GenericIdentification3 record {|
    Max35Text Id?;
    Max35Text Issr?;
|};

# Defines the structure for GenericIdentification32, representing a generic identifier with a party type, issuer, and short name.
#
# + Id     - Identifier.
# + Tp     - Party type.
# + Issr   - Issuer.
# + ShrtNm - Short name.
public type GenericIdentification32 record {|
    Max35Text Id;
    PartyType3Code Tp?;
    PartyType4Code Issr?;
    Max35Text ShrtNm?;
|};

# Defines the structure for GroupHeader116, representing the header of a message with creation date-time, message recipient, and other optional elements.
#
# + MsgId        - Message identifier.
# + CreDtTm      - Creation date-time.
# + MsgRcpt      - Message recipient.
# + MsgPgntn     - Message pagination details.
# + OrgnlBizQry  - Original business query details.
# + AddtlInf     - Additional information.
public type GroupHeader116 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm;
    PartyIdentification272 MsgRcpt?;
    Pagination1 MsgPgntn?;
    OriginalBusinessQuery1 OrgnlBizQry?;
    Max500Text AddtlInf?;
|};

# defines an ISIN (International Securities Identification Number) in accordance with the October 2015 format.
public type ISINOct2015Identifier string;

# Defines a two-character ISO language code.
public type ISO2ALanguageCode string;

# Defines a string representing a year and month in ISO format (YYYY-MM).
public type ISOYearMonth string;

# Defines the structure for IdentificationSource3Choice, offering a choice between an external code or a proprietary identifier.
#
# + Cd    - External code.
# + Prtry - Proprietary identifier.
public type IdentificationSource3Choice record {|
    ExternalFinancialInstrumentIdentificationType1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for ImpliedCurrencyAmountRange1Choice, offering a choice between different amount range types.
#
# + FrAmt   - From amount boundary.
# + ToAmt   - To amount boundary.
# + FrToAmt - From-to amount range.
# + EQAmt   - Equal amount.
# + NEQAmt  - Not equal amount.
public type ImpliedCurrencyAmountRange1Choice record {|
    AmountRangeBoundary1 FrAmt?;
    AmountRangeBoundary1 ToAmt?;
    FromToAmountRange1 FrToAmt?;
    ImpliedCurrencyAndAmount EQAmt?;
    ImpliedCurrencyAndAmount NEQAmt?;
|};

# Defines a decimal value representing an amount with implied currency.
public type ImpliedCurrencyAndAmount decimal;

# Defines the structure for InterestRecord2, representing interest details including amount, type, and tax charges.
#
# + Amt     - Interest amount.
# + CdtDbtInd- Credit or debit indicator.
# + Tp      - Type of interest.
# + Rate    - Interest rate.
# + FrToDt  - From-to date-time range for interest.
# + Rsn     - Reason for interest.
# + Tax     - Tax charges associated with the interest.
public type InterestRecord2 record {|
    ActiveOrHistoricCurrencyAndAmount Amt;
    CreditDebitCode CdtDbtInd;
    InterestType1Choice Tp?;
    Rate4 Rate?;
    DateTimePeriod1 FrToDt?;
    Max35Text Rsn?;
    TaxCharges2 Tax?;
|};

# Defines the structure for InterestType1Choice, offering a choice between an interest type code and a proprietary identifier.
#
# + Cd    - Interest type code.
# + Prtry - Proprietary interest type.
public type InterestType1Choice record {|
    InterestType1Code Cd?;
    Max35Text Prtry?;
|};

public enum InterestType1Code {
    INDY, OVRN
};

# Defines the structure for LocalInstrument2Choice, offering a choice between an external local instrument code and a proprietary identifier.
#
# + Cd    - External local instrument code.
# + Prtry - Proprietary local instrument identifier.
public type LocalInstrument2Choice record {|
    ExternalLocalInstrument1Code Cd?;
    Max35Text Prtry?;
|};

# Defines a string of up to 1025 characters.
public type Max1025Text string;

# Defines a string of up to 105 characters.
public type Max105Text string;

# Defines a string of up to 15 numeric characters.
public type Max15NumericText string;

# Defines a string of up to 15 numeric characters, allowing for signed values.
public type Max15PlusSignedNumericText string;

# Defines a string of up to 3 numeric characters.
public type Max3NumericText string;

# Defines a string of up to 500 characters.
public type Max500Text string;

# Defines a string of up to 5 numeric characters.
public type Max5NumericText string;

# Defines the structure for MessageIdentification2, containing identifiers for a message name and message.
#
# + MsgNmId - Message name identifier.
# + MsgId   - Message identifier.
public type MessageIdentification2 record {|
    Max35Text MsgNmId?;
    Max35Text MsgId?;
|};

# Defines a string between 2 and 3 numeric characters.
public type Min2Max3NumericText string;

# Defines a string between 3 and 4 numeric characters.
public type Min3Max4NumericText string;

# Defines a string between 8 and 28 numeric characters.
public type Min8Max28NumericText string;

# Defines a non-negative decimal number.
public type NonNegativeDecimalNumber decimal;

# Defines the structure for NumberAndSumOfTransactions1, containing the number of entries and their sum.
#
# + NbOfNtries - Number of entries.
# + Sum        - Sum of the entries.
public type NumberAndSumOfTransactions1 record {|
    Max15NumericText NbOfNtries?;
    DecimalNumber Sum?;
|};

# Defines the structure for NumberAndSumOfTransactions4, containing the number of entries, their sum, and the total net entry.
#
# + NbOfNtries  - Number of entries.
# + Sum         - Sum of the entries.
# + TtlNetNtry  - Total net entry amount and direction.
public type NumberAndSumOfTransactions4 record {|
    Max15NumericText NbOfNtries?;
    DecimalNumber Sum?;
    AmountAndDirection35 TtlNetNtry?;
|};

public enum OnLineCapability1Code {
    OFLN, ONLN, SMON
};

# Defines the structure for OriginalAndCurrentQuantities1, representing the original and current quantities of a financial instrument.
#
# + FaceAmt  - Original face amount.
# + AmtsdVal - Current amortized value.
public type OriginalAndCurrentQuantities1 record {|
    ImpliedCurrencyAndAmount FaceAmt;
    ImpliedCurrencyAndAmount AmtsdVal;
|};

# Defines the structure for OriginalBusinessQuery1, containing information about the original business query.
#
# + MsgId    - Message identifier.
# + MsgNmId  - Message name identifier.
# + CreDtTm  - Creation date-time.
public type OriginalBusinessQuery1 record {|
    Max35Text MsgId;
    Max35Text MsgNmId?;
    ISODateTime CreDtTm?;
|};

# Defines the structure for OtherIdentification1, representing other identification information including an optional suffix and identification source.
#
# + Id   - Identifier.
# + Sfx  - Suffix.
# + Tp   - Identification source.
public type OtherIdentification1 record {|
    Max35Text Id;
    Max16Text Sfx?;
    IdentificationSource3Choice Tp;
|};

public enum POIComponentType1Code {
    SOFT, EMVK, EMVO, MRIT, CHIT, SECM, PEDV
};

# Defines the structure for Pagination1, representing pagination information for a message.
#
# + PgNb      - Page number.
# + LastPgInd - Indicator of whether this is the last page.
public type Pagination1 record {|
    Max5NumericText PgNb;
    YesNoIndicator LastPgInd;
|};

public enum PartyType3Code {
    OPOI, MERC, ACCP, ITAG, ACQR, CISS, DLIS
};

public enum PartyType4Code {
    MERC, ACCP, ITAG, ACQR, CISS, TAXH
};

# Defines the structure for PaymentCard4, representing details of a payment card.
#
# + PlainCardData   - Plain card data.
# + CardCtryCd      - Card country code.
# + CardBrnd        - Card brand.
# + AddtlCardData   - Additional card data.
public type PaymentCard4 record {|
    PlainCardData1 PlainCardData?;
    Exact3NumericText CardCtryCd?;
    GenericIdentification1 CardBrnd?;
    Max70Text AddtlCardData?;
|};

# Defines the structure for PaymentContext3, representing the context of a payment transaction, including details about the presence of the cardholder, attendance, and authentication.
#
# + CardPres         - Indicates if the card was present.
# + CrdhldrPres      - Indicates if the cardholder was present.
# + OnLineCntxt      - Indicates if the transaction was online.
# + AttndncCntxt     - Attendance context.
# + TxEnvt           - Transaction environment.
# + TxChanl          - Transaction channel.
# + AttndntMsgCpbl   - Indicates if the attendant can send messages.
# + AttndntLang      - Attendant language.
# + CardDataNtryMd   - Card data entry mode.
# + FllbckInd        - Indicates if fallback mode was used.
# + AuthntcnMtd      - Authentication method.
public type PaymentContext3 record {|
    TrueFalseIndicator CardPres?;
    TrueFalseIndicator CrdhldrPres?;
    TrueFalseIndicator OnLineCntxt?;
    AttendanceContext1Code AttndncCntxt?;
    TransactionEnvironment1Code TxEnvt?;
    TransactionChannel1Code TxChanl?;
    TrueFalseIndicator AttndntMsgCpbl?;
    ISO2ALanguageCode AttndntLang?;
    CardDataReading1Code CardDataNtryMd;
    TrueFalseIndicator FllbckInd?;
    CardholderAuthentication2 AuthntcnMtd?;
|};

# Defines the structure for PaymentReturnReason8, representing the reason for a returned payment.
#
# + OrgnlBkTxCd - Original bank transaction code.
# + Orgtr       - Originator.
# + Rsn         - Return reason.
# + AddtlInf    - Additional information about the return.
public type PaymentReturnReason8 record {|
    BankTransactionCodeStructure4 OrgnlBkTxCd?;
    PartyIdentification272 Orgtr?;
    ReturnReason5Choice Rsn?;
    Max105Text[] AddtlInf?;
|};

# Defines the structure for PaymentTypeInformation27, representing payment type information including priority, clearing channel, service level, and category purpose.
#
# + InstrPrty - Instruction priority.
# + ClrChanl  - Clearing channel.
# + SvcLvl    - Service level.
# + LclInstrm - Local instrument.
# + SeqTp     - Sequence type.
# + CtgyPurp  - Category purpose.
public type PaymentTypeInformation27 record {|
    Priority2Code InstrPrty?;
    ClearingChannel2Code ClrChanl?;
    ServiceLevel8Choice[] SvcLvl?;
    LocalInstrument2Choice LclInstrm?;
    SequenceType3Code SeqTp?;
    CategoryPurpose1Choice CtgyPurp?;
|};

# Defines the structure for PlainCardData1, representing the basic details of a payment card.
#
# + PAN       - Primary account number.
# + CardSeqNb - Card sequence number.
# + FctvDt    - Effective date.
# + XpryDt    - Expiry date.
# + SvcCd     - Service code.
# + TrckData  - Track data.
# + CardSctyCd- Card security code.
public type PlainCardData1 record {|
    Min8Max28NumericText PAN;
    Min2Max3NumericText CardSeqNb?;
    ISOYearMonth FctvDt?;
    ISOYearMonth XpryDt;
    Exact3NumericText SvcCd?;
    TrackData1[] TrckData?;
    CardSecurityInformation1 CardSctyCd?;
|};

# Defines the structure for PointOfInteraction1, representing a point of interaction device.
#
# + Id       - POI identification.
# + SysNm    - System name.
# + GrpId    - Group identifier.
# + Cpblties - POI capabilities.
# + Cmpnt    - POI components.
public type PointOfInteraction1 record {|
    GenericIdentification32 Id;
    Max70Text SysNm?;
    Max35Text GrpId?;
    PointOfInteractionCapabilities1 Cpblties?;
    PointOfInteractionComponent1[] Cmpnt?;
|};

# Defines the structure for PointOfInteractionCapabilities1, representing the capabilities of a point of interaction device.
#
# + CardRdngCpblties      - Card reading capabilities.
# + CrdhldrVrfctnCpblties - Cardholder verification capabilities.
# + OnLineCpblties        - Online capabilities.
# + DispCpblties          - Display capabilities.
# + PrtLineWidth          - Printer line width.
public type PointOfInteractionCapabilities1 record {|
    CardDataReading1Code[] CardRdngCpblties?;
    CardholderVerificationCapability1Code[] CrdhldrVrfctnCpblties?;
    OnLineCapability1Code OnLineCpblties?;
    DisplayCapabilities1[] DispCpblties?;
    Max3NumericText PrtLineWidth?;
|};

# Defines the structure for PointOfInteractionComponent1, representing a component of a point of interaction device.
#
# + POICmpntTp - Component type.
# + ManfctrId  - Manufacturer identifier.
# + Mdl        - Model.
# + VrsnNb     - Version number.
# + SrlNb      - Serial number.
# + ApprvlNb   - Approval numbers.
public type PointOfInteractionComponent1 record {|
    POIComponentType1Code POICmpntTp;
    Max35Text ManfctrId?;
    Max35Text Mdl?;
    Max16Text VrsnNb?;
    Max35Text SrlNb?;
    Max70Text[] ApprvlNb?;
|};

# Defines for a positive decimal number.
public type PositiveNumber decimal;

# Defines the structure for Price7, representing a price in a financial transaction.
#
# + Tp  - Type of price (yielded or value type).
# + Val - Price value (rate or amount).
public type Price7 record {|
    YieldedOrValueType1Choice Tp;
    PriceRateOrAmount3Choice Val;
|};

# Defines the structure for PriceRateOrAmount3Choice, offering a choice between a percentage rate and a currency amount.
#
# + Rate - Percentage rate.
# + Amt  - Currency amount.
public type PriceRateOrAmount3Choice record {|
    PercentageRate Rate?;
    ActiveOrHistoricCurrencyAnd13DecimalAmount Amt?;
|};

public enum PriceValueType1Code {
    DISC, PREM, PARV
};

public enum Priority2Code {
    HIGH, NORM
};

# Defines the structure for Product2, representing a product including its code, unit of measure, and price.
#
# + PdctCd       - Product code.
# + UnitOfMeasr  - Unit of measure.
# + PdctQty      - Product quantity.
# + UnitPric     - Unit price.
# + PdctAmt      - Total product amount.
# + TaxTp        - Tax type.
# + AddtlPdctInf - Additional product information.
public type Product2 record {|
    Max70Text PdctCd;
    UnitOfMeasure1Code UnitOfMeasr?;
    DecimalNumber PdctQty?;
    ImpliedCurrencyAndAmount UnitPric?;
    ImpliedCurrencyAndAmount PdctAmt?;
    Max35Text TaxTp?;
    Max35Text AddtlPdctInf?;
|};

# Defines the structure for ProprietaryAgent5, representing a proprietary agent and its type.
#
# + Tp  - Type of agent.
# + Agt - Branch and financial institution identification of the agent.
public type ProprietaryAgent5 record {|
    Max35Text Tp;
    BranchAndFinancialInstitutionIdentification8 Agt;
|};

# Defines the structure for ProprietaryBankTransactionCodeStructure1, representing a proprietary bank transaction code.
#
# + Cd    - Transaction code.
# + Issr  - Code issuer.
public type ProprietaryBankTransactionCodeStructure1 record {|
    Max35Text Cd;
    Max35Text Issr?;
|};

# Defines the structure for ProprietaryDate3, representing a proprietary date.
#
# + Tp  - Date type.
# + Dt  - Date value.
public type ProprietaryDate3 record {|
    Max35Text Tp;
    DateAndDateTime2Choice Dt;
|};

# Defines the structure for ProprietaryParty6, representing a proprietary party including its type and party details.
#
# + Tp  - Party type.
# + Pty - Party details.
public type ProprietaryParty6 record {|
    Max35Text Tp;
    Party50Choice Pty;
|};

# Defines the structure for ProprietaryPrice2, representing a proprietary price.
#
# + Tp   - Price type.
# + Pric - Price amount.
public type ProprietaryPrice2 record {|
    Max35Text Tp;
    ActiveOrHistoricCurrencyAndAmount Pric;
|};

# Defines the structure for ProprietaryQuantity1, representing a proprietary quantity.
#
# + Tp  - Quantity type.
# + Qty - Quantity value.
public type ProprietaryQuantity1 record {|
    Max35Text Tp;
    Max35Text Qty;
|};

# Defines the structure for ProprietaryReference1, representing a proprietary reference.
#
# + Tp  - Reference type.
# + Ref - Reference value.
public type ProprietaryReference1 record {|
    Max35Text Tp;
    Max35Text Ref;
|};

# Defines the structure for Rate4, representing an interest rate or fee rate.
#
# + Tp        - Rate type.
# + VldtyRg   - Validity range for the rate.
public type Rate4 record {|
    RateType4Choice Tp;
    ActiveOrHistoricCurrencyAndAmountRange2 VldtyRg?;
|};

# Defines the structure for RateType4Choice, offering a choice between a percentage rate and an alternative rate type.
#
# + Pctg  - Percentage rate.
# + Othr  - Other rate type.
public type RateType4Choice record {|
    PercentageRate Pctg?;
    Max35Text Othr?;
|};

# Defines the structure for ReportEntry14, representing a report entry with various details including amount, status, and charges.
#
# + NtryRef         - Entry reference.
# + Amt             - Entry amount.
# + CdtDbtInd       - Credit or debit indicator.
# + RvslInd         - Reversal indicator.
# + Sts             - Entry status.
# + BookgDt         - Booking date.
# + ValDt           - Value date.
# + AcctSvcrRef     - Account servicer reference.
# + Avlbty          - Cash availability details.
# + BkTxCd          - Bank transaction code.
# + ComssnWvrInd    - Commission waiver indicator.
# + AddtlInfInd     - Additional information indicator.
# + AmtDtls         - Amount and currency exchange details.
# + Chrgs           - Charges applied to the entry.
# + TechInptChanl   - Technical input channel used.
# + Intrst          - Interest details.
# + CardTx          - Card transaction details.
# + NtryDtls        - Entry details.
# + AddtlNtryInf    - Additional entry information.
public type ReportEntry14 record {|
    Max35Text NtryRef?;
    ActiveOrHistoricCurrencyAndAmount Amt;
    CreditDebitCode CdtDbtInd;
    TrueFalseIndicator RvslInd?;
    EntryStatus1Choice Sts;
    DateAndDateTime2Choice BookgDt?;
    DateAndDateTime2Choice ValDt?;
    Max35Text AcctSvcrRef?;
    CashAvailability1[] Avlbty?;
    BankTransactionCodeStructure4 BkTxCd;
    YesNoIndicator ComssnWvrInd?;
    MessageIdentification2 AddtlInfInd?;
    AmountAndCurrencyExchange4 AmtDtls?;
    Charges15 Chrgs?;
    TechnicalInputChannel1Choice TechInptChanl?;
    TransactionInterest4 Intrst?;
    CardEntry5 CardTx?;
    EntryDetails13[] NtryDtls?;
    Max500Text AddtlNtryInf?;
|};

# Defines the structure for ReportingSource1Choice, offering a choice between an external reporting source code and a proprietary source.
#
# + Cd    - External reporting source code.
# + Prtry - Proprietary source.
public type ReportingSource1Choice record {|
    ExternalReportingSource1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for ReturnReason5Choice, offering a choice between an external return reason code and a proprietary reason.
#
# + Cd    - External return reason code.
# + Prtry - Proprietary reason.
public type ReturnReason5Choice record {|
    ExternalReturnReason1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for SecuritiesAccount19, representing a securities account including its identifier, type, and name.
#
# + Id   - Account identifier.
# + Tp   - Account type.
# + Nm   - Account name.
public type SecuritiesAccount19 record {|
    Max35Text Id;
    GenericIdentification30 Tp?;
    Max70Text Nm?;
|};

# Defines the structure for SecurityIdentification19, representing security identification details including ISIN and other identifiers.
#
# + ISIN   - ISIN identifier.
# + OthrId - Other security identifiers.
# + Desc   - Security description.
public type SecurityIdentification19 record {|
    ISINOct2015Identifier ISIN?;
    OtherIdentification1[] OthrId?;
    Max140Text Desc?;
|};

public enum SequenceType3Code {
    FRST, RCUR, FNAL, OOFF, RPRE
};

# Defines the structure for ServiceLevel8Choice, offering a choice between an external service level code and a proprietary service level.
#
# + Cd    - External service level code.
# + Prtry - Proprietary service level.
public type ServiceLevel8Choice record {|
    ExternalServiceLevel1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for TaxCharges2, representing tax charges applied to a transaction.
#
# + Id    - Tax identifier.
# + Rate  - Tax rate.
# + Amt   - Tax amount.
public type TaxCharges2 record {|
    Max35Text Id?;
    PercentageRate Rate?;
    ActiveOrHistoricCurrencyAndAmount Amt?;
|};

# Defines the structure for TechnicalInputChannel1Choice, offering a choice between an external technical input channel and a proprietary channel.
#
# + Cd    - External technical input channel code.
# + Prtry - Proprietary input channel.
public type TechnicalInputChannel1Choice record {|
    ExternalTechnicalInputChannel1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for TotalTransactions6, representing totals for transactions including credit and debit entries.
#
# + TtlNtries            - Total entries.
# + TtlCdtNtries         - Total credit entries.
# + TtlDbtNtries         - Total debit entries.
# + TtlNtriesPerBkTxCd   - Totals per bank transaction code.
public type TotalTransactions6 record {|
    NumberAndSumOfTransactions4 TtlNtries?;
    NumberAndSumOfTransactions1 TtlCdtNtries?;
    NumberAndSumOfTransactions1 TtlDbtNtries?;
    TotalsPerBankTransactionCode5[] TtlNtriesPerBkTxCd?;
|};

# Defines the structure for TotalsPerBankTransactionCode5, representing totals for entries per bank transaction code.
#
# + NbOfNtries   - Number of entries.
# + Sum          - Sum of the entries.
# + TtlNetNtry   - Total net entry.
# + CdtNtries    - Credit entries.
# + DbtNtries    - Debit entries.
# + FcstInd      - Forecast indicator.
# + BkTxCd       - Bank transaction code.
# + Avlbty       - Availability information.
# + Dt           - Date of the entries.
public type TotalsPerBankTransactionCode5 record {|
    Max15NumericText NbOfNtries?;
    DecimalNumber Sum?;
    AmountAndDirection35 TtlNetNtry?;
    NumberAndSumOfTransactions1 CdtNtries?;
    NumberAndSumOfTransactions1 DbtNtries?;
    TrueFalseIndicator FcstInd?;
    BankTransactionCodeStructure4 BkTxCd;
    CashAvailability1[] Avlbty?;
    DateAndDateTime2Choice Dt?;
|};

# Defines the structure for TrackData1, representing track data on a payment card.
#
# + TrckNb  - Track number.
# + TrckVal - Track value.
public type TrackData1 record {|
    Exact1NumericText TrckNb?;
    Max140Text TrckVal;
|};

# Defines the structure for TransactionAgents6, representing agents involved in a transaction including debtor, creditor, and intermediaries.
#
# + InstgAgt    - Instructing agent.
# + InstdAgt    - Instructed agent.
# + DbtrAgt     - Debtor agent.
# + CdtrAgt     - Creditor agent.
# + IntrmyAgt1  - First intermediary agent.
# + IntrmyAgt2  - Second intermediary agent.
# + IntrmyAgt3  - Third intermediary agent.
# + RcvgAgt     - Receiving agent.
# + DlvrgAgt    - Delivering agent.
# + IssgAgt     - Issuing agent.
# + SttlmPlc    - Settlement place.
# + Prtry       - Proprietary agents.
public type TransactionAgents6 record {|
    BranchAndFinancialInstitutionIdentification8 InstgAgt?;
    BranchAndFinancialInstitutionIdentification8 InstdAgt?;
    BranchAndFinancialInstitutionIdentification8 DbtrAgt?;
    BranchAndFinancialInstitutionIdentification8 CdtrAgt?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt1?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt2?;
    BranchAndFinancialInstitutionIdentification8 IntrmyAgt3?;
    BranchAndFinancialInstitutionIdentification8 RcvgAgt?;
    BranchAndFinancialInstitutionIdentification8 DlvrgAgt?;
    BranchAndFinancialInstitutionIdentification8 IssgAgt?;
    BranchAndFinancialInstitutionIdentification8 SttlmPlc?;
    ProprietaryAgent5[] Prtry?;
|};

public enum TransactionChannel1Code {
    MAIL, TLPH, ECOM, TVPY
};

# Defines the structure for TransactionDates3, representing various dates associated with a transaction.
#
# + AccptncDtTm - Date and time of transaction acceptance.
# + TradActvtyCtrctlSttlmDt - Contractual settlement date for the trade activity.
# + TradDt - Trade date.
# + IntrBkSttlmDt - Interbank settlement date.
# + StartDt - Start date of the transaction.
# + EndDt - End date of the transaction.
# + TxDtTm - Transaction date and time.
# + Prtry - Proprietary dates.
public type TransactionDates3 record {|
    ISODateTime AccptncDtTm?;
    ISODate TradActvtyCtrctlSttlmDt?;
    ISODate TradDt?;
    ISODate IntrBkSttlmDt?;
    ISODate StartDt?;
    ISODate EndDt?;
    ISODateTime TxDtTm?;
    ProprietaryDate3[] Prtry?;
|};

public enum TransactionEnvironment1Code {
    MERC, PRIV, PUBL
};

# Defines the structure for TransactionIdentifier1, representing a transaction identifier.
#
# + TxDtTm - Transaction date and time.
# + TxRef - Transaction reference.
public type TransactionIdentifier1 record {|
    ISODateTime TxDtTm;
    Max35Text TxRef;
|};

# Defines the structure for TransactionInterest4, representing details of interest related to a transaction.
#
# + TtlIntrstAndTaxAmt - Total interest and tax amount.
# + Rcrd - Record of interest.
public type TransactionInterest4 record {|
    ActiveOrHistoricCurrencyAndAmount TtlIntrstAndTaxAmt?;
    InterestRecord2[] Rcrd?;
|};

# Defines the structure for TransactionParties12, representing the parties involved in a transaction.
#
# + InitgPty - Initiating party.
# + Dbtr - Debtor.
# + DbtrAcct - Debtor's account.
# + UltmtDbtr - Ultimate debtor.
# + Cdtr - Creditor.
# + CdtrAcct - Creditor's account.
# + UltmtCdtr - Ultimate creditor.
# + TradgPty - Trading party.
# + Prtry - Proprietary parties.
public type TransactionParties12 record {|
    Party50Choice InitgPty?;
    Party50Choice Dbtr?;
    CashAccount40 DbtrAcct?;
    Party50Choice UltmtDbtr?;
    Party50Choice Cdtr?;
    CashAccount40 CdtrAcct?;
    Party50Choice UltmtCdtr?;
    Party50Choice TradgPty?;
    ProprietaryParty6[] Prtry?;
|};

# Defines the structure for TransactionPrice4Choice, offering a choice between a deal price and a proprietary price.
#
# + DealPric - Deal price.
# + Prtry - Proprietary price.
public type TransactionPrice4Choice record {|
    Price7 DealPric?;
    ProprietaryPrice2 Prtry?;
|};

# Defines the structure for TransactionQuantities3Choice, offering a choice between quantity and proprietary quantity.
#
# + Qty - Financial instrument quantity.
# + OrgnlAndCurFaceAmt - Original and current face amount.
# + Prtry - Proprietary quantity.
public type TransactionQuantities3Choice record {|
    FinancialInstrumentQuantity1Choice Qty?;
    OriginalAndCurrentQuantities1 OrgnlAndCurFaceAmt?;
    ProprietaryQuantity1 Prtry?;
|};

# Defines the structure for TransactionReferences6, representing various references associated with a transaction.
#
# + MsgId - Message identifier.
# + AcctSvcrRef - Account servicer reference.
# + PmtInfId - Payment information identifier.
# + InstrId - Instruction identifier.
# + EndToEndId - End-to-end identifier.
# + UETR - Unique End-to-End Transaction Reference.
# + TxId - Transaction identifier.
# + MndtId - Mandate identifier.
# + ChqNb - Cheque number.
# + ClrSysRef - Clearing system reference.
# + AcctOwnrTxId - Account owner transaction identifier.
# + AcctSvcrTxId - Account servicer transaction identifier.
# + MktInfrstrctrTxId - Market infrastructure transaction identifier.
# + PrcgId - Processing identifier.
# + Prtry - Proprietary references.
public type TransactionReferences6 record {|
    Max35Text MsgId?;
    Max35Text AcctSvcrRef?;
    Max35Text PmtInfId?;
    Max35Text InstrId?;
    Max35Text EndToEndId?;
    UUIDv4Identifier UETR?;
    Max35Text TxId?;
    Max35Text MndtId?;
    Max35Text ChqNb?;
    Max35Text ClrSysRef?;
    Max35Text AcctOwnrTxId?;
    Max35Text AcctSvcrTxId?;
    Max35Text MktInfrstrctrTxId?;
    Max35Text PrcgId?;
    ProprietaryReference1[] Prtry?;
|};

public enum UnitOfMeasure1Code {
    PIEC, TONS, FOOT, GBGA, USGA, GRAM, INCH, KILO, PUND, METR, CMET, MMET, LITR, CELI, MILI, GBOU, USOU, GBQA, USQA, GBPI, USPI, MILE, KMET, YARD, SQKI, HECT, ARES, SMET, SCMT, SMIL, SQMI, SQYA, SQFO, SQIN, ACRE
};

public enum UserInterface2Code {
    MDSP, CDSP
};

# Defines yes or no indicator as a boolean.
public type YesNoIndicator boolean;

# Defines the structure for YieldedOrValueType1Choice, offering a choice between a yielded or value type.
#
# + Yldd - Yielded.
# + ValTp - Value type.
public type YieldedOrValueType1Choice record {|
    YesNoIndicator Yldd?;
    PriceValueType1Code ValTp?;
|};

# Defines external credit line type1 code as a string.
public type ExternalCreditLineType1Code string;

# Defines the structure for CashBalance8, representing a cash balance with associated credit line details.
#
# + Tp - Balance type.
# + CdtLine - Credit line.
# + Amt - Amount.
# + CdtDbtInd - Credit or debit indicator.
# + Dt - Date.
# + Avlbty - Availability information.
public type CashBalance8 record {|
    BalanceType13 Tp;
    CreditLine3[] CdtLine?;
    ActiveOrHistoricCurrencyAndAmount Amt;
    CreditDebitCode CdtDbtInd;
    DateAndDateTime2Choice Dt;
    CashAvailability1[] Avlbty?;
|};

# Defines the structure for CreditLine3, representing a credit line associated with a transaction.
#
# + Incl - Indicator for inclusion of the credit line.
# + Tp - Type of credit line.
# + Amt - Amount of the credit line.
# + Dt - Date of the credit line.
public type CreditLine3 record {|
    TrueFalseIndicator Incl;
    CreditLineType1Choice Tp?;
    ActiveOrHistoricCurrencyAndAmount Amt?;
    DateAndDateTime2Choice Dt?;
|};

# Defines the structure for CreditLineType1Choice, offering a choice between an external or proprietary credit line type.
#
# + Cd - External credit line type code.
# + Prtry - Proprietary credit line type.
public type CreditLineType1Choice record {|
    ExternalCreditLineType1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for PaymentIdentification13, representing payment identification details.
#
# + InstrId - Instruction identifier.
# + EndToEndId - End-to-end identifier.
# + TxId - Transaction identifier.
# + UETR - Unique End-to-End Transaction Reference.
# + ClrSysRef - Clearing system reference.
public type PaymentIdentification13 record {|
    Max35Text InstrId?;
    Max35Text EndToEndId;
    Max35Text TxId?;
    UUIDv4Identifier UETR?;
    Max35Text ClrSysRef?;
|};

# Defines the structure for PaymentTypeInformation28, representing payment type details.
#
# + InstrPrty - Instruction priority.
# + ClrChanl - Clearing channel.
# + SvcLvl - Service level.
# + LclInstrm - Local instrument.
# + CtgyPurp - Category purpose.
public type PaymentTypeInformation28 record {|
    Priority2Code InstrPrty?;
    ClearingChannel2Code ClrChanl?;
    ServiceLevel8Choice[] SvcLvl?;
    LocalInstrument2Choice LclInstrm?;
    CategoryPurpose1Choice CtgyPurp?;
|};

# Defines priority code as a string.
public type Priority3Code string;

# Defines the structure for RemittanceInformation2, representing remittance information.
#
# + Ustrd - Unstructured remittance information.
public type RemittanceInformation2 record {|
    Max140Text[] Ustrd?;
|};

# Defines the structure for SettlementDateTimeIndication1, representing settlement date and time details.
#
# + DbtDtTm - Debit date and time.
# + CdtDtTm - Credit date and time.
public type SettlementDateTimeIndication1 record {|
    ISODateTime DbtDtTm?;
    ISODateTime CdtDtTm?;
|};

# Defines the structure for SettlementTimeRequest2, representing a settlement time request.
#
# + CLSTm - Close time.
# + TillTm - Time until the settlement.
# + FrTm - From time.
# + RjctTm - Rejection time.
public type SettlementTimeRequest2 record {|
    ISOTime CLSTm?;
    ISOTime TillTm?;
    ISOTime FrTm?;
    ISOTime RjctTm?;
|};

# Defines the structure for InstructionForCreditorAgent3, representing instructions for the creditor agent.
#
# + Cd - Creditor agent instruction code.
# + InstrInf - Instruction information.
public type InstructionForCreditorAgent3 record {|
    ExternalCreditorAgentInstruction1Code Cd?;
    Max140Text InstrInf?;
|};

# Defines batch booking indicator as a boolean.
public type BatchBookingIndicator boolean;

# Defines external creditor agent instruction1 code as a string.
public type ExternalCreditorAgentInstruction1Code string;

# Defines the structure for References74Choice, offering a choice of transaction references.
#
# + SctiesSttlmTxId - Securities settlement transaction identifier.
# + IntraPosMvmntId - Intra-position movement identifier.
# + IntraBalMvmntId - Intra-balance movement identifier.
# + AcctSvcrTxId - Account servicer transaction identifier.
# + MktInfrstrctrTxId - Market infrastructure transaction identifier.
# + CtrPtyMktInfrstrctrTxId - Counterparty market infrastructure transaction identifier.
# + PoolId - Pool identifier.
# + CmonId - Common identifier.
# + TradId - Trade identifier.
# + OthrTxId - Other transaction identifier.
public type References74Choice record {|
    Max35Text SctiesSttlmTxId?;
    Max35Text IntraPosMvmntId?;
    Max35Text IntraBalMvmntId?;
    Max35Text AcctSvcrTxId?;
    Max35Text MktInfrstrctrTxId?;
    Max35Text CtrPtyMktInfrstrctrTxId?;
    Max35Text PoolId?;
    Max35Text CmonId?;
    Max52Text TradId?;
    Max35Text OthrTxId?;
|};

# Defines the structure for TransactionAllocation1, representing a transaction allocation.
#
# + Amt - Amount allocated.
# + CdtDbtInd - Credit or debit indicator.
# + Acct - Account involved in the allocation.
# + Purp - Purpose of the transaction.
# + Ref - Reference for the transaction.
# + RltdRefs - Related references for the transaction.
public type TransactionAllocation1 record {|
    ActiveOrHistoricCurrencyAndAmount Amt;
    CreditDebitCode CdtDbtInd;
    CashAccount40 Acct;
    Purpose2Choice Purp;
    Max35Text Ref;
    References74Choice[] RltdRefs?;
|};

# Defines the structure for ClearingSystemIdentification3Choice, representing a choice of clearing system identification.
#
# + Cd - External clearing system identification code.
# + Prtry - Proprietary clearing system identification.
public type ClearingSystemIdentification3Choice record {|
    ExternalCashClearingSystem1Code Cd?;
    Max35Text Prtry?;
|};

# Defines external cash clearing system1 code as a string. 
public type ExternalCashClearingSystem1Code string;

# Defines the structure for SettlementInstruction15, representing settlement instructions.
#
# + SttlmMtd - Settlement method.
# + SttlmAcct - Settlement account.
# + ClrSys - Clearing system.
# + InstgRmbrsmntAgt - Instructing reimbursement agent.
# + InstgRmbrsmntAgtAcct - Account of the instructing reimbursement agent.
# + InstdRmbrsmntAgt - Instructed reimbursement agent.
# + InstdRmbrsmntAgtAcct - Account of the instructed reimbursement agent.
# + ThrdRmbrsmntAgt - Third reimbursement agent.
# + ThrdRmbrsmntAgtAcct - Account of the third reimbursement agent.
public type SettlementInstruction15 record {|
    SettlementMethod1Code SttlmMtd;
    CashAccount40 SttlmAcct?;
    ClearingSystemIdentification3Choice ClrSys?;
    BranchAndFinancialInstitutionIdentification8 InstgRmbrsmntAgt?;
    CashAccount40 InstgRmbrsmntAgtAcct?;
    BranchAndFinancialInstitutionIdentification8 InstdRmbrsmntAgt?;
    CashAccount40 InstdRmbrsmntAgtAcct?;
    BranchAndFinancialInstitutionIdentification8 ThrdRmbrsmntAgt?;
    CashAccount40 ThrdRmbrsmntAgtAcct?;
|};

public enum SettlementMethod1Code {
    INDA, INGA, COVE, CLRG
};

# Defines the structure for MandateSetupReason1Choice, offering a choice of mandate setup reasons.
#
# + Cd - External mandate setup reason code.
# + Prtry - Proprietary mandate setup reason.
public type MandateSetupReason1Choice record {|
    ExternalMandateSetupReason1Code Cd?;
    Max70Text Prtry?;
|};

# Defines the structure for MandateTypeInformation2, representing information related to the type of mandate.
#
# + SvcLvl - Service level.
# + LclInstrm - Local instrument.
# + CtgyPurp - Category purpose.
# + Clssfctn - Mandate classification.
public type MandateTypeInformation2 record {|
    ServiceLevel8Choice SvcLvl?;
    LocalInstrument2Choice LclInstrm?;
    CategoryPurpose1Choice CtgyPurp?;
    MandateClassification1Choice Clssfctn?;
|};

# Defines a binary array as bytes.
public type Max10KBinary byte[];

# Defines the structure for MandateClassification1Choice, offering a choice of mandate classifications.
#
# + Cd - Mandate classification code.
# + Prtry - Proprietary classification.
public type MandateClassification1Choice record {|
    MandateClassification1Code Cd?;
    Max35Text Prtry?;
|};

public enum MandateClassification1Code {
    FIXE, USGB, VARI
};

# Defines the structure for Frequency36Choice, representing a choice of frequency and its period or moment.
#
# + Tp - Frequency type code.
# + Prd - Frequency period.
# + PtInTm - Frequency and moment.
public type Frequency36Choice record {|
    Frequency6Code Tp?;
    FrequencyPeriod1 Prd?;
    FrequencyAndMoment1 PtInTm?;
|};

public enum Frequency6Code {
    YEAR, MNTH, QURT, MIAN, WEEK, DAIL, ADHO, INDA, FRTN
};

# Defines the structure for FrequencyAndMoment1, representing a frequency type and an exact moment in time.
#
# + Tp - Frequency type code.
# + PtInTm - Exact numeric representation of the moment.
public type FrequencyAndMoment1 record {|
    Frequency6Code Tp;
    Exact2NumericText PtInTm;
|};

# Defines the structure for FrequencyPeriod1, representing a frequency type and a count per period.
#
# + Tp - Frequency type code.
# + CntPerPrd - Count per period.
public type FrequencyPeriod1 record {|
    Frequency6Code Tp;
    DecimalNumber CntPerPrd;
|};

# Defines external mandate setup reason1 code as a string.
public type ExternalMandateSetupReason1Code string;

# Defines numeric text as a string.
public type Exact2NumericText string;

# Defines the structure for Charges16, representing a charge amount, agent, and charge type.
#
# + Amt - Charge amount.
# + Agt - Agent involved in the charge.
# + Tp - Charge type.
public type Charges16 record {|
    ActiveOrHistoricCurrencyAndAmount Amt;
    BranchAndFinancialInstitutionIdentification8 Agt;
    ChargeType3Choice Tp?;
|};

# Defines a text with maximum 10 characters as a string.
public type Max10Text string;

# Defines the structure for RegulatoryAuthority2, representing the name and country of a regulatory authority.
#
# + Nm - Name of the regulatory authority.
# + Ctry - Country code.
public type RegulatoryAuthority2 record {|
    Max140Text Nm?;
    CountryCode Ctry?;
|};

# Defines the structure for RegulatoryReporting3, representing regulatory reporting details.
#
# + DbtCdtRptgInd - Indicator for debit/credit reporting.
# + Authrty - Regulatory authority.
# + Dtls - Structured regulatory reporting details.
public type RegulatoryReporting3 record {|
    RegulatoryReportingType1Code DbtCdtRptgInd?;
    RegulatoryAuthority2 Authrty?;
    StructuredRegulatoryReporting3[] Dtls?;
|};

# Defines regulatory reporting type1 code as a string.
public type RegulatoryReportingType1Code string;

# Defines the structure for StructuredRegulatoryReporting3, representing structured regulatory reporting details.
#
# + Tp - Type of the reporting.
# + Dt - Date of the reporting.
# + Ctry - Country code.
# + Cd - Code for the reporting.
# + Amt - Amount reported.
# + Inf - Additional information.
public type StructuredRegulatoryReporting3 record {|
    Max35Text Tp?;
    ISODate Dt?;
    CountryCode Ctry?;
    Max10Text Cd?;
    ActiveOrHistoricCurrencyAndAmount Amt?;
    Max35Text[] Inf?;
|};

# Defines the structure for GroupHeader113, representing the header of a group message.
#
# + MsgId - Message identifier.
# + CreDtTm - Creation date and time.
# + BtchBookg - Batch booking indicator.
# + NbOfTxs - Number of transactions.
# + CtrlSum - Control sum for the group.
# + TtlIntrBkSttlmAmt - Total interbank settlement amount.
# + IntrBkSttlmDt - Interbank settlement date.
# + SttlmInf - Settlement information.
# + PmtTpInf - Payment type information.
# + InstgAgt - Instructing agent.
# + InstdAgt - Instructed agent.
public type GroupHeader113 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm;
    BatchBookingIndicator BtchBookg?;
    Max15NumericText NbOfTxs;
    DecimalNumber CtrlSum?;
    ActiveCurrencyAndAmount TtlIntrBkSttlmAmt?;
    ISODate IntrBkSttlmDt?;
    SettlementInstruction15 SttlmInf;
    PaymentTypeInformation28 PmtTpInf?;
    BranchAndFinancialInstitutionIdentification8 InstgAgt?;
    BranchAndFinancialInstitutionIdentification8 InstdAgt?;
|};

# Defines instruction4 code as a string.
public type Instruction4Code string;

# Defines the structure for InstructionForNextAgent1, representing instructions for the next agent.
#
# + Cd - Instruction code.
# + InstrInf - Instruction information.
public type InstructionForNextAgent1 record {|
    Instruction4Code Cd?;
    Max140Text InstrInf?;
|};

# Defines the structure for AmendmentInformationDetails15, representing details of an amendment.
#
# + OrgnlMndtId - Original mandate identifier.
# + OrgnlCdtrSchmeId - Original creditor scheme identification.
# + OrgnlCdtrAgt - Original creditor agent.
# + OrgnlCdtrAgtAcct - Original creditor agent account.
# + OrgnlDbtr - Original debtor.
# + OrgnlDbtrAcct - Original debtor account.
# + OrgnlDbtrAgt - Original debtor agent.
# + OrgnlDbtrAgtAcct - Original debtor agent account.
# + OrgnlFnlColltnDt - Original final collection date.
# + OrgnlFrqcy - Original frequency.
# + OrgnlRsn - Original reason.
# + OrgnlTrckgDays - Original tracking days.
public type AmendmentInformationDetails15 record {|
    Max35Text OrgnlMndtId?;
    PartyIdentification272 OrgnlCdtrSchmeId?;
    BranchAndFinancialInstitutionIdentification8 OrgnlCdtrAgt?;
    CashAccount40 OrgnlCdtrAgtAcct?;
    PartyIdentification272 OrgnlDbtr?;
    CashAccount40 OrgnlDbtrAcct?;
    BranchAndFinancialInstitutionIdentification8 OrgnlDbtrAgt?;
    CashAccount40 OrgnlDbtrAgtAcct?;
    ISODate OrgnlFnlColltnDt?;
    Frequency36Choice OrgnlFrqcy?;
    MandateSetupReason1Choice OrgnlRsn?;
    Exact2NumericText OrgnlTrckgDays?;
|};

# Defines the structure for AmountType4Choice, representing a choice of amounts.
#
# + InstdAmt - Amount instructed.
# + EqvtAmt - Equivalent amount.
public type AmountType4Choice record {|
    ActiveOrHistoricCurrencyAndAmount InstdAmt?;
    EquivalentAmount2 EqvtAmt?;
|};

# Defines the structure for MandateRelatedInformation16, representing information related to a mandate.
#
# + MndtId - Mandate identifier.
# + DtOfSgntr - Date of signature.
# + AmdmntInd - Amendment indicator.
# + AmdmntInfDtls - Amendment information details.
# + ElctrncSgntr - Electronic signature.
# + FrstColltnDt - First collection date.
# + FnlColltnDt - Final collection date.
# + Frqcy - Frequency.
# + Rsn - Reason for the mandate.
# + TrckgDays - Tracking days.
public type MandateRelatedInformation16 record {|
    Max35Text MndtId?;
    ISODate DtOfSgntr?;
    TrueFalseIndicator AmdmntInd?;
    AmendmentInformationDetails15 AmdmntInfDtls?;
    Max1025Text ElctrncSgntr?;
    ISODate FrstColltnDt?;
    ISODate FnlColltnDt?;
    Frequency36Choice Frqcy?;
    MandateSetupReason1Choice Rsn?;
    Exact2NumericText TrckgDays?;
|};

# Defines the structure for Authorisation1Choice, representing a choice of authorisation.
#
# + Cd - Authorisation code.
# + Prtry - Proprietary authorisation.
public type Authorisation1Choice record {|
    Authorisation1Code Cd?;
    Max128Text Prtry?;
|};

# Defines authorisation1 code as a string.
public type Authorisation1Code string;

# Defines the structure for CreditTransferMandateData1, representing credit transfer mandate data.
#
# + MndtId - Mandate identifier.
# + Tp - Mandate type information.
# + DtOfSgntr - Date of signature.
# + DtOfVrfctn - Date of verification.
# + ElctrncSgntr - Electronic signature.
# + FrstPmtDt - First payment date.
# + FnlPmtDt - Final payment date.
# + Frqcy - Frequency.
# + Rsn - Reason for the mandate.
public type CreditTransferMandateData1 record {|
    Max35Text MndtId?;
    MandateTypeInformation2 Tp?;
    ISODate DtOfSgntr?;
    ISODateTime DtOfVrfctn?;
    Max10KBinary ElctrncSgntr?;
    ISODate FrstPmtDt?;
    ISODate FnlPmtDt?;
    Frequency36Choice Frqcy?;
    MandateSetupReason1Choice Rsn?;
|};

# Defines the structure for EquivalentAmount2, representing an amount and its currency.
#
# + Amt - Amount.
# + CcyOfTrf - Currency of the transfer.
public type EquivalentAmount2 record {|
    ActiveOrHistoricCurrencyAndAmount Amt;
    ActiveOrHistoricCurrencyCode CcyOfTrf;
|};

# Defines the structure for OriginalGroupInformation29, representing original group information.
#
# + OrgnlMsgId - Identifier of the original message.
# + OrgnlMsgNmId - Name of the original message.
# + OrgnlCreDtTm - Creation date and time of the original message.
public type OriginalGroupInformation29 record {|
    Max35Text OrgnlMsgId;
    Max35Text OrgnlMsgNmId;
    ISODateTime OrgnlCreDtTm?;
|};


# Defines the structure for MandateRelatedData3Choice, representing choices for mandate-related data.
#
# + DrctDbtMndt - Direct debit mandate information.
# + CdtTrfMndt - Credit transfer mandate information.
public type MandateRelatedData3Choice record {|
    MandateRelatedInformation16 DrctDbtMndt?;
    CreditTransferMandateData1 CdtTrfMndt?;
|};

# Defines the structure for Case6, representing details of a case related to payment processing.
#
# + Id - Identifier for the case.
# + Cretr - Creator of the case.
# + ReopCaseIndctn - Indicator for reopening the case.
public type Case6 record {|
    Max35Text Id;
    Party50Choice Cretr;
    YesNoIndicator ReopCaseIndctn?;
|};

# Defines the structure for CaseAssignment6, representing assignments related to a case.
#
# + Id - Identifier for the case assignment.
# + Assgnr - Party assigning the case.
# + Assgne - Party to whom the case is assigned.
# + CreDtTm - Creation date and time of the case assignment.
public type CaseAssignment6 record {|
    Max35Text Id;
    Party50Choice Assgnr;
    Party50Choice Assgne;
    ISODateTime CreDtTm;
|};

# Defines the structure for OriginalTransactionReference42, representing references to original transactions.
#
# + IntrBkSttlmAmt - Interbank settlement amount.
# + Amt - Amount type choice.
# + IntrBkSttlmDt - Interbank settlement date.
# + ReqdColltnDt - Required collection date.
# + ReqdExctnDt - Required execution date.
# + CdtrSchmeId - Creditor scheme identification.
# + SttlmInf - Settlement information.
# + PmtTpInf - Payment type information.
# + PmtMtd - Payment method.
# + MndtRltdInf - Mandate related information.
# + RmtInf - Remittance information.
# + UltmtDbtr - Ultimate debtor.
# + Dbtr - Debtor party information.
# + DbtrAcct - Debtor account information.
# + DbtrAgt - Debtor agent information.
# + DbtrAgtAcct - Debtor agent account information.
# + CdtrAgt - Creditor agent information.
# + CdtrAgtAcct - Creditor agent account information.
# + Cdtr - Creditor party information.
# + CdtrAcct - Creditor account information.
# + UltmtCdtr - Ultimate creditor.
# + Purp - Purpose of the transaction.
public type OriginalTransactionReference42 record {|
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
|};

public enum PaymentMethod4Code {
    CHK, TRF, DD, TRA
};

# Defines the structure for UnderlyingGroupInformation1, representing information related to underlying groups.
#
# + OrgnlMsgId - Identifier of the original message.
# + OrgnlMsgNmId - Name of the original message.
# + OrgnlCreDtTm - Creation date and time of the original message.
# + OrgnlMsgDlvryChanl - Delivery channel of the original message.
public type UnderlyingGroupInformation1 record {|
    Max35Text OrgnlMsgId;
    Max35Text OrgnlMsgNmId;
    ISODateTime OrgnlCreDtTm?;
    Max35Text OrgnlMsgDlvryChanl?;
|};

# Defines the structure for UnderlyingPaymentInstruction9, representing underlying payment instructions.
#
# + OrgnlGrpInf - Original group information related to the payment instruction.
# + OrgnlPmtInfId - Identifier of the original payment information.
# + OrgnlInstrId - Identifier of the original instruction.
# + OrgnlEndToEndId - Identifier for the end-to-end original transaction.
# + OrgnlUETR - Unique end-to-end transaction reference.
# + OrgnlInstdAmt - Amount specified in the original instruction.
# + ReqdExctnDt - Required execution date.
# + ReqdColltnDt - Required collection date.
# + OrgnlTxRef - Original transaction reference.
# + OrgnlSvcLvl - Original service level information.
public type UnderlyingPaymentInstruction9 record {|
    UnderlyingGroupInformation1 OrgnlGrpInf?;
    Max35Text OrgnlPmtInfId?;
    Max35Text OrgnlInstrId?;
    Max35Text OrgnlEndToEndId?;
    UUIDv4Identifier OrgnlUETR?;
    ActiveOrHistoricCurrencyAndAmount OrgnlInstdAmt?;
    DateAndDateTime2Choice ReqdExctnDt?;
    ISODate ReqdColltnDt?;
    OriginalTransactionReference42 OrgnlTxRef?;
    ServiceLevel8Choice OrgnlSvcLvl?;
|};

# Defines the structure for UnderlyingPaymentTransaction8, representing details of underlying payment transactions.
#
# + OrgnlGrpInf - Original group information related to the payment transaction.
# + OrgnlInstrId - Identifier of the original instruction.
# + OrgnlEndToEndId - Identifier for the end-to-end original transaction.
# + OrgnlTxId - Identifier of the original transaction.
# + OrgnlUETR - Unique end-to-end transaction reference.
# + OrgnlIntrBkSttlmAmt - Interbank settlement amount.
# + OrgnlIntrBkSttlmDt - Interbank settlement date.
# + OrgnlTxRef - Original transaction reference.
# + OrgnlSvcLvl - Original service level information.
public type UnderlyingPaymentTransaction8 record {|
    UnderlyingGroupInformation1 OrgnlGrpInf?;
    Max35Text OrgnlInstrId?;
    Max35Text OrgnlEndToEndId?;
    Max35Text OrgnlTxId?;
    UUIDv4Identifier OrgnlUETR?;
    ActiveOrHistoricCurrencyAndAmount OrgnlIntrBkSttlmAmt?;
    ISODate OrgnlIntrBkSttlmDt?;
    OriginalTransactionReference42 OrgnlTxRef?;
    ServiceLevel8Choice OrgnlSvcLvl?;
|};

# Defines the structure for UnderlyingStatementEntry3, representing underlying statement entries.
#
# + OrgnlGrpInf - Original group information related to the statement entry.
# + OrgnlStmtId - Identifier of the original statement.
# + OrgnlNtryId - Identifier of the original entry.
# + OrgnlUETR - Unique end-to-end transaction reference.
public type UnderlyingStatementEntry3 record {|
    OriginalGroupInformation29 OrgnlGrpInf?;
    Max35Text OrgnlStmtId?;
    Max35Text OrgnlNtryId?;
    UUIDv4Identifier OrgnlUETR?;
|};

# Defines the structure for UnderlyingTransaction8Choice, representing a choice of underlying transactions.
#
# + Initn - Underlying payment instruction.
# + IntrBk - Underlying interbank transaction.
# + StmtNtry - Underlying statement entry.
public type UnderlyingTransaction8Choice record {|
    UnderlyingPaymentInstruction9 Initn?;
    UnderlyingPaymentTransaction8 IntrBk?;
    UnderlyingStatementEntry3 StmtNtry?;
|};

# Defines the structure for PaymentCancellationReason6, representing reasons for payment cancellation.
#
# + Orgtr - Party that originated the transaction.
# + Rsn - Reason for cancellation.
# + AddtlInf - Additional information related to the cancellation.
public type PaymentCancellationReason6 record {|
    PartyIdentification272 Orgtr?;
    CancellationReason33Choice Rsn?;
    Max105Text[] AddtlInf?;
|};

# Defines the structure for ExternalCancellationReason1Code, representing codes for external cancellation reasons.
public type ExternalCancellationReason1Code string;

# Defines the structure for GroupCancellationIndicator, representing an indicator for group cancellations.
public type GroupCancellationIndicator boolean;

# Defines the structure for OriginalGroupHeader21, representing the header of the original group.
#
# + GrpCxlId - Identifier for the group cancellation.
# + Case - Related case information.
# + OrgnlMsgId - Identifier of the original message.
# + OrgnlMsgNmId - Name of the original message.
# + OrgnlCreDtTm - Creation date and time of the original message.
# + NbOfTxs - Number of transactions in the group.
# + CtrlSum - Control sum for the group.
# + GrpCxl - Group cancellation indicator.
# + CxlRsnInf - Reasons for cancellation.
public type OriginalGroupHeader21 record {|
    Max35Text GrpCxlId?;
    Case6 Case?;
    Max35Text OrgnlMsgId;
    Max35Text OrgnlMsgNmId;
    ISODateTime OrgnlCreDtTm?;
    Max15NumericText NbOfTxs?;
    DecimalNumber CtrlSum?;
    GroupCancellationIndicator GrpCxl?;
    PaymentCancellationReason6[] CxlRsnInf?;
|};

# Defines the structure for CancellationReason33Choice, representing choices for cancellation reasons.
#
# + Cd - External cancellation reason code.
# + Prtry - Proprietary cancellation reason.
public type CancellationReason33Choice record {|
    ExternalCancellationReason1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for ControlData1, representing control data for transaction processing.
#
# + NbOfTxs - Number of transactions.
# + CtrlSum - Control sum for the transactions.
public type ControlData1 record {|
    Max15NumericText NbOfTxs;
    DecimalNumber CtrlSum?;
|};

# Defines the structure for PaymentIdentification6, representing identifiers for payment transactions.
#
# + InstrId - Identifier for the instruction.
# + EndToEndId - End-to-end identifier.
# + UETR - Unique end-to-end transaction reference.
public type PaymentIdentification6 record {|
    Max35Text InstrId?;
    Max35Text EndToEndId;
    UUIDv4Identifier UETR?;
|};

# Defines the structure for AdviceType1, representing advice information related to payments.
#
# + CdtAdvc - Credit advice information.
# + DbtAdvc - Debit advice information.
public type AdviceType1 record {|
    AdviceType1Choice CdtAdvc?;
    AdviceType1Choice DbtAdvc?;
|};

# Defines the structure for AdviceType1Choice, representing choices for advice types.
#
# + Cd - Advice type code.
# + Prtry - Proprietary advice type.
public type AdviceType1Choice record {|
    AdviceType1Code Cd?;
    Max35Text Prtry?;
|};

# Defines the structure for AdviceType1Code, representing codes for advice types.
public type AdviceType1Code string;

# Defines the structure for DirectDebitTransaction12, representing direct debit transaction information.
#
# + MndtRltdInf - Mandate related information.
# + CdtrSchmeId - Creditor scheme identification.
# + PreNtfctnId - Pre-notification identifier.
# + PreNtfctnDt - Pre-notification date.
public type DirectDebitTransaction12 record {|
    MandateRelatedInformation16 MndtRltdInf?;
    PartyIdentification272 CdtrSchmeId?;
    Max35Text PreNtfctnId?;
    ISODate PreNtfctnDt?;
|};
