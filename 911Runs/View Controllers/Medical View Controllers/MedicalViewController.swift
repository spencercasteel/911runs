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
        let timeFormatter = DateFormatter()
        //specify the display format
        dateFormatter.dateFormat = "MMM d, yyyy"
        timeFormatter.dateFormat = "h:mm a"
        // Now we get the date from the UIDatePicker and convert it to a string
        let strDate = dateFormatter.string(from: datePicker.date)
        let strAT = timeFormatter.string(from: alarmTimeDatePicker.date)
        
        //Applying inputed data to html file and 
        let HTMLString = MedicalManager.sharedInstance.HTMLString
        let date = HTMLString.replacingOccurrences(of: "#date", with: strDate)
        let fdid = date.replacingOccurrences(of: "#FDID", with: FDID)
        let State = fdid.replacingOccurrences(of: "#stateNum", with: state)
        let Exposure = State.replacingOccurrences(of: "#exposure", with: exposure)
        let alarm = Exposure.replacingOccurrences(of: "#alarmTime", with: strAT)
        let IN = alarm.replacingOccurrences(of: "#incidentNumber", with: incidentNumTextField.text!)
       
        MedicalManager.sharedInstance.medicalArray.append(Medical(date: strDate, incidentNumber: incidentNumTextField.text!, FDID: FDID, state: state, exposure: exposure, alarmTime: strAT, arrivalTime: "", lastUnitCleared: "", locationName: "", address: "", city: "", stateLoc: "", zip: "", phone: "", ownerName: "", ownerAddress: "", ownerCity: "", ownerState: "", ownerZip: "", ownerPhone: "", personnelOnScene: "", HTMLString: IN))
        
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
