//
//  LocationViewController.swift
//  911Runs
//
//  Created by Spencer Casteel on 11/30/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController {
    
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var ownerInfoSegmentedControl: UISegmentedControl!
    @IBOutlet weak var ownerNameTextField: UITextField!
    @IBOutlet weak var ownerAddressTextField: UITextField!
    @IBOutlet weak var ownerPhoneTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ownerNameTextField.isHidden = true
        ownerAddressTextField.isHidden = true
        ownerPhoneTextField.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButtonTyped(_ sender: Any) {
        guard let date = dateTextField.text, date.trimmingCharacters(in: .whitespacesAndNewlines) != "", let name = nameTextField.text, name.trimmingCharacters(in: .whitespacesAndNewlines) != "", let address = addressTextField.text, address.trimmingCharacters(in: .whitespacesAndNewlines) != "", let phone = phoneTextField.text, phone.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
            
           showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
            return
        }
        performSegue(withIdentifier: "segueToPersonnel", sender: self)
    }
    
    
    
    @IBAction func sameInfoSegmentChanged(_ sender: Any) {
        if ownerInfoSegmentedControl.selectedSegmentIndex == 0 {
            ownerNameTextField.isHidden = true
            ownerAddressTextField.isHidden = true
            ownerPhoneTextField.isHidden = true
        } else {
            ownerNameTextField.isHidden = false
            ownerAddressTextField.isHidden = false
            ownerPhoneTextField.isHidden = false
            
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
