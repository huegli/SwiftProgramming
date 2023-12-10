//
//  Town.swift
//  MonsterTown
//
//  Created by Nikolai Schlegel on 12/10/23.
//

import Foundation

struct Town {
    var population = 5_422
    var numberOfStopLights = 4

    func printDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStopLights)")
    }

    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}
