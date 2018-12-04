//
//  MedicTableViewCell.swift
//  911Runs
//
//  Created by Alex Richardson on 12/3/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class MedicTableViewCell: UITableViewCell {

    @IBOutlet weak var nameIDLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
