//
//  MedicalViewController.swift
//  911Runs
//
//  Created by Alex Richardson on 11/27/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class MedicalViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var incidentNumTextField: UITextField!
    @IBOutlet weak var FDIDTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var exposureTextField: UITextField!
    @IBOutlet weak var alarmTimeDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        guard let FDID = FDIDTextField.text, FDID.trimmingCharacters(in: .whitespacesAndNewlines) != "", let state = stateTextField.text, state.trimmingCharacters(in: .whitespacesAndNewlines) != "", let exposure = exposureTextField.text, exposure.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
          
            return showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
        }
        // create a new instance of the NSDateFormatter
        let dateFormatter = DateFormatter()
        //specify the display format, e.g. "27-08-2015
        dateFormatter.dateFormat = "dd-MM-YYYY"
        // Now we get the date from the UIDatePicker and convert it to a string
        let strDate = dateFormatter.string(from: datePicker.date)
        let strAT = dateFormatter.string(from: alarmTimeDatePicker.date)
       
        MedicalManager.sharedInstance.medicalArray.append(Medical(date: strDate, incidentNumber: incidentNumTextField.text!, FDID: FDID, state: state, exposure: exposure, alarmTime: strAT))
        
        performSegue(withIdentifier: "segueToLocation", sender: self)
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
