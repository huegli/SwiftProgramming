import Cocoa

var greeting = "Hello, playground"

print("The maximum Int value is \(Int.max).")
print("The minimum Int value is \(Int.min).")
print("The maximum value for a 32-bit integer is \(Int32.max).")
print("The minimum value for a 32-bit integer is \(Int32.min).")

print("The maximum UInt value is \(UInt.max).")
print("The minimum UInt value is \(UInt.min).")
print("The maximum value for a 32-bit unsigned integer is \(UInt32.max).")
print("The minimum value for a 32-bit unsigned integer is \(UInt32.min).")

let numberOfPages: Int = 10
let numberOfChanges = 3

let numberOfPeople: UInt = 40
let volumeAdjustment: Int32 = -1000

// let badValue: UInt = -1

10 + 20
30 - 5
5 * 6

(10 + 2) * 5
30 - (5 - 5)

11 / 3
11 % 3
-11 % 3

var x = 10
x += 10
x -= 5

let y: Int8 = 120
let z = y &+ 10

let a: Int16 = 200
let b: Int8 = 50
let c = a + Int16(b)

let d1 = 1.1
let d2: Double = 1.1
let f1: Float = 100.3

10.0 + 11.4
11.0 / 3.0

if d1 == d2 {
    print("d1 and d2 are the same")
}

print("d1  0.1 is \(d1 + 0.1)")
if d1 + 0.1 == 1.2 {
    print("d1 + 0.1 is equal to 1.2")
}

let ticketCount = 1_000
let ticketNumbers = 1 ..<  ticketCount

let binaryFail = 10100110
let binaryInt = 0b10100110

let scientificInt = 1.66e5
let fractionalFloat: Float = 1.66e-2

let hexLiteral = 0xff
let hexSpeak = 0x8BADF00D

let lightSpeed = 299_792_458 // m/s


