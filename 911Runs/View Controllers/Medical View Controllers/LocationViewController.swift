//
//  LocationViewController.swift
//  911Runs
//
//  Created by Spencer Casteel on 11/30/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var ownerInfoSegmentedControl: UISegmentedControl!
    @IBOutlet weak var ownerNameTextField: UITextField!
    @IBOutlet weak var ownerAddressTextField: UITextField!
    @IBOutlet weak var ownerPhoneTextField: UITextField!
    @IBOutlet weak var ownerCityTextField: UITextField!
    @IBOutlet weak var ownerStateTextField: UITextField!
    @IBOutlet weak var ownerZipTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var zipTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ownerNameTextField.isHidden = true
        ownerAddressTextField.isHidden = true
        ownerPhoneTextField.isHidden = true
        ownerCityTextField.isHidden = true
        ownerStateTextField.isHidden = true
        ownerZipTextField.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButtonTyped(_ sender: Any) {
        guard let name = nameTextField.text, name.trimmingCharacters(in: .whitespacesAndNewlines) != "", let address = addressTextField.text, address.trimmingCharacters(in: .whitespacesAndNewlines) != "", let phone = phoneTextField.text, phone.trimmingCharacters(in: .whitespacesAndNewlines) != "", let city = cityTextField.text, city.trimmingCharacters(in: .whitespacesAndNewlines) != "", let state = stateTextField.text, state.trimmingCharacters(in: .whitespacesAndNewlines) != "", let zip = zipTextField.text, zip.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
            
            
            showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
            return
            
        }
        if ownerInfoSegmentedControl.selectedSegmentIndex == 1 {
            guard let ownerName = ownerNameTextField.text, ownerName.trimmingCharacters(in: .whitespacesAndNewlines) != "", let ownerAddress = ownerAddressTextField.text, ownerAddress.trimmingCharacters(in: .whitespacesAndNewlines) != "", let ownerPhone = ownerPhoneTextField.text, ownerPhone.trimmingCharacters(in: .whitespacesAndNewlines) != "", let ownerCity = ownerCityTextField.text, ownerCity.trimmingCharacters(in: .whitespacesAndNewlines) != "", let ownerState = ownerStateTextField.text, ownerState.trimmingCharacters(in: .whitespacesAndNewlines) != "", let ownerZip = ownerZipTextField.text, ownerZip.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
                
                showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
                return
            }
            performSegue(withIdentifier: "segueToPersonnel", sender: self)
        } else {
            performSegue(withIdentifier: "segueToPersonnel", sender: self)
        }
        
    }
    
    
    
    @IBAction func sameInfoSegmentChanged(_ sender: Any) {
        if ownerInfoSegmentedControl.selectedSegmentIndex == 0 {
            ownerNameTextField.isHidden = true
            ownerAddressTextField.isHidden = true
            ownerPhoneTextField.isHidden = true
            ownerCityTextField.isHidden = true
            ownerStateTextField.isHidden = true
            ownerZipTextField.isHidden = true
        } else {
            ownerNameTextField.isHidden = false
            ownerAddressTextField.isHidden = false
            ownerPhoneTextField.isHidden = false
            ownerCityTextField.isHidden = false
            ownerStateTextField.isHidden = false
            ownerZipTextField.isHidden = false
            
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
