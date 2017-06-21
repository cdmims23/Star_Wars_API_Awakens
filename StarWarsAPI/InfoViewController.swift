//
//  InfoViewController.swift
//  StarWarsAPI
//
//  Created by Cori Mims on 5/26/17.
//  Copyright © 2017 Cori Mims. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var starWarsTable: UITableView!
    @IBOutlet weak var starWarsPicker: UIPickerView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var infoArray = [StarWars]()
    var type = Types.character
    var rowNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        starWarsTable.delegate = self
        starWarsTable.dataSource = self
        starWarsPicker.delegate = self
        starWarsPicker.dataSource = self
        updateUI()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true) {
            self.infoArray.removeAll()
            self.starWarsPicker.reloadAllComponents()
            self.starWarsTable.reloadData()
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return infoArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return infoArray[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        rowNum = row
        starWarsTable.reloadData()
     
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if infoArray.count > 1 {
            return infoArray[section].num_properties
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = starWarsTable.dequeueReusableCell(withIdentifier: "infoCell") as? CharacterInfoCell
        
        switch type {
        case .character:
            if indexPath.row == 0 {
                cell?.setLabels(title: "Name", info: infoArray[rowNum].name)
            }
            if indexPath.row == 1 {
                cell?.setLabels(title: "Birth Year", info: infoArray[rowNum].birth_year)
            }
            if indexPath.row == 2 {
                cell?.setLabels(title: "Height", info: infoArray[rowNum].height)
            }
            if indexPath.row == 3 {
                cell?.setLabels(title: "Eye Color", info: infoArray[rowNum].eye_color)
            }
            if indexPath.row == 4 {
                cell?.setLabels(title: "Hair Color", info: infoArray[rowNum].hair_color)
            }
        case .vehicle:
            if indexPath.row == 0 {
                cell?.setLabels(title: "Name", info: infoArray[rowNum].name)
            }
            if indexPath.row == 1 {
                cell?.setLabels(title: "Manufacturer", info: infoArray[rowNum].manufacturer)
            }
            if indexPath.row == 2 {
                cell?.setLabels(title: "Cost", info: infoArray[rowNum].cost)
            }
            if indexPath.row == 3 {
                cell?.setLabels(title: "Length", info: infoArray[rowNum].length)
            }
            if indexPath.row == 4 {
                cell?.setLabels(title: "Crew", info: infoArray[rowNum].crew)
            }
            if indexPath.row == 5 {
                cell?.setLabels(title: "Class", info: infoArray[rowNum].vehicle_class)
            }

        case.starship:
            if indexPath.row == 0 {
                cell?.setLabels(title: "Name", info: infoArray[rowNum].name)
            }
            if indexPath.row == 1 {
                cell?.setLabels(title: "Manufacturer", info: infoArray[rowNum].manufacturer)
            }
            if indexPath.row == 2 {
                cell?.setLabels(title: "Cost", info: infoArray[rowNum].cost)
            }
            if indexPath.row == 3 {
                cell?.setLabels(title: "Length", info: infoArray[rowNum].length)
            }
            if indexPath.row == 4 {
                cell?.setLabels(title: "Crew", info: infoArray[rowNum].crew)
            }
            if indexPath.row == 5 {
                cell?.setLabels(title: "Class", info: infoArray[rowNum].starship_class)
            }

        }
                return cell!
    }
    
    func updateUI() {
        switch type {
        case .character:
            titleLabel.text = "Characters"
        case .vehicle:
            titleLabel.text = "Vehicles"
        case .starship:
            titleLabel.text = "Starships"
        }
    }
}
