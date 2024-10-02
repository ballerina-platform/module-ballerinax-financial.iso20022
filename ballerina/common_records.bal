import ballerina/data.xmldata;

public type AccountIdentification4Choice record {|
    IBAN2007Identifier IBAN?;
    GenericAccountIdentification1 Othr?;
|};

public type AccountSchemeName1Choice record {|
    ExternalAccountIdentification1Code Cd?;
    Max35Text Prtry?;
|};

public type ActiveOrHistoricCurrencyAndAmount_SimpleType record {|
    decimal ActiveOrHistoricCurrencyAndAmount_SimpleType;
    @xmldata:Attribute
    ActiveOrHistoricCurrencyCode Ccy;
|};

public type ActiveOrHistoricCurrencyAndAmount record {|
    ActiveOrHistoricCurrencyAndAmount_SimpleType ActiveOrHistoricCurrencyAndAmount_SimpleType;
|};

public type ActiveOrHistoricCurrencyCode string;

public enum AddressType2Code {
    ADDR, PBOX, HOME, BIZZ, MLTO, DLVY
};

public type AddressType3Choice record {|
    AddressType2Code Cd?;
    GenericIdentification30 Prtry?;
|};

public type AnyBICDec2014Identifier string;

public type BICFIDec2014Identifier string;

public type BalanceSubType1Choice record {|
    ExternalBalanceSubType1Code Cd?;
    Max35Text Prtry?;
|};

public type BalanceType10Choice record {|
    ExternalBalanceType1Code Cd?;
    Max35Text Prtry?;
|};

public type BalanceType13 record {|
    BalanceType10Choice CdOrPrtry;
    BalanceSubType1Choice SubTp?;
|};

public type BranchAndFinancialInstitutionIdentification8 record {|
    FinancialInstitutionIdentification23 FinInstnId;
    BranchData5 BrnchId?;
|};

public type BranchData5 record {|
    Max35Text Id?;
    LEIIdentifier LEI?;
    Max140Text Nm?;
    PostalAddress27 PstlAdr?;
|};

public type CashAccount40 record {|
    AccountIdentification4Choice Id?;
    CashAccountType2Choice Tp?;
    ActiveOrHistoricCurrencyCode Ccy?;
    Max70Text Nm?;
    ProxyAccountIdentification1 Prxy?;
|};

public type CashAccountType2Choice record {|
    ExternalCashAccountType1Code Cd?;
    Max35Text Prtry?;
|};

public type ClearingSystemIdentification2Choice record {|
    ExternalClearingSystemIdentification1Code Cd?;
    Max35Text Prtry?;
|};

public type ClearingSystemMemberIdentification2 record {|
    ClearingSystemIdentification2Choice ClrSysId?;
    Max35Text MmbId;
|};

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

public type CountryCode string;

public enum CreditDebitCode {
    CRDT, DBIT
};

public type DateAndPlaceOfBirth1 record {|
    ISODate BirthDt;
    Max35Text PrvcOfBirth?;
    Max35Text CityOfBirth;
    CountryCode CtryOfBirth;
|};

public type EntryStatus1Choice record {|
    ExternalEntryStatus1Code Cd?;
    Max35Text Prtry?;
|};

public type Exact4AlphaNumericText string;

public type ExternalAccountIdentification1Code string;

public type ExternalBalanceSubType1Code string;

public type ExternalBalanceType1Code string;

public type ExternalCashAccountType1Code string;

public type ExternalClearingSystemIdentification1Code string;

public type ExternalEntryStatus1Code string;

public type ExternalFinancialInstitutionIdentification1Code string;

public type ExternalOrganisationIdentification1Code string;

public type ExternalPersonIdentification1Code string;

public type ExternalProxyAccountType1Code string;

public type FinancialIdentificationSchemeName1Choice record {|
    ExternalFinancialInstitutionIdentification1Code Cd?;
    Max35Text Prtry?;
|};

public type FinancialInstitutionIdentification23 record {|
    BICFIDec2014Identifier BICFI?;
    ClearingSystemMemberIdentification2 ClrSysMmbId?;
    LEIIdentifier LEI?;
    Max140Text Nm?;
    PostalAddress27 PstlAdr?;
    GenericFinancialIdentification1 Othr?;
|};

public type GenericAccountIdentification1 record {|
    Max34Text Id?;
    AccountSchemeName1Choice SchmeNm?;
    Max35Text Issr?;
|};

public type GenericFinancialIdentification1 record {|
    Max35Text Id?;
    FinancialIdentificationSchemeName1Choice SchmeNm?;
    Max35Text Issr?;
|};

public type GenericIdentification30 record {|
    Exact4AlphaNumericText Id;
    Max35Text Issr;
    Max35Text SchmeNm?;

|};

public type GenericOrganisationIdentification3 record {|
    Max256Text Id?;
    OrganisationIdentificationSchemeName1Choice SchmeNm?;
    Max35Text Issr?;
|};

