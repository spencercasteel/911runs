//
//  personnelNameViewController.swift
//  911Runs
//
//  Created by Spencer Casteel on 12/2/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class personnelNameTableViewController: UITableViewCell {
    //personnel page
    @IBOutlet weak var personnelName: UILabel!
    
    //Vehical page
 
    //property page
    @IBOutlet weak var actionTakenLabel: UILabel!
    
    //Safety Equipment Page
    @IBOutlet weak var safetyEquipLabel: UILabel!
    @IBOutlet weak var cardiacArrestLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
