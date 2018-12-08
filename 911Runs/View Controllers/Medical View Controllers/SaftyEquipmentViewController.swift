//
//  SaftyEquipmentViewController.swift
//  911Runs
//
//  Created by Jamie Cummings on 12/3/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class SaftyEquipmentViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var equipmentUsedPicker: UIPickerView!
    @IBOutlet weak var saftyEquipmentOtherTextField: UITextField!
    @IBOutlet weak var otherTextField: UITextField!
    var equipmentUsedPickerData: [String] = [String]()
    var valueSelected = 0
    @IBOutlet weak var safetyEquipmentTableView: UITableView!
    @IBOutlet weak var cardiacArrestTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        otherTextField.isHidden = true
        
        equipmentUsedPickerData = ["1 Safety/Seat Belt", "2 Child Safety Seat", "3 Airbag", "4 Helmet", "5 Protective Clothing", "N None", "O Other", "U Undetermined"]
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return equipmentUsedPickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        valueSelected = row
        return equipmentUsedPickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 6 {
            otherTextField.isHidden = false
        } else {
            otherTextField.isHidden = true
        }
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        if otherTextField.isHidden == true {
            MedicalManager.sharedInstance.safteyEquipmentUsedArray.append(equipmentUsedPickerData[valueSelected])
            safetyEquipmentTableView.reloadData()
        } else {
            guard let other = otherTextField.text, other.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
                showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
                return
            }
            MedicalManager.sharedInstance.safteyEquipmentUsedArray.append(other)
            otherTextField.text = ""
            safetyEquipmentTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == safetyEquipmentTableView {
            return MedicalManager.sharedInstance.getsafteyEquipmentUsedCount()
        } else {
            return MedicalManager.sharedInstance.getsafteyEquipmentUsedCount()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == safetyEquipmentTableView{
            let cell = tableView.dequeueReusableCell(withIdentifier: "safetyEquipCell") as! personnelNameTableViewController
            
            let currentName = MedicalManager.sharedInstance.getsafteyEquipmentUsed(at: indexPath.row)
            
            cell.safetyEquipLabel.text = currentName
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cardiacArrestCell") as! personnelNameTableViewController
            
            let currentName = MedicalManager.sharedInstance.getsafteyEquipmentUsed(at: indexPath.row)
            
           cell.cardiacArrestLabel.text = currentName
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") {_, _ in
            MedicalManager.sharedInstance.deletesafteyEquipmentUsed(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        return [deleteAction]
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        if MedicalManager.sharedInstance.getsafteyEquipmentUsedCount() == 0 {
            showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
        } else {
            performSegue(withIdentifier: "safetyToProvider", sender: self)
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
