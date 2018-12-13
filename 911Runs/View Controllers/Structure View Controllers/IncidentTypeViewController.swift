//
//  IncidentTypeViewController.swift
//  911Runs
//
//  Created by Jamie Cummings on 11/30/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class IncidentTypeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if pickerView == incidentTypePicker {
        
        return incidentTypePickerData.count
            
        } else if pickerView == propertyUsePicker {
            
            return propertyUsePickerData.count
            
        } else {
            
            return mixedPropertiesPickerData.count
            
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        
        if pickerView == incidentTypePicker {
            
            return incidentTypePickerData[row]
            
        } else if pickerView == propertyUsePicker {
            
            return propertyUsePickerData[row]
            
        } else {
            
            return mixedPropertiesPickerData[row]
            
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == incidentTypePicker {
            let selectedRow = row
            if row != 0 && incidentTypePickerData[0] == "" {
                incidentTypePickerData.remove(at: 0)
                pickerView.reloadComponent(component)
                pickerView.selectRow(selectedRow - 1, inComponent: 0, animated: false)
            }
            if row == incidentTypePickerData.count - 1 {
                incidentTypeOtherTextField.isHidden = false
            } else {
                incidentTypeOtherTextField.isHidden = true
            }
            
        } else if pickerView == propertyUsePicker {
            let selectedRow = row
            if row != 0 && propertyUsePickerData[0] == "" {
                propertyUsePickerData.remove(at: 0)
                pickerView.reloadComponent(component)
                pickerView.selectRow(selectedRow - 1, inComponent: 0, animated: false)
            }
            if row == propertyUsePickerData.count - 1 {
                propertyUseOtherTextField.isHidden = false
            } else {
               propertyUseOtherTextField.isHidden = true
            }
            
        } else if pickerView == mixedPropertiesPicker {
            let selectedRow = row
            if row != 0 && mixedPropertiesPickerData[0] == "" {
                mixedPropertiesPickerData.remove(at: 0)
                pickerView.reloadComponent(component)
                pickerView.selectRow(selectedRow - 1, inComponent: 0, animated: false)
            }
            if row == mixedPropertiesPickerData.count - 1 {
                
                mixedPropertyTextField.isHidden = false
                
            } else {
                    
                mixedPropertyTextField.isHidden = true
                    
                }
                
            }
        }
    

    @IBOutlet weak var incidentTypePicker: UIPickerView!
    
    @IBOutlet weak var incidentTypeOtherTextField: UITextField!
    
    @IBOutlet weak var propertyUsePicker: UIPickerView!
    
    @IBOutlet weak var mixedPropertiesPicker: UIPickerView!
    
    @IBOutlet weak var mixedPropertyTextField: UITextField!
    
    @IBOutlet weak var propertyUseOtherTextField: UITextField!
    
    
    var incidentTypePickerData : [String] = [String]()
    
    var propertyUsePickerData : [String] = [String]()
    
    var mixedPropertiesPickerData : [String] = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        incidentTypePickerData = ["", "111 Structure Fire", "114 Chimney Fire", "121 Mobile Home Fire", "130 Vehicle Fire", "142 Brush Fire", "151 Trash Fire", "161 Outside Structure Fire", "311 Medical Call", "322 Vehicle Accident w/Injury", "412 Natural Gas Leak", "424 Carbon Monoxide Incident", "445 Arching Electrical Equipment", "463 Vehicle Accident No Injury", "600 Good Intent Call", "611 Dispatched/Cancelled Enroute", "631 Authorized Control Burn", "730 System Malfunction", "831 Wind Storm/Tornado", "Other Explain"]
        
        propertyUsePickerData = ["", "130 Place of Worship", "161 Restaurant", "213 School", "419 1 to 2 Family Dwelling", "500 Business","808 Outside Building", "819 Barn","931 Open Land or Field", "960 Street", "Other Explain"]
        
        mixedPropertiesPickerData = ["", "20 Education Use","40 Residential Use", "65 Farm Use", "OO Other"]
        
        
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        
        if incidentTypeOtherTextField.isHidden == false {
            
            guard let otherIncidentType = incidentTypeOtherTextField.text, otherIncidentType.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
                
                showErrorAlert(self, "Empty Field", "Please enter in a value for other incident type", "Close")
                
                return
                
            }
            
        }
        if propertyUseOtherTextField.isHidden == false {
            
            guard let otherPropertyUse = propertyUseOtherTextField.text, otherPropertyUse.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
                
                showErrorAlert(self, "Empty Field", "Please enter in a value for other property use", "Close")
                
                return
                
            }
            
        }
        
        if mixedPropertyTextField.isHidden == false {
            
            guard let otherMixedProperty = mixedPropertyTextField.text, otherMixedProperty.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
                
                showErrorAlert(self, "Empty Field", "Please enter in a value for other mixed property", "Close")
                
                return
                
            }
            
        }
        
        if incidentTypePickerData[incidentTypePicker.selectedRow(inComponent: 0)] == "" {
            
             showErrorAlert(self, "Unchanged Values", "Please change values on the pickers", "Close")
            
            return
            
        }
        
        else if propertyUsePickerData[propertyUsePicker.selectedRow(inComponent: 0)] == "" {
            
            showErrorAlert(self, "Unchanged Values", "Please change values on the pickers", "Close")
            
            return
            
        }
        
        else if mixedPropertiesPickerData[mixedPropertiesPicker.selectedRow(inComponent: 0)] == "" {
            
            showErrorAlert(self, "Unchanged Values", "Please change values on the pickers", "Close")
            
            return
            
        }
        
        self.performSegue(withIdentifier: "showIncidentType2", sender: self)
        
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
