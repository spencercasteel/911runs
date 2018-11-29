//
//  StructureViewController.swift
//  911Runs
//
//  Created by Alex Richardson on 11/27/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class StructureViewController: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var incidentNumTextFeild: UITextField!
    @IBOutlet weak var FDIDTextFeild: UITextField!
    @IBOutlet weak var stateTextFeild: UITextField!
    @IBOutlet weak var exposureTextFeild: UITextField!
    @IBOutlet weak var alarmDatePicker: UIDatePicker!
    @IBOutlet weak var arrivalDatePicker: UIDatePicker!
    @IBOutlet weak var lastUnitDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        guard let incidentNum = incidentNumTextFeild.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {
            
            return
        }
        
        guard let FDIDNum = FDIDTextFeild.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {
            
            return
        }
        
        guard let state = stateTextFeild.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {
            
            return
        }
        
        guard let exposure = exposureTextFeild.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {
            
            return
        }
        
        if incidentNum.isEmpty || FDIDNum.isEmpty || state.isEmpty || exposure.isEmpty {
            return showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
        }
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
