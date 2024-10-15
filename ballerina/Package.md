# Ballerina ISO 20022 Library

## Overview

ISO 20022 is an international standard for financial messaging that allows the exchange of structured and detailed information across different financial services, such as payments and securities. It uses a data-rich XML format, enabling more comprehensive data sharing compared to older formats like SWIFT MT. ISO 20022 also promotes global interoperability, reducing complexity by harmonizing financial communication standards across borders and sectors. As the financial industry adopts this standard, it supports innovation and digital transformation in financial messaging.

The `ballerinax/iso20022records`library provides a collection of ISO 20022 records based on the corresponding XSDs, enabling seamless integration with financial messaging systems. The library is designed to facilitate the creation, manipulation, and parsing of ISO 20022-compliant messages, offering a standardized approach for handling complex financial data within Ballerina applications. 

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

## Usage

### Step 1: Import the library

Import the `ballerinax/iso20022records` library.

```ballerina
import ballerinax/iso20022records as iso20022records;
```

### Step 2: Create new ISO 20022 documents based on requirement

```ballerina
ISORecord:Pain001Document pain001Document = {
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