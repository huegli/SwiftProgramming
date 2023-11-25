import Cocoa

func printGreeting() {
    print("Hello, playground.")
}
printGreeting()

func printPersonalGreeting(to name: String) {
    print("Hello \(name). Welcome to your playground.")
}
printPersonalGreeting(to: "Step")

func divisionDescriptionFor(numerator: Double,
                            denominator: Double,
                            withPunctuation punctuation: String = ".") -> String {
    return "\(numerator) divided by \(denominator) is \(numerator / denominator)\(punctuation)"
}
divisionDescriptionFor(numerator: 9.0, denominator: 3.0)
divisionDescriptionFor(numerator: 9.0, denominator: 3.0, withPunctuation: "!")

var error = "The request failed:"
func appendError(_ code: Int, toErrorString errorString: inout String) {
    if code == 400 {
        errorString += " bad request."
    }
}
appendError(400, toErrorString: &error)
print(error)