public type GenericPersonIdentification2 record {|
    Max256Text Id?;
    PersonIdentificationSchemeName1Choice SchmeNm?;
    Max35Text Issr?;
|};

public type GroupHeader117 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm;
    Party50Choice MsgSndr?;
|};

public type IBAN2007Identifier string;

public type ISODate string;

public type ISOYear string;

public type ISODateTime string;

public type ISOTime string;

public type LEIIdentifier string;

public type Max128Text string;

public type Max140Text string;

public type Max16Text string;

public type Max2048Text string;

public type Max256Text string;

public type Max34Text string;

public type Max52Text string;

public type Max350Text string;

public type Max35Text string;

public type Max4Text string;

public type Max70Text string;

public enum NamePrefix2Code {
    DOCT, MADM, MISS, MIST, MIKS
};

public type OrganisationIdentification39 record {|
    AnyBICDec2014Identifier AnyBIC?;
    LEIIdentifier LEI?;
    GenericOrganisationIdentification3[] Othr?;
|};

public type OrganisationIdentificationSchemeName1Choice record {|
    ExternalOrganisationIdentification1Code Cd?;
    Max35Text Prtry?;
|};

public type OtherContact1 record {|
    Max4Text ChanlTp;
    Max128Text Id?;
|};

public type Party50Choice record {|
    PartyIdentification272 Pty?;
    BranchAndFinancialInstitutionIdentification8 Agt?;
|};

public type Party52Choice record {|
    OrganisationIdentification39 OrgId?;
    PersonIdentification18 PrvtId?;
|};

public type PartyIdentification272 record {|
    Max140Text Nm?;
    PostalAddress27 PstlAdr?;
    Party52Choice Id?;
    CountryCode CtryOfRes?;
    Contact13 CtctDtls?;
|};

public type PersonIdentification18 record {|
    DateAndPlaceOfBirth1 DtAndPlcOfBirth?;
    GenericPersonIdentification2[] Othr?;
|};

public type PersonIdentificationSchemeName1Choice record {|
    ExternalPersonIdentification1Code Cd?;
    Max35Text Prtry?;
|};

public type PhoneNumber string;

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

public type ProxyAccountIdentification1 record {|
    ProxyAccountType1Choice Tp?;
    Max2048Text Id;
|};

public type ProxyAccountType1Choice record {|
    ExternalProxyAccountType1Code Cd?;
    Max35Text Prtry?;
|};

public type SupplementaryData1 record {|
    Max350Text PlcAndNm?;
    SupplementaryDataEnvelope1 Envlp;
|};

public type SupplementaryDataEnvelope1 record {
};

public type CreditorReferenceInformation3 record {|
    CreditorReferenceType3 Tp?;
    Max35Text Ref?;
|};

public type CreditorReferenceType2Choice record {|
    ExternalCreditorReferenceType1Code Cd?;
    Max35Text Prtry?;
|};

public type CreditorReferenceType3 record {|
    CreditorReferenceType2Choice CdOrPrtry;
    Max35Text Issr?;
|};

public type DateAndType1 record {|
    DateType2Choice Tp;
    ISODate Dt;
|};

public type DatePeriod2 record {|
    ISODate FrDt;
    ISODate ToDt;
|};

public type DateType2Choice record {|
    ExternalDateType1Code Cd?;
    Max35Text Prtry?;
|};

public type DocumentAdjustment1 record {|
    ActiveOrHistoricCurrencyAndAmount Amt;
    CreditDebitCode CdtDbtInd?;
    Max4Text Rsn?;
    Max140Text AddtlInf?;
|};

public type DocumentAmount1 record {|
    DocumentAmountType1Choice Tp;
    ActiveOrHistoricCurrencyAndAmount Amt;
|};

public type DocumentAmountType1Choice record {|
    ExternalDocumentAmountType1Code Cd?;
    Max35Text Prtry?;
|};

public type DocumentLineIdentification1 record {|
    DocumentLineType1 Tp?;
    Max35Text Nb?;
    ISODate RltdDt?;
|};

public type DocumentLineInformation2 record {|
    DocumentLineIdentification1[] Id;
    Max2048Text Desc?;
    RemittanceAmount4 Amt?;
|};

public type DocumentLineType1 record {|
    DocumentLineType1Choice CdOrPrtry;
    Max35Text Issr?;
|};

public type DocumentLineType1Choice record {|
    ExternalDocumentLineType1Code Cd?;
    Max35Text Prtry?;
|};

public type DocumentType1 record {|
    DocumentType2Choice CdOrPrtry;
    Max35Text Issr?;
|};

public type DocumentType2Choice record {|
    ExternalDocumentType1Code Cd?;
    Max35Text Prtry?;
|};

public type ExternalCreditorReferenceType1Code string;

public type ExternalDateType1Code string;

public type ExternalDocumentAmountType1Code string;

public type ExternalDocumentLineType1Code string;

public type ExternalDocumentType1Code string;

public type ExternalGarnishmentType1Code string;

public type ExternalPurpose1Code string;

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

