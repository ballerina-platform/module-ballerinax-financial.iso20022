# Ballerina ISO 20022 Library

## Overview

ISO 20022 is an international standard for financial messaging that allows the exchange of structured and detailed information across different financial services, such as payments and securities. It uses a data-rich XML format, enabling more comprehensive data sharing compared to older formats like SWIFT MT. ISO 20022 also promotes global interoperability, reducing complexity by harmonizing financial communication standards across borders and sectors. As the financial industry adopts this standard, it supports innovation and digital transformation in financial messaging.

The `ballerinax/financial.iso20022.payments_clearing_and_settlement`library provides a collection of ISO 20022 payments clearing and settlement records based on the corresponding XSDs, enabling seamless integration with financial messaging systems. The library is designed to facilitate the creation, manipulation, and parsing of ISO 20022-compliant messages, offering a standardized approach for handling complex financial data within Ballerina applications. 

## Supported Message Types

- pacs.002.001.14
- pacs.003.001.11
- pacs.008.001.12
- pacs.009.001.11
- pacs.010.001.06

## Usage

### Step 1: Import the library

Import the `ballerinax/financial.iso20022.payments_clearing_and_settlement` library.

```ballerina
import ballerinax/financial.iso20022.payments_clearing_and_settlement as isorecord;
```

### Step 2: Create new ISO 20022 documents based on requirement

```ballerina
isorecord:Pacs003Document document = {
    FIToFICstmrDrctDbt: {
        GrpHdr: {
            CreDtTm: time:utcToString(time:utcNow()), 
            SttlmInf: {
                SttlmMtd: isorecord:INDA
            }, NbOfTxs: "1", 
            MsgId: uuid:createType4AsString().substring(0,35)}, 
        DrctDbtTxInf: []
    }
};
```

## Report issues

To report bugs, request new features, start new discussions, view project boards, etc., go to
the [Ballerina library parent repository](https://github.com/ballerina-platform/ballerina-library).

## Useful Links

- Chat live with us via our [Discord server](https://discord.gg/ballerinalang).
- Post all technical questions on Stack Overflow with the [#ballerina](https://stackoverflow.com/questions/tagged/ballerina) tag.
