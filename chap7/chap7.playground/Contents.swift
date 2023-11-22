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

let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[end]
let range = ...end
let firstFive = playground[range]

let empty = ""
let startEmpty = empty.startIndex
let endEmpty = empty.endIndex
if (startEmpty == endEmpty) {
    print("string is empty")
}

let helloString = "\u{0048}\u{0065}\u{006C}\u{006C}\u{006F}"

let startPlay = playground.index(playground.startIndex, offsetBy: 7)
let endPlay = playground.index(startPlay, offsetBy: 3)
let playRange = startPlay...endPlay
let play = playground[playRange]

let tale = """
    It was the best of times,
    It was the worst of times,
    """
print(tale)
