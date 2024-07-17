import ballerina/data.xmldata;
import ballerina/http;
import ballerina/soap.soap12;

configurable string url = ?;

service / on new http:Listener(8080) {
    soap12:Client soapEp;

    function init() returns error? {
        self.soapEp = check new (url);
    }

    resource function get operation(int value1, int value2) returns string|error? {
        Soap_Envelope env = transform(value1, value2);
        xml request = check xmldata:toXml(env);
        xml response = check self.soapEp->sendReceive(request);
        return response.data();
    }
}

function transform(int value1, int value2) returns Soap_Envelope => {
    Body: {
        Add: {
            intA: value1,
            intB: value2
        }
    }
};
