//
//  VehicalViewController.swift
//  911Runs
//
//  Created by Spencer Casteel on 12/4/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class VehicalViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var modelTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var vinTextField: UITextField!
    @IBOutlet weak var licenseTextField: UITextField!
    
    @IBOutlet weak var vehicalTableView: UITableView!
    
    
    
    @IBAction func addVehicalButtonTapped(_ sender: Any) {
        guard let model = modelTextField.text, model.trimmingCharacters(in: .whitespacesAndNewlines) != "", let year = yearTextField.text, year.trimmingCharacters(in: .whitespacesAndNewlines) != "", let vin = vinTextField.text, vin.trimmingCharacters(in: .whitespacesAndNewlines) != "", let license = licenseTextField.text, license.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
            
            showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
            return
        }
        let newVehical = Vehical(yearModel: "\(year) \(model)", vin: "VIN: \(vin)", license: license)
        
        MedicalManager.sharedInstance.vehicalArray.append(newVehical)
        vehicalTableView.reloadData()
        modelTextField.text = ""; yearTextField.text = ""; vinTextField.text = ""; licenseTextField.text = ""
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MedicalManager.sharedInstance.getVehicalCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VehicalCell") as! personnelNameTableViewController
        
        let currentVehical = MedicalManager.sharedInstance.getVehicalInfo(at: indexPath.row)
        
        cell.vehicalYearAndModel.text = currentVehical.yearModel
        cell.vehicalVin.text = currentVehical.vin
        cell.vehicalLicense.text = currentVehical.license
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        if MedicalManager.sharedInstance.vehicalArray.isEmpty {
            showErrorAlert(self, "No Vehical", "Please enter a vehical", "close")
        }
         performSegue(withIdentifier: "VehicalToPatients", sender: self)
    }
    
}
