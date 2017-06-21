//
//  CharacterInfoCell.swift
//  StarWarsAPI
//
//  Created by Cori Mims on 6/19/17.
//  Copyright © 2017 Cori Mims. All rights reserved.
//

import UIKit

class CharacterInfoCell: UITableViewCell {
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var modelInfoLbl: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setLabels(title: String, info: String) {
        titleLbl.text = title
        modelInfoLbl.text = info
    }
}