public type GarnishmentType1 record {|
    GarnishmentType1Choice CdOrPrtry;
    Max35Text Issr?;
|};

public type GarnishmentType1Choice record {|
    ExternalGarnishmentType1Code Cd?;
    Max35Text Prtry?;
|};

public type NameAndAddress18 record {|
    Max140Text Nm;
    PostalAddress27 Adr;
|};

public type Number decimal;

public type PercentageRate decimal;

public type Purpose2Choice record {|
    ExternalPurpose1Code Cd?;
    Max35Text Prtry?;
|};

public type ReferredDocumentInformation8 record {|
    DocumentType1 Tp?;
    Max35Text Nb?;
    DateAndType1 RltdDt?;
    DocumentLineInformation2[] LineDtls?;
|};

public type RemittanceAmount4 record {|
    DocumentAmount1[] RmtAmtAndTp?;
    DocumentAdjustment1[] AdjstmntAmtAndRsn?;
|};

public type RemittanceInformation22 record {|
    Max140Text[] Ustrd?;
    StructuredRemittanceInformation18[] Strd?;
|};

public type RemittanceLocation8 record {|
    Max35Text RmtId?;
    RemittanceLocationData2[] RmtLctnDtls?;
|};

public type RemittanceLocationData2 record {|
    RemittanceLocationMethod2Code Mtd;
    Max2048Text ElctrncAdr?;
    NameAndAddress18 PstlAdr?;
|};

public enum RemittanceLocationMethod2Code {
    FAXI, EDIC, URID, EMAL, POST, SMSM
};

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

public type TaxAmount3 record {|
    PercentageRate Rate?;
    ActiveOrHistoricCurrencyAndAmount TaxblBaseAmt?;
    ActiveOrHistoricCurrencyAndAmount TtlAmt?;
    TaxRecordDetails3[] Dtls?;
|};

public type TaxAuthorisation1 record {|
    Max35Text Titl?;
    Max140Text Nm?;
|};

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

public type TaxParty1 record {|
    Max35Text TaxId?;
    Max35Text RegnId?;
    Max35Text TaxTp?;
|};

public type TaxParty2 record {|
    Max35Text TaxId?;
    Max35Text RegnId?;
    Max35Text TaxTp?;
    TaxAuthorisation1 Authstn?;
|};

public type TaxPeriod3 record {|
    ISOYear Yr?;
    TaxRecordPeriod1Code Tp?;
    DatePeriod2 FrToDt?;
|};

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

public type TaxRecordDetails3 record {|
    TaxPeriod3 Prd?;
    ActiveOrHistoricCurrencyAndAmount Amt;
|};

public enum TaxRecordPeriod1Code {
    MM01, MM02, MM03, MM04, MM05, MM06, MM07, MM08, MM09, MM10, MM11, MM12, QTR1, QTR2, QTR3, QTR4, HLF1, HLF2
};

public type TrueFalseIndicator boolean;

public type UUIDv4Identifier string;

public type SequenceRange1 record {|
    Max35Text FrSeq;
    Max35Text ToSeq;
|};

public type SequenceRange1Choice record {|
    Max35Text FrSeq?;
    Max35Text ToSeq?;
    SequenceRange1 FrToSeq?;
    Max35Text EQSeq?;
    Max35Text NEQSeq?;
|};

public type AccountInterest4 record {|
    InterestType1Choice Tp?;
    Rate4[] Rate?;
    DateTimePeriod1 FrToDt?;
    Max35Text Rsn?;
    TaxCharges2 Tax?;
|};

public type ActiveCurrencyAndAmount_SimpleType record {|
    decimal ActiveCurrencyAndAmount_SimpleType;
    @xmldata:Attribute
    ActiveCurrencyCode Ccy;
|};

public type ActiveCurrencyAndAmount record {|
    ActiveCurrencyAndAmount_SimpleType ActiveCurrencyAndAmount_SimpleType;
|};

public type ActiveCurrencyCode string;

public type ActiveOrHistoricCurrencyAnd13DecimalAmount_SimpleType record {|
    decimal ActiveOrHistoricCurrencyAnd13DecimalAmount_SimpleType;
    @xmldata:Attribute
    ActiveOrHistoricCurrencyCode Ccy;
|};

public type ActiveOrHistoricCurrencyAnd13DecimalAmount record {|
    ActiveOrHistoricCurrencyAnd13DecimalAmount_SimpleType ActiveOrHistoricCurrencyAnd13DecimalAmount_SimpleType;
|};

public type ActiveOrHistoricCurrencyAndAmountRange2 record {|
    ImpliedCurrencyAmountRange1Choice Amt;
    CreditDebitCode CdtDbtInd?;
    ActiveOrHistoricCurrencyCode Ccy;
|};

public type AmountAndCurrencyExchange4 record {|
    AmountAndCurrencyExchangeDetails5 InstdAmt?;
    AmountAndCurrencyExchangeDetails5 TxAmt?;
    AmountAndCurrencyExchangeDetails5 CntrValAmt?;
    AmountAndCurrencyExchangeDetails5 AnncdPstngAmt?;
    AmountAndCurrencyExchangeDetails6[] PrtryAmt?;
|};

