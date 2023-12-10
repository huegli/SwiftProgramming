//
//  Monster.swift
//  MonsterTown
//
//  Created by Nikolai Schlegel on 12/10/23.
//

import Foundation

class Monster {
    var town: Town?
    var name = "Monster"

    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}
