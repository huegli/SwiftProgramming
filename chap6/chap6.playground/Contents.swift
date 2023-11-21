import Cocoa

var myFirstInt: Int = 0

for _ in 1...5 {
    myFirstInt += 1
    print("myFirstInt = \(myFirstInt)")
}

for i in 1...100 where i % 3 == 0 {
    print(i)
}

var i = 1
while i < 6 {
    myFirstInt += 1
    print(myFirstInt)
    i += 1
}

var shields = 0
var blastersOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0
while shields > 0 {
    
    if spaceDemonsDestroyed == 500 {
        print("You beat the game!")
        break
    }
    if blastersOverheating {
        print("Blasters overheated! Cooldown initiated.")
        sleep (5)
        print("Blasters ready to fire")
        sleep(1)
        blastersOverheating = false
        blasterFireCount = 0
    }
    
    if blasterFireCount > 100 {
        blastersOverheating = true
        continue
    }
    
    print("File blasters!")
    
    blasterFireCount += 1
    spaceDemonsDestroyed += 1
}

for i in 1...10 {
    if i % 3 == 0 && i % 5 == 0 {
        print("FIZZ BUZZ")
    } else if i % 3 == 0 {
        print("FIZZ")
    } else if i % 5 == 0 {
        print("BUZZ")
    } else {
        print(i)
    }
}

var n = 0
while n < 100 {
    var d = (n % 3, n % 5)
    switch d {
    case (0, 0):
        print("FIZZ BUZZ")
    case (0, _):
        print("FIZZ")
    case (_, 0):
        print("BUZZ")
    default:
        print(n)
    }
    n += 1
}
