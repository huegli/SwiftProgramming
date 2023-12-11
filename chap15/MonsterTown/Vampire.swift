//
//  Vampire.swift
//  MonsterTown
//
//  Created by Nikolai Schlegel on 12/11/23.
//

import Foundation

class Vampire: Monster {
    var thralls: [Vampire] = []

    override func terrorizeTown() {
        super.terrorizeTown()
        town?.changePopulation(by: -1)
        if let mytown = town {
            if mytown.population > 0 {
                thralls.append(Vampire())
            }
        }
    }


}
