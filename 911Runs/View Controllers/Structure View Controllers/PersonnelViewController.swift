//
//  PersonnelViewController.swift
//  911Runs
//
//  Created by Alex Richardson on 11/28/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class PersonnelViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView == personnelTableView {
            
            return PersonnelManager.sharedInstance.getPersonnelListCount()
            
        } else {
            
            return ApparatusManager.sharedInstance.getApparatusListCount()
            
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == personnelTableView {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "personnelList") as! PersonnelTableViewCell
            
            let currentName = PersonnelManager.sharedInstance.getPersonnelName(at: indexPath.row)
            
            cell.personnelName.text = currentName
            
            return cell
            
        } else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "apparatusCell") as! ApparatusTableViewCell
            
            let currentApparatus = ApparatusManager.sharedInstance.getApparatusName(at: indexPath.row)
            
            cell.apparatusLabel.text = currentApparatus
            
            return cell
            
        }
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        if tableView == personnelTableView {
            
            let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") {_,_ in
                PersonnelManager.sharedInstance.deletePersonnelName(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
            return [deleteAction]
            
        } else {
            
            let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") {_,_ in
                ApparatusManager.sharedInstance.deleteApparatusName(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
            return [deleteAction]
            
        }
       
    }
    
    
    @IBOutlet weak var nameOfPersonnel: UITextField!
    
    @IBOutlet weak var respondingApparatus: UITextField!
    
    @IBOutlet weak var personnelTableView: UITableView!
    
    @IBOutlet weak var apparatusTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func addPersonnelButtonTapped(_ sender: Any) {
        
        guard let personnelName = nameOfPersonnel.text, personnelName.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
            
            showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
            
            return
        }
        
        PersonnelManager.sharedInstance.personnelListArray.append(personnelName)
        
        personnelTableView.reloadData()
        
        nameOfPersonnel.text = ""
        
        
    }
    
    @IBAction func addApparatusButtonTapped(_ sender: Any) {
        
        guard let apparatusName = respondingApparatus.text, apparatusName.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
            
            showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
            
            return
        }
        
        ApparatusManager.sharedInstance.apparatusListArray.append(apparatusName)
        
        apparatusTableView.reloadData()
        
        respondingApparatus.text = ""
        
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        
        self.performSegue(withIdentifier: "ShowLocationInfo", sender: self)
        
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
