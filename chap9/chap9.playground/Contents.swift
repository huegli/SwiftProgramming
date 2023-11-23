import Cocoa

var errorCodeString: String?
errorCodeString = "404"
// print(errorCodeString)
if let theError = errorCodeString,
        let errorCodeInt = Int(theError),
        errorCodeInt == 404 {
    print("\(theError): \(errorCodeInt)")
}

