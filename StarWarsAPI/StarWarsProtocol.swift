//
//  StarWarsProtocol.swift
//  StarWarsAPI
//
//  Created by Cori Mims on 6/19/17.
//  Copyright © 2017 Cori Mims. All rights reserved.
//

import Foundation

protocol StarWars {
    // Protocol property
    var num_properties: Int { get }
    var name: String { get }
    // Character property
    var birth_year: String { get }
    var height: String { get }
    var eye_color: String { get }
    var hair_color: String { get }
    // Vehicle / Starship Properties
    var manufacturer: String { get }
    var cost: String { get }
    var length: String { get }
    var crew: String { get }
    // Vehicle Property
    var vehicle_class: String { get }
    // Starship Property
    var starship_class: String { get }
    
}
