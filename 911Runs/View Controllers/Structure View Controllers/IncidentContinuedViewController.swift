//
//  IncidentContinuedViewController.swift
//  911Runs
//
//  Created by Alex Richardson on 12/4/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class IncidentContinuedViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if pickerView == actionTakenPicker {
            
            return actionTakenPickerData.count
            
        } else {
            
            return aidGivenPickerData.count
            
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if pickerView == actionTakenPicker {
            
            return actionTakenPickerData[row]
            
        } else {
            
            return aidGivenPickerData[row]
            
        }
        
    }
    
    
    @IBOutlet weak var actionTakenPicker: UIPickerView!
    
    @IBOutlet weak var aidGivenPicker: UIPickerView!
    
    @IBOutlet weak var action1Label: UILabel!
    
    @IBOutlet weak var action2Label: UILabel!
    
    @IBOutlet weak var action3Label: UILabel!
    
    var aidGivenPickerData: [String] = [String]()
    
    var actionTakenPickerData: [String] = [String]()
    
    var buttonCounter = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()

        aidGivenPickerData = ["1 Mutual Aid Received", "3 Mutual Aid Given", "N None", "M Mutual Aid FDID #'s"]
        
        actionTakenPickerData = ["11 Extinguish", "12 Salvage and Overhaul", "31 Provide First Aid", "Provide BLS", "51 Ventilate", "52 Forcible Entry", "82 Notify Other Agencies", "86 Investigate", "93 Canceled Enroute"]
        
    }
    
    @IBAction func addActionButtonTapped(_ sender: Any) {
        
        
        
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        
        self.performSegue(withIdentifier: "showVehicleInfo", sender: self)
        
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
