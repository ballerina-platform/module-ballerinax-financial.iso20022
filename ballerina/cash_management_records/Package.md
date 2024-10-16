# Ballerina ISO 20022 Library

## Overview

ISO 20022 is an international standard for financial messaging that allows the exchange of structured and detailed information across different financial services, such as payments and securities. It uses a data-rich XML format, enabling more comprehensive data sharing compared to older formats like SWIFT MT. ISO 20022 also promotes global interoperability, reducing complexity by harmonizing financial communication standards across borders and sectors. As the financial industry adopts this standard, it supports innovation and digital transformation in financial messaging.

The `ballerinax/financial.iso20022.cash_managament`library provides a collection of ISO 20022 cash management records based on the corresponding XSDs, enabling seamless integration with financial messaging systems. The library is designed to facilitate the creation, manipulation, and parsing of ISO 20022-compliant messages, offering a standardized approach for handling complex financial data within Ballerina applications. 

## Supported Message Types

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

## Usage

### Step 1: Import the library

Import the `financial.iso20022.cash_managament` library.

```ballerina
import ballerinax/financial.iso20022.cash_managament as isorecord;
```

### Step 2: Create new ISO 20022 documents based on requirement

```ballerina
isorecord:Camt026Document document = {
    UblToApply: {
        Assgnmt: {
            CreDtTm: time:utcToString(time:utcNow()), 
            Assgne: {
                Agt: {
                    FinInstnId: {
                        BICFI: "KREDBEBB"
                    }
                }
            }, 
            Id: "ASSNID-001", 
            Assgnr: {
                Agt: {
                    FinInstnId: {
                        BICFI: "RABOBE22"
                    }
                }
            }}, 
        Undrlyg: {}, 
        Justfn: {}
    }
};
```

## Report issues

To report bugs, request new features, start new discussions, view project boards, etc., go to
the [Ballerina library parent repository](https://github.com/ballerina-platform/ballerina-library).

## Useful Links

- Chat live with us via our [Discord server](https://discord.gg/ballerinalang).
- Post all technical questions on Stack Overflow with the [#ballerina](https://stackoverflow.com/questions/tagged/ballerina) tag.
