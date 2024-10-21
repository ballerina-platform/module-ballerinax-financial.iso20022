import ballerina/data.xmldata;

# Parses the given XML content into the specified ISO 20022 record type.
#
# This function takes an XML content and a record type descriptor, and attempts to parse
# the XML into the corresponding ISO 20022-compliant Ballerina record. It uses the provided
# `recordType` descriptor to determine the target structure for parsing.
#
# + xmlContent - The XML content to be parsed into the specified record type.
# + recordType - A `typedesc` representing the Ballerina record type into which the XML will be parsed.
# + return - The parsed Ballerina record if successful, or an error if the parsing fails.
public isolated function parseIso20022(xml xmlContent, typedesc<record {}> recordType) returns record {}|error {
    return xmldata:parseAsType(xmlContent, t = recordType);
}

# Converts the given ISO 20022 record into XML format.
#
# This function takes a Ballerina record representing an ISO 20022 message and converts it
# into the corresponding XML format. It leverages the structure of the provided record
# to generate a valid XML representation that complies with the ISO 20022 standard.
#
# + recordValue - The Ballerina record representing the ISO 20022 message to be converted.
# + return - The generated XML if successful, or an error if the conversion fails.
public isolated function toIso20022Xml(record {} recordValue) returns xml|error {
    return xmldata:toXml(recordValue);
}
