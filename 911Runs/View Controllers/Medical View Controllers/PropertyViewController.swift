//
//  PropertyViewController.swift
//  911Runs
//
//  Created by Jamie Cummings on 12/3/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class PropertyViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var incidentTyperPicker: UIPickerView!
    @IBOutlet weak var propertyPicker: UIPickerView!
    @IBOutlet weak var mixedPropertiesPicker: UIPickerView!
    @IBOutlet weak var actionsTakenTableView: UITableView!
    
    var incidentTypePickerData: [String] = [String]()
    var propertyUsePickerData: [String] = [String]()
    var mixedPropertiesPickerData: [String] = [String]()
    var actionTakenPickerData: [String] = [String]()
    
    var actionValueSelected = 0
    var otherValueSelected = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        incidentTypePickerData = ["111 Sturcture Fire", "114 Chimnew Fire", "121 Movile Home Fire", "130 Vehicle Fire", "142 Brush Fire", "151 Trash Fire", "161 Outside Structure Fire", "311 Medical Call", "322 Vehicle Accident w/Injury", "412 Natural Gas Leak", "424 Carbon Monoxide Icident", "445 Arching Electrical Equipment", "463 Vehicle Accident No Injury", "600 Good Intent Call", "611 Dispatched/Caneled Enrute", "631 Authorized Control Burn", "730 System Malfunction", "831 Wind Storm/Tornado", "Other Explain"]
        
        propertyUsePickerData = ["130 Place of Worship", "161 Restaurant", "213 School", "419 1 to 2 Family Dwelling", "500 Business","808 Outside Building", "819 Barn","931 Open Land or Field", "960 Street"]
        
        mixedPropertiesPickerData = ["20 Education Use","40 Residential Use", "65 Farm Use", "OO Other"]
        
        actionTakenPickerData = ["11 Extinguish", "12 Salvage and Overhaul", "31 Provide First Aid", "Provide BLS", "51 Ventilate", "52 Forcible Entry", "82 Notify Other Agencies", "86 Investigate", "93 Canceled Enroute"]
        
        if otherValueSelected == 3 {
            print("it works")
        }
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == incidentTyperPicker {
            return incidentTypePickerData.count
        } else if pickerView == propertyPicker {
            return propertyUsePickerData.count
        } else if pickerView == mixedPropertiesPicker {
            return mixedPropertiesPickerData.count
        } else {
            return actionTakenPickerData.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == incidentTyperPicker {
            return incidentTypePickerData[row]
        } else if pickerView == propertyPicker {
            return propertyUsePickerData[row]
        } else if pickerView == mixedPropertiesPicker {
            otherValueSelected = row
            return mixedPropertiesPickerData[row]
        } else {
            actionValueSelected = row
            return actionTakenPickerData[row]
        }
    }
    
    @IBAction func AddButtonTapped(_ sender: Any) {
        if MedicalManager.sharedInstance.actionsTakenArray.count <= 2 {
        MedicalManager.sharedInstance.actionsTakenArray.append(actionTakenPickerData[actionValueSelected])
        actionsTakenTableView.reloadData()
        } else {
            showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MedicalManager.sharedInstance.getActionsTakenCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "actionTakenCell") as! personnelNameTableViewController
        
        let currentAction = MedicalManager.sharedInstance.getActionsTaken(at: indexPath.row)
        
        cell.actionTakenLabel.text = currentAction
       
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
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
