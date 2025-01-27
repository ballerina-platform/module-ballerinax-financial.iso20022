# Ballerina ISO 20022 Library

## Overview

ISO 20022 is an international standard for financial messaging that allows the exchange of structured and detailed information across different financial services, such as payments and securities. It uses a data-rich XML format, enabling more comprehensive data sharing compared to older formats like SWIFT MT. ISO 20022 also promotes global interoperability, reducing complexity by harmonizing financial communication standards across borders and sectors. As the financial industry adopts this standard, it supports innovation and digital transformation in financial messaging.

The ISO 20022 library provides a comprehensive collection of ISO 20022 records, organized into submodules for each message type category. This modular approach allows seamless integration with financial messaging systems, enabling users to create, manipulate, and parse ISO 20022-compliant messages specific to their needs. By offering a standardized solution for handling complex financial data, the library streamlines operations within Ballerina applications, making it easier to work with diverse ISO 20022 message categories.

## Supported ISO 20022 Message Types

- camt.026.001.10
- camt.027.001.10
- camt 028.001.12 
- camt.029.001.13
- camt.031.001.07
- camt.033.001.07
- camt.034.001.07
- camt.050.001.07
- camt.052.001.12
- camt.054.001.12
- camt.055.001.11
- camt.056.001.12
- camt.057.001.08
- camt.058.001.09
- camt.060.001.07
- camt.107.001.02
- camt.108.001.02
- camt.109.001.02
- pacs.002.001.14
- pacs.003.001.11
- pacs.004.001.13
- pacs.008.001.12
- pacs.009.001.11
- pacs.010.001.06
- pain.001.001.12
- pain.002.001.14
- pain.008.001.11

## Available Submodules

- financial.iso20022.cash_management
- financial.iso20022.payment_initiation
- financial.iso20022.payments_clearing_and_settlement 

## Usage

### Create new ISO 20022 documents and Convert to XML

```ballerina
import ballerinax/financial.iso20022.payments_clearing_and_settlement as isorecord;
import ballerinax/financial.iso20022 as iso20022;
import ballerina/io;

public function main() returns error? {
    isorecord:Pacs004Envelope envelope = {
        // AppHdr is optional so documents can be created with or without AppHdr.
        AppHdr:{
            Fr:{FIId:{FinInstnId:{BICFI:"NDEAFIHHXXX"}}},
            To:{FIId:{FinInstnId:{"BICFI":"ABNANL2AXXX"}}},
            BizMsgIdr:"pacs4bizmsgidr02",
            MsgDefIdr:"pacs.004.001.09",
            BizSvc:"swift.cbprplus.02",
            CreDt:"2020-08-03T12:13:41.960+00:00",
            Rltd:[
                {Fr:{FIId:{FinInstnId:{BICFI:"ABNANL2AXXX"}}},
                To:{FIId:{FinInstnId:{BICFI:"NDEAFIHHXXX"}}},
                BizMsgIdr:"pacs9bizmsgidr01",
                MsgDefIdr:"pacs.009.001.08",
                BizSvc:"swift.cbprplus.02",
                CreDt:"2020-08-03T10:13:41.960+00:00"}]},
        Document:{
            PmtRtr:{
                GrpHdr:{
                    MsgId:"pacs4bizmsgidr02",
                    CreDtTm:"2020-08-03T12:13:41.960+00:00",
                    NbOfTxs:"1",
                    SttlmInf:{SttlmMtd:"INGA"}},
                    TxInf:[
                        {OrgnlGrpInf:{OrgnlMsgId:"pacs9bizmsgidr01",OrgnlMsgNmId:"pacs.009.001.08"},
                        OrgnlInstrId:"pacs9bizmsgidr01",OrgnlEndToEndId:"pacs009EndToEndId-001",OrgnlUETR:"dab3b64f-092b-4839-b7e9-8f438af50961",OrgnlIntrBkSttlmAmt:{content:654489.98,Ccy:"EUR"},OrgnlIntrBkSttlmDt:"2020-08-03",RtrdIntrBkSttlmAmt:{content:654489.98,Ccy:"EUR"},IntrBkSttlmDt:"2020-08-03",ChrgBr:"SHAR",InstgAgt:{FinInstnId:{BICFI:"NDEAFIHHXXX"}},InstdAgt:{FinInstnId:{BICFI:"ABNANL2AXXX"}},RtrChain:{Dbtr:{Agt:{FinInstnId:{BICFI:"NDEAFIHHXXX"}}},CdtrAgt:{FinInstnId:{BICFI:"ABNANL2AXXX"}},Cdtr:{Agt:{FinInstnId:{BICFI:"RBOSGB2LXXX"}}}},RtrRsnInf:[{Rsn:{Cd:"AC04"}}]}]}}
    };
    io:println(iso20022:toIso20022Xml(envelope));
}
```

### Parse ISO 20022 XML to Corresponding ISO 20022 Record Type

