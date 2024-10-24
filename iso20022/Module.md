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
- camt.060.001.07
- pacs.002.001.14
- pacs.003.001.11
- pacs.008.001.12
- pacs.009.001.11
- pacs.010.001.06
- pain.001.001.12
- pain.008.001.11

## Available Submodules

- financial.iso20022.cash_management
- financial.iso20022.payment_initiation
- financial.iso20022.payments_clearing_and_settlement 

## Usage

### Step 1: Import the library

Import the `ballerinax/financial.iso20022.payment_initiation` library.

```ballerina
import ballerinax/financial.iso20022.payment_initiation as isorecord;
```

### Step 2: Create new ISO 20022 documents based on requirement

```ballerina
isorecord:Pain001Document document = {
    CstmrCdtTrfInitn: {
        GrpHdr: {
            CreDtTm: time:utcToString(time:utcNow()), 
            InitgPty: {}, 
            NbOfTxs: "1", 
            MsgId: uuid:createType4AsString().substring(0, 11)
        }, 
        PmtInf: []
    }
};
```

## Report issues

To report bugs, request new features, start new discussions, view project boards, etc., go to
the [Ballerina library parent repository](https://github.com/ballerina-platform/ballerina-library).

## Useful Links

- Chat live with us via our [Discord server](https://discord.gg/ballerinalang).
- Post all technical questions on Stack Overflow with the [#ballerina](https://stackoverflow.com/questions/tagged/ballerina) tag.
