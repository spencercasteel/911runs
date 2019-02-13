//
//  LocationInfoViewController.swift
//  911Runs
//
//  Created by Alex Richardson on 12/3/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class LocationInfoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MedicManager.sharedInstance.getApparatusListCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "medicCell") as! MedicTableViewCell
        
        let currentName = MedicManager.sharedInstance.getMedicName(at: indexPath.row)
        
        cell.nameIDLabel.text = currentName
        
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") {_,_ in
            MedicManager.sharedInstance.deleteMedicName(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        return [deleteAction]
    }
    
    @IBOutlet weak var medicNameTextField: UITextField!
    
    @IBOutlet weak var medicUnitNumberTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var stateTextField: UITextField!
    
    @IBOutlet weak var zipTextField: UITextField!
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    @IBOutlet weak var ownerSegmentedController: UISegmentedControl!
    
    @IBOutlet weak var ownerNameTextField: UITextField!
    
    @IBOutlet weak var ownerAddressTextField: UITextField!
    
    @IBOutlet weak var ownerCityTextField: UITextField!
    
    @IBOutlet weak var ownerStateTextField: UITextField!
    
    @IBOutlet weak var ownerZipTextField: UITextField!
    
    @IBOutlet weak var ownerPhoneTextField: UITextField!
    
    @IBOutlet weak var medicTableView: UITableView!
    
    @IBOutlet weak var MainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        // Do any additional setup after loading the view.
    }
    @IBAction func segmentedControlChanged(_ sender: Any) {
        
        if ownerSegmentedController.selectedSegmentIndex == 1 {
            
            ownerNameTextField.isHidden = false
            
            ownerAddressTextField.isHidden = false
            
            ownerCityTextField.isHidden = false
            
            ownerStateTextField.isHidden = false
            
            ownerZipTextField.isHidden = false
            
            ownerPhoneTextField.isHidden = false
        
        } else {
            
            ownerNameTextField.isHidden = true
            
            ownerAddressTextField.isHidden = true
            
            ownerCityTextField.isHidden = true
            
            ownerStateTextField.isHidden = true
            
            ownerZipTextField.isHidden = true
            
            ownerPhoneTextField.isHidden = true
            
        }
        
        MainView.heightAnchor.constraint(equalToConstant: 950)
        
    }
    
    @IBAction func addMedicButtonTapped(_ sender: Any) {
        
        guard let medicName = medicNameTextField.text, medicName.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
            
            showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
            
            return
        }
        
        guard let medicID = medicUnitNumberTextField.text, medicID.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
            
            showErrorAlert(self, "Empty ID", "Please enter in a value for ID fields", "Close")
            
            return
            
        }
        
        let completeMedic = "Medic ID: \(medicID)"
        
        MedicManager.sharedInstance.medicListArray.append(completeMedic)
        
        medicTableView.reloadData()
        
        medicNameTextField.text = ""
        
        medicUnitNumberTextField.text = ""
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        
        
        guard let name = nameTextField.text,
            
            name.trimmingCharacters(in: .whitespacesAndNewlines) != "",
            
            let address = addressTextField.text,
            
            address.trimmingCharacters(in: .whitespacesAndNewlines) != "",
            
            let city = cityTextField.text,
            
            city.trimmingCharacters(in: .whitespacesAndNewlines) != "",
            
            let state = stateTextField.text,
            
            state.trimmingCharacters(in: .whitespacesAndNewlines) != "",
            
            let zip = zipTextField.text,
            
            zip.trimmingCharacters(in: .whitespacesAndNewlines) != "",
            
            let phone = phoneNumberTextField.text,
            
            phone.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
            
            showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
            return
            
        }
        
        if ownerSegmentedController.selectedSegmentIndex == 1 {
            
            guard let ownerName = ownerNameTextField.text,
                
                ownerName.trimmingCharacters(in: .whitespacesAndNewlines) != "",
                
                let ownerAddress = ownerAddressTextField.text,
                
                ownerAddress.trimmingCharacters(in: .whitespacesAndNewlines) != "",
                
                let ownerPhone = ownerPhoneTextField.text,
                
                ownerPhone.trimmingCharacters(in: .whitespacesAndNewlines) != "",
                
                let ownerZip = ownerZipTextField.text,
                
                ownerZip.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
                
                showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
                return
            }
            
            performSegue(withIdentifier: "ShowIncidentType", sender: self)
            
        } else {
            
            performSegue(withIdentifier: "ShowIncidentType", sender: self)
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
