//
//  Zombie.swift
//  MonsterTown
//
//  Created by Nikolai Schlegel on 12/10/23.
//

import Foundation

class Zombie: Monster {
    static func MakeSpookyNoise() -> String {
        return "Brains..."
    }
    
    var walksWithLimp = true

    func regenerate() {
        walksWithLimp = false
    }

    override func terrorizeTown() {
        town?.changePopulation(by: -10)
        super.terrorizeTown()
        regenerate()
    }
}
