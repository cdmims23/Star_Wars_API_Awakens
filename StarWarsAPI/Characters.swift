//
//  Characters.swift
//  StarWarsAPI
//
//  Created by Cori Mims on 5/26/17.
//  Copyright © 2017 Cori Mims. All rights reserved.
//

import Foundation

class Characters {
    let name: String
    let birth_year: String
    let height: String
    let eye_color: String
    let hair_color: String
    
    init(name: String, birth_year: String, height: String, eye_color: String, hair_color: String) {
        self.name = name
        self.birth_year = birth_year
        self.height = height
        self.eye_color = eye_color
        self.hair_color = hair_color
    }
}
