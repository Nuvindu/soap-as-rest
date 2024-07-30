import ballerina/data.xmldata;

@xmldata:Namespace {prefix: "quer", uri: "http://tempuri.org/"}
type Quer_Add record {
    @xmldata:Namespace {prefix: "quer", uri: "http://tempuri.org/"}
    int intA;
    @xmldata:Namespace {prefix: "quer", uri: "http://tempuri.org/"}
    int intB;
};

type Soap_Body record {
    @xmldata:Namespace {prefix: "quer", uri: "http://tempuri.org/"}
    Quer_Add Add;
};

@xmldata:Name {value: "Envelope"}
@xmldata:Namespace {prefix: "soap", uri: "http://www.w3.org/2003/05/soap-envelope"}
type Soap_Envelope record {
    @xmldata:Namespace {prefix: "soap", uri: "http://www.w3.org/2003/05/soap-envelope"}
    Soap_Body Body;
};
