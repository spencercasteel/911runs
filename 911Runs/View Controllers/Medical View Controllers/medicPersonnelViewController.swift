//
//  medicPersonnelViewController.swift
//  911Runs
//
//  Created by Spencer Casteel on 12/2/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class medicPersonnelViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var personnelNameTextField: UITextField!
    @IBOutlet weak var medicNameTextField: UITextField!
    @IBOutlet weak var medicUnitNum: UITextField!
    @IBOutlet weak var personnelTableView: UITableView!
    @IBOutlet weak var medicTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addPersonnelButtonTapped(_ sender: Any) {
        guard let personnelName = personnelNameTextField.text, personnelName.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
            
            showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
            return
        }
        MedicalManager.sharedInstance.personnelListArray.append(personnelName)
        personnelTableView.reloadData()
        personnelNameTextField.text = ""
    }
    
    @IBAction func addMedicButtonTapped(_ sender: Any) {
        guard let medicName = medicNameTextField.text, medicName.trimmingCharacters(in: .whitespacesAndNewlines) != "", let unitNum = medicUnitNum.text, unitNum.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
            
            showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
            return
        }
        let combo = "\(medicName) | Medic ID: \(unitNum)"
        MedicalManager.sharedInstance.medicArray.append(combo)
        medicTableView.reloadData()
        medicNameTextField.text = ""
        medicUnitNum.text = ""
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == personnelTableView {
            return MedicalManager.sharedInstance.getPersonnelListCount()
        } else {
            
            return MedicalManager.sharedInstance.getMedArrayCount()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == personnelTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "personnelList") as! personnelNameTableViewController
            
            let currentName = MedicalManager.sharedInstance.getPersonnelName(at: indexPath.row)
            
            cell.personnelName.text = currentName
            
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "medicNameAndUnitNum") as! personnelNameTableViewController
            
            let currentMed = MedicalManager.sharedInstance.getMedInfo(at: indexPath.row)
            
            cell.medicNameAndUnitNum.text = currentMed
            
            return cell
        }
    }
    
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        if tableView == personnelTableView {
            let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") {_, _ in
                MedicalManager.sharedInstance.deletePersonnelName(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
            return [deleteAction]
        } else {
            let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") {_, _ in
                MedicalManager.sharedInstance.deleteMedicInfo(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
            return[deleteAction]
        }
    }
    
    
    @IBAction func nextPageButtonTapped(_ sender: Any) {
        if MedicalManager.sharedInstance.getPersonnelListCount() == 0 {
            showErrorAlert(self, "Empty Personnel", "Please enter the personnel that went on the run", "Close")
        } else {
            performSegue(withIdentifier: "personnelToProperty", sender: self)
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
