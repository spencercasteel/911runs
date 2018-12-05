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
        
        let currentVehical = VehicleManager.sharedInstance.getVehicle(at: indexPath.row)
        
        cell.vehicleModelYear.text = currentVehical.yearModel
        
        cell.vehicleLicense.text = currentVehical.license
        
        cell.vehicleVin.text = currentVehical.vin
        
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
        
        guard let model = modelTextField.text, model.trimmingCharacters(in: .whitespacesAndNewlines) != "", let year = yearTextField.text, year.trimmingCharacters(in: .whitespacesAndNewlines) != "", let vin = vinTextField.text, vin.trimmingCharacters(in: .whitespacesAndNewlines) != "", let license = licenseTextField.text, license.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
            
            showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
            
            return
            
        }
        
        VehicleManager.sharedInstance.vehicleListArray.append(Vehical.init(yearModel: "\(year) \(model)", vin: "VIN: \(vin)", license: "License: \(license)"))
        
        vehicleTableView.reloadData()
        
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        
        
            
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

