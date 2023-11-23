import Cocoa

var bucketList = ["Climb Mt. Everest"]
bucketList.append("Read War and Peace")
bucketList.append("Go on an Arctic expedition")
bucketList.append("Scuba dive in the Great Blue Hole")
bucketList.append("Find a triple rainbow")
bucketList.count
bucketList.remove(at: 1)
bucketList
print(bucketList[...2])
bucketList[1] += " with friends"
bucketList[1]
bucketList[0] = "Climb Mt. Kilimanjaro"
bucketList.insert("Toboggan across Alaska", at: 1)
bucketList

var newItems = [
    "Bike across America",
    "Make a perfect souffle",
    "Solve Fermat's enigma"
]

bucketList += newItems
print(bucketList)

var anotherList = [
    "Bike across America",
    "Make a perfect souffle",
    "Solve Fermat's enigma"
]

newItems == anotherList

let lunches = [
    "Cheeseburger",
    "Veggie Pizza",
    "Chicken Caesar Salad",
    "Black Bean Burrito",
    "Falafel Wrap"
]

var todoList = ["Take out the trash", "Pay bills", "Cross off finished items"]
todoList.isEmpty
var t = todoList.count
repeat {
    t -= 1
    print(todoList[t])

} while (t > 0)
todoList.reverse()
print(todoList)
todoList.shuffle()
print(todoList)

if let arcticIndex = bucketList.firstIndex(of: "Go on an Arctic expedition with friends") {
    let plusTwoIndex = arcticIndex + 2
    print(bucketList[plusTwoIndex])
}


