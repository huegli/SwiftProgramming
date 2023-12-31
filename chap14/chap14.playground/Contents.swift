import Cocoa

enum TextAlignment: Int {
    case left = 20
    case right = 30
    case center = 40
    case justify = 50
}

var alignment = TextAlignment.justify

TextAlignment.left.rawValue
TextAlignment.right.rawValue
TextAlignment.center.rawValue
TextAlignment.justify.rawValue
alignment.rawValue

switch alignment {
case .left:
    print("left aligned")
case .right:
    print("right aligned")
case .center:
    print("center aligned")
case .justify:
    print("justified")
}

// Create a raw value
let myRawValue = 20

// Try to convert the raw value into a TextAlignment
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    // Conversion succeeded!
    print("successfully created (myAlignment) from \(myRawValue)")
} else {
    // Conversion failed
    print("\(myRawValue) has no corresponding TextAlignment case")
}

enum ProgrammingLanguage: String {
    case swift
    case objectiveC = "objective-C"
    case c
    case cpp        = "c++"
    case java
}
let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

enum LightBulb {
    case on
    case off

    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
        case .off:
            return ambient
        }
    }
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

var bulb = LightBulb.on
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

bulb.toggle()
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

enum ShapeDimensions {
    // point has no associated value - it is dimensionless
    case point
    
    // square's associated value is the length of one side
    case square(side: Double)
    
    // rectangle's associated value defines its width and height
    case rectangle(width: Double, height: Double)

    case triangle(a: Double, b: Double, c: Double)
    
    func area() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side: side):
            return side * side
        case let .rectangle(width: w, height: h):
            return w * h
        case let .triangle(a: a, b: b, c: _):
            return a * b / 2
        }
    }
    
    func perimeter() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side: side):
            return 4 * side
        case let .rectangle(width: w, height: h):
            return 2 * (w + h)
        case let .triangle(a: a, b: b, c: c):
            return a + b + c
        }
    }
}

var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point
print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \(pointShape.area())")
print("square's perimeter = \(squareShape.perimeter())")
print("rectangle's perimeter = \(rectShape.perimeter())")
print("point's perimeter = \(pointShape.perimeter())")
