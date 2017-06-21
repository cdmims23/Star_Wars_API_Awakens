//
//  ViewController.swift
//  StarWarsAPI
//
//  Created by Cori Mims on 5/26/17.
//  Copyright © 2017 Cori Mims. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Button Outlets
    @IBOutlet weak var characterButton: UIButton!
    @IBOutlet weak var vehicleButton: UIButton!
    @IBOutlet weak var starshipButton: UIButton!
    
    // Info Array
    var infoArray = [StarWars]()
    
    // Info Object
    let info = InfoDownloader()
    
    // Type Holder
    var type = Types.character
    
    override func viewWillAppear(_ animated: Bool) {
        infoArray.removeAll()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(BASE_URL)
        print(PEOPLE_URL)
        print(VEHICLE_URL)
        print(STARSHIP_URL)
        /*let info = InfoDownloader()
        info.getInformation(url: PEOPLE_URL) { dict in
            if let infoDict = dict["results"] as? [[String : AnyObject]] {
                print(infoDict)
            }
        }*/
    }
    
    @IBAction func getInfo(_ sender: UIButton) {
        switch sender {
        case characterButton:
            info.getInformation(url: PEOPLE_URL) { dict in
                if let infoArr = dict["results"] as? [[String : AnyObject]] {
                    for character in infoArr {
                        let character = Characters(dict: character)
                        self.infoArray.append(character)
                    }
                }
                self.performSegue(withIdentifier: "showInfo", sender: self)
            }
        case vehicleButton:
            type = Types.vehicle
            info.getInformation(url: VEHICLE_URL) { dict in
                if let infoArr = dict["results"] as? [[String : AnyObject]] {
                    for vehicle in infoArr {
                        let vehicle = Vehicle(dict: vehicle)
                        self.infoArray.append(vehicle)
                    }
                }
                self.performSegue(withIdentifier: "showInfo", sender: self)
            }

        case starshipButton:
            type = Types.starship
            info.getInformation(url: STARSHIP_URL) { dict in
                if let infoArr = dict["results"] as? [[String : AnyObject]] {
                    for starship in infoArr {
                        let starship = Starships(dict: starship)
                        self.infoArray.append(starship)
                    }
                }
                self.performSegue(withIdentifier: "showInfo", sender: self)
            }

        default:
            info.getInformation(url: PEOPLE_URL) { dict in
                if let infoArr = dict["results"] as? [[String : AnyObject]] {
                    for character in infoArr {
                        let character = Characters(dict: character)
                        self.infoArray.append(character)
                    }
                }
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showInfo" {
            let detailsVC = segue.destination as? InfoViewController
            detailsVC?.infoArray = self.infoArray
            detailsVC?.type = self.type

        }
    }
 }

