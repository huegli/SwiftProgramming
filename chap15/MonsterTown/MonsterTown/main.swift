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
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()
