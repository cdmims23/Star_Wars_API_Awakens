//
//  Starships.swift
//  StarWarsAPI
//
//  Created by Cori Mims on 5/26/17.
//  Copyright © 2017 Cori Mims. All rights reserved.
//

import Foundation

class Starships {
    let name: String
    let manufacturer: String
    let cost: String
    let length: String
    let crew: String
    let starship_class: String
    
    init(name: String, manufacturer: String, cost: String, length: String, crew: String, starship_class: String) {
        self.name = name
        self.manufacturer = manufacturer
        self.cost = cost
        self.length = length
        self.crew = crew
        self.starship_class = starship_class
    }
}
