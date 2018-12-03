//
//  StructureViewController.swift
//  911Runs
//
//  Created by Alex Richardson on 11/27/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class StructureViewController: UIViewController {
    
    @IBOutlet weak var incidentNumTextField: UITextField!
    
    @IBOutlet weak var FDIDTextField: UITextField!
    
    @IBOutlet weak var stateTextField: UITextField!
    
    @IBOutlet weak var exposureTextFeild: UITextField!
    
    @IBOutlet weak var alarmDatePicker: UIDatePicker!
    
    @IBOutlet weak var arrivalDatePicker: UIDatePicker!
    
    @IBOutlet weak var lastUnitDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        
        guard let FDID = FDIDTextField.text, FDID.trimmingCharacters(in: .whitespacesAndNewlines) != "", let state = stateTextField.text, state.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
            
            showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
            return
        }
        
        performSegue(withIdentifier: "ShowPersonnel", sender: self)
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
