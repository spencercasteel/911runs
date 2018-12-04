//
//  SaftyEquipmentViewController.swift
//  911Runs
//
//  Created by Jamie Cummings on 12/3/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class SaftyEquipmentViewController: UIViewController {

    @IBOutlet weak var equipmentUsedPicker: UIPickerView!
    
    @IBOutlet weak var saftyEquipmentOtherTextField: UITextField!
    
    
    
    var equipmentUsedPickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        equipmentUsedPickerData = ["1 Safety/Seat Belt", "2 Child Safety Seat", "3 Airbag", "4 Helmet", "5 Protective Clothing", "N None", "O Other", "U Undetermined"]

        // Do any additional setup after loading the view.
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
