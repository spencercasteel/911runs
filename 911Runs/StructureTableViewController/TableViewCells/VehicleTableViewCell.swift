//
//  VehicleTableViewCell.swift
//  911Runs
//
//  Created by Alex Richardson on 12/4/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class VehicleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var vehicleModel: UILabel!
    
    @IBOutlet weak var vehicleLicense: UILabel!
    
    @IBOutlet weak var vehicleVin: UILabel!
    
    @IBOutlet weak var vehicleYear: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
