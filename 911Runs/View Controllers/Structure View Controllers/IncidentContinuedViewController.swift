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
                ActionManager.sharedInstance.deleteActionName(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
       
            actionTakenPicker.reloadAllComponents()
        
            actionTakenPickerData.append(ActionManager.sharedInstance.actionListArray[indexPath.row])
            
            actionTakenPicker.reloadAllComponents()
        
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
    
    @IBOutlet weak var actionTableView: UITableView!
    
    @IBOutlet weak var actionTakenPicker: UIPickerView!
    
    @IBOutlet weak var aidGivenPicker: UIPickerView!
    
    @IBOutlet weak var vehicleSegmentedController: UISegmentedControl!
    
    var valueSelected = 0
    
    var aidGivenPickerData: [String] = [String]()
    
    var actionTakenPickerData: [String] = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aidGivenPickerData = ["1 Mutual Aid Received", "3 Mutual Aid Given", "N None", "M Mutual Aid FDID #'s"]
        
        actionTakenPickerData = ["11 Extinguish", "12 Salvage and Overhaul", "31 Provide First Aid", "Provide BLS", "51 Ventilate", "52 Forcible Entry", "82 Notify Other Agencies", "86 Investigate", "93 Canceled Enroute"]
        
    }
    
    @IBAction func addActionButtonTapped(_ sender: Any) {
        
        if ActionManager.sharedInstance.actionListArray.count < 3 {
            
            ActionManager.sharedInstance.actionListArray.append(actionTakenPickerData.remove(at: valueSelected))
            
            actionTableView.reloadData()
            
            actionTakenPicker.reloadAllComponents()
            
        } else {
            
            showErrorAlert(self, "Action Table Full", "The action table is full. Please remove one first.", "Close")
            
        }
            
        
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        
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
    
}


