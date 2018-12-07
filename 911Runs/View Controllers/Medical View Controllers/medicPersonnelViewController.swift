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
    @IBOutlet weak var personnelTableView: UITableView!
    
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MedicalManager.sharedInstance.getPersonnelListCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personnelList") as! personnelNameTableViewController
        
        let currentName = MedicalManager.sharedInstance.getPersonnelName(at: indexPath.row)
        
        cell.personnelName.text = currentName
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") {_, _ in
            MedicalManager.sharedInstance.deletePersonnelName(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        return [deleteAction]
    }
    
    @IBAction func nextPageButtonTapped(_ sender: Any) {
        if MedicalManager.sharedInstance.getPersonnelListCount() == 0 {
            showErrorAlert(self, "Empty Personnel", "Please enter the personnel that went on the run", "Close")
        } else {
            performSegue(withIdentifier: "personnelToApparatus", sender: self)
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
