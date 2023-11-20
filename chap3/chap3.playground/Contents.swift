import Cocoa

let population: Int = 1000000
let message: String
let hasPostOffice: Bool = true

if population < 10000 {
    message = "\(population) is a small town!"
} else if population >= 10000 && population <= 50000 {
    message = "\(population) is a medium town"
} else if population > 50000 && population <= 100000 {
    message = "\(population) is pretty big!"
} else {
    message = "\(population) is huge!"
}
print(message)

if !hasPostOffice {
    print("Where do we buy stamps?")
}