public type AmountAndCurrencyExchangeDetails5 record {|
    ActiveOrHistoricCurrencyAndAmount Amt;
    CurrencyExchange24 CcyXchg?;
|};

public type AmountAndCurrencyExchangeDetails6 record {|
    Max35Text Tp;
    ActiveOrHistoricCurrencyAndAmount Amt;
    CurrencyExchange24 CcyXchg?;
|};

public type AmountAndDirection35 record {|
    NonNegativeDecimalNumber Amt;
    CreditDebitCode CdtDbtInd;
|};

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

public type BankTransactionCodeStructure4 record {|
    BankTransactionCodeStructure5 Domn?;
    ProprietaryBankTransactionCodeStructure1 Prtry?;
|};

public type BankTransactionCodeStructure5 record {|
    ExternalBankTransactionDomain1Code Cd;
    BankTransactionCodeStructure6 Fmly;
|};

public type BankTransactionCodeStructure6 record {|
    ExternalBankTransactionFamily1Code Cd;
    ExternalBankTransactionSubFamily1Code SubFmlyCd;
|};

public type BaseOneRate decimal;

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

public type CardEntry5 record {|
    PaymentCard4 Card?;
    PointOfInteraction1 POI?;
    CardAggregated2 AggtdNtry?;
    CashAccount40 PrePdAcct?;
|};

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

public type CardSecurityInformation1 record {|
    CSCManagement1Code CSCMgmt;
    Min3Max4NumericText CSCVal?;
|};

public type CardSequenceNumberRange1 record {|
    Max35Text FrstTx?;
    Max35Text LastTx?;
|};

public type CardTransaction18 record {|
    PaymentCard4 Card?;
    PointOfInteraction1 POI?;
    CardTransaction3Choice Tx?;
    CashAccount40 PrePdAcct?;
|};

public type CardTransaction3Choice record {|
    CardAggregated2 Aggtd?;
    CardIndividualTransaction2 Indv?;
|};

public type CardholderAuthentication2 record {|
    AuthenticationMethod1Code AuthntcnMtd;
    AuthenticationEntity1Code AuthntcnNtty;
|};

public enum CardholderVerificationCapability1Code {
    MNSG, NPIN, FCPN, FEPN, FDSG, FBIO, MNVR, FBIG, APKI, PKIS, CHDT, SCEC
};

public type CashAccount43 record {|
    AccountIdentification4Choice Id?;
    CashAccountType2Choice Tp?;
    ActiveOrHistoricCurrencyCode Ccy?;
    Max70Text Nm?;
    ProxyAccountIdentification1 Prxy?;
    PartyIdentification272 Ownr?;
    BranchAndFinancialInstitutionIdentification8 Svcr?;
|};

public type CashAvailability1 record {|
    CashAvailabilityDate1Choice Dt;
    ActiveOrHistoricCurrencyAndAmount Amt;
    CreditDebitCode CdtDbtInd;
|};

public type CashAvailabilityDate1Choice record {|
    Max15PlusSignedNumericText NbOfDays?;
    ISODate ActlDt?;
|};

public type CashDeposit1 record {|
    ActiveCurrencyAndAmount NoteDnmtn;
    Max15NumericText NbOfNotes;
    ActiveCurrencyAndAmount Amt;
|};

public type CategoryPurpose1Choice record {|
    ExternalCategoryPurpose1Code Cd?;
    Max35Text Prtry?;
|};

public enum ChargeBearerType1Code {
    DEBT, CRED, SHAR, SLEV
};

public type ChargeIncludedIndicator boolean;

public type ChargeType3Choice record {|
    ExternalChargeType1Code Cd?;
    GenericIdentification3 Prtry?;
|};

public type Charges15 record {|
    ActiveOrHistoricCurrencyAndAmount TtlChrgsAndTaxAmt?;
    ChargesRecord8[] Rcrd?;
|};

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

public type CorporateAction9 record {|
    Max35Text EvtTp;
    Max35Text EvtId;
|};

public type CurrencyExchange24 record {|
    ActiveOrHistoricCurrencyCode SrcCcy;
    ActiveOrHistoricCurrencyCode TrgtCcy?;
    ActiveOrHistoricCurrencyCode UnitCcy?;
    BaseOneRate XchgRate;
    Max35Text CtrctId?;
    ISODateTime QtnDt?;
    PositiveNumber XchgRateBase?;
|};

public type DateAndDateTime2Choice record {|
    ISODate Dt?;
    ISODateTime DtTm?;
|};

public type DateOrDateTimePeriod1Choice record {|
    DatePeriod2 Dt?;
    DateTimePeriod1 DtTm?;
|};

public type DateTimePeriod1 record {|
    ISODateTime FrDtTm;
    ISODateTime ToDtTm;
|};

public type DecimalNumber decimal;

