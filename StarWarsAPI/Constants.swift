//
//  Constants.swift
//  StarWarsAPI
//
//  Created by Cori Mims on 6/20/17.
//  Copyright © 2017 Cori Mims. All rights reserved.
//

let BASE_URL = "http://swapi.co/api/"
let PEOPLE_URL = "\(BASE_URL)people/"
let VEHICLE_URL = "\(BASE_URL)vehicles/"
let STARSHIP_URL = "\(BASE_URL)starships/"

typealias completionHandler = (_ dict: [String: AnyObject]) -> ()
