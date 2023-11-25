import Cocoa

var groceryList: Set = ["Apples", "Oranges"]
groceryList.insert("Kiwi")
groceryList.insert("Pears")

for food in groceryList {
    print(food)
}

groceryList.remove("Pears")
let hasBananas = groceryList.contains("Bananas")
let friendsGroceryList =
    Set(["Bananas", "Cereal", "Milk", "Oranges"])
var sharedList = groceryList
sharedList.formUnion(friendsGroceryList)

var duplicateItems = groceryList
duplicateItems.formIntersection(friendsGroceryList)

let disjoint =
groceryList.isDisjoint(with: friendsGroceryList)

let players = ["Anna", "Vijay", "Jenka"]
let winners = ["Jenka", "Jenka", "Vijay", "Jenka"]

let playerSet = Set(players)
let winnerSet = Set(winners)

playerSet.subtracting(winnerSet)

let myCities: Set = ["Atlanta", "Chicago", "Jacksonville", "New York", "Denver"]
let yourCities: Set = ["Chicago", "Denver", "Jacksonville"]

let containsAll = myCities.isSuperset(of: yourCities)

