//
//  Vehicles.swift
//  StarWarsAPI
//
//  Created by Cori Mims on 5/26/17.
//  Copyright © 2017 Cori Mims. All rights reserved.
//

import Foundation

class Vehicle {
    let name: String
    let manufacturer: String
    let cost: String
    let length: String
    let crew: String
    let vehicle_class: String
    
    init(name: String, manufacturer: String, cost: String, length: String, crew: String, vehicle_class: String) {
        self.name = name
        self.manufacturer = manufacturer
        self.cost = cost
        self.length = length
        self.crew = crew
        self.vehicle_class = vehicle_class
    }
}
