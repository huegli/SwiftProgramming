import Cocoa

let volunteerCounts = [1, 3, 40, 32, 2, 53, 77, 13]

let volunteersSorted = volunteerCounts.sorted { $0 < $1 }
print(volunteersSorted)

func format(numbers: [Double], using formatter: (Double) -> String = {"\($0)"})-> [String] {
    var result = [String]()
    for number in numbers {
        let transformed = formatter(number)
        result.append(transformed)
    }
    return result
}

var numberOfTransformations = 0
    
let rounder: (Double) -> String = {
    (num: Double) -> String in
    numberOfTransformations += 1
    return "\(Int(num.rounded()))"
}
    
let volunteerAverages = [10.75, 4.2, 1.5, 12.12, 16.815]
let roundedAveragesAsStrings = format(numbers: volunteerAverages, using: rounder)
let exactAveragesAsStrings = format(numbers: volunteerAverages)
print(numberOfTransformations)

let roundedAverages = volunteerAverages.map {
    (avg: Double) -> Int in
    return Int(avg.rounded())
}

let passingAverages = roundedAverages.filter {
    (avg: Int) -> Bool in
    return avg >= 10
}

let estimatedParticipation = passingAverages.reduce(5) {
    (estimationSoFar: Int, currentOrgAverage: Int) -> Int in
    return estimationSoFar + currentOrgAverage
}

var sortedVolunteerCounts = volunteerCounts
// sortedVolunteerCounts.sort(by: { $0 < $1 })
sortedVolunteerCounts.sort()

let finalResult = ((volunteerAverages.map { Int($0.rounded()) }).filter { $0 >= 10 }).reduce(5) { $0 + $1 }
print(finalResult)

func makeCharacterRemover(for character: Character) -> (String) -> String {
    func removeFrom(_ input: String) -> String {
        return input.filter { $0 != character }
    }
    return removeFrom(_:)
}

let removeLowerCaseLs = makeCharacterRemover(for: "l")
let strangeGreeting = removeLowerCaseLs("Hello, World!")

let removeLowerCaseOs = makeCharacterRemover(for: "o")
let strangerGreeting = removeLowerCaseOs("Hello, World!")