public type DisplayCapabilities1 record {|
    UserInterface2Code DispTp;
    Max3NumericText NbOfLines;
    Max3NumericText LineWidth;
|};

public type EntryDetails13 record {|
    BatchInformation2 Btch?;
    EntryTransaction14[] TxDtls?;
|};

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

public type Exact1NumericText string;

public type Exact3NumericText string;

public type ExternalBankTransactionDomain1Code string;

public type ExternalBankTransactionFamily1Code string;

public type ExternalBankTransactionSubFamily1Code string;

public type ExternalCardTransactionCategory1Code string;

public type ExternalCategoryPurpose1Code string;

public type ExternalChargeType1Code string;

public type ExternalFinancialInstrumentIdentificationType1Code string;

public type ExternalLocalInstrument1Code string;

public type ExternalRePresentmentReason1Code string;

public type ExternalReportingSource1Code string;

public type ExternalReturnReason1Code string;

public type ExternalServiceLevel1Code string;

public type ExternalTechnicalInputChannel1Code string;

public type FinancialInstrumentQuantity1Choice record {|
    DecimalNumber Unit?;
    ImpliedCurrencyAndAmount FaceAmt?;
    ImpliedCurrencyAndAmount AmtsdVal?;
|};

public type FromToAmountRange1 record {|
    AmountRangeBoundary1 FrAmt;
    AmountRangeBoundary1 ToAmt;
|};

public type GenericIdentification1 record {|
    Max35Text Id?;
    Max35Text SchmeNm?;
    Max35Text Issr?;
|};

public type GenericIdentification3 record {|
    Max35Text Id?;
    Max35Text Issr?;
|};

public type GenericIdentification32 record {|
    Max35Text Id;
    PartyType3Code Tp?;
    PartyType4Code Issr?;
    Max35Text ShrtNm?;
|};

public type GroupHeader116 record {|
    Max35Text MsgId;
    ISODateTime CreDtTm;
    PartyIdentification272 MsgRcpt?;
    Pagination1 MsgPgntn?;
    OriginalBusinessQuery1 OrgnlBizQry?;
    Max500Text AddtlInf?;
|};

public type ISINOct2015Identifier string;

public type ISO2ALanguageCode string;

public type ISOYearMonth string;

public type IdentificationSource3Choice record {|
    ExternalFinancialInstrumentIdentificationType1Code Cd?;
    Max35Text Prtry?;
|};

public type ImpliedCurrencyAmountRange1Choice record {|
    AmountRangeBoundary1 FrAmt?;
    AmountRangeBoundary1 ToAmt?;
    FromToAmountRange1 FrToAmt?;
    ImpliedCurrencyAndAmount EQAmt?;
    ImpliedCurrencyAndAmount NEQAmt?;
|};

public type ImpliedCurrencyAndAmount decimal;

public type InterestRecord2 record {|
    ActiveOrHistoricCurrencyAndAmount Amt;
    CreditDebitCode CdtDbtInd;
    InterestType1Choice Tp?;
    Rate4 Rate?;
    DateTimePeriod1 FrToDt?;
    Max35Text Rsn?;
    TaxCharges2 Tax?;
|};

public type InterestType1Choice record {|
    InterestType1Code Cd?;
    Max35Text Prtry?;
|};

public enum InterestType1Code {
    INDY, OVRN
};

public type LocalInstrument2Choice record {|
    ExternalLocalInstrument1Code Cd?;
    Max35Text Prtry?;
|};

public type Max1025Text string;

public type Max105Text string;

public type Max15NumericText string;

public type Max15PlusSignedNumericText string;

public type Max3NumericText string;

public type Max500Text string;

public type Max5NumericText string;

public type MessageIdentification2 record {|
    Max35Text MsgNmId?;
    Max35Text MsgId?;
|};

public type Min2Max3NumericText string;

public type Min3Max4NumericText string;

public type Min8Max28NumericText string;

public type NonNegativeDecimalNumber decimal;

public type NumberAndSumOfTransactions1 record {|
    Max15NumericText NbOfNtries?;
    DecimalNumber Sum?;
|};

public type NumberAndSumOfTransactions4 record {|
    Max15NumericText NbOfNtries?;
    DecimalNumber Sum?;
    AmountAndDirection35 TtlNetNtry?;
|};

public enum OnLineCapability1Code {
    OFLN, ONLN, SMON
};

public type OriginalAndCurrentQuantities1 record {|
    ImpliedCurrencyAndAmount FaceAmt;
    ImpliedCurrencyAndAmount AmtsdVal;
|};

public type OriginalBusinessQuery1 record {|
    Max35Text MsgId;
    Max35Text MsgNmId?;
    ISODateTime CreDtTm?;
|};

public type OtherIdentification1 record {|
    Max35Text Id;
    Max16Text Sfx?;
    IdentificationSource3Choice Tp;
|};

public enum POIComponentType1Code {
    SOFT, EMVK, EMVO, MRIT, CHIT, SECM, PEDV
};

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

