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
    
    @IBOutlet weak var injuredPersonNameField: UITextField!
    
    @IBOutlet weak var injuredPersonAddressField: UITextField!
    
    @IBOutlet weak var injuredPersonPhoneNumberField: UITextField!
    
    @IBOutlet weak var ownerYesNoController: UISegmentedControl!
    
    @IBOutlet weak var ownerNameField: UITextField!
    
    @IBOutlet weak var ownerAddressField: UITextField!
    
    @IBOutlet weak var ownerPhoneNumberField: UITextField!
    
    @IBOutlet weak var incidentNumberField: UITextField!
    
    @IBOutlet weak var exposureField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ownerInfoChange(_ sender: Any) {
        
        if ownerYesNoController.selectedSegmentIndex == 1 {
            
            ownerNameField.isHidden = false
            
            ownerAddressField.isHidden = false
            
            ownerPhoneNumberField.isHidden = false
            
        } else {
            
            ownerNameField.isHidden = true
            
            ownerNameField.text = ""
            
            ownerAddressField.isHidden = true
            
            ownerAddressField.text = ""
            
            ownerPhoneNumberField.isHidden = true
            
            ownerPhoneNumberField.text = ""
            
        }
        
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        
        guard let newInjuredPersonName = injuredPersonNameField.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {
            
            return
            
        }
        
        guard let newInjuredPersonAddress = injuredPersonAddressField.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {
            
            return
            
        }
        
        guard let newInjuredPersonNumber = injuredPersonPhoneNumberField.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {
            
            return
            
        }
        
        guard let newIncidentNumber = incidentNumberField.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {
            
            return
            
        }
        
        guard let newExposureNumber = exposureField.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {
            
            return
            
        }
        
        if ownerYesNoController.selectedSegmentIndex == 1 {
            
            guard let newOwnerPersonName = ownerNameField.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {
                
                return
                
            }
            
            guard let newOwnerPersonAddress = ownerAddressField.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {
                
                return
                
            }
            
            guard let newOwnerPersonNumber = ownerPhoneNumberField.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {
                
                return
                
            }
            
            if newInjuredPersonName.isEmpty || newInjuredPersonAddress.isEmpty || newInjuredPersonNumber.isEmpty || newOwnerPersonName.isEmpty || newOwnerPersonAddress.isEmpty || newOwnerPersonNumber.isEmpty || newIncidentNumber.isEmpty || newExposureNumber.isEmpty {
                
               return showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
                
                
            } else {
                
                self.performSegue(withIdentifier: "ShowPersonnel", sender: self)
                
            }
            
        } else {
            
            if newInjuredPersonName.isEmpty || newInjuredPersonAddress.isEmpty || newInjuredPersonNumber.isEmpty || newExposureNumber.isEmpty || newIncidentNumber.isEmpty {
                
               return showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
                
                
            } else {
                
                self.performSegue(withIdentifier: "ShowPersonnel", sender: self)
                
            }
            
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