```ballerina
import ballerinax/financial.iso20022.payments_clearing_and_settlement as isorecord;
import ballerinax/financial.iso20022 as iso20022;
import ballerina/io;

public function main() returns error? {
    xml newXml = xml `<Envelope xmlns="urn:swift:xsd:envelope" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:swift:xsd:envelope \\be-file02\Group\Standards\Messaging\CBPR+Schemas\Feb24Schemas_Core\Translator_envelope_core.xsd">
        <AppHdr xmlns="urn:iso:std:iso:20022:tech:xsd:head.001.001.04">
            <Fr>
                <FIId>
                    <FinInstnId>
                        <BICFI>NDEAFIHHXXX</BICFI>
                    </FinInstnId>
                </FIId>
            </Fr>
            <To>
                <FIId>
                    <FinInstnId>
                        <BICFI>ABNANL2AXXX</BICFI>
                    </FinInstnId>
                </FIId>
            </To>
            <BizMsgIdr>pacs4bizmsgidr02</BizMsgIdr>
            <MsgDefIdr>pacs.004.001.09</MsgDefIdr>
            <BizSvc>swift.cbprplus.02</BizSvc>
            <CreDt>2020-08-03T12:13:41.960+00:00</CreDt>
            <Rltd>
                <Fr>
                    <FIId>
                        <FinInstnId>
                            <BICFI>ABNANL2AXXX</BICFI>
                        </FinInstnId>
                    </FIId>
                </Fr>
                <To>
                    <FIId>
                        <FinInstnId>
                            <BICFI>NDEAFIHHXXX</BICFI>
                        </FinInstnId>
                    </FIId>
                </To>
                <BizMsgIdr>pacs9bizmsgidr01</BizMsgIdr>
                <MsgDefIdr>pacs.009.001.08</MsgDefIdr>
                <BizSvc>swift.cbprplus.02</BizSvc>
                <CreDt>2020-08-03T10:13:41.960+00:00</CreDt>
            </Rltd>
        </AppHdr>
        <Document xmlns="urn:iso:std:iso:20022:tech:xsd:pacs.004.001.13">
            <PmtRtr>
                <GrpHdr>
                    <MsgId>pacs4bizmsgidr02</MsgId>
                    <CreDtTm>2020-08-03T12:13:41.960+00:00</CreDtTm>
                    <NbOfTxs>1</NbOfTxs>
                    <SttlmInf>
                        <SttlmMtd>INGA</SttlmMtd>
                    </SttlmInf>
                </GrpHdr>
                <TxInf>
                    <OrgnlGrpInf>
                        <OrgnlMsgId>pacs9bizmsgidr01</OrgnlMsgId>
                        <OrgnlMsgNmId>pacs.009.001.08</OrgnlMsgNmId>
                    </OrgnlGrpInf>
                    <OrgnlInstrId>pacs9bizmsgidr01</OrgnlInstrId>
                    <OrgnlEndToEndId>pacs009EndToEndId-001</OrgnlEndToEndId>
                    <OrgnlUETR>dab3b64f-092b-4839-b7e9-8f438af50961</OrgnlUETR>
                    <OrgnlIntrBkSttlmAmt Ccy="EUR">654489.98</OrgnlIntrBkSttlmAmt>
                    <OrgnlIntrBkSttlmDt>2020-08-03</OrgnlIntrBkSttlmDt>
                    <RtrdIntrBkSttlmAmt Ccy="EUR">654489.98</RtrdIntrBkSttlmAmt>
                    <IntrBkSttlmDt>2020-08-03</IntrBkSttlmDt>
                    <ChrgBr>SHAR</ChrgBr>
                    <InstgAgt>
                        <FinInstnId>
                            <BICFI>NDEAFIHHXXX</BICFI>
                        </FinInstnId>
                    </InstgAgt>
                    <InstdAgt>
                        <FinInstnId>
                            <BICFI>ABNANL2AXXX</BICFI>
                        </FinInstnId>
                    </InstdAgt>
                    <RtrChain>
                        <Dbtr>
                            <Agt>
                                <FinInstnId>
                                    <BICFI>NDEAFIHHXXX</BICFI>
                                </FinInstnId>
                            </Agt>
                        </Dbtr>
                        <CdtrAgt>
                            <FinInstnId>
                                <BICFI>ABNANL2AXXX</BICFI>
                            </FinInstnId>
                        </CdtrAgt>
                        <Cdtr>
                            <Agt>
                                <FinInstnId>
                                    <BICFI>RBOSGB2LXXX</BICFI>
                                </FinInstnId>
                            </Agt>
                        </Cdtr>
                    </RtrChain>
                    <RtrRsnInf>
                        <Rsn>
                            <Cd>AC04</Cd>
                        </Rsn>
                    </RtrRsnInf>
                </TxInf>
            </PmtRtr>
        </Document>
    </Envelope>`;
    io:println(iso20022:fromIso20022(newXml, isorecord:Pacs004Envelope));
}
```

## Report issues

To report bugs, request new features, start new discussions, view project boards, etc., go to
the [Ballerina library parent repository](https://github.com/ballerina-platform/ballerina-library).

## Useful Links

- Chat live with us via our [Discord server](https://discord.gg/ballerinalang).
- Post all technical questions on Stack Overflow with the [#ballerina](https://stackoverflow.com/questions/tagged/ballerina) tag.