public type PaymentCard4 record {|
    PlainCardData1 PlainCardData?;
    Exact3NumericText CardCtryCd?;
    GenericIdentification1 CardBrnd?;
    Max70Text AddtlCardData?;
|};

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

public type PaymentReturnReason8 record {|
    BankTransactionCodeStructure4 OrgnlBkTxCd?;
    PartyIdentification272 Orgtr?;
    ReturnReason5Choice Rsn?;
    Max105Text[] AddtlInf?;
|};

public type PaymentTypeInformation27 record {|
    Priority2Code InstrPrty?;
    ClearingChannel2Code ClrChanl?;
    ServiceLevel8Choice[] SvcLvl?;
    LocalInstrument2Choice LclInstrm?;
    SequenceType3Code SeqTp?;
    CategoryPurpose1Choice CtgyPurp?;
|};

public type PlainCardData1 record {|
    Min8Max28NumericText PAN;
    Min2Max3NumericText CardSeqNb?;
    ISOYearMonth FctvDt?;
    ISOYearMonth XpryDt;
    Exact3NumericText SvcCd?;
    TrackData1[] TrckData?;
    CardSecurityInformation1 CardSctyCd?;
|};

public type PointOfInteraction1 record {|
    GenericIdentification32 Id;
    Max70Text SysNm?;
    Max35Text GrpId?;
    PointOfInteractionCapabilities1 Cpblties?;
    PointOfInteractionComponent1[] Cmpnt?;
|};

public type PointOfInteractionCapabilities1 record {|
    CardDataReading1Code[] CardRdngCpblties?;
    CardholderVerificationCapability1Code[] CrdhldrVrfctnCpblties?;
    OnLineCapability1Code OnLineCpblties?;
    DisplayCapabilities1[] DispCpblties?;
    Max3NumericText PrtLineWidth?;
|};

public type PointOfInteractionComponent1 record {|
    POIComponentType1Code POICmpntTp;
    Max35Text ManfctrId?;
    Max35Text Mdl?;
    Max16Text VrsnNb?;
    Max35Text SrlNb?;
    Max70Text[] ApprvlNb?;
|};

public type PositiveNumber decimal;

public type Price7 record {|
    YieldedOrValueType1Choice Tp;
    PriceRateOrAmount3Choice Val;
|};

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

public type Product2 record {|
    Max70Text PdctCd;
    UnitOfMeasure1Code UnitOfMeasr?;
    DecimalNumber PdctQty?;
    ImpliedCurrencyAndAmount UnitPric?;
    ImpliedCurrencyAndAmount PdctAmt?;
    Max35Text TaxTp?;
    Max35Text AddtlPdctInf?;
|};

public type ProprietaryAgent5 record {|
    Max35Text Tp;
    BranchAndFinancialInstitutionIdentification8 Agt;
|};

public type ProprietaryBankTransactionCodeStructure1 record {|
    Max35Text Cd;
    Max35Text Issr?;
|};

public type ProprietaryDate3 record {|
    Max35Text Tp;
    DateAndDateTime2Choice Dt;
|};

public type ProprietaryParty6 record {|
    Max35Text Tp;
    Party50Choice Pty;
|};

public type ProprietaryPrice2 record {|
    Max35Text Tp;
    ActiveOrHistoricCurrencyAndAmount Pric;
|};

public type ProprietaryQuantity1 record {|
    Max35Text Tp;
    Max35Text Qty;
|};

public type ProprietaryReference1 record {|
    Max35Text Tp;
    Max35Text Ref;
|};

public type Rate4 record {|
    RateType4Choice Tp;
    ActiveOrHistoricCurrencyAndAmountRange2 VldtyRg?;
|};

public type RateType4Choice record {|
    PercentageRate Pctg?;
    Max35Text Othr?;
|};

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

public type ReportingSource1Choice record {|
    ExternalReportingSource1Code Cd?;
    Max35Text Prtry?;
|};

public type ReturnReason5Choice record {|
    ExternalReturnReason1Code Cd?;
    Max35Text Prtry?;
|};

public type SecuritiesAccount19 record {|
    Max35Text Id;
    GenericIdentification30 Tp?;
    Max70Text Nm?;
|};

public type SecurityIdentification19 record {|
    ISINOct2015Identifier ISIN?;
    OtherIdentification1[] OthrId?;
    Max140Text Desc?;
|};

public enum SequenceType3Code {
    FRST, RCUR, FNAL, OOFF, RPRE
};

public type ServiceLevel8Choice record {|
    ExternalServiceLevel1Code Cd?;
    Max35Text Prtry?;
|};

public type TaxCharges2 record {|
    Max35Text Id?;
    PercentageRate Rate?;
    ActiveOrHistoricCurrencyAndAmount Amt?;
|};

public type TechnicalInputChannel1Choice record {|
    ExternalTechnicalInputChannel1Code Cd?;
    Max35Text Prtry?;
|};

