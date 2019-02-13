//
//  IncidentContinuedViewController.swift
//  911Runs
//
//  Created by Alex Richardson on 12/4/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class IncidentContinuedViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ActionManager.sharedInstance.getActionListCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "actionCell") as! ActionTableViewCell
        
        let currentName = ActionManager.sharedInstance.getActionName(at: indexPath.row)
        
        cell.actionLabel.text = currentName
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        
        let deleteAction = UITableViewRowAction(style: .destructive, title: "Remove") {_,_ in
            self.actionTakenPickerData.append(ActionManager.sharedInstance.deleteActionName(at: indexPath.row))
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            
            self.actionTakenPicker.reloadAllComponents()
        }
        
        return [deleteAction]
        
    }
    
    
    //START OF PICKER VIEW FUNCS
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if pickerView == actionTakenPicker {
            
            return actionTakenPickerData.count
            
        } else {
            
            return aidGivenPickerData.count
            
        }
        
        
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if pickerView == actionTakenPicker {
            
            valueSelected = row
            
            return actionTakenPickerData[row]
            
        } else {
            
            
            return aidGivenPickerData[row]
            
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == actionTakenPicker {
            let selectedRow = row
            if row != 0 && actionTakenPickerData[0] == "" {
                actionTakenPickerData.remove(at: 0)
                pickerView.reloadComponent(component)
                pickerView.selectRow(selectedRow - 1, inComponent: 0, animated: false)
            }
            
        } else if pickerView == aidGivenPicker {
            let selectedRow = row
            if row != 0 && aidGivenPickerData[0] == "" {
                aidGivenPickerData.remove(at: 0)
                pickerView.reloadComponent(component)
                pickerView.selectRow(selectedRow - 1, inComponent: 0, animated: false)
            }
            
        }
    }
    
    @IBOutlet weak var actionTableView: UITableView!
    
    @IBOutlet weak var actionTakenPicker: UIPickerView!
    
    @IBOutlet weak var aidGivenPicker: UIPickerView!
    
    @IBOutlet weak var vehicleSegmentedController: UISegmentedControl!
    
    @IBOutlet weak var addActionButton: UIButton!
    
    var valueSelected = 0
    
    var aidGivenPickerData: [String] = [String]()
    
    var actionTakenPickerData: [String] = [String]()
    
    let actionTableStuff = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        addActionButton.layer.cornerRadius = 4
        
        aidGivenPickerData = ["", "1 Mutual Aid Received", "3 Mutual Aid Given", "N None", "M Mutual Aid FDID #'s"]
        
        actionTakenPickerData = ["", "11 Extinguish", "12 Salvage and Overhaul", "31 Provide First Aid", "Provide BLS", "51 Ventilate", "52 Forcible Entry", "82 Notify Other Agencies", "86 Investigate", "93 Canceled Enroute"]
        
    }
    
    @IBAction func addActionButtonTapped(_ sender: Any) {
        
        if actionTakenPickerData[actionTakenPicker.selectedRow(inComponent: 0)] == "" {
            
            showErrorAlert(self, "Invalid Action", "Move the picker to a valid action", "Close")
            
            return
            
        }
        
        let value = actionTakenPickerData[valueSelected]
        
        for row in ActionManager.sharedInstance.actionListArray {
            
            if value == row {
                
                showErrorAlert(self, "Duplicate Action", "That action has already been added.", "Close")
                
                return
                
            }
        }
        
        if ActionManager.sharedInstance.actionListArray.count < 3 {
        
            ActionManager.sharedInstance.actionListArray.append(value)
            
            actionTableView.reloadData()
            
        } else {
            
            showErrorAlert(self, "Action Table Full", "The action table is full. Please remove one first.", "Close")
            
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }

@IBAction func nextButtonTapped(_ sender: Any) {
    
    if aidGivenPickerData[aidGivenPicker.selectedRow(inComponent: 0)] == "" {
        
        showErrorAlert(self, "Unchanged Value", "Please change values on the aid picker", "Close")
        
        return
        
    }
    
    
    if vehicleSegmentedController.selectedSegmentIndex == 0 {
        
        self.performSegue(withIdentifier: "showVehicleInfo", sender: self)
        
    } else {
        
        self.performSegue(withIdentifier: "showStructureInfo", sender: self)
        
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
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}


