//
//  Characters.swift
//  StarWarsAPI
//
//  Created by Cori Mims on 5/26/17.
//  Copyright © 2017 Cori Mims. All rights reserved.
//

import Foundation

class Characters: StarWars {
    let name: String
    let birth_year: String
    let height: String
    let eye_color: String
    let hair_color: String
    
    // Protocol Stored Properties
    let manufacturer = ""
    let cost = ""
    let length = ""
    let crew = ""
    let vehicle_class = ""
    let starship_class = ""
    let num_properties: Int = 5
    
    init(dict: [String : AnyObject]) {
        self.name = dict["name"] as! String
        self.birth_year = dict["birth_year"] as! String
        self.height = dict["height"] as! String
        self.eye_color = dict["eye_color"] as! String
        self.hair_color = dict["hair_color"] as! String
    }
}