public type TotalTransactions6 record {|
    NumberAndSumOfTransactions4 TtlNtries?;
    NumberAndSumOfTransactions1 TtlCdtNtries?;
    NumberAndSumOfTransactions1 TtlDbtNtries?;
    TotalsPerBankTransactionCode5[] TtlNtriesPerBkTxCd?;
|};

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

public type TrackData1 record {|
    Exact1NumericText TrckNb?;
    Max140Text TrckVal;
|};

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

public type TransactionIdentifier1 record {|
    ISODateTime TxDtTm;
    Max35Text TxRef;
|};

public type TransactionInterest4 record {|
    ActiveOrHistoricCurrencyAndAmount TtlIntrstAndTaxAmt?;
    InterestRecord2[] Rcrd?;
|};

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

public type TransactionPrice4Choice record {|
    Price7 DealPric?;
    ProprietaryPrice2 Prtry?;
|};

public type TransactionQuantities3Choice record {|
    FinancialInstrumentQuantity1Choice Qty?;
    OriginalAndCurrentQuantities1 OrgnlAndCurFaceAmt?;
    ProprietaryQuantity1 Prtry?;
|};

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

public type YesNoIndicator boolean;

public type YieldedOrValueType1Choice record {|
    YesNoIndicator Yldd?;
    PriceValueType1Code ValTp?;
|};

public type ExternalCreditLineType1Code string;

public type CashBalance8 record {|
    BalanceType13 Tp;
    CreditLine3[] CdtLine?;
    ActiveOrHistoricCurrencyAndAmount Amt;
    CreditDebitCode CdtDbtInd;
    DateAndDateTime2Choice Dt;
    CashAvailability1[] Avlbty?;
|};

public type CreditLine3 record {|
    TrueFalseIndicator Incl;
    CreditLineType1Choice Tp?;
    ActiveOrHistoricCurrencyAndAmount Amt?;
    DateAndDateTime2Choice Dt?;
|};

public type CreditLineType1Choice record {|
    ExternalCreditLineType1Code Cd?;
    Max35Text Prtry?;
|};

public type PaymentIdentification13 record {|
    Max35Text InstrId?;
    Max35Text EndToEndId;
    Max35Text TxId?;
    UUIDv4Identifier UETR?;
    Max35Text ClrSysRef?;
|};

public type PaymentTypeInformation28 record {|
    Priority2Code InstrPrty?;
    ClearingChannel2Code ClrChanl?;
    ServiceLevel8Choice[] SvcLvl?;
    LocalInstrument2Choice LclInstrm?;
    CategoryPurpose1Choice CtgyPurp?;
|};

public type Priority3Code string;

public type RemittanceInformation2 record {|
    Max140Text[] Ustrd?;
|};

public type SettlementDateTimeIndication1 record {|
    ISODateTime DbtDtTm?;
    ISODateTime CdtDtTm?;
|};

public type SettlementTimeRequest2 record {|
    ISOTime CLSTm?;
    ISOTime TillTm?;
    ISOTime FrTm?;
    ISOTime RjctTm?;
|};

public type InstructionForCreditorAgent3 record {|
    ExternalCreditorAgentInstruction1Code Cd?;
    Max140Text InstrInf?;
|};

public type BatchBookingIndicator boolean;

public type ExternalCreditorAgentInstruction1Code string;

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

public type TransactionAllocation1 record {|
    ActiveOrHistoricCurrencyAndAmount Amt;
    CreditDebitCode CdtDbtInd;
    CashAccount40 Acct;
    Purpose2Choice Purp;
    Max35Text Ref;
    References74Choice[] RltdRefs?;
|};

public type ClearingSystemIdentification3Choice record {|
    ExternalCashClearingSystem1Code Cd?;
    Max35Text Prtry?;
|};

public type ExternalCashClearingSystem1Code string;

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

public type MandateSetupReason1Choice record {|
    ExternalMandateSetupReason1Code Cd?;
    Max70Text Prtry?;
|};

public type MandateTypeInformation2 record {|
    ServiceLevel8Choice SvcLvl?;
    LocalInstrument2Choice LclInstrm?;
    CategoryPurpose1Choice CtgyPurp?;
    MandateClassification1Choice Clssfctn?;
|};

public type Max10KBinary byte[];

public type MandateClassification1Choice record {|
    MandateClassification1Code Cd?;
    Max35Text Prtry?;
|};

public enum MandateClassification1Code {
    FIXE, USGB, VARI
};

public type Frequency36Choice record {|
    Frequency6Code Tp?;
    FrequencyPeriod1 Prd?;
    FrequencyAndMoment1 PtInTm?;
|};

public enum Frequency6Code {
    YEAR, MNTH, QURT, MIAN, WEEK, DAIL, ADHO, INDA, FRTN
};

public type FrequencyAndMoment1 record {|
    Frequency6Code Tp;
    Exact2NumericText PtInTm;
|};

public type FrequencyPeriod1 record {|
    Frequency6Code Tp;
    DecimalNumber CntPerPrd;
|};

public type ExternalMandateSetupReason1Code string;

