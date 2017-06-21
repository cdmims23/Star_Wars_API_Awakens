//
//  Vehicles.swift
//  StarWarsAPI
//
//  Created by Cori Mims on 5/26/17.
//  Copyright © 2017 Cori Mims. All rights reserved.
//

import Foundation

class Vehicle: StarWars {
    let name: String
    let birth_year: String = ""
    let height: String = ""
    let eye_color: String = ""
    let hair_color: String = ""
    let manufacturer: String
    let cost: String
    let length: String
    let crew: String
    let vehicle_class: String
    let starship_class = ""
    let num_properties: Int = 6

    
    init(dict: [String : AnyObject]) {
        self.name = dict["name"] as! String
        self.manufacturer = dict["manufacturer"] as! String
        self.cost = dict["cost_in_credits"] as! String
        self.length = dict["length"] as! String
        self.crew = dict["crew"] as! String
        self.vehicle_class = dict["vehicle_class"] as! String
    }
}
