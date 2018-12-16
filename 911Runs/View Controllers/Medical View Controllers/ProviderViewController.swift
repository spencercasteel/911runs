//
//  ProviderViewController.swift
//  911Runs
//
//  Created by Jamie Cummings on 12/3/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class ProviderViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var initalProviderPicker: UIPickerView!
    @IBOutlet weak var initalProviderTextField: UITextField!
    @IBOutlet weak var highestProviderPicker: UIPickerView!
    @IBOutlet weak var highestLevelProviderTextField: UITextField!
    @IBOutlet weak var patientStatusPicker: UIPickerView!
    
    
    var initalProviderPickerData: [String] = [String]()
    var highestProviderPickerData: [String] = [String]()
    var patientSatusPickerData: [String] = [String]()
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == initalProviderPicker {
            return initalProviderPickerData.count
        } else if pickerView == highestProviderPicker {
            return highestProviderPickerData.count
        } else {
            return patientSatusPickerData.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == initalProviderPicker {
            return initalProviderPickerData[row]
        } else if pickerView == highestProviderPicker {
            return highestProviderPickerData[row]
        } else {
            return patientSatusPickerData[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == initalProviderPicker {
            let selectedRow = row
            if row != 0 && initalProviderPickerData[0] == "" {
                initalProviderPickerData.remove(at: 0)
                pickerView.reloadComponent(component)
                pickerView.selectRow(selectedRow - 1, inComponent: 0, animated: false)
            }
            if row >= 2 {
                initalProviderTextField.isHidden = false
            } else {
                initalProviderTextField.isHidden = true
            }
            
        } else if pickerView == highestProviderPicker {
            let selectedRow = row
            if row != 0 && highestProviderPickerData[0] == "" {
                highestProviderPickerData.remove(at: 0)
                pickerView.reloadComponent(component)
                pickerView.selectRow(selectedRow - 1, inComponent: 0, animated: false)
            }
            if row >= 2 {
                highestLevelProviderTextField.isHidden = false
            } else {
                highestLevelProviderTextField.isHidden = true
            }
            
        } else if pickerView == patientStatusPicker {
            let selectedRow = row
            if row != 0 && patientSatusPickerData[0] == "" {
                patientSatusPickerData.remove(at: 0)
                pickerView.reloadComponent(component)
                pickerView.selectRow(selectedRow - 1, inComponent: 0, animated: false)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        highestLevelProviderTextField.isHidden = true
        initalProviderTextField.isHidden = true
        initalProviderPickerData = ["","1 First Responder", "2 EMT-B", "O Other"]
        highestProviderPickerData = ["","1 First Responder", "2 EMT-B", "O Other"]
        patientSatusPickerData = ["","1 Improved", "2 Same", "3 Worse"]
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
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        if initalProviderPickerData[initalProviderPicker.selectedRow(inComponent: 0)] == "" {
            showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
        } else if highestProviderPickerData[highestProviderPicker.selectedRow(inComponent: 0)] == "" {
            showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
        } else if patientSatusPickerData[patientStatusPicker.selectedRow(inComponent: 0)] == "" {
            showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
        }  else if initalProviderTextField.isHidden == false && initalProviderTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" && highestLevelProviderTextField.isHidden == false && highestLevelProviderTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
        } else if initalProviderTextField.isHidden == false && initalProviderTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            showErrorAlert(self, "Inital level of provider", "Please enter in a value for other", "Close")
        } else if highestLevelProviderTextField.isHidden == false && highestLevelProviderTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            showErrorAlert(self, "Highest level of provider", "Please enter in a value for other", "Close")
        }  else {
            performSegue(withIdentifier: "providerToNarritave", sender: self)
        }
    }
}
