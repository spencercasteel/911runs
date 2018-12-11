//
//  VehicleInfoViewController.swift
//  911Runs
//
//  Created by Alex Richardson on 12/4/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class VehicleInfoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return VehicleManager.sharedInstance.vehicleListArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "vehicleCell") as! VehicleTableViewCell
        
        let currentVehicle = VehicleManager.sharedInstance.getVehicle(at: indexPath.row)
        
        cell.vehicleModel.text = currentVehicle.model
        
        if let year = currentVehicle.year {
            
            cell.vehicleYear.isHidden = false
            
            cell.vehicleYear.text = year
            
        } else {
            
            cell.vehicleYear.isHidden = true
            
        }
        
        if let vin = currentVehicle.vin {
            
            cell.vehicleVin.isHidden = false
            
            cell.vehicleVin.text = vin
            
        } else {
            
            cell.vehicleVin.isHidden = true
        }
        
        if let license = currentVehicle.license {
            
            cell.vehicleLicense.isHidden = false
            
            cell.vehicleLicense.text = license
            
        } else {
            
            cell.vehicleLicense.isHidden = true
        }
        
        return cell
        
    }
    
    @IBOutlet weak var modelTextField: UITextField!
    
    @IBOutlet weak var yearTextField: UITextField!
    
    @IBOutlet weak var vinTextField: UITextField!
    
    @IBOutlet weak var licenseTextField: UITextField!
    
    @IBOutlet weak var vehicleTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addVehicleTapped(_ sender: Any) {
        
        let newVehicle = Vehicle(model: "", year: nil, vin: nil, license: nil)
        
        guard let model = modelTextField.text, model.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
            
            showErrorAlert(self, "Empty Field", "Please enter in a value for Model", "Close")
            
            return
            
        }
    
        newVehicle.model = model
        
        if yearTextField.text != ("").trimmingCharacters(in: .whitespacesAndNewlines) {
            
            guard let yearText = yearTextField.text else {
                
                return
                
            }
            
            newVehicle.year = yearText
            
            
        }
        
        if vinTextField.text != ("").trimmingCharacters(in: .whitespacesAndNewlines) {
            
            guard let vinText = vinTextField.text else {
                
                return
                
            }
            
            
            newVehicle.vin = vinText
            
        }
        
        if licenseTextField.text != ("").trimmingCharacters(in: .whitespacesAndNewlines) {
            
            guard let licenseText = licenseTextField.text else {
                
                return
                
            }
            
            
            newVehicle.license = licenseText
            
        }
        
        
        VehicleManager.sharedInstance.vehicleListArray.append(newVehicle)
        
        print(VehicleManager.sharedInstance.vehicleListArray)
        
        vehicleTableView.reloadData()
        
    }
    
    
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        
        if VehicleManager.sharedInstance.vehicleListArray.count == 0 {
            
            showErrorAlert(self, "No Vehicle Added", "Please add a vehicle or go back to the previous page and select no vehicle", "Close")
            
        }
        
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

