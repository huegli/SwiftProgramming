//
//  main.swift
//  MonsterTown
//
//  Created by Nikolai Schlegel on 12/10/23.
//

import Foundation

var myTown = Town()
myTown.changePopulation(by: 500)

let fredTheZombie = Zombie()
fredTheZombie.name = "Fred"
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

let dracula = Vampire()
dracula.name = "Dracula"
dracula.town = myTown
for _ in 1...5 {
    dracula.terrorizeTown()
    dracula.town?.printDescription()
    print("\(dracula.thralls)")
}