public type Exact2NumericText string;

public type Charges16 record {|
    ActiveOrHistoricCurrencyAndAmount Amt;
    BranchAndFinancialInstitutionIdentification8 Agt;
    ChargeType3Choice Tp?;
|};

public type Max10Text string;

public type RegulatoryAuthority2 record {|
    Max140Text Nm?;
    CountryCode Ctry?;
|};

public type RegulatoryReporting3 record {|
    RegulatoryReportingType1Code DbtCdtRptgInd?;
    RegulatoryAuthority2 Authrty?;
    StructuredRegulatoryReporting3[] Dtls?;
|};

public type RegulatoryReportingType1Code string;

public type StructuredRegulatoryReporting3 record {|
    Max35Text Tp?;
    ISODate Dt?;
    CountryCode Ctry?;
    Max10Text Cd?;
    ActiveOrHistoricCurrencyAndAmount Amt?;
    Max35Text[] Inf?;
|};

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

public type Instruction4Code string;

public type InstructionForNextAgent1 record {|
    Instruction4Code Cd?;
    Max140Text InstrInf?;
|};

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

public type AmountType4Choice record {|
    ActiveOrHistoricCurrencyAndAmount InstdAmt?;
    EquivalentAmount2 EqvtAmt?;
|};

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

public type Authorisation1Choice record {|
    Authorisation1Code Cd?;
    Max128Text Prtry?;
|};

public type Authorisation1Code string;

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

public type EquivalentAmount2 record {|
    ActiveOrHistoricCurrencyAndAmount Amt;
    ActiveOrHistoricCurrencyCode CcyOfTrf;
|};

public type OriginalGroupInformation29 record {|
    Max35Text OrgnlMsgId;
    Max35Text OrgnlMsgNmId;
    ISODateTime OrgnlCreDtTm?;
|};

public type OriginalPaymentInstruction48 record {|
    Max35Text OrgnlPmtInfCxlId?;
    Case6 RslvdCase?;
    Max35Text OrgnlPmtInfId;
    OriginalGroupInformation29 OrgnlGrpInf?;
    Max15NumericText OrgnlNbOfTxs?;
    DecimalNumber OrgnlCtrlSum?;
    GroupCancellationStatus1Code PmtInfCxlSts?;
    CancellationStatusReason5[] CxlStsRsnInf?;
    NumberOfCancellationsPerStatus1[] NbOfTxsPerCxlSts?;
    PaymentTransaction153[] TxInfAndSts?;
|};

public type MandateRelatedData3Choice record {|
    MandateRelatedInformation16 DrctDbtMndt?;
    CreditTransferMandateData1 CdtTrfMndt?;
|};

public type Case6 record {|
    Max35Text Id;
    Party50Choice Cretr;
    YesNoIndicator ReopCaseIndctn?;
|};

public type CaseAssignment6 record {|
    Max35Text Id;
    Party50Choice Assgnr;
    Party50Choice Assgne;
    ISODateTime CreDtTm;
|};

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

public type UnderlyingGroupInformation1 record {|
    Max35Text OrgnlMsgId;
    Max35Text OrgnlMsgNmId;
    ISODateTime OrgnlCreDtTm?;
    Max35Text OrgnlMsgDlvryChanl?;
|};

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

public type UnderlyingStatementEntry3 record {|
    OriginalGroupInformation29 OrgnlGrpInf?;
    Max35Text OrgnlStmtId?;
    Max35Text OrgnlNtryId?;
    UUIDv4Identifier OrgnlUETR?;
|};

public type UnderlyingTransaction8Choice record {|
    UnderlyingPaymentInstruction9 Initn?;
    UnderlyingPaymentTransaction8 IntrBk?;
    UnderlyingStatementEntry3 StmtNtry?;
|};

public type PaymentCancellationReason6 record {|
    PartyIdentification272 Orgtr?;
    CancellationReason33Choice Rsn?;
    Max105Text[] AddtlInf?;
|};

public type ExternalCancellationReason1Code string;

public type GroupCancellationIndicator boolean;

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

public type CancellationReason33Choice record {|
    ExternalCancellationReason1Code Cd?;
    Max35Text Prtry?;
|};

public type ControlData1 record {|
    Max15NumericText NbOfTxs;
    DecimalNumber CtrlSum?;
|};

public type PaymentIdentification6 record {|
    Max35Text InstrId?;
    Max35Text EndToEndId;
    UUIDv4Identifier UETR?;
|};

public type AdviceType1 record {|
    AdviceType1Choice CdtAdvc?;
    AdviceType1Choice DbtAdvc?;
|};

public type AdviceType1Choice record {|
    AdviceType1Code Cd?;
    Max35Text Prtry?;
|};

public type AdviceType1Code string;

public type DirectDebitTransaction12 record {|
    MandateRelatedInformation16 MndtRltdInf?;
    PartyIdentification272 CdtrSchmeId?;
    Max35Text PreNtfctnId?;
    ISODate PreNtfctnDt?;
|};