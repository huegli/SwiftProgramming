import Cocoa

let playground = "Hello, playground"
var mutablePlayground = "Hell, mutable playground"
mutablePlayground += "!"
let quote = #"I wanted to \"say\":\n\(playground)"#
print(quote)
for c: Character in mutablePlayground {
    print("\(c)")
}

let snowman = "\u{2603}"
let aAcute = "\u{0061}\u{0301}"
for scalar in playground.unicodeScalars {
    print("\(scalar.value)")
}

let aAcutePrecomposed = "\u{00E1}"

let b = (aAcute == aAcutePrecomposed)

aAcute.count
aAcutePrecomposed.count

